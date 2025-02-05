-- Drop Tables if they exist
DROP TABLE containers CASCADE CONSTRAINTS;
DROP TABLE depots CASCADE CONSTRAINTS;
DROP SEQUENCE staff_id_seq;
DROP TABLE staff CASCADE CONSTRAINTS;
DROP SEQUENCE client_id_seq;
DROP TABLE clients CASCADE CONSTRAINTS;
DROP TABLE location_data CASCADE CONSTRAINTS;
DROP TABLE south_africa_boundary CASCADE CONSTRAINTS;

-- Create Depots Table
CREATE TABLE depots (
    depot_id   VARCHAR2(10) PRIMARY KEY,  -- New formatted ID
    depot_name VARCHAR2(100) NOT NULL,
    location   VARCHAR2(255) NOT NULL,
    latitude   NUMBER(10,6) NOT NULL,    -- Latitude for Map Display
    longitude  NUMBER(10,6) NOT NULL,    -- Longitude for Map Display
    geometry   SDO_GEOMETRY,             -- Spatial Column for GIS
    date_added DATE DEFAULT SYSDATE      -- Timestamp for Record Keeping
);

--make depot name unique
ALTER TABLE depots ADD CONSTRAINT uq_depot_name UNIQUE (depot_name);
--Map of South Africa
CREATE TABLE south_africa_boundary (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    geometry SDO_GEOMETRY
);

--Map data
INSERT INTO south_africa_boundary (id, name, geometry)
VALUES (
    1, 
    'South Africa',
    SDO_GEOMETRY(
        2003, -- Polygon type
        4326, -- SRID for WGS 84
        NULL,
        SDO_ELEM_INFO_ARRAY(1, 1003, 1),
        SDO_ORDINATE_ARRAY(16.4583, -34.8333, 
                           32.8858, -34.8333, 
                           32.8858, -22.1256, 
                           16.4583, -22.1256, 
                           16.4583, -34.8333) -- Closing the polygon
    )
);

--Spatial data
CREATE INDEX sa_boundary_idx ON south_africa_boundary(geometry)
INDEXTYPE IS MDSYS.SPATIAL_INDEX;

--client locations
-- Create table for location data
CREATE TABLE location_data (
    id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    latitude NUMBER(10,6),
    longitude NUMBER(10,6),
    geom SDO_GEOMETRY -- Oracle Spatial Geometry column
);

-- Insert 1000 random locations
DECLARE
    v_latitude NUMBER;
    v_longitude NUMBER;
    v_geom SDO_GEOMETRY;
    v_inside NUMBER;
    v_attempts NUMBER;
BEGIN
    FOR i IN 1..1000 LOOP
        LOOP
            EXIT WHEN v_attempts > 10;
            -- Generate a random latitude within South Africa (-34.8333 to -22.1256)
            v_latitude := DBMS_RANDOM.VALUE(-34.8333, -22.1256);

            -- Generate a random longitude within South Africa (16.4583 to 32.8858)
            v_longitude := DBMS_RANDOM.VALUE(16.4583, 32.8858);

            -- Create the geometry point
            v_geom := SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(v_longitude, v_latitude, NULL), NULL, NULL);

            -- Check if the point is inside South Africa using a spatial query
            SELECT COUNT(*) INTO v_inside 
            FROM south_africa_boundary  -- This table should store the official polygon of South Africa
            WHERE SDO_ANYINTERACT(geometry, v_geom) = 'TRUE';

            -- Exit loop if the point is inside South Africa
            EXIT WHEN v_inside > 0;
        END LOOP;

        -- Insert into the table
        INSERT INTO location_data (latitude, longitude, geom)
        VALUES (
            v_latitude, 
            v_longitude,
            SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(v_longitude, v_latitude, NULL), NULL, NULL)
        );
    END LOOP;

    -- Commit changes
    COMMIT;
END;
/


--Client table

-- Create Clients Table
CREATE TABLE clients (
    client_id          VARCHAR2(10) PRIMARY KEY,  -- Unique ID for clients
    first_name         VARCHAR2(50) NOT NULL,
    last_name          VARCHAR2(50) NOT NULL,
    contact_number     VARCHAR2(20) NOT NULL,
    email              VARCHAR2(100) NOT NULL UNIQUE,
    company_name       VARCHAR2(100),  -- Nullable, some clients may be individuals
    location           VARCHAR2(255),  -- General address
    latitude           NUMBER(10,6),   -- Latitude for geolocation
    longitude          NUMBER(10,6),   -- Longitude for geolocation
    geometry           SDO_GEOMETRY,   -- Spatial data for mapping
    is_active          VARCHAR2(10) CHECK (is_active IN ('Active', 'Dormant')),  -- Active status
    leasing_status     VARCHAR2(20) CHECK (leasing_status IN ('Leasing', 'Open Quotes', 'None')),  -- Leasing status
    last_transaction_date DATE,        -- Date of last transaction (for deactivated clients)
    client_score       NUMBER(5,2),    -- Placeholder for client scoring system
    total_spent        NUMBER(15,2) DEFAULT 0, -- Total revenue spent
    total_liable       NUMBER(15,2) DEFAULT 0, -- Total outstanding balance
    depot_name         VARCHAR2(100) NOT NULL,  -- Reference depot_name instead of location

    -- Foreign Key Constraint to link staff to depots (using depot_name)
    CONSTRAINT fk_client_depot FOREIGN KEY (depot_name) REFERENCES depots(depot_name) ON DELETE CASCADE
);

CREATE SEQUENCE client_id_seq START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;

CREATE OR REPLACE TRIGGER client_trigger
BEFORE INSERT ON clients
FOR EACH ROW
BEGIN
    IF :NEW.client_id IS NULL THEN
        -- Generate staff_id as EMP followed by random 6 digits
        :NEW.client_id := 'CLT' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)), 6, '0');
    END IF;
END;
/

-- Create Containers Table
CREATE TABLE containers (
    container_id    VARCHAR2(10) PRIMARY KEY,  -- Updated ID format
    container_type  VARCHAR2(50) NOT NULL,
    depot_id        VARCHAR2(10) NOT NULL,
    lease_status    VARCHAR2(20) NOT NULL,
    health_status   VARCHAR2(20) NOT NULL,
    market_ready    VARCHAR2(10) NOT NULL,
    rand_value      NUMBER(10,2) NOT NULL,  -- Updated Pricing
    lease_price     NUMBER(10,2) NOT NULL,  -- New lease pricing column
    lease_start_date DATE NULL,  -- Nullable, only for leased containers
    lease_end_date   DATE NULL,  -- Nullable, only for leased containers

    -- Foreign Key Constraint (Links to depots table)
    CONSTRAINT fk_containers_depot FOREIGN KEY (depot_id) REFERENCES depots(depot_id) ON DELETE CASCADE,

    -- CHECK Constraints
    CONSTRAINT chk_lease_status CHECK (lease_status IN ('Available', 'Leased', 'Maintenance')),
    CONSTRAINT chk_health_status CHECK (health_status IN ('Good', 'Damaged', 'Unknown')),
    CONSTRAINT chk_market_ready CHECK (market_ready IN ('Yes', 'No'))
);

ALTER TABLE containers
ADD container_location SDO_GEOMETRY;

--Insert Depot Data
-- Insert Depots Data with Location Coordinates
INSERT INTO depots (depot_id, depot_name, location, latitude, longitude, geometry) 
VALUES ('CPT' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)),6,0), 'Cape Town Depot', 'Cape Town', -33.9249, 18.4241, SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(18.4241, -33.9249, NULL), NULL, NULL));

INSERT INTO depots (depot_id, depot_name, location, latitude, longitude, geometry) 
VALUES ('ESL' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)),6,0), 'East London Depot', 'East London', -33.0292, 27.9194, SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(27.9194, -33.0292, NULL), NULL, NULL));

INSERT INTO depots (depot_id, depot_name, location, latitude, longitude, geometry) 
VALUES ('DUR' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)),6,0), 'Durban Depot', 'Durban', -29.8587, 31.0218, SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(31.0218, -29.8587, NULL), NULL, NULL));

INSERT INTO depots (depot_id, depot_name, location, latitude, longitude, geometry) 
VALUES ('URM' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)),6,0), 'Urmelo Depot', 'Urmelo', -26.5333, 30.2167, SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(30.2167, -26.5333, NULL), NULL, NULL));

INSERT INTO depots (depot_id, depot_name, location, latitude, longitude, geometry) 
VALUES ('UPN' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)),6,0), 'Upington Depot', 'Upington', -28.4478, 21.2561, SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(21.2561, -28.4478, NULL), NULL, NULL));

INSERT INTO depots (depot_id, depot_name, location, latitude, longitude, geometry) 
VALUES ('KIM' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)),6,0), 'Kimberly Depot', 'Kimberly', -28.7282, 24.7499, SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(24.7499, -28.7282, NULL), NULL, NULL));

INSERT INTO depots (depot_id, depot_name, location, latitude, longitude, geometry) 
VALUES ('NEL' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)),6,0), 'Nelspruit Depot', 'Nelspruit', -25.4753, 30.9694, SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(30.9694, -25.4753, NULL), NULL, NULL));

INSERT INTO depots (depot_id, depot_name, location, latitude, longitude, geometry) 
VALUES ('PLK' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)),6,0), 'Polokwane Depot', 'Polokwane', -23.9000, 29.4500, SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(29.4500, -23.9000, NULL), NULL, NULL));

INSERT INTO depots (depot_id, depot_name, location, latitude, longitude, geometry) 
VALUES ('PEZ' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)),6,0), 'Port Elizabeth Depot', 'Port Elizabeth', -33.9581, 25.6000, SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(25.6000, -33.9581, NULL), NULL, NULL));

INSERT INTO depots (depot_id, depot_name, location, latitude, longitude, geometry) 
VALUES ('JBN' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)),6,0), 'Johannesburg North Depot', 'Johannesburg', -26.2041, 28.0473, SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(28.0473, -26.2041, NULL), NULL, NULL));

INSERT INTO depots (depot_id, depot_name, location, latitude, longitude, geometry) 
VALUES ('JBS' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)),6,0), 'Johannesburg South Depot', 'Johannesburg', -26.2543, 28.0549, SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(28.0549, -26.2543, NULL), NULL, NULL));

INSERT INTO depots (depot_id, depot_name, location, latitude, longitude, geometry) 
VALUES ('JBE' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)),6,0), 'Johannesburg East Depot', 'Johannesburg', -26.1997, 28.0878, SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(28.0878, -26.1997, NULL), NULL, NULL));

INSERT INTO depots (depot_id, depot_name, location, latitude, longitude, geometry) 
VALUES ('JBW' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)),6,0), 'Johannesburg West Depot', 'Johannesburg', -26.2044, 27.9186, SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(27.9186, -26.2044, NULL), NULL, NULL));

COMMIT;

-- Create Spatial Index for Efficient Queries
CREATE INDEX depots_spatial_idx ON depots(geometry) INDEXTYPE IS MDSYS.SPATIAL_INDEX;



--Insert Client data 
DECLARE
    TYPE varchar2_table IS TABLE OF VARCHAR2(100); -- Declare collection type
    v_first_names  varchar2_table;  
    v_last_names   varchar2_table; 
    v_locations    varchar2_table;  
    v_depots       varchar2_table;  
    v_latitudes    varchar2_table;  
    v_longitudes   varchar2_table;

    v_is_active   VARCHAR2(10); 
    v_leasing_status VARCHAR2(20);
    v_first_name  VARCHAR2(50);
    v_last_name   VARCHAR2(50);
    v_contact     VARCHAR2(20);
    v_email       VARCHAR2(100);
    v_company     VARCHAR2(100);
    v_location    VARCHAR2(255);
    v_latitude    NUMBER(10,6);
    v_longitude   NUMBER(10,6);
    v_geometry    SDO_GEOMETRY;
    v_client_score NUMBER(5,2);
    v_total_spent  NUMBER(15,2);
    v_total_liable NUMBER(15,2);
    v_depot_name   VARCHAR2(100);
    v_last_transaction DATE;
    -- Variables for retrieving random location from the table
    v_random_id NUMBER;

BEGIN
    -- Initializing collections properly 
    v_first_names  := varchar2_table('John', 'Sarah', 'Lebo', 'Thabo', 'Emily', 'Sipho', 'Nomsa', 'David', 'Jessica', 'Michael');  
    v_last_names   := varchar2_table('Mbele', 'Nkosi', 'Zulu', 'Dlamini', 'Naidoo', 'Pillay', 'Mokoena', 'Khumalo', 'Van Wyk', 'Botha');  
    v_locations    := varchar2_table('Cape Town', 'Durban', 'East London', 'Urmelo', 'Upington', 'Kimberly', 'Nelspruit', 'Polokwane', 'Port Elizabeth', 'Johannesburg', 'Johannesburg', 'Johannesburg', 'Johannesburg');  
    v_depots       := varchar2_table('Cape Town Depot', 'Durban Depot', 'East London Depot', 'Urmelo Depot', 'Upington Depot', 'Kimberly Depot', 'Nelspruit Depot', 'Polokwane Depot', 'Port Elizabeth Depot', 'Johannesburg North Depot', 'Johannesburg South Depot', 'Johannesburg East Depot', 'Johannesburg West Depot');  
 
    
    FOR i IN 1..1000 LOOP
        -- Generate Random Client Details
        v_first_name  := v_first_names(TRUNC(DBMS_RANDOM.VALUE(1, 10)));
        v_last_name   := v_last_names(TRUNC(DBMS_RANDOM.VALUE(1, 10)));
        v_contact     := '07' || TRUNC(DBMS_RANDOM.VALUE(10000000, 99999999)); -- Random SA phone number
        v_email       := LOWER(v_first_name || '.' || v_last_name || DBMS_RANDOM.STRING('x', 5) || '@example.com');
        v_company     := v_last_name || ' Enterprises';
        
        -- Assign Random Location and Depot
        DECLARE
            v_index NUMBER := TRUNC(DBMS_RANDOM.VALUE(1, 14));
        BEGIN
            v_location  := v_locations(v_index);
            v_depot_name := v_depots(v_index);
            -- Retrieve a random location from location_data table
            SELECT id INTO v_random_id FROM (
                SELECT id FROM location_data 
                ORDER BY DBMS_RANDOM.VALUE
            ) WHERE ROWNUM = 1;

            -- Get latitude and longitude of the selected location
            SELECT latitude, longitude INTO v_latitude, v_longitude 
            FROM location_data 
            WHERE id = v_random_id;
        END;

        -- Assign Random Client Status and Leasing Status
        v_is_active := CASE WHEN DBMS_RANDOM.VALUE(0, 1) > 0.3 THEN 'Active' ELSE 'Dormant' END; -- 70% active, 30% dormant
        -- Assign Leasing Status based on Client Status
        IF v_is_active = 'Active' THEN
            v_leasing_status := CASE TRUNC(DBMS_RANDOM.VALUE(1, 3))  -- Only two options when active
                                WHEN 1 THEN 'Leasing'  
                                WHEN 2 THEN 'Open Quotes'  
                                END;
        ELSE
            v_leasing_status := 'None'; -- If dormant, status must be 'None'
        END IF;

        -- Assign Random Financial Data
        v_client_score := ROUND(DBMS_RANDOM.VALUE(50, 100), 2); -- Score between 50 and 100
        v_total_spent  := ROUND(DBMS_RANDOM.VALUE(1000, 50000), 2); -- Random spent amount
        
        IF v_is_active = 'Dormant' THEN
            v_total_liable := 0;
        ELSE
            v_total_liable := ROUND(DBMS_RANDOM.VALUE(0, 10000), 2); -- Random liability
        END IF;
        
        -- Assign Last Transaction Date (for Active clients)
        IF v_is_active = 'Active' THEN
            v_last_transaction := SYSDATE - DBMS_RANDOM.VALUE(30, 365);
        ELSE
            v_last_transaction := SYSDATE - DBMS_RANDOM.VALUE(30, 365);
        END IF;
        
        -- Insert Data
        INSERT INTO CLIENTS ( 
            FIRST_NAME, LAST_NAME, CONTACT_NUMBER, EMAIL, COMPANY_NAME, LOCATION, LATITUDE, LONGITUDE,  
            GEOMETRY, IS_ACTIVE, LEASING_STATUS, LAST_TRANSACTION_DATE, CLIENT_SCORE, TOTAL_SPENT, TOTAL_LIABLE, DEPOT_NAME 
        ) VALUES ( 
            v_first_name, v_last_name, v_contact, v_email, v_company,  
            v_location, v_latitude, v_longitude, 
            SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(v_longitude, v_latitude, NULL), NULL, NULL),  
            v_is_active, v_leasing_status, v_last_transaction, v_client_score, v_total_spent, v_total_liable, v_depot_name 
        );
        
        -- Commit every 100 rows to optimize performance
        IF MOD(i, 100) = 0 THEN
            COMMIT;
        END IF;

    END LOOP;

    COMMIT; -- Final commit after all inserts
    DBMS_OUTPUT.PUT_LINE('1000 Clients Successfully Inserted.');

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

-- Create Index for Spatial Queries
CREATE INDEX clients_spatial_idx ON clients(geometry) INDEXTYPE IS MDSYS.SPATIAL_INDEX;



-- Insert Container Data
-- Insert Containers with new ID format
BEGIN
    FOR i IN 1..10000 LOOP
        DECLARE
            v_type VARCHAR2(50);
            v_depot_id VARCHAR2(10);
            v_lease_status VARCHAR2(20);
            v_health_status VARCHAR2(20);
            v_market_ready VARCHAR2(10);
            v_rand_value NUMBER(10,2);
            v_lease_price NUMBER(10,2);
            v_lease_start DATE;
            v_lease_end DATE;
            v_container_id VARCHAR2(10);
            v_exists NUMBER;
            v_client_latitude NUMBER(10,6);
            v_client_longitude NUMBER(10,6);
            v_depot_latitude NUMBER(10,6);
            v_depot_longitude NUMBER(10,6);
        BEGIN
            -- Determine type first
            v_type := CASE 
                WHEN DBMS_RANDOM.VALUE(0, 1) < 0.5 THEN 'StandAlone' 
                ELSE 'Converted' 
            END;

            -- Assign correct prefix based on type
            v_container_id := CASE 
                WHEN v_type = 'StandAlone' THEN 'STA' 
                ELSE 'CNV' 
            END || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000, 999999)), 6, '0');

            -- Check if container_id already exists
            SELECT COUNT(*) INTO v_exists FROM containers WHERE container_id = v_container_id;
            
            -- Ensure unique ID
            IF v_exists > 0 THEN
                CONTINUE;
            END IF;

            -- Select random depot
            SELECT depot_id INTO v_depot_id FROM (
                SELECT depot_id FROM depots ORDER BY DBMS_RANDOM.VALUE
            ) WHERE ROWNUM = 1;

            -- Determine lease status
            v_lease_status := CASE 
                WHEN DBMS_RANDOM.VALUE(0, 1) < 0.4 THEN 'Available'
                WHEN DBMS_RANDOM.VALUE(0, 1) < 0.8 THEN 'Leased'
                ELSE 'Maintenance'
            END;

            -- Set health status based on lease status
            v_health_status := CASE 
                WHEN v_lease_status = 'Available' THEN 'Good'
                WHEN v_lease_status = 'Leased' THEN 'Unknown'
                ELSE 'Damaged'
            END;

            -- Determine market readiness
            v_market_ready := CASE WHEN v_health_status = 'Good' THEN 'Yes' ELSE 'No' END;

            -- Set pricing based on container type
            IF v_type = 'StandAlone' THEN
                v_rand_value := 65000 + DBMS_RANDOM.VALUE(-10000, 10000);
                v_lease_price := 1050 + DBMS_RANDOM.VALUE(-100, 100);
            ELSE
                v_rand_value := 115000 + DBMS_RANDOM.VALUE(-5000, 5000);
                v_lease_price := 1844 + DBMS_RANDOM.VALUE(-150, 150);
            END IF;

            -- Generate lease dates if leased
            IF v_lease_status = 'Leased' THEN
                v_lease_start := SYSDATE - DBMS_RANDOM.VALUE(30, 365);
                v_lease_end := v_lease_start + DBMS_RANDOM.VALUE(30, 365);

                -- Fetch random client's geometry if leased
                SELECT latitude, longitude INTO v_client_latitude, v_client_longitude
                FROM clients
                WHERE leasing_status IN ('Leasing', 'Open Quotes')
                ORDER BY DBMS_RANDOM.VALUE
                FETCH FIRST 1 ROWS ONLY;

                -- Assign the client's location as the container's location
                INSERT INTO containers (
                    container_id, container_type, depot_id, lease_status, health_status, 
                    market_ready, rand_value, lease_price, lease_start_date, lease_end_date, container_location
                ) VALUES (
                    v_container_id, v_type, v_depot_id, v_lease_status, v_health_status, 
                    v_market_ready, v_rand_value, v_lease_price, v_lease_start, v_lease_end, 
                    SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(v_client_longitude, v_client_latitude, NULL), NULL, NULL)
                );
            ELSE
                v_lease_start := NULL;
                v_lease_end := NULL;

                -- Fetch depot's location
                SELECT latitude, longitude INTO v_depot_latitude, v_depot_longitude
                FROM depots
                WHERE depot_id = v_depot_id;

                -- Insert container if not leased, setting location to depot's location
                INSERT INTO containers (
                    container_id, container_type, depot_id, lease_status, health_status, 
                    market_ready, rand_value, lease_price, lease_start_date, lease_end_date, container_location
                ) VALUES (
                    v_container_id, v_type, v_depot_id, v_lease_status, v_health_status, 
                    v_market_ready, v_rand_value, v_lease_price, NULL, NULL, 
                    SDO_GEOMETRY(2001, 4326, SDO_POINT_TYPE(v_depot_longitude, v_depot_latitude, NULL), NULL, NULL)
                );
            END IF;



        EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE('Error inserting container: ' || SQLERRM);
        END;
    END LOOP;

    COMMIT;
END;
/

--Make points on map clickable
SELECT container_id, container_type, health_status, market_ready, rand_value, lease_price
FROM containers
WHERE depot_id = :P1_SELECTED_DEPOT;

-- Create Staff Table
CREATE TABLE staff (
    staff_id           VARCHAR2(10) PRIMARY KEY,
    first_name        VARCHAR2(50) NOT NULL,
    last_name         VARCHAR2(50) NOT NULL,
    email            VARCHAR2(100) UNIQUE NOT NULL,
    phone_number     VARCHAR2(20) NOT NULL,
    role            VARCHAR2(50) NOT NULL,
    department       VARCHAR2(50) NOT NULL,
    hire_date        DATE NOT NULL,
    salary          NUMBER(10,2) NOT NULL,
    employment_status VARCHAR2(20) NOT NULL CHECK (employment_status IN ('Active', 'On Leave', 'Resigned')),
    access_level     VARCHAR2(20) NOT NULL CHECK (access_level IN ('Admin', 'Manager', 'Employee')),
    depot_name         VARCHAR2(100) NOT NULL,  -- Reference depot_name instead of location

    -- Foreign Key Constraint to link staff to depots (using depot_name)
    CONSTRAINT fk_staff_depot FOREIGN KEY (depot_name) REFERENCES depots(depot_name) ON DELETE CASCADE
);

CREATE SEQUENCE staff_id_seq START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;

CREATE OR REPLACE TRIGGER staff_trigger
BEFORE INSERT ON staff
FOR EACH ROW
BEGIN
    IF :NEW.staff_id IS NULL THEN
        -- Generate staff_id as EMP followed by random 6 digits
        :NEW.staff_id := 'EMP' || LPAD(FLOOR(DBMS_RANDOM.VALUE(100000,999999)), 6, '0');
    END IF;
END;
/

--Execs
-- Insert President (Chris Lee) with 'Durban Depot'
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Chris', 'Lee', 'chrislee@containerworld.co.za', '+27 64 123 4567', 'President', 'Executive', TO_DATE('1983-01-01', 'YYYY-MM-DD'), 200000, 'Active', 'Admin', 'Durban Depot'
);

-- Insert CEO (Rajesh Patel) with 'Durban Depot'
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Rajesh', 'Patel', 'rajeshpatel@containerworld.co.za', '+27 64 234 5678', 'CEO', 'Executive', TO_DATE('1985-01-01', 'YYYY-MM-DD'), 150000, 'Active', 'Admin', 'Durban Depot'
);

-- Insert CFO (Craig Roodt) with 'Durban Depot'
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Craig', 'Roodt', 'craigroodt@containerworld.co.za', '+27 64 345 6789', 'CFO', 'Finance', TO_DATE('2010-01-01', 'YYYY-MM-DD'), 130000, 'Active', 'Admin', 'Durban Depot'
);

-- Branch Manager for Cape Town Depot
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'John', 'Botha', 'johnbotha@containerworld.co.za', '+27 64 111 2233', 'Branch Manager', 'Management', TO_DATE('2015-05-15', 'YYYY-MM-DD'), 40000, 'Active', 'Manager', 'Cape Town Depot'
);

-- Branch Manager for East London Depot
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Zanele', 'Dlamini', 'zaneledlamini@containerworld.co.za', '+27 64 112 3344', 'Branch Manager', 'Management', TO_DATE('2017-03-10', 'YYYY-MM-DD'), 
    40000, 'Active', 'Manager', 'East London Depot'
);

-- Branch Manager for Durban Depot
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Thabo', 'Mthembu', 'thabomthembu@containerworld.co.za', '+27 64 113 4455', 'Branch Manager', 'Management', TO_DATE('2016-07-20', 'YYYY-MM-DD'), 40000, 'Active', 'Manager', 'Durban Depot'
);

-- Branch Manager for Urmelo Depot
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Peter', 'van der Merwe', 'petervandermerwe@containerworld.co.za', '+27 64 114 5566', 'Branch Manager', 'Management', TO_DATE('2018-11-11', 'YYYY-MM-DD'), 40000, 'Active', 'Manager', 'Urmelo Depot'
);

-- Branch Manager for Upington Depot
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Rajesh', 'Naidoo', 'rajeshnaidoo@containerworld.co.za', '+27 64 115 6677', 'Branch Manager', 'Management', TO_DATE('2015-09-01', 'YYYY-MM-DD'), 40000, 'Active', 'Manager', 'Upington Depot'
);

-- Branch Manager for Kimberly Depot
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Shaheem', 'Fortuin', 'shaheemfortuin@containerworld.co.za', '+27 64 116 7788', 'Branch Manager', 'Management', TO_DATE('2016-06-25', 'YYYY-MM-DD'), 40000, 'Active', 'Manager', 'Kimberly Depot'
);

-- Branch Manager for Nelspruit Depot
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Priya', 'Govender', 'priyagovender@containerworld.co.za', '+27 64 117 8899', 'Branch Manager', 'Management', TO_DATE('2017-01-15', 'YYYY-MM-DD'), 40000, 'Active', 'Manager', 'Nelspruit Depot'
);

-- Branch Manager for Polokwane Depot
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Leandro', 'Jacobs', 'leandrojacobs@containerworld.co.za', '+27 64 118 9900', 'Branch Manager', 'Management', TO_DATE('2016-04-18', 'YYYY-MM-DD'), 40000, 'Active', 'Manager', 'Polokwane Depot'
);

-- Branch Manager for Port Elizabeth Depot
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Thabo', 'Mthembu', 'thabomthembu1@containerworld.co.za', '+27 64 119 1122', 'Branch Manager', 'Management', TO_DATE('2015-12-10', 'YYYY-MM-DD'), 40000, 'Active', 'Manager', 'Port Elizabeth Depot'
);

-- Branch Manager for Johannesburg North Depot
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Peter', 'van der Merwe', 'petervandermerwe1@containerworld.co.za', '+27 64 120 2233', 'Branch Manager', 'Management', TO_DATE('2017-02-02', 'YYYY-MM-DD'), 40000, 'Active', 'Manager', 'Johannesburg North Depot'
);

-- Branch Manager for Johannesburg South Depot
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Zanele', 'Dlamini', 'zaneledlamini1@containerworld.co.za', '+27 64 121 3344', 'Branch Manager', 'Management', TO_DATE('2017-08-12', 'YYYY-MM-DD'), 40000, 'Active', 'Manager', 'Johannesburg South Depot'
);

-- Branch Manager for Johannesburg East Depot
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Rajesh', 'Naidoo', 'rajeshnaidoo1@containerworld.co.za', '+27 64 122 4455', 'Branch Manager', 'Management', TO_DATE('2015-04-20', 'YYYY-MM-DD'), 40000, 'Active', 'Manager', 'Johannesburg East Depot'
);

-- Branch Manager for Johannesburg West Depot
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Shaheem', 'Fortuin', 'shaheemfortuin1@containerworld.co.za', '+27 64 123 5566', 'Branch Manager', 'Management', TO_DATE('2016-10-05', 'YYYY-MM-DD'), 40000, 'Active', 'Manager', 'Johannesburg West Depot'
);

COMMIT;

UPDATE staff
SET salary = salary * POWER(1.10, EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM hire_date))
WHERE role = 'Branch Manager';

COMMIT;

--Capetown
INSERT INTO staff ( 
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name 
) 
VALUES ( 
    'Thabo', 'Mokoena', 'thabomokoena@containerworld.co.za', '+27 65 234 5678', 'Department Manager', 'IT', TO_DATE('2017-07-25', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Cape Town Depot' 
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES(
    'Sipho', 'Dlamini', 'siphodlamini@containerworld.co.za', '+27 64 123 4567', 'Department Manager', 'Sales', TO_DATE('2018-03-12', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Cape Town Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Nomvula', 'Zungu', 'nomvulazungu@containerworld.co.za', '+27 67 456 7890', 'Department Manager', 'Maintenance', TO_DATE('2019-05-17', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Cape Town Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Sibusiso', 'Ndlovu', 'sibusisondlovu@containerworld.co.za', '+27 68 567 8901', 'Department Manager', 'Logistics', TO_DATE('2020-08-30', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Cape Town Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Mpho', 'Khumalo', 'mphokhumalo@containerworld.co.za', '+27 69 678 9012', 'Department Manager', 'HR', TO_DATE('2015-12-21', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Cape Town Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Tshiamo', 'Phiri', 'tshiamophiri@containerworld.co.za', '+27 70 789 0123', 'Department Manager', 'Marketing', TO_DATE('2018-02-14', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Cape Town Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Zanele', 'Masuku', 'zanelemasuku@containerworld.co.za', '+27 71 890 1234', 'Department Manager', 'Customer Relations', TO_DATE('2017-09-05', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Cape Town Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Itumeleng', 'Seete', 'itumelengseete@containerworld.co.za', '+27 72 123 4567', 'Department Manager', 'Sales', TO_DATE('2018-06-15', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'East London Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Jared', 'Fourie', 'jaredfourie@containerworld.co.za', '+27 73 234 5678', 'Department Manager', 'IT', TO_DATE('2017-08-21', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'East London Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Karabo', 'Mokgoko', 'karabomokgoko@containerworld.co.za', '+27 74 345 6789', 'Department Manager', 'Finance', TO_DATE('2019-10-11', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'East London Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Lebogang', 'Ntuli', 'lebogangntuli@containerworld.co.za', '+27 75 456 7890', 'Department Manager', 'Maintenance', TO_DATE('2020-05-30', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'East London Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Mandla', 'Gumede', 'mandlagumede@containerworld.co.za', '+27 76 567 8901', 'Department Manager', 'Logistics', TO_DATE('2016-12-17', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'East London Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Nokuthula', 'Radebe', 'nokuthularadebe@containerworld.co.za', '+27 77 678 9012', 'Department Manager', 'HR', TO_DATE('2015-09-22', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'East London Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Onkgopotse', 'Mogale', 'onkgopotsemo@containerworld.co.za', '+27 78 789 0123', 'Department Manager', 'Marketing', TO_DATE('2018-04-14', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'East London Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Petunia', 'Thabede', 'petuniathabede@containerworld.co.za', '+27 79 890 1234', 'Department Manager', 'Customer Relations', TO_DATE('2017-11-08', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'East London Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Kagiso', 'Mthembu', 'kagisomthembu@containerworld.co.za', '+27 62 123 4567', 'Department Manager', 'Sales', TO_DATE('2019-07-18', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Durban Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Andile', 'Nxumalo', 'andilenxumalo@containerworld.co.za', '+27 63 234 5678', 'Department Manager', 'IT', TO_DATE('2018-09-22', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Durban Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Ayanda', 'Sibanda', 'ayandasibanda@containerworld.co.za', '+27 64 345 6789', 'Department Manager', 'Finance', TO_DATE('2017-12-15', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Durban Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Bhekisisa', 'Mhlongo', 'bhekisisamhlongo@containerworld.co.za', '+27 65 456 7890', 'Department Manager', 'Maintenance', TO_DATE('2020-06-30', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Durban Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Chantelle', 'van Wyk', 'chantellevanwyk@containerworld.co.za', '+27 66 567 8901', 'Department Manager', 'Logistics', TO_DATE('2016-11-05', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Durban Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Dineo', 'Mahlangu', 'dineomahlangu@containerworld.co.za', '+27 67 678 9012', 'Department Manager', 'HR', TO_DATE('2015-08-20', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Durban Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Eldrick', 'du Preez', 'eldrickdupreez@containerworld.co.za', '+27 68 789 0123', 'Department Manager', 'Marketing', TO_DATE('2018-10-25', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Durban Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Farhaan', 'Patel', 'farhaanpatel@containerworld.co.za', '+27 69 890 1234', 'Department Manager', 'Customer Relations', TO_DATE('2017-04-12', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Durban Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Gugu', 'Mbatha', 'gugumbatha@containerworld.co.za', '+27 61 234 5678', 'Department Manager', 'Sales', TO_DATE('2018-03-12', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Urmelo Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Hlumelo', 'Mvubu', 'hlumelomvubu@containerworld.co.za', '+27 62 345 6789', 'Department Manager', 'IT', TO_DATE('2019-07-24', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Urmelo Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Ismail', 'Jacobs', 'ismailjacobs@containerworld.co.za', '+27 63 456 7890', 'Department Manager', 'Finance', TO_DATE('2017-11-15', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Urmelo Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Jabulani', 'Msimang', 'jabulanimsimang@containerworld.co.za', '+27 64 567 8901', 'Department Manager', 'Maintenance', TO_DATE('2016-05-08', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Urmelo Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Kamogelo', 'Sekhukhune', 'kamogelosekhukhune@containerworld.co.za', '+27 65 678 9012', 'Department Manager', 'Logistics', TO_DATE('2020-09-17', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Urmelo Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Lwazi', 'Ndaba', 'lwazindaba@containerworld.co.za', '+27 66 789 0123', 'Department Manager', 'HR', TO_DATE('2015-12-22', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Urmelo Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Melokuhle', 'Nkosi', 'melokuhlenkosi@containerworld.co.za', '+27 67 890 1234', 'Department Manager', 'Marketing', TO_DATE('2021-06-30', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Urmelo Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Nandi', 'Zondo', 'nandizondo@containerworld.co.za', '+27 68 901 2345', 'Department Manager', 'Customer Relations', TO_DATE('2014-04-19', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Urmelo Depot'
);

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Olebogeng', 'Tlou', 'olebogengtlou@containerworld.co.za', '+27 61 987 6543', 'Department Manager', 'Sales', TO_DATE('2017-02-14', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Upington Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Palesa', 'Radebe', 'palesaradebe@containerworld.co.za', '+27 62 876 5432', 'Department Manager', 'IT', TO_DATE('2019-05-21', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Upington Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Qhama', 'Mkatshane', 'qhamamkatshane@containerworld.co.za', '+27 63 765 4321', 'Department Manager', 'Finance', TO_DATE('2018-09-10', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Upington Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Rorisang', 'Maleka', 'rorisangmaleka@containerworld.co.za', '+27 64 654 3210', 'Department Manager', 'Maintenance', TO_DATE('2016-07-30', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Upington Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Sibongile', 'Mthethwa', 'sibongilemthethwa@containerworld.co.za', '+27 65 543 2109', 'Department Manager', 'Logistics', TO_DATE('2020-12-05', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Upington Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Thandeka', 'Magubane', 'thandekamagubane@containerworld.co.za', '+27 66 432 1098', 'Department Manager', 'HR', TO_DATE('2015-03-18', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Upington Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Ulrich', 'Strydom', 'ulrichstrydom@containerworld.co.za', '+27 67 321 0987', 'Department Manager', 'Marketing', TO_DATE('2021-08-25', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Upington Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Vuyani', 'Faku', 'vuyanifaku@containerworld.co.za', '+27 68 210 9876', 'Department Manager', 'Customer Relations', TO_DATE('2014-10-08', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Upington Depot');

-- Kimberley Depot Staff
INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Willem', 'Grobler', 'willemgrobler@containerworld.co.za', '+27 69 987 2345', 'Department Manager', 'Sales', TO_DATE('2016-04-12', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Kimberly Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Xolani', 'Mtshali', 'xolanimtshali@containerworld.co.za', '+27 61 876 5439', 'Department Manager', 'IT', TO_DATE('2019-07-22', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Kimberly Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Yandisa', 'Qwabe', 'yandisaqwabe@containerworld.co.za', '+27 62 765 4328', 'Department Manager', 'Finance', TO_DATE('2018-11-15', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Kimberly Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Zandile', 'Shabalala', 'zandileshabalala@containerworld.co.za', '+27 63 654 3217', 'Department Manager', 'Maintenance', TO_DATE('2017-09-03', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Kimberly Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Aluwani', 'Ramabulana', 'aluwaniramabulana@containerworld.co.za', '+27 64 543 2106', 'Department Manager', 'Logistics', TO_DATE('2020-06-10', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Kimberly Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Bontle', 'Ledwaba', 'bontleledwaba@containerworld.co.za', '+27 65 432 1095', 'Department Manager', 'HR', TO_DATE('2015-02-28', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Kimberly Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Calvin', 'Coetzee', 'calvincoetzee@containerworld.co.za', '+27 66 321 0984', 'Department Manager', 'Marketing', TO_DATE('2021-10-18', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Kimberly Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Dumisani', 'Nene', 'dumisaninene@containerworld.co.za', '+27 67 210 9873', 'Department Manager', 'Customer Relations', TO_DATE('2014-12-29', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Kimberly Depot');

-- Nelspruit Depot Staff
INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Elmarie', 'Swanepoel', 'elmarieswanepoel@containerworld.co.za', '+27 68 345 6789', 'Department Manager', 'Sales', TO_DATE('2015-03-14', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Nelspruit Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Franklin', 'Bosman', 'franklinbosman@containerworld.co.za', '+27 69 234 5678', 'Department Manager', 'IT', TO_DATE('2018-07-21', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Nelspruit Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Gomolemo', 'Nkoane', 'gomolemonkoane@containerworld.co.za', '+27 61 123 4567', 'Department Manager', 'Finance', TO_DATE('2016-11-10', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Nelspruit Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Hlengiwe', 'Makhanya', 'hlengiwemakhanya@containerworld.co.za', '+27 62 456 7890', 'Department Manager', 'Maintenance', TO_DATE('2017-05-30', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Nelspruit Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Innocentia', 'Maluleka', 'innocentiamaluleka@containerworld.co.za', '+27 63 789 0123', 'Department Manager', 'Logistics', TO_DATE('2019-09-15', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Nelspruit Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Junaid', 'Essop', 'junaidessop@containerworld.co.za', '+27 64 890 1234', 'Department Manager', 'HR', TO_DATE('2014-12-05', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Nelspruit Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Katlego', 'Mbele', 'katlegombele@containerworld.co.za', '+27 65 901 2345', 'Department Manager', 'Marketing', TO_DATE('2021-08-27', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Nelspruit Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Lindokuhle', 'Cele', 'lindokuhlecele@containerworld.co.za', '+27 66 012 3456', 'Department Manager', 'Customer Relations', TO_DATE('2020-02-11', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Nelspruit Depot');

-- Polokwane Depot Staff
INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Minenhle', 'Gcabashe', 'minenhle.gcabashe@containerworld.co.za', '+27 67 111 2233', 'Department Manager', 'Sales', TO_DATE('2017-04-18', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Polokwane Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Nonkululeko', 'Twala', 'nonkululeko.twala@containerworld.co.za', '+27 68 222 3344', 'Department Manager', 'IT', TO_DATE('2018-09-25', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Polokwane Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Orapeleng', 'Mosimane', 'orapeleng.mosimane@containerworld.co.za', '+27 69 333 4455', 'Department Manager', 'Finance', TO_DATE('2015-06-10', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Polokwane Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Philani', 'Dube', 'philani.dube@containerworld.co.za', '+27 60 444 5566', 'Department Manager', 'Maintenance', TO_DATE('2016-12-07', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Polokwane Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Quinton', 'Kruger', 'quinton.kruger@containerworld.co.za', '+27 61 555 6677', 'Department Manager', 'Logistics', TO_DATE('2019-03-22', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Polokwane Depot');

INSERT INTO staff (first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name)
VALUES ('Refilwe', 'Mashaba', 'refilwe.mashaba@containerworld.co.za', '+27 62 666 7788', 'Department Manager', 'HR', TO_DATE('2021-07-15', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Polokwane Depot');

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Sinethemba', 'Kheswa', 'sinethemba.kheswa@containerworld.co.za', '+27 63 777 8899', 'Department Manager', 'Marketing', TO_DATE('2020-11-30', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Polokwane Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Thulisile', 'Madlala', 'thulisile.madlala@containerworld.co.za', '+27 64 888 9900', 'Department Manager', 'Customer Relations', TO_DATE('2022-01-05', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Polokwane Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Unathi', 'Mbambo', 'unathi.mbambo@containerworld.co.za', '+27 65 111 2233', 'Department Manager', 'Sales', TO_DATE('2016-03-15', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Port Elizabeth Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Veli', 'Manqele', 'veli.manqele@containerworld.co.za', '+27 66 222 3344', 'Department Manager', 'IT', TO_DATE('2018-07-21', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Port Elizabeth Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Wanda', 'September', 'wanda.september@containerworld.co.za', '+27 67 333 4455', 'Department Manager', 'Finance', TO_DATE('2015-05-10', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Port Elizabeth Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Xhanti', 'Ntshanga', 'xhanti.ntshanga@containerworld.co.za', '+27 68 444 5566', 'Department Manager', 'Maintenance', TO_DATE('2017-09-14', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Port Elizabeth Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Yonela', 'Mbanjwa', 'yonela.mbanjwa@containerworld.co.za', '+27 69 555 6677', 'Department Manager', 'Logistics', TO_DATE('2020-02-27', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Port Elizabeth Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Zwelibanzi', 'Mqadi', 'zwelibanzi.mqadi@containerworld.co.za', '+27 60 666 7788', 'Department Manager', 'HR', TO_DATE('2019-11-05', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Port Elizabeth Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Amogelang', 'Seabi', 'amogelang.seabi@containerworld.co.za', '+27 61 777 8899', 'Department Manager', 'Marketing', TO_DATE('2021-08-16', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Port Elizabeth Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Bhekumuzi', 'Sithole', 'bhekumuzi.sithole@containerworld.co.za', '+27 62 888 9900', 'Department Manager', 'Customer Relations', TO_DATE('2022-04-09', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Port Elizabeth Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Carmen', 'Geldenhuys', 'carmen.geldenhuys@containerworld.co.za', '+27 61 234 5678', 'Department Manager', 'Sales', TO_DATE('2018-03-12', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg North Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Dikeledi', 'Mokwena', 'dikeledi.mokwena@containerworld.co.za', '+27 62 345 6789', 'Department Manager', 'IT', TO_DATE('2019-07-24', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg North Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Eugene', 'Vermeulen', 'eugene.vermeulen@containerworld.co.za', '+27 63 456 7890', 'Department Manager', 'Finance', TO_DATE('2017-11-15', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg North Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Fezile', 'Hlatshwayo', 'fezile.hlatshwayo@containerworld.co.za', '+27 64 567 8901', 'Department Manager', 'Maintenance', TO_DATE('2016-05-08', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg North Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Gontse', 'Motshabi', 'gontse.motshabi@containerworld.co.za', '+27 65 678 9012', 'Department Manager', 'Logistics', TO_DATE('2020-09-17', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg North Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Hendrik', 'Louw', 'hendrik.louw@containerworld.co.za', '+27 66 789 0123', 'Department Manager', 'HR', TO_DATE('2015-12-22', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg North Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Qhubekani', 'Zuma', 'qhubekani.zuma@containerworld.co.za', '+27 67 890 1234', 'Department Manager', 'Marketing', TO_DATE('2021-06-30', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg North Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Rendani', 'Netshisaulu', 'rendani.netshisaulu@containerworld.co.za', '+27 68 901 2345', 'Department Manager', 'Customer Relations', TO_DATE('2014-04-19', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg North Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Sibusisiwe', 'Mzizi', 'sibusisiwe.mzizi@containerworld.co.za', '+27 61 234 5678', 'Department Manager', 'Sales', TO_DATE('2018-03-12', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg South Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Thabiso', 'Motlatsi', 'thabiso.motlatsi@containerworld.co.za', '+27 62 345 6789', 'Department Manager', 'IT', TO_DATE('2019-07-24', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg South Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Ulundi', 'Majola', 'ulundi.majola@containerworld.co.za', '+27 63 456 7890', 'Department Manager', 'Finance', TO_DATE('2017-11-15', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg South Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Vuyolwethu', 'Sigwela', 'vuyolwethu.sigwela@containerworld.co.za', '+27 64 567 8901', 'Department Manager', 'Maintenance', TO_DATE('2016-05-08', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg South Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Wilmari', 'Botha', 'wilmari.botha@containerworld.co.za', '+27 65 678 9012', 'Department Manager', 'Logistics', TO_DATE('2020-09-17', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg South Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Xolisile', 'Zikhali', 'xolisile.zikhali@containerworld.co.za', '+27 66 789 0123', 'Department Manager', 'HR', TO_DATE('2015-12-22', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg South Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Yusuf', 'Cassim', 'yusuf.cassim@containerworld.co.za', '+27 67 890 1234', 'Department Manager', 'Marketing', TO_DATE('2021-06-30', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg South Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Zamokuhle', 'Nkabinde', 'zamokuhle.nkabinde@containerworld.co.za', '+27 68 901 2345', 'Department Manager', 'Customer Relations', TO_DATE('2014-04-19', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg South Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Akhona', 'Majozi', 'akhona.majozi@containerworld.co.za', '+27 61 234 5678', 'Department Manager', 'Sales', TO_DATE('2018-03-12', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg East Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Basil', 'Naidoo', 'basil.naidoo@containerworld.co.za', '+27 62 345 6789', 'Department Manager', 'IT', TO_DATE('2019-07-24', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg East Depot'
);

INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Charlene', 'Meyer', 'charlene.meyer@containerworld.co.za', '+27 63 456 7890', 'Department Manager', 'Finance', TO_DATE('2017-11-15', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg East Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Denzel', 'Moodley', 'denzel.moodley@containerworld.co.za', '+27 64 567 8901', 'Department Manager', 'Maintenance', TO_DATE('2016-05-08', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg East Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Esther', 'Kisten', 'esther.kisten@containerworld.co.za', '+27 65 678 9012', 'Department Manager', 'Logistics', TO_DATE('2020-09-17', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg East Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Frans', 'van der Merwe', 'frans.vandermerwe@containerworld.co.za', '+27 66 789 0123', 'Department Manager', 'HR', TO_DATE('2015-12-22', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg East Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Gladys', 'Maredi', 'gladys.maredi@containerworld.co.za', '+27 67 890 1234', 'Department Manager', 'Marketing', TO_DATE('2021-06-30', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg East Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Herman', 'Jordaan', 'herman.jordaan@containerworld.co.za', '+27 68 901 2345', 'Department Manager', 'Customer Relations', TO_DATE('2014-04-19', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg East Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Isibaya', 'Ngcobo', 'isibaya.ngcobo@containerworld.co.za', '+27 61 234 5678', 'Department Manager', 'Sales', TO_DATE('2018-03-12', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg West Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Jasmine', 'Singh', 'jasmine.singh@containerworld.co.za', '+27 62 345 6789', 'Department Manager', 'IT', TO_DATE('2019-07-24', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg West Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Khensani', 'Baloyi', 'khensani.baloyi@containerworld.co.za', '+27 63 456 7890', 'Department Manager', 'Finance', TO_DATE('2017-11-15', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg West Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Lunga', 'Magwaza', 'lunga.magwaza@containerworld.co.za', '+27 64 567 8901', 'Department Manager', 'Maintenance', TO_DATE('2016-05-08', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg West Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Mandisa', 'Qhina', 'mandisa.qhina@containerworld.co.za', '+27 65 678 9012', 'Department Manager', 'Logistics', TO_DATE('2020-09-17', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg West Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Ntokozo', 'Zwane', 'ntokozo.zwane@containerworld.co.za', '+27 66 789 0123', 'Department Manager', 'HR', TO_DATE('2015-12-22', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg West Depot'
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
   'Prince', 'Ndou', 'prince.ndou@containerworld.co.za', '+27 67 890 1234', 'Department Manager', 'Marketing', TO_DATE('2021-06-30', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg West Depot' 
);
INSERT INTO staff (
    first_name, last_name, email, phone_number, role, department, hire_date, salary, employment_status, access_level, depot_name
)
VALUES (
    'Sibongiseni', 'Mdletshe', 'sibongiseni.mdletshe@containerworld.co.za', '+27 68 901 2345', 'Department Manager', 'Customer Relations', TO_DATE('2014-04-19', 'YYYY-MM-DD'), 35000, 'Active', 'Manager', 'Johannesburg West Depot'
);

COMMIT;

UPDATE staff
SET salary = salary * POWER(1.10, EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM hire_date))
WHERE role = 'Department Manager';

COMMIT;

--Revenue Report
WITH 
-- Calculate total sales (total_spent) per depot
depot_sales AS (
    SELECT 
        depot_name,
        SUM(total_spent) as total_sales
    FROM clients
    GROUP BY depot_name
),

-- Calculate total credit (open quotes) per depot
depot_credit AS (
    SELECT 
        depot_name,
        SUM(total_liable) as total_credit
    FROM clients 
    WHERE leasing_status = 'Open Quotes'
    GROUP BY depot_name
),

-- Calculate monthly recurring revenue from leases per depot
depot_mrr AS (
    SELECT 
        depot_name,
        SUM(total_liable) as monthly_recurring_revenue
    FROM clients 
    WHERE leasing_status = 'Leasing'
    GROUP BY depot_name
),

-- Combine all metrics
combined_metrics AS (
    SELECT 
        d.depot_name,
        COALESCE(ds.total_sales, 0) as total_sales,
        COALESCE(dc.total_credit, 0) as total_credit,
        COALESCE(dm.monthly_recurring_revenue, 0) as monthly_recurring_revenue
    FROM depots d
    LEFT JOIN depot_sales ds ON d.depot_name = ds.depot_name
    LEFT JOIN depot_credit dc ON d.depot_name = dc.depot_name
    LEFT JOIN depot_mrr dm ON d.depot_name = dm.depot_name
)

-- Final report with totals
SELECT 
    cm.depot_name,
    TO_CHAR(cm.total_sales, 'FM999,999,999.00') as total_sales,
    TO_CHAR(cm.total_credit, 'FM999,999,999.00') as total_credit,
    TO_CHAR(cm.monthly_recurring_revenue, 'FM999,999,999.00') as monthly_recurring_revenue,
    TO_CHAR((cm.total_sales / 
        (SELECT SUM(total_sales) FROM combined_metrics)) * 100, 
        'FM990.00') || '%' as sales_percentage,
    TO_CHAR((cm.monthly_recurring_revenue / 
        (SELECT SUM(monthly_recurring_revenue) FROM combined_metrics)) * 100, 
        'FM990.00') || '%' as mrr_percentage
FROM combined_metrics cm
ORDER BY cm.total_sales DESC;

-- Company totals
SELECT  
    'COMPANY TOTAL' as depot_name, 
    TO_CHAR(SUM(total_sales), 'FM999,999,999.00') as total_sales, 
    TO_CHAR(SUM(total_credit), 'FM999,999,999.00') as total_credit, 
    TO_CHAR(SUM(monthly_recurring_revenue), 'FM999,999,999.00') as monthly_recurring_revenue, 
    '100.00%' as sales_percentage, 
    '100.00%' as mrr_percentage 
FROM (
    -- Calculate total sales per depot
    SELECT  
        d.depot_name, 
        COALESCE(ds.total_sales, 0) as total_sales, 
        COALESCE(dc.total_credit, 0) as total_credit, 
        COALESCE(dm.monthly_recurring_revenue, 0) as monthly_recurring_revenue
    FROM depots d
    LEFT JOIN (
        SELECT depot_name, SUM(total_spent) as total_sales
        FROM clients
        GROUP BY depot_name
    ) ds ON d.depot_name = ds.depot_name
    LEFT JOIN (
        SELECT depot_name, SUM(total_liable) as total_credit
        FROM clients
        WHERE leasing_status = 'Open Quotes'
        GROUP BY depot_name
    ) dc ON d.depot_name = dc.depot_name
    LEFT JOIN (
        SELECT depot_name, SUM(total_liable) as monthly_recurring_revenue
        FROM clients
        WHERE leasing_status = 'Leasing'
        GROUP BY depot_name
    ) dm ON d.depot_name = dm.depot_name
) combined_metrics;
