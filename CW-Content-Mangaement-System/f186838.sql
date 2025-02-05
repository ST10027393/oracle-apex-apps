prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.1'
,p_default_workspace_id=>917317805708529836
,p_default_application_id=>186838
,p_default_id_offset=>0
,p_default_owner=>'WKSP_GENIUSMUZAMA'
);
end;
/
 
prompt APPLICATION 186838 - CW Content Management System
--
-- Application Export:
--   Application:     186838
--   Name:            CW Content Management System
--   Date and Time:   09:29 Wednesday February 5, 2025
--   Exported By:     GTMUZAMA@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     26
--       Items:                   50
--       Validations:              1
--       Processes:               15
--       Regions:                 65
--       Buttons:                 33
--       Dynamic Actions:         15
--     Shared Components:
--       Logic:
--         App Settings:           1
--         Build Options:          4
--       Navigation:
--         Lists:                  5
--         Breadcrumbs:            1
--           Entries:              9
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   6
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.1
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_GENIUSMUZAMA')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'CW Content Management System')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'CW-CONTENT-MANAGEMENT-SYSTEM186838')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'66008E3913D36607361E7EDA614FAC7B7A1498BFA62ADD68666118ECC76E4550'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(7383507610801891444)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'CW Content Management System'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(7383514237647891454)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'CW Content Management System'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250205090831Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>11
,p_version_scn=>15603613361875
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(186838)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(7383508418300891445)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(7383509686029891447)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7383508418300891445)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15603607252749
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250205085115Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383528435912891466)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383529992920891469)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Depots'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-map-marker'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383533041055891487)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Containers'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-map-marker'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383536167637891490)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Stock'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383545924144891505)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Staff'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7723132052367755119)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Clients'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,7'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7964332204660919386)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Revenue Report'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
,p_created_on=>wwv_flow_imp.dz('20250204121302Z')
,p_updated_on=>wwv_flow_imp.dz('20250204121302Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8246811571508348709)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Depots_2'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-map-marker'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
,p_created_on=>wwv_flow_imp.dz('20250205085115Z')
,p_updated_on=>wwv_flow_imp.dz('20250205085115Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383691888873891690)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(7383514105442891454)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7383509686029891447)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15602980588815
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383688420846891687)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383688723388891687)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(7383512726903891453)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383689245015891688)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.::P10031_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(7383688723388891687)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(7383512726903891453)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383689677916891688)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(7383688723388891687)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383690007137891688)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(7383688723388891687)
,p_required_patch=>wwv_flow_imp.id(7383512726903891453)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383690347134891688)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383690873583891689)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(7383690347134891688)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383691204362891689)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(7383690347134891688)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7383566903869891530)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>15602980587091
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383567344419891530)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Depots'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-map-marker'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383567782929891530)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Containers'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-map-marker'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383568167600891531)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Stock'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-search'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383568511680891531)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Staff'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7383692914826891691)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(7383512150092891453)
,p_version_scn=>15602980588845
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383693380643891691)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383693733244891691)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10011:&APP_SESSION.::&DEBUG.:10011::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383694149075891691)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10012:&APP_SESSION.::&DEBUG.:10012::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383694584475891691)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10013:&APP_SESSION.::&DEBUG.:10013::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383694952365891692)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10014:&APP_SESSION.::&DEBUG.:RR,10014::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383695366265891692)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10015:&APP_SESSION.::&DEBUG.:RR,10015::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7383695630218891692)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(7383512096694891453)
,p_version_scn=>15602980588846
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383696023028891692)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10021:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7383696403386891693)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE90000035E494441545847ED97CF4F545714C73FF7CDBC3733BC379D610493A68BBA35D8684CCAC2C0A64629AE4A13D3341016A2A6B285';
wwv_flow_imp.g_varchar2_table(2) := 'B880028AB13F12FF00EDB2518685141BD39671D1FE056E4CE94E13A51BCA8C800EC3BC798F7B9BF7C60EE08C33030CB10B67FB4EEEF773CFF9DE73CE08A594E22DFEC43B80FF75069494A85C0E379D4665B350AF5D84405816C19616B4A626D0B437BAAC';
wwv_flow_imp.g_varchar2_table(3) := 'B2079442150AE4FF9A67F5C60DDC870F6143EE0C20102078FC38EF0D0F136E6B431806085106521140156C5E24A778717512B26BF50BBF7EBC27689A44C7BE26D6DB870885EA009092FCA3472C7DDE032FB38D79A09649CBCC4F448E1D2B2B4759066436';
wwv_flow_imp.g_varchar2_table(4) := 'CB3F839770E652BBBF795926403F758A83B77E40B3AC6D5FCB009CA74F59ECEA426532A5C0E0C94FB0CE9E45E87ACD8C48DB26373787937A00B65D8AD712095A53298C4387AA03D8F3F3A47B7A90CBCBA5C0F0B9731C181B4384C335019012995D636978';
wwv_flow_imp.g_varchar2_table(5) := '08E7FEFD4D80789C96D95942478ED402F893A5CF7A502B2BA5C0C8F9F31C9898A80F00FC1794FDF91ECB8383088ACE17F118AD3EC047BB00181820313E5E06203C9757785ACA75C9FDFA0B998181C600E8DDDD58FDFD9B1EF0440DC34F67F0355379D76B';
wwv_flow_imp.g_varchar2_table(6) := '38C0B60EE8898742345DBC48F3E5CB68157CD17880AD55330C22FDFD2426262A8AEF4F06FE03D07522BDBD24AE5DDB262EF379A4E314CB21C43E94C003D075C27D7DBE1903A65932DFC6FA3ACBDF7F47E4D36E9ADADB119AB60F00BA4EC8BBF9C808C158';
wwv_flow_imp.g_varchar2_table(7) := 'ACD84E9542DA79329357B17FBC4D7C6A0AB3A363EF0085C78F495FB8805A5B2B55DEE8ECA0797494602C5E14F79A4D2E4766F20AF9A924D8059AEFDEC5ECECDC3B80721CFF705CB704204C13CD1BA7AFC437565779FEED37E46FDF01C7F1B3D13C33D318';
wwv_flow_imp.g_varchar2_table(8) := '80AABD564ADC951532D7AF5348268BE2BEED15F1E969CC13278A905E234AFDC6F3AF2E6D6944715AEFCD126AABD18AAB01786E4F8F8E6027A737C55F01E8DD5D04DEFFC06F8CDE26E53E7B86FBFB1FDB87D18314C6873586513500379361F1CC19E49327';
wwv_flow_imp.g_varchar2_table(9) := 'B587D2D60801FAE92E0EDEBC597B1CEF0780885AFE42123E7AB4F642D250006F105A51A257C6897DF1659D2B591502CFFD8BDEAEB0B050B504FE94D43402ED1F131B1A227CF83042DFC152FAA6D3BD39EFFCBD805ACF57F78037A5AD28C14462976BF9CE';
wwv_flow_imp.g_varchar2_table(10) := '2CB6A7E877FF0DDF7A06FE0524CC2BBF09D0AF530000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7383510616979891450)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250204143545Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE90000122349444154785EED9D099054D5B9C7FFDFBDDD3D7BCF02A3F300654030224844C1B085C56CE002113131A9322F960B2811C92B';
wwv_flow_imp.g_varchar2_table(2) := '9F82416090304220152320F8F26292AA24484C02A811A3712111DC484C107490001A0D8F51660666EDE9BEF7BCF9EEF42020307DCFB9BD9F53D5355ADCEF2CFFF3BBDF39F7AC041DB4020A0A9082AD36D50A4003A42150524003A4249F36D60069069414';
wwv_flow_imp.g_varchar2_table(3) := 'D00029C9A78D35409A01250534404AF269630D90664049010D90927CDA5803A41950524003A4249F36D60069069414D00029C9A78D531220214439801E27FDCA00146549953502A80370F8F81F117D946AE54F2A4042084EFF33003E17FD5D066028007F';
wwv_flow_imp.g_varchar2_table(4) := 'AA099522F90903F807805701BC16FD5B43442259F94B284051CF32EA38584600284E56E13324DD23005E8FC2C460BD4C44ECBD1212120650D4DB4C01703780D109295DF625F2328007003C9528AF1477808410DC1C7D1BC05D00CECFBE3A4D4A896B00FC';
wwv_flow_imp.g_varchar2_table(5) := '00C02F88889BBDB885B8022484E80D6013804BE356021DF1991478A3A3AF74453C3BDF7103480871614753F547000C910EC953E09F00A612D1AE7864212E000921C60278527790E35165527172479B217A49CAFA0C469E0314F53CFC5590EF7566757C4A';
wwv_flow_imp.g_varchar2_table(6) := '0AB400B8CC6B4FE4294042088686E1E1E64B87D453809B31868861F224780DD0CF00FCA72739D391C44B819F13117F157B123C034808C1997AD4935CE948E2ADC08D44C42FBB72F0042021441E800F01942AE7484790080578A4FA1C2F9A32AF009A09E0';
wwv_flow_imp.g_varchar2_table(7) := 'E144945CA7E19902B711D15AD5D894018A4E51BC1D9D1455CD8FB64F9C025C678355A73CBC006852C7E4E8D3892BB74EC943052613D11695F8BC008833F015954C68DBA429F00C11B103900E4A0009217201340330A473206328001B00D91622C28209C3';
wwv_flow_imp.g_varchar2_table(8) := 'F9FF540E2C108BDD954FFE6F22FE19B00D23C1021E538AB3534844ADB2DAA9023401C00BB289BBB573564DD93622AD2D08D71E4268CF3E885D7F47EB3B35B0EAEA40A1108415012FAF522A98DB8CC5F0BCB374CE30414C4D4E0028EB81C0670620E7A28B';
wwv_flow_imp.g_varchar2_table(9) := '11183810FEB3CE8299970F3212FB2E029848442FC65084533EA2A4B310622E806AD9C4DDD859ED21B4EDDF87F05BBB117AE52F68DAF40402070F01397E10BFBF8601064C506AFB22129D80906D3B2E488442889CDD13B9575D8D82316311B8E822F8FBF5';
wwv_flow_imp.g_varchar2_table(10) := '8519E0919184847944C46B88A4822A401B79924E2AE5188C1C14C2ED887CF4311A7EFB38C21B37C37AEF0070B40164B39B711A8218624AF547040497251884595989C0D553109C3E1D81FF381B205F6731E3173611D15765A397CE9A10CEAB541B5DF82E';
wwv_flow_imp.g_varchar2_table(11) := '9BFE19ED2CDB46DBAEB750BF6821223B76C06C6ACD0C5ECE506A1202764E0E70C930947C7F210A875C0A23BECDDAA18EF1A00AD90A5401E802003C96E0791042C06A6941D3534FA1F6F659C885E5F4D39DFE438607A7A34DC2E9C78542364AFF670D8AAF';
wwv_flow_imp.g_varchar2_table(12) := 'B80A6661413CCBDFAF637EEC808CB4D235228488CBF88F034F7D1D1A7EF6285A1E7A08766B0B4CE6270B03F7E7447E21F26E9B89D29B6E86AF6779BC1A6CE9F1201580AEEF187DFEB5D7F51A696E46FDBA87117A642DC4E106A76F90BC4D2B5E974E263E';
wwv_flow_imp.g_varchar2_table(13) := '01515C8C9C5B6E46D9ED77C05F542813497736DF20A2F5DD3D74AA7F5701C8D3F92FF63CFC6B78FC7134DDF3DFA0A6660D4F578DB1368505C8A9AE46F9D7AF77C68E3C6ECDA5E7C55400F2F4135ED8165A76EFC607574D426E6B3B8CD4FE1A977959156D';
wwv_flow_imp.g_varchar2_table(14) := '0442A176946F7D0E854387C3F4B663FD5D22FA914C065500E2B1837B64123D954DB8B616876E9F09F1C256C090CE9657D949CD7884008D1C81F2753F414E6F4FF72A488F0549D79410829702CCF04269BBBD1D753FFD295A9656835A9AA3E33B5EC49C79';
wwv_flow_imp.g_varchar2_table(15) := '7158B901E4DD7537CA66CE803F8767923C09CB88885B14D74105208F96AF0A34EFDD8323B366C3DAF1D78C1FE7715D439F321030865D8C9255AB907FFE055E7D95AD2322EED3BA0E2A00AD0370ABEB144F3210B68DC6CD9B71E4EE7B80FA846DE956CD76';
wwv_flow_imp.g_varchar2_table(16) := '52ED453088E2650F2038ED5AAFE6CED217A0F69666D42EAE82F5E8A319DF71E6B7D58B63347862D67FC33751BEF8FB300B0ABDF042E909108BD9F6FE01FCFB8AC9F01FAAED9C147519BA5CA81715E332E96E1F3F216F041876E79C97725E8540A4AC0415';
wwv_flow_imp.g_varchar2_table(17) := 'CFFC113995FD60A87FD3A72940C2C691E75F42E3B4A94020A7DB0A39F901C6CDB66DD896ED0CF31B2936E2C8231182E77C6D1BC2478069C014A63A402C445B1B8A36FE16851327C267281FA7949E00D9968586756BD0BCA04AEACBCB1002ED2386E3AC15';
wwv_flow_imp.g_varchar2_table(18) := '2B417E1651F9DD760D717706C216B00E1F46E8CD1D68FBFD6688B776812C3E3043BAFBE92449910802F3E7A274CE5DF09B6677D9E8EEDFD313202B1241ED77FF0B91DFAC072C7795EFF427F8CD9E301E7DD6AF87E10F74275252FF9DF3DA7AA41ECDFFFB';
wwv_flow_imp.g_varchar2_table(19) := '0BB46DF825C4FE032049889C452C86019A7A352AD6AC85E1F3A9962D3D018A4422F8F7B76E003DF7A74E5FEF22A41B405C346ED2AC9666343DB3058DD54B41FBFF25E5353B97C312C4B8B1A858BF01BE6C05883DD0A1EBA6C37A795B5600E440C44B7243';
wwv_flow_imp.g_varchar2_table(20) := 'ADA85FFB0842CB9683AC888BD7A6F3D12E80ACE1C3D16BF3E62C0768FA3458DB5EC91A801800F6B5ED1FD7E1D075D7C2DCB913B6CC5714AF52B8EC12F4DAF864F636618E07CA4280BA3CD1C7AB7E8C50D5FD10A6E17EC94A14A0DE1B9F0465751396A500';
wwv_flow_imp.g_varchar2_table(21) := '314447B7BE84FA295341011FC8D9B6E1226880806CF6408C4A6BCD3BA81B390A96DFD400B978778E3D9AED00B5EDA941EDA89180A90192E127EB3D50DB9E7770983D904F03A40192504003A4B89C433761DA0329AD07D20069803440124D5797896EC292';
wwv_flow_imp.g_varchar2_table(22) := 'D8843943FABC0D78FC78F4F9D52F019FF292866328F09A1DC3E0A94E9763332E61D2002519205ECE11EA5F89826F5E8FCEABC75403AFFA32804183D173FC38F8788F7A1C830628C9003975CB4B3A2C6FF63EF30C378D1E899E6B1F414E9F3EF1DC8BEE64';
wwv_flow_imp.g_varchar2_table(23) := '5D03940A0079E4218461203061228A972C46DE8081520BDCDC6645039429001904DFC4CB51B6B41AFE7E955EAC318E89250D5026004404DF9831285DFE0304CEEB1FEFB3784E004B0394EE00F182FC214350B67A350A060F4E98E7D19FF1CE6E03A1BCB1';
wwv_flow_imp.g_varchar2_table(24) := '50652031A636E20C0FF1C9A8FE8B3F8B9287562367C0795E1F561053F6B4074A530F24840DFF98B128AA5A8CFCA117752E508FA9CABD7D4803948E00F150CF88E12859528DDCA143619AEE37337A85910628CD0062CF630E1C88A2152B50386A74423BCC';
wwv_flow_imp.g_varchar2_table(25) := 'A7824E0394460009CB86183C083D1E5A8DFC214360F0663C8576CB39935AD8B0DB43F039C7ACB88F4C03942600F1A63EBA6C048ABF371FF9A3473B1D66F7D57DA20FB16D81967D356879772F7A7E65320CC3FDEE500D503A00C4E70B0E1880E0F265281A';
wwv_flow_imp.g_varchar2_table(26) := '3D1A868F4FB6570B966D8197A3D6DF3107E6959371F61DB33B3D9ACBA0014A038044DFBE08AE588EE0E7C73B6B8F55BBCCCE16E5BD35A89F3B0FD68B2F2270DF429C3D7B364803E4EEF5498771201AD01F858B97A070DC789839BCDC436D8186E379DEAD';
wwv_flow_imp.g_varchar2_table(27) := '41DDFC05105BFF0C231482B970212A3440EEE0E1A7531A20DE673F64300AEF9B8FE084894EFF44E5947BC17B49B9CFB3EB1FA89F3F1FD6F6D7C04B49100EC3A701720F4FCA03745E3F945457237FCCE7417E1306B9EF9F74A9E27C6DD9365ADE7E13876F';
wwv_flow_imp.g_varchar2_table(28) := '9B0D515303BFDDB93D596880E4FB9329EB817A55A0E081E528FEE21760F8B9C3ACD6650E5B16C2BB77A2E1DEEFC1DAFEEA89CB3C3440F2EAA61A40CEE130FDFBA3F0DE79085E79A5F3556490429759748EF334BEF93A8E2E5E0C7BFBEB9D574C1D1F3440';
wwv_flow_imp.g_varchar2_table(29) := 'E90F90B392D516A08103105C5485FCCB2F87E933949A2D67A1A365A169FB5F7064E9128837DE3CF5E1071AA0F407884B1039A7374A17DF8FE22F4D0205D417D7DB56044D6FFD0D0D37DD0AFAD7079F5C747A72775103947C80FE6FFA34D812E7033975C9';
wwv_flow_imp.g_varchar2_table(30) := '8384E567216FC17C945E732DCCDC1CF902454F10E33B579BB66DC3D17973819A3D679EA2D000C9EBED451FC88E447070F69DB0DF781D42E2DE65417E04E77C07C1EBBEA63EC2EC7CA947D0B8752B1A57FE10E2D5D7BA3FF44A03945C80F87A27BE71D9AE';
wwv_flow_imp.g_varchar2_table(31) := 'AF777DBEAAF36DE50F206FE81018396A9E8713B7C2ED38BA6D2B9AEF9D0FBBE6DDD84E80D7002517A04FBA1472773B09BE06536E18EB9855E7FDF3368EFEE95934CEBB17D6FBEFC188758F9906485E7F2F9A30C5BA5736770603DBC338BAF5051C5D701F';
wwv_flow_imp.g_varchar2_table(32) := 'E8DD7DEEE2D400652F409D33116184FEBC150D4B16033B77B9DF0BA601CA4E80783C90CFA86EDCF2341A9754C1D8B75FEA9E0E3D1726B38C2EEAE4D3B9090B872D346CDE8496450B40070F3A77904A85A47BA04BD16BE313D97BCCAF54A5A918F195E2E1';
wwv_flow_imp.g_varchar2_table(33) := '76D43FFB1C9AEE5B00F3FDF7C0FD65E9F9B22403849123D0FB779B34402A4CC46ACB1D662B14C291E79E47137B9EFDFBE43D4F57A20CD0A285CE8A4492D8DD11DA53838F468E82903C231113C6A2CFAF3664EF39D1B156BE17CF599130EA36FC066D2B56';
wwv_flow_imp.g_varchar2_table(34) := '02EF1F70E071773BC789B970860FC261F8ABE6A3C78CDB631B373A210A42E89F35A81D3D0E86DFFD39D1BC974D5C33157D56ADD1007901C8E9E31088844268D8F0189A975603751FC3B4D52F7D732E7BE103AECEE905EADD47AE086DADA09DBB9D236ADC';
wwv_flow_imp.g_varchar2_table(35) := '06BEEEC95FB510E5B3BE03C3CCD2DB7ADC8A26F33C5772D38E37503FFB0ED87BF7C28C7590D04D622E6F1A3AD111490E85B6859C0BE78213BFE0C5FEB6F4BCEEC94D1DC93E6B43A079FB3634DC7927C48103EE4F84974D389E767CE565690FF47AF65904';
wwv_flow_imp.g_varchar2_table(36) := 'CE3D17B21F91C765510374BAFAE2F5CCC700DAFF5E3CAB3561710B8360DEF02D545455C1C82F80CC653F276556037426805AB66F433D7BA00C0108A525082E5B86E0D4AF4A74DE4FA9940628D301FAE40668011A360C3D56AD46DEF9E77BE5F59202D003';
wwv_flow_imp.g_varchar2_table(37) := '1D17CEDCE35509E2150F376199E0818E01941340FEBC7928BDE5161812375D9F46E765443457A60E243F019C4F584EB05A26D144DA640A408E66B60D73FC38F45CF3300215155ECA388F88D821B80E2A00CD04F0B0EB14136C90490059790194FF610BF2';
wwv_flow_imp.g_varchar2_table(38) := '075D28B595FA0CD2DF46446B65AA4605A0EB01FC5A26D144DA640A4022588882652B50720D779C496DCBD2A72BE01B44B45EA65E54009A04E0699944136993EE0039DBAACBCA903B73064A6F9D017F41613CE49B4C445B64225601682480ED328926D226';
wwv_flow_imp.g_varchar2_table(39) := '9D01E24173112C42EEAC5928FBF68DF09594A84F009F5AFC5144F48A4CBDA800740180B765124DA44D3A02E4CCB3F1FDF2457908AE7C10459327C19F9F2FBFECA47BC10711D13BDD3FF6E9275400E273DDEA01F0DF940DE9069065D830F30A608E1A89A2';
wwv_flow_imp.g_varchar2_table(40) := 'A5F723BFEF009812A79FB9A8903600A51D9FF1FCD775900688531242BC0860BCEB541368900E00F1842F3757466919A87F2572A65D8BE035D3E0EF59E66C6C54DAE3DFBDD62F11D184EE1F3BF513AA002DEAE068A16CE289B03B06D09C39293595E19C57';
wwv_flow_imp.g_varchar2_table(41) := 'D4DE0ECBB661559E8B82ABA7226FC408F8075F8840DF7E30FDCA4B346295B7AA232F5C8F5241152026F705A9941364C48BC65ADEDE85236B57C3FEF06082523D7D320C8E91970FA3A20246FF01C8193208B995E7C1D7A307883748F27D65890D133B3C10';
wwv_flow_imp.g_varchar2_table(42) := 'B724524115A094EF07B107B205DF29E66C219412C94B23CE012F67B3B94B4C804D0226F9127E4F47B44C4AFD1F8E43595121040F407DDD4B91755C0953E0B18EAF2F1E10960E5E009416E341D20A65B6A1F4F84F972CCA00714442081E84FA5C666B9D71';
wwv_flow_imp.g_varchar2_table(43) := 'A57BB563F4995F7EA5E0154069312FA6A454E6194BCF7F1D2F855700F137E77E0092DB1332AF7652BC441F02A824A2886A3E3D0128DA8C4D05B0513543DA3E210A4C21A227BC48C93380A210FDA8637AE34E2F32A6E3889B020F12D11CAF62F71A203EE1';
wwv_flow_imp.g_varchar2_table(44) := 'F2650023BCCAA08EC7530578C0F0CB4414F62A564F018A7AA14A007F0350E25526753C9E287008C0678988FF7A163C07280AD13000BFE38E9A6739D511A928C01BE2A612D1DF552239956D5C008A42D403008F527FD1EB4CEBF85C29F03C80AF11D16157';
wwv_flow_imp.g_varchar2_table(45) := '56313E1C3780A210F12D27AB00F0027C1D12AFC04ADE7A454456BC928E2B405D99164230400F0208C4AB203ADE131468057023113D166F5D120250D41BF5067013809B019C13EF826569FC1F740CE6FE847F44C48385710F0903E8386FC4CDDA140033F8';
wwv_flow_imp.g_varchar2_table(46) := '93D28B1501715729B513E0E6E90F00D601D812CFE62AA19DE85834174214F3A72500FE6AE3DF2500060148D872BC58F29942CFF0D4036F64E06192AEDF5F89A83159794CB8078AA5A042887200FC1577FC8F170817C5629F01CF30107500F8CBE9D88F88';
wwv_flow_imp.g_varchar2_table(47) := '3E4AB5B2A52440A92692CECFE915D000693A9414D00029C9A78D35409A01250534404AF269630D90664049010D90927CDA5803A41950524003A4249F36D60069069414D00029C9A78D35409A01250534404AF269630D9066404981FF07F9F97818C75037';
wwv_flow_imp.g_varchar2_table(48) := 'B80000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7383510942883891451)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250204143546Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900001B1F49444154785EED9D799454C5BDC7BF7597DE671F4064D318148DE6A9890622E016833101812CEE8AC6E5C5A02762F29E88FA';
wwv_flow_imp.g_varchar2_table(2) := '00419118A3A0C69CF04C349AA8C18D10131393E85314348BE6BD28891A77964186597AA6977B6FD53B55DD330E3AC3DC99EE7BBBFBF6AFCEC13F9CEABAB7BEBFDFA796DFAD8509210428910255AA002300AAD4F2546DA50001408E50D50A1000556D7EAA';
wwv_flow_imp.g_varchar2_table(3) := '3C01403E50D50A1000556D7EAA3C01403E50D50A1000556D7EAA3C01403E50D50A1000556D7EAA3C01403E50D50A1000556D7EAA3C01403E50D50A1000556D7EAA3C01403E50D50A1000556D7EAA3C01403E50D50A1000556D7EAA3C01403E50D50A1000';
wwv_flow_imp.g_varchar2_table(4) := '556D7EAA3C01403E50D50A1000556D7EAA3C01403E50D50A1000556D7EAA3C01403E50D50A1000556D7EAA3C01403E50D50A1000556D7EAA7CF00010006739C332CE61330E9D6900E43F4A7D15E851441E0EDBF780D8DCFFE7BD59795EBB202A18300004';
wwv_flow_imp.g_varchar2_table(5) := '6CE12887EF319AB4A29D4E41B4EE44FAEDB760EFDC092B63019C43D8765513C164C3601A4A03C13842A1308CA62644C64F001A1B108A44A141830340B70560484C64EB926F6102A05EA000E08E8D4C260BA3A315BB5EDE8CF4863F417FE169649F7F1EDD';
wwv_flow_imp.g_varchar2_table(6) := '2D3BA133A64C17EAED0F72ED9E1E00430EA70AD2B165D290D3C50290910D8610309A1BA07FE63084A61C8DD8E4C9A8FDE4C1E0D15A84C261E8460E9A20A48A05409EEACE9900171CA2B31BD6967761BDF417B43FF17B247FF12862DD9D30C0C0C32634D3';
wwv_flow_imp.g_varchar2_table(7) := '04633AA0E53A71D5E53301D1A79B0F8231875B07261110B9565DFD97F3DC3F99522970CE910A8710FEF2C9481C7B3CE2871F0973C278E83535E070A0091D4CABCC5EA1620170E020D5DE05EB4F9B907AFCB7C86CDC08F6CADFA177248168184EC484EE54';
wwv_flow_imp.g_varchar2_table(8) := '6BDB3E5C14FAFF9DEA1D34072C99828884810326217ED454844E9C81D8119F8251DB58B133AC8A00A0673AC69CAC6AC99D7416EDCF6F44F2EE7B21366D80F3E6569886000FE9605C80691A84A6817D308F2BAE47545969120039471072CE200096B56073';
wwv_flow_imp.g_varchar2_table(9) := '1BDAB87160938F44CD69F350F3D9C9D06261D583083973E8992E94B956150180E0025C63E0C241F6DD6DD876C76D301E7E08D8BA3D27B461CA9B0EF2839BCAEC8ACBDC4F3EF27A72C4A4652D388CC1696A8671D217D0BC6001621326408041FDBD022A55';
wwv_flow_imp.g_varchar2_table(10) := '1100C8905C9A0B649EDD805D4B1643FFEB5F908D47114A3900DDF0541237EB8905C94E56869BE53CA1FB9307A071C955689C76220CE9FE7AF92350D600C820A594D049A7D1F98BB5D87EC185A8D3816C22065D863255CB4F2D7E2908E80120AB0B184E2E';
wwv_flow_imp.g_varchar2_table(11) := '8A04CB42B2CB42E39DB7A1E12BA7408F44E108C0CC859ACA32952D005C4668B84076DB36ECBC7535BABFFB3D841BEA735D2B8DEDCBD29972B1D42CD2C96E68975C8231975D0673CC584063651B6A2E4B00A4F36B8221F5C6EB685DB102D9FBEF87A9E9B0';
wwv_flow_imp.g_varchar2_table(12) := 'C2866A6D2895A702B9482A076C07C2E6D066CF44C3C245884F3A50F5D4E568B9B203400D7BB883F49BFF42FB0D2B613FFA08E070C858B5F47D35E9A554D60A704DDA50C08180F1B919A8BF661162930E02670CE5F609ADEC0090A39BCC96F7D0BAF81AF0';
wwv_flow_imp.g_varchar2_table(13) := '75EBE0701BA630E8935559BBFC002F27041C19A4F8E2891871DD0A44478F85A697573F501600A8488223C07486543A8DD6A58B61DD7E3B5828045D3058F9895625FA40D5BFB36DC3C96410BAE81224AE5B829A68081634D51394C3BCB82C00505F570490';
wwv_flow_imp.g_varchar2_table(14) := 'E11C5DF7DD879DF3E6211A8F03A6B9DB2AC5AA77A60A14A0E7235A577B2712B77D1F63CEBD487EB8915F0A8032E80DCA06802C80EE679EC696AFCE459CCB81BE46D19E0A74F87E5F99012C9D41B2BB1B4D8F3F8CBAE3BF0433BF00AFD4552C1B003ADFDD';
wwv_flow_imp.g_varchar2_table(15) := '8A1DE79E89C8332FC04944F29FD44B2D0F3DBF180AC8E810B36DB54C25BBFF7E18BDF60144C67D0CAC0CBEE1940700B683B7962F0356DF0CA1C9713F05FA8BE178E556861C0E394E16FA596763AFEB57C288454BFE8A2505402E69968BAC3A37FD091D17';
wwv_flow_imp.g_varchar2_table(16) := '5E00F14E0B184F01A65CB14F29880A08E140D4D5A3EE8E1FA0EE8419AA8AA58C0B95160070585D696C5BB000FC81FB61CA8D166A9D7F292509A2DB954F9D6C5D805902CE9C3918F5DD9508D5D72124F76A94289514004758687FEE59745E7A29F4D7DE86';
wwv_flow_imp.g_varchar2_table(17) := 'C86FCF2B9116F4589F1460B6057BEC18D4AF5A8DC431D361B0D27D1E2B29007657123BAE5B81F4CDB7C28886F24B9A7DB2023DA6640A38BA00BA53887EE312345EB508664D4DC9DEA5A40074BDFE2A5ABE7131B4E7378199B9CD1494AA43016165E11C34';
wwv_flow_imp.g_varchar2_table(18) := '09CD3FFC016A0E39AC643381120120E0381CDB1F7A105D175F8CB0FC5CCEE4D66C4A7E2B90DBC1558A2490716C34ACBA198DA79E0961A81D04BEA79200600B1B562A8BAD0BBE05EDEEBBA12512BD9BB27D57A08A1FD8D7E1FC0E3CAB9068320971C66918';
wwv_flow_imp.g_varchar2_table(19) := 'B34A0E816325D945561200E4711C99D616BCF1E9C391D8D5091632C17A4EB3AA6287F4BBEAA50440D655AE174DA73398F0C66B08378E865A45EAB308BE03205B1AB9A125F9C273D8316D3A58634DEE580D8F9A20B573497E6FC86F9D2C4D77EFB355FB79';
wwv_flow_imp.g_varchar2_table(20) := 'DC6E8EC5183286504B968D2C2FD99A2B4713E06D1D48FCE631D41DFB3984E5512CF9A36BFC52CC7700E4693CF2D3C7BB37DD025CF11DA0AECEB3BA6AF29B82DCA29148404422EAB4829057A479568BE2142C7B5D79B8006C1B22DB0DEC6C078B1A10BAA1';
wwv_flow_imp.g_varchar2_table(21) := 'F6EF8AFCB940C5799AFB52587B3BF8F54B30FEF285EA543FC3E76F02BE03201D5222B0F5ECAF813FF41858D4BBCFE19AE3205D5F87F025F3119F3C05100634AD7A8F43E48E80D3DD8DEC1B9B219EFF5FF077DE80B3F95568AD3BD5D273DF5B5FC9493289';
wwv_flow_imp.g_varchar2_table(22) := 'EC09C760C2BA5FA906CAEF2F02BE03207B806C268D967F3B1CA2B5054C7833EAEBD9A46D8D1C81FA5B57A3EEF333D436CB123574EE9B441F72AAC84F268BE45BFF42F7B31B915DFB08321B9E4698DBB903C57C988FF59E30EA38E83218C6BFFD0ECC48CC';
wwv_flow_imp.g_varchar2_table(23) := 'F7BDC3BE03A0767C6D6FC15BE3262051175767C878912456DCB260378F40FD6DAB513763063469586F78F3A20A9E97E9C0062C8ED47BDBD0F6C0CF615FBB0C884900BC5F9AD00B0080CED656ECFDF66624C64CF4DD3CBE0320D7FD2737BF8C2D9F3804F5';
wwv_flow_imp.g_varchar2_table(24) := '8D8D9EC5A00980C1F9918D913C1057772CC0B2D1F1C7DFA36DE66C188DB52A30918BD47893FA0290696D45C386A75037796AF00190A2B76F780A2DD38F43ACB1D11B75F3DBEDA807702BAF9C1C03499D21F9E8FDE838FB7C84E5A1C21E0E48FA02906D6D';
wwv_flow_imp.g_varchar2_table(25) := '45CDBA87D1F8C559D50140EB63BF4472E66CE804805B0FF5349F2378EE6449B951319BC17B2BAE4776D50F1056DB16BD79F48701883C703F467DF92BD503407AE66C0802C01BEF1A6AA9027054C0582E49D19179F34DECBCE43288279F801689783614EA';
wwv_flow_imp.g_varchar2_table(26) := '99FDC91E207EDF3D18F1D5D30880A1DA6EA0FC3407189E92F27B01CF5A68BDEB1E745DB308A14C1AD075CFE602F22DADD656D4FDE2A7689C7BBA47219181B5F07D122CDB193904A21E60780EEAF5AF2400F2C486CE575E46DBFCF9D0FEFC57381103BA87';
wwv_flow_imp.g_varchar2_table(27) := '27F2F500D034F774AFABF791F20900DF25AF8C075AE914B6CF9F0FBEF64138510386ED4DB8BA6F0F400014D137680854B8985B6FBB1D99E5CB6166339E6E53A51EA0705B7DA40402A03051655068E7AFD72379F17CB064BBA78B140880C26CD5EFAF0980';
wwv_flow_imp.g_varchar2_table(28) := 'C245EDDCF82C92E79E077B478B8A0E799508000F9425000A175502D07EEE79B0766E8721BC5BA64600146E2B1A0279A061E7A60DE89897034017EA9E174F1201E081ACD403142E6AE7A667D031EFEBB0DFDF0E2D77D191278900F0405602A070510980C2';
wwv_flow_imp.g_varchar2_table(29) := '35FC4809F421CC03513D2A9200F0405802C003513D2A9200F0405802C003513D2A9200F0405802C003513D2A9200F0405802C003513D2A9200F0405802C003513D2A9200F040D89202A0EEEAF1A052012D9200F0C0B07E01208F9A631687357224EA57DD';
wwv_flow_imp.g_varchar2_table(30) := 'A24E8528F55DE5EA3AD8FC3918A57E1737A62500DCA834C43C7E0120AF5ED21D20535F8FC8A51723F6A9237A8F471CE22B1725BB3C9931AB19881FB03FE2239A5109676113004531FDEE85F805803AFE47DE542EB7F8D524A087427044E98E0562A609FB';
wwv_flow_imp.g_varchar2_table(31) := 'D4D330EAD2F988D6D557C4488C00A86000767B75D9FCE60FC7F5A04A7B2C524D39DADA903AF74CEC73CBED3062B1B2B81ED48D0E04801B958698C7AF1E6088AFE54D76095D2A85CCEC39D8EFAE356046EE84854A4904800796AA1A00388790C77DCFFD0A';
wwv_flow_imp.g_varchar2_table(32) := 'C67C7F25B49A063075F84EE584A108000260780A48E79731A79933316AE9B5088D1FABE622DEEDA91ADE6B0EF62B0260308586F1F7C0F700F2320EC78676F22C345F7535C2FB7D1C82E5829E95D3F6E70C4B000CC3C107FB49D001E05D49B0593331EABA';
wwv_flow_imp.g_varchar2_table(33) := '1B60EEBB4FEF84B7D29C9F0018CC9387F9F72003C077ED42D731C763DF9FDD8DE8885190A7B15762CBDF635AEA0186E9E47BFA59200190D19EAE2E243F7324F659BF1EA1444DEF70870018DC89684BE4E01A956D0E2138605BB0A64EC7843BEF021BD904';
wwv_flow_imp.g_varchar2_table(34) := '7915975989639E0FA94C3D80076E17A81E201FEAE4C71D8786C54B103FF813EA8E2B15F161954F000140000CA800670246770ACEB1C7A17EE932443F7930745D87BC99D261ACE2429EFD55940020000654404B7620F5992330FAE6DB113AE460D5E26B5A';
wwv_flow_imp.g_varchar2_table(35) := 'E5B7FA7D2B4C001000FD2AC0D26958871E849177DD87E8BEFB400BC070877A000F9CBDBF222B7A0E20A33D9685F6580D26BEF02C8CB1E355B427A8174F520FE00114950A001302763A057CEA308CB8E3BF113F70221C21A0CBD17EB0463EBD5627000880';
wwv_flow_imp.g_varchar2_table(36) := '9C029C83CB559D471C8E112BBF87BA4F1F014DD73EB843D40F00E43D5E2CB79E48AD3492D779793CF422000800C896DF4976C139F430345DBF1CB1A38E826E9ABE8FFBE5661EC52204EC8E1DE0691B91917BA9F7F06A7B2501400000E934D263C7A0E947';
wwv_flow_imp.g_varchar2_table(37) := '6B5037793298BC30AE04614E39749429B5E31D6CBFE956D49E78221A8F3E3ABFB5D29B2E8800A87200E4E4B6DDB2307AFDA3484C990A53D3D455417E4E7AB9FCD2CC84BAB9DD828D774F391BDAFFBD88DA3B6E47EDF463D4BB78E3FEB41AD403F7975DB8';
wwv_flow_imp.g_varchar2_table(38) := '3FB74416F2F2D2A144268394A6A1F9F98D48EC7F000CE588D2F9FD737F010109807C6AFAFD16BC37EF1C847EF35B84F69B88C89A35A89B3E550D7F0880E15B3BB0B7440E5F12803B0E32239AD1BCE647A89D361D9A3C4F484E3CF3EBFA0B29DBED6FA5F3';
wwv_flow_imp.g_varchar2_table(39) := 'CBA772CED1FDE6ABD87EE56284D6AD839388225CDF9C07609AA7AB4D6908E4D65A43C857D63D403ECECF27EE8FC892ABD1F0F993A01B0C3AD355CFE5D7CA4ED9EA2B00E422D3573663E7F5D703BFFA150C5DCF6DEE6F6A469C7A802178DDC059A907E8AB';
wwv_flow_imp.g_varchar2_table(40) := '8D6D83EF3B01354B97227EFC0C848D101C832B00FC4C5C2EA7131ABA5EDF8C1D572F8578FCD708C977D0341592650440D1CC51F500E40637B26115C83634A0F1C695A89971225828048D6972D8EFE128BBAF1DE519461C9AD0549429D5B20D5B2EBC00FA';
wwv_flow_imp.g_varchar2_table(41) := '934FAB969F49E7CF7F9320008AE6FF32CCEDEF8139E53804E29A039E7190F8F9CF103F6106A2869E9F587A35BDFCA801B98CF073B98C5A43AAAB135B4F3A01E60B2F81C5E3BD1FBC5428947A80E279BF1CD6563B00927FC7B69058FF109A8E3A1E1A1770';
wwv_flow_imp.g_varchar2_table(42) := '349E6BFD3D8BAFEC6EC39EC352B810E87AFBEF78E7EC7F47CD868D709AEB61CACFBFF9440014D5F75561D50D80E320DBD888DAD5B760C417BEA8BEB32A27934728327FC29D72F798F4714D70A45E7B15ADDF5900F1F81FA02512BBE197FF104C3D409119';
wwv_flow_imp.g_varchar2_table(43) := 'A85A00E4D12562DC18C4AFBA06F193E7206A98E0B2E5F731CE2F6D69CBD5A4B685EE97FF86B665CBE1FCF149B5C0AED7E13F6C701A02151581AA0440380E9C317BA3F6CA85A89D3D075A38AC629C72C8E34BCB2F8F2A65B9C9B7C339922F3E875DFFB518';
wwv_flow_imp.g_varchar2_table(44) := 'C633CF03BAA1DE810028AA9F0F5858D50120C7F77AA20EFAB265689A351B7A2C9C1FEFFB15EDC92F2295ABDB7486F67FBE88ED175D8CF08B2F43D7F2A1CE3DD99E7A80A292517500209B45F8A73F46F38C99D074038E6E4367DEDD82DEAFB5F2CD7BE73B';
wwv_flow_imp.g_varchar2_table(45) := '9BD1326B2E8C37DF03C226742EAFCF18241100832934A4BF071E009E9FCBB2AC816E2B8986357760E4A967A8C9AE100E74B9AE5EB6BCBEA49C7B732ED0F9DADFF0F6D127A196A761F0DC987F50E7A73068D1AD1478006410D1110E9C581CE6558BB0F705';
wwv_flow_imp.g_varchar2_table(46) := 'E743174649F631CA30274F67907C69135AAE5888F0A63F434BD40ECDA8D4030C4DAF4172970C80EE99B3C11A1B8B5A99BE85E597AF41D80E9C114D302F5F80C673CE43CC34D5975619ECF1E33357AE65CF4597329685E41F7E87CE258BA1BFF24FF090E1';
wwv_flow_imp.g_varchar2_table(47) := '6ED8D3B7620440517DA664002467CE86D1D80079BE8E17496D5A495910A3F68279F9A5A83DE32C44E33590E17D7574B9170FEDA74CB9A84D7D6C930BDB9E7B0E1D572E8278E92FD08D905A5E3DE4DA130045B55C4900D8F6C87A24E7CC44D434D5163F2F';
wwv_flow_imp.g_varchar2_table(48) := '92C1183A9B9B507BF5428C387D1E8C442D2C0D0879F1B03D94A9865FD0D1B5E129BCFF8D6F22BC6D9BDAC535EC5A130045B5A0EF00C8B74F6E7E0DADEB1EF1B815663027EC8B91B34F82160A81CBA50D724F8B3F1F78D5CE1F753A34035A36FD0F523366';
wwv_flow_imp.g_varchar2_table(49) := '41E30E5824042617BC0DD78C04C07095EBF7772501A0E74DA413F4EC752D6AADFADCC6D2E3687E0D79543D442ED223D777B66E7812E973CE07EFEE80C68B106D22008AEA2A2503403ABE6A07BD224063BE6E62C9FB7D6E1717804C268DE4138FA363C177';
wwv_flow_imp.g_varchar2_table(50) := '10DABA0D22128626BF00176A3E02A0500577FB7DC900C8BD45C1EE305890ABA8620D5698BC134F0EB178268DF6C71F43C7B5CBA0FFEB4D40D3E16842457C0A4E0440C112F62DA0C40014B52E252F4C0260731BC9F5EBD0B66C29B437DE82AEC903D38B98';
wwv_flow_imp.g_varchar2_table(51) := '0880228A5982E5D0457DFB72284C2E67EED92F2C801D4FFE06A90BBF09ECD8012D142EFE1B120045D5947A8002E594CE2F83FC8EC6D0B6E1F7E89AF965C0D461088FC24D04408116DBFDE70440A17272206559E8FCE5C3D8F5F5F3118D182ADAE3D9EC86';
wwv_flow_imp.g_varchar2_table(52) := '0028D462E534092E6A5D7C2DCCCE4774ECAE2E74AC7B041D8B1621946C870E0376B126BCFDD5880028AA9DA90718A69C690E88AE2EB43FB8165D2B57427FEF1DE85E8CF93FFC7E0106A071EEE91E7F1CFDA8B10980A100200FD050914C8654C642EBFDF7';
wwv_flow_imp.g_varchar2_table(53) := '2175DD7284B66E8550431F8FC6FD7DDF31800038ADAD88ACBD1723E79CEAF386548A020DC5FDE1080E8D0396AE61CB9D77C2BEF65A84DADAD489D13D600CA9C0E1640E200090003CFA109ABF7432F500C3F109DF7EE308746B0C1DF7DD8BB60B2E424C7E';
wwv_flow_imp.g_varchar2_table(54) := '6D8E868BF381CB6D25020880DDDA8AD8EFD663D4715F70AB42D1F2D110C88594B993E3804C368B8E7BEE43DBB7BE894424D21BE9F12CE2F3A17793032CC139F4E6FCE1B8D33C3E1C77E333683BF7EBE0EF6F8706EFB68DCA9BE2E3CF3C8151538E75618D';
wwv_flow_imp.g_varchar2_table(55) := 'E26621005CE869C99D5C9D9D78FFE73F43F7F2E588A452F98B29F2C72ABA28A3D02CBD07F3CAEB9A463522FE9335481C39154C1E27E7C1C081310D9D1B9E46C7791780B7BDAFB66D7A9164BD3A76B561EC5B2F23316622CD01BC10795865AA1323993ABE';
wwv_flow_imp.g_varchar2_table(56) := '24DBD6869DF7DE85EE5B6E83B9F37DC0D060E4D7F5B8DECB3BAC97F8E047BD004818EBE2085D7801CC49077AB8B58721FDFACBC8DCBE065A7B3BBCBAFA9B390EDA6A6BB1FF3F5E41281CF104E63D494F3DC000EAC88D2C1C3A58A60B2D3FBE0BE91B6F84';
wwv_flow_imp.g_varchar2_table(57) := 'B1AB0D30E46DF01FFCC8AFE14FDF657432D8C4C36108D3BB61898A75C95B30BBD3904EEA553D593289D4AC93F0F1FB1F843C155BDDBAE96322000610DB12367447C78EF56BD131FF32843A3BC0C26175667F5924D943797DAEB13A1ABB082B58F720186B';
wwv_flow_imp.g_varchar2_table(58) := '6F87B3E25A4C58F09F9098F51C4BEC97C604C0004A7723B77D72FB8D37C05974359C86848AF6C8DD5C940A57A0072BBBBD1D8D7F780AF1A9534A72E93801B0871E406306B67D7705C4A26B20EAEA0AB73A95D0AB40EED40E07C934C3C457FF01B65733F4';
wwv_flow_imp.g_varchar2_table(59) := 'DC2E295F13014000F8EA707D1FC6934988D3CFC2B8D537438FC5201C01A67B3BE4FA706509803D00603203EF510FE0112002361388DCB21AA3BE760A3479FFB2EF31205A0A31A071E5249800F0C8F7E5F0C7CA427CFA3034ADBE0D89030F2A81EBE7EA46';
wwv_flow_imp.g_varchar2_table(60) := '3D00F500DE79793F25F70C70AC741AD1F997A0F9CA2B61D4247C7D87BE0F23000800CF9DAFEFF5B2729E6B730B18371EF5AB56A17EEAD1609ABFE37E02C085C96908E44224975976BB5F5908D8A9148CD34F43F34D37C18C27A0F5DC80E9B2BC6266A31E';
wwv_flow_imp.g_varchar2_table(61) := '807A8062FA53BF65EDF6159B67A18F1D8FF81D3F44FD9429F9A3717C8E7DF6794B028000F01C80DD1E90CDC0B8FC328CF8F6153062517F9FDDDF9CC4EF6B524B5E63972F4043209742B9CCA67A81AE2E648E9A8CB177DF0373F4DE7E7FF3EABF772200FA';
wwv_flow_imp.g_varchar2_table(62) := 'B72001E0D2B307C9D63BFCB12C646321343DB016B1A3A6C394517F8FD719B9A9010D816808E4C64F0ACA2318076BEF04FFC9DDD8EB6B5F852918842EA0337F577EF6570902800028C8B907FFB18093C9C2B87C01465DB11066D8842D040CB9ECB974D1CF';
wwv_flow_imp.g_varchar2_table(63) := 'DED726000880C17D789839B8BCFE44D7A0CF3A1923162F4578EF519E6DAC19E62BD297E08184A339C0705D2AF73B792F1A3774987366A3F1DBFF89C8BEFBC166164C0FF7160FE78DA907A01E60387ED3EF6FD48D38F27E0426C0D219B0D34E45D3C28588';
wwv_flow_imp.g_varchar2_table(64) := '8DFF98FA43CF6581457B60110A2200088022B851BE88BC93A32309ED9A456898773EA2A3F752CE2F6FC92CC74400100005F9A574EB9E4B7EE45191564302C68DAB306ECE1C752B8E4C324F19CC77FBAD270140000C0B00E9D0962110B200471E97C735F0';
wwv_flow_imp.g_varchar2_table(65) := '2947A261C552840F3A1C11E5F1E5D9EAF7AD300140000C1F006E414B5B60930E8079E629A83FE32CB091A311B205B82E6094419C7FB0CA110004C01E7D24B777379FD4F12802B06C35EC11FBED0B73DA74C4CE3E07B5871E0ACD34D5C587F20C5575BC49';
wwv_flow_imp.g_varchar2_table(66) := 'B98E7BFAD4980020000604401DC5D8F34F0864E4D1308938B4C30E4774DA34448E3D16E6942988993A349FCFF319AC6577FB77026000A51CD8EAB28B6ADC13AC1A6EC7015229D88E83ACBC77799FB1D067CD45C3B1C7C19CB43F42A3C7408F85C11D064D';
wwv_flow_imp.g_varchar2_table(67) := '17601530DEEFCFD404C00000C87381A2B6C096EFDF00FB3F160225DCB4E1B6352B349F1AD6C8C96D240463D281C0C187203CF548D41EFE59C43F36012C1A030B85C002A405013080D7F43843E7EB2F21F3F696427DABEC7F6F9A51E5D8D17113209A9AA0';
wwv_flow_imp.g_varchar2_table(68) := '47A36AB19A5CAE262F022CC5993D7E8846000C0880323BB870A0554034A318CED213D39775D69926173380E78F5F9427640431110041B42AD5C9B50204806BA9286310152000826855AA936B050800D75251C6202A400004D1AA5427D70A1000AEA5A28C';
wwv_flow_imp.g_varchar2_table(69) := '4154800008A255A94EAE1520005C4B451983A800011044AB529D5C2B4000B8968A3206510102208856A53AB9568000702D15650CA202044010AD4A7572AD0001E05A2ACA1844050880205A95EAE45A0102C0B5549431880A100041B42AD5C9B50204806B';
wwv_flow_imp.g_varchar2_table(70) := 'A9286310152000826855AA936B050800D75251C6202A400004D1AA5427D70A1000AEA5A28C4154800008A255A94EAE1520005C4B451983A800011044AB529D5C2B4000B8968A3206510102208856A53AB9568000702D15650CA202FF0FBD79ADB123CDE3';
wwv_flow_imp.g_varchar2_table(71) := '5A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7383511242845891451)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250204143547Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED7D099C15C5B5F7BFBAFB6EB30F03C3AAD1A81017DCD0A0C6B8F14C348B18E38BDB33EA533F971805141414';
wwv_flow_imp.g_varchar2_table(2) := '5954045170C16C2FDF4B343131318BC6E78B26269FE292A879CF25713728AE802CB3DFADBBEB9B53F75E189061E6CE745777CF3DA5FC189DEE5355FF73EADFA7AA4E9D12E0C2083002158B80A8D89E73C7190146004C006C048C400523C00450C1CAE7AE';
wwv_flow_imp.g_varchar2_table(3) := '33024C006C038C400523C00450C1CAE7AE33024C006C038C400523C00450C1CAE7AE33024C006C038C400523C00450C1CAE7AE33024C006C038C400523C00450C1CAE7AE33024C006C038C400523C00450C1CAE7AE33024C006C038C400523C00450C1CA';
wwv_flow_imp.g_varchar2_table(4) := 'E7AE33024C006C038C400523C00450C1CAE7AE33024C006C038C400523C00450C1CAE7AE33024C006C038C400523C00450C1CAE7AE33024C006C038C400523C00450C1CAE7AE33024C006C038C400523C00450C1CAE7AE3302154B0052CA7A001301EC05';
wwv_flow_imp.g_varchar2_table(5) := '60EFE2DFF4F318368B218DC087005E01F0728FBFFF2184681DD2BDEEA573439E00A4948D3D06380FF44AB4F2FEF5797BC4F08A106253FF5E8FE653439600A494C3007C15C08900BE00A02A9A2AE25607844017804700FC16C04342888D01B5C3D76A8714';
wwv_flow_imp.g_varchar2_table(6) := '014829772E0E781AF44700307D458F85570A020E8095007E437F8410E42D0C89322408A038F01701380D80312434C39D082B022E807B005C23847837AC8DEC6FBB224D0052CAD100E600F83F00E2FDED343FC7087880400EC0F7002C16427CE481BC4044';
wwv_flow_imp.g_varchar2_table(7) := '449200A4940D00AE06F02D00A94090E34A1981020269007700B85108D112355022450052CA1A00970298098048800B2310160468F02F01709B108248211225320420A5FC0C80DF03D82512C872232B158155008E1542D0DFA12F91200029E561C5C15F17';
wwv_flow_imp.g_varchar2_table(8) := '7A44B9818C00B01EC0D784104F861D8CD0138094F20C00FFC98B7C6137256EDF3608D022E1F94288BBC38C4C6809404A496DBB01C0EC3003C86D6304FA4080B6A769CB508611A93013C0AD002E0B2368DC2646A04C04960821AE2AF31D2D8F879200A494';
wwv_flow_imp.g_varchar2_table(9) := '1702F8AE1604B81246400F02341DF8A19EAAFA5F4BE808404A792880C7BBDDFF58FFBBC14F3202A14720DF6DD7470B219E0A534B43450052CA3DBA0FEE3C0D60789840E2B630021E21F03180C385106F78246FD062424300524ADAE2FB5B779C35910017';
wwv_flow_imp.g_varchar2_table(10) := '4660A8224083FF6021445B183A180A02905292BBFF1005508401146E0323E0330274CCF84B42083A581468090B01F0A25FA066C0950780C04542083A4C1468099C008AAEFF9B009A0345822B6704F422B016C084A05391858100E60398A7177BAE8D1108';
wwv_flow_imp.g_varchar2_table(11) := '05020B841064FF81954009404A495F7DFAFA738C7F6026C0150788002522252F80BC81404AD0044073A00B02E93957CA088403013A3E3C2DA8A6044600524A3AD6FB16E7ED0B4AF55C6F4810C8504A7A21C4DB41B4274802B817C02941749AEB64044286';
wwv_flow_imp.g_varchar2_table(12) := 'C02F8410A706D1A64008404A39AA3B8F1F65560DA4FE2080E63A19811D20402705C706915B309001C8877D783030029F402090B880A008E061005F642360041881CD083C2284384E371EDA09404A598B42CA244EE3AD5BDB5C5F9811A00C4223749F1108';
wwv_flow_imp.g_varchar2_table(13) := '8200CE06F0A3306B62206D2BA57B115242FD2CE85F51F899173BCA869470DBDA380B48CAE2FFD56EB865F760402F9C2684A0C5716D453B8E52CA21E7FECBE2A0974240B82E1CB864A9301C076E2E0B279381CC3B003DA7FE14CE8068075F9B5995579121';
wwv_flow_imp.g_varchar2_table(14) := '882D0B173A1132EA3F6316AC6412463C0198268430D4FF7760A8AB9FE8E721581E1042D0B576DA8A561887A2FB4FDF7B473A10B6837C7B07F21F6F04D67D04B9E623643FFC084E6B2BEC964D90E90CE0BA80E316FE2E128056056833ABF22A22E294A609';
wwv_flow_imp.g_varchar2_table(15) := '43812101D3009229980D8D10F5F5B04637C31A3D0AD6C8B130478C40ACA616C234200C43795943A8689F0668454F4A497B9D3F8FACC2945F2AE12A4794BE4312F6A68D687FE515649F7D16EE5BFF84FC602DE4DA0F800DEB60AFDB08E515A8D70ACE2BE5';
wwv_flow_imp.g_varchar2_table(16) := '862C4E12F812C3A22114E8B080A9908569932B84F206A4EBC26C6E8218D50C6BC46818A347C1F8F4AEB00E3E08357BEE83C4F0E6CDAE940B57BDDF1D5F1F5913A3FB2D754E03B422D5BDFF1FD9D05F1AB46460364C98761EE9D5EFA2EBA995904FAC44FE';
wwv_flow_imp.g_varchar2_table(17) := 'EF2F23FFF66A18E94E9834AC0955CB22AE008C826BBB3925ACA09F43992036F041A3A8B20734CA38C95B320C4504B06D450C765512D6B871887D6602ACCF1F81EA638E416A974F4358969A62110168356C6F91FBBE10828EC76B295A7192523E06E0482D';
wwv_flow_imp.g_varchar2_table(18) := '3DF3AC92C272947425EC5C165DABDE41FABF1F40F64F8F41BEF506E4BAB530B2791889189C6402862CBAA59207B9672A280952035BC29679C84C16304C60F808C4C64F406CCAD1A8FACA7148ED3201663C0151984F44B13C2E84384A57C3B5A2D41D00B4';
wwv_flow_imp.g_varchar2_table(19) := 'A63BDBEF485D9D1B683D3474D5B0776DF5939BB19179E76D74FCE951641E7C08EEABAF021B36C1320564D252D590EBA926B1EA3A032E7E2140E84A9A4611194840E4F2B0ED3C30AC1162CF09481E7F026AA64C4162B75D61A652CA1BA02B2622342B58DB';
wwv_flow_imp.g_varchar2_table(20) := '9D28842265B5146DD65ABCD17793965E0DB61229E190F7295DB8AD2D687BEC49B4FDFC27883DF71CE4864D30E8CB63C5D47A40CFA28C73B075F3FB7D225032DA9E580B9A1E380E9CFA0688FDF645CD9967A26ECA14C4863502C22C6ECBF6293A2C0F34EA';
wwv_flow_imp.g_varchar2_table(21) := 'BA695827011CD21DFDF797B020DC5B3B8A0E3FF28E83FCBBEF62E34F7E0CF98BFB60AF5F0719B310CB069EC62DEC106A6F9F5A5C2D6E21D29A814B043EA209F25FBF8A91E79C8FD4CE7BC0344D4823326B0387764705FE5507903A0920F479FFE8ABAF08';
wwv_flow_imp.g_varchar2_table(22) := '209341FAF9E7B1F6DAF9B0FEFA34CC9805C73260D05E3E7DF9B9840A819211DB868421050C59D83DB01D0977FF03307CD10254EF3F09A029812B61D20BE15E23D0762E40270184FAAA2FB539475F8EF60EB4FDE11174ACB813F2E59721688F9F8250D40A';
wwv_flow_imp.g_varchar2_table(23) := '354D3AB54116AA411685C6D0F2CB56B3329A12B80EDC89FBA1E6E28BD078FC7130EA1AD40261616F26B4455B92106DD61CE608401AFC0484DDD686D607EE47E777BE03F9DAEB9016059B9830D8EB0FED48E9752A5708BE286C1DBA80D87D37A4CE3F0FF5';
wwv_flow_imp.g_varchar2_table(24) := '277F0389614D61EF8FB683413A0920943B00E4F68316FBDADBD176FF6FD1B96C19C43B6F03B1385C8A34A38F3EAFEC857DC06CB77DA57501DA3510B91CDCE651485D7A291A4F3F0DB1C626B80230C3D9B3D54208CA98E57BD14900A11B46D42035EF6F6B';
wwv_flow_imp.g_varchar2_table(25) := '45EB03BF417AD972E0AD3721ABAA61B85B0EF2F8AE05AEC077045C03B03A3B911D350E55B366A0F19453D574C05287B64257B24288A48E5669EBBBA40976484A31A257693E9FC9A0EDBF1E44E72D3703AFBD0A198FAB4524F5CBD0B43824C045BC191413';
wwv_flow_imp.g_varchar2_table(26) := '607775414E188FDACB67A166EA094854A72880B870C02844FD139AE299B5F5395C042029D81CB6EB20FDDCB3D8346736C40B2F02965958EC2BADF785C820B829DE20205C070E1DE0DA7B5FD45E3F1F4D871D0E69C614E9170F247A53D120A530010C12C0';
wwv_flow_imp.g_varchar2_table(27) := '1DBDAE4EF0B912B97757E3C32BA6C178F22998B60B830246B80C7D04A40BDBB661EFBB0F46FDE83F90DC75024C5AEC0D51CF99007C5406114066530BD6AFB81572F96DEA58A98A2B6797DF47D4C3215A2D0CD2AA6E26A716018DF3CE42F3ECB948348D08';
wwv_flow_imp.g_varchar2_table(28) := 'D5294226001FEDC54967B0F10F7F44D79C2B61BCBF0E88857325C847082A5A74E19C07CDFC01BBB11E758BAE47FD57A6C2ACAA0E0D2E4C003EA842EDF713F9AF7A1B6BE7CF051E7EB8740A3D540B403E749D45F68280EBE681433F8711372E466AEFBDD5';
wwv_flow_imp.g_varchar2_table(29) := 'D1636D0B633BD00A1380D726ABD6FD1CC8AC8D0D77DF8DECE225C08636003975769F23FCBC063C1AF2A4EB4056552139633A9A2EBA18229982A13E0BC1D2001380E7F643093D04D2AB5661FDB7BF0DF9C413882512AA160EF4F31CECC8087468F93F6BC3';
wwv_flow_imp.g_varchar2_table(30) := '3EE41034DD7C136AF6990843BA30035E106602F0D88454222F4762CDF7562077CBADB036B6A8D37D5C1801E9E4E1D6D62275D9340CBF6C1A84497101C1EE093001F860975DEF7F80F5DFBA18EE1FFF0CB32AC531BE3E601C45912E79019D5D308E380A8D';
wwv_flow_imp.g_varchar2_table(31) := '77DC81EADD760B78024033523DA7CEB44D74820E04A295DF75BFBC175DF316C0FCF07D2091E418FF288E569FDA2CF33938C31B5135EB0A0C3FEF429846B0DE211380878AA6D5FF746B2BD6CC9C0979EF2F104B50369FC2411F2EE14020F06C4A2A2C3C0D';
wwv_flow_imp.g_varchar2_table(32) := 'EBC413306AF9AD88353507EA05300178649785BCFD2E363DF32CDA66CC80F9C2F3306B6A39E8C7237CBD1053CAE853CAC5E885CC7265A873021D1D70F79D88A65B6E41EDA19F537903B4B9C8DB349809A05C0DF6F23C1180EDD8F8F8873F40FA8645B0DA';
wwv_flow_imp.g_varchar2_table(33) := 'DB21286B2C2FFD7B84F0E0C5F45C6E0B9204A463C34EC4507DC54C8CB86C1A60C60AB7140DBE8B654B6002281BB24FBE503226B7AD0D1BE75F8BAE1FFD5F75DACF9446216D940775F426A2908FA2749F9DBF75F9D80D4F4597BEF405A1422550B64DA9A2';
wwv_flow_imp.g_varchar2_table(34) := 'F2CCBC54F1187EEAA4AFCED09161279B45F28C33507FFD0D48D63716D287E9598FDBAA794C007D69AB5FBF2FA4F9A25CFE2DB367C37DF8F790C984AF73FFD2C07729134D31C680BE707CCCA84082CAF12A1223B9D8D27120E3A6CAD147C77184A4309C80';
wwv_flow_imp.g_varchar2_table(35) := '0AA510CFA4617CE158342C5E8CE46EBBC110B421A8DF076002F0C00694C1B92EBA9E7B062D57CE029E7F09A0E01F1F531318C594E2F94907A2EA0BC70174C125044CA1720F5574290D6C27EFC0EE6847FEEDD781175E85D9DE0AD9DA06914EC3302D754F';
wwv_flow_imp.g_varchar2_table(36) := '602085BEF47491EB3E7BA2E1A6A5A83AEC70986A1D800960D0FA086A1BD0711C743EF4205AE75E037CF091AF87BE9599D0EDC0346F3CEB4C8C9C792544557500E6336875F92A40E586716CC8AE4EB81B5AD0F1FA2BC83CB612EECA2720DF7B5FDD9F48B7';
wwv_flow_imp.g_varchar2_table(37) := '03EB1C789B17226D1BCEB07AD4DEB808B55F3F0516DD4CEC2B1ADB17CE1E8047A03BF92C5AFEE3C7E8B86E010C27E7EBCD3DE4EA93C74179E9CDF3CEC5E86BE741D4D414320C0561451E61E8B718279F47AEBD0DE9A79F45FB8FEE46FEC93FC1CA6560C4';
wwv_flow_imp.g_varchar2_table(38) := 'FC9DAEF5EC57CFF5899CEBA0EADA6BD4D9002BAE2533D727206602F0C0EA68DCE5BABAB0E1B6DB915E7A131274C9A48F0B3A5B080030CFFD778C9EC704D01F35528E1E0ABEA5B31A5DEFAD46E79D7722F7CB5F40D08E8DA6D593CD0420A5BA142631ED62';
wwv_flow_imp.g_varchar2_table(39) := '0C9B3113F1DA8640B89B09A03F96D3C7334400E996166CB8F926E4EEFC2EE234B76402F000596F459492B3D21D0C86E322BDEE63B4FEF0FBC8FCE83F61B4B5C330FCBF8CA52701D0B43176CE59689C33475D3F1E84F3C604E0818D9161653F5E878D8B6E';
wwv_flow_imp.g_varchar2_table(40) := '40EEC777ABEBA198003C00D62711EA721657AA3CFED9B51F60C3D2A5C8DE7B2FE21907468C1606FDDB1FD88A006C1BC6E9A7A269EE3CA4468FF6A9B73B16CB04E001EC8A00D6AE41CBC205C8DFF373DFCFFDF31460704AA3C5415A3F5179FCA540D7EA55';
wwv_flow_imp.g_varchar2_table(41) := 'D830EB6AE08F7F82654848D3BF137ADB12004E3E19C3172C40D5D8B183EBD400DF66021820703D5F2B1140EBC285C8DFF333489F137F30010C5E698A04D4218DC2906C7FF061B45C3513C6FBEFC288C755057EF901CAD5A76D5CDB86F5AF2761D8FC0548';
wwv_flow_imp.g_varchar2_table(42) := '8EDD89A70083572BE1EAE3E67B2F0D6402F04273C1C8A080A1C2146E23D6CFBE0AEE6F7E05CBE745DC02BB48501057EC94AFA169DE4224C6EC140800EC0178003B138007200624A214446DE7F2D874DF2FD075ED3C982DAD70620226055AF8557A10C0F0';
wwv_flow_imp.g_varchar2_table(43) := '790B116702F00669F600BCC1B1D2A4D0C260E78B2FE0E3F3CE87B56A15EC98018B09C03333F0914AB76E231380673AAB3841D977DFC34773E7C2F8DDFD30AC986F6B00DB4E01D803F0D0D498003C04B3C244E5D6AFC7C72B6E87BD6C394432AE0E0CF956';
wwv_flow_imp.g_varchar2_table(44) := '780AE00FB44C00FEE05A0952EDB656B4DC7D1772D7CC85ADCE08300178A5779E02788524A0CCB270168043813D8415765B1B5A7EFA13A4E7CC819B3061B83E9E16640FC04BD56D91C51E803FB8568254E501DC7337BAE6CC851B376152E60EBF0A13803F';
wwv_flow_imp.g_varchar2_table(45) := 'C83201F8836B254875DA5AD17ACF5DE89A3D174E9CB239F998B19709C01F936202F007D74A90CA04E09F96790DC0436C790DC043307B886202F0075792CA04E021B64C001E82C904A0656C6AA98474C953007F06472548650FC03F2D330178882D7B001E';
wwv_flow_imp.g_varchar2_table(46) := '82C91E8096B1A9A512F600744EB6FC1984414A650FC03FF499003CC4963D000FC1640F40CBD8D452097B00EC010C861AD803180C7A3B7E9709C0436CB74A0B7EEEB99C15D8236C99003C02723B629800BCC456B8A00B801CD38479CE39183D77AEBA1740';
wwv_flow_imp.g_varchar2_table(47) := '1BC83BE84B29C9169DAF2F24DB0A43ABFA073E1340FF701AC853DAACA012B601A57061B84211807BFC1731FC82F3E16A4869DD1FC553AE7BD437A07A974F21594DB71569537D7F9AB7C3679800060D61AF02B4594125104029B3AC4389258735C2DA69AC';
wwv_flow_imp.g_varchar2_table(48) := 'BA0D93F2DB69037A1B55AB1B8A0D03F931639138E514344D998244555560ED19882933010C04B5FEBDA3CD2E2B8100087202B470F79DA36EBE55FFDD3F5D78FE942224C781D33C02890B2F40C399672131664CA4063F81C204E0B9696C16C804E01FB6C1';
wwv_flow_imp.g_varchar2_table(49) := '4BCEE721ABAA605D7401865F7001E22346FA7A318A5F1D6602F00B598D9E69A57800FEA9AA4CC9B93C9CEA6AC4CEFD77345F7A0962C3471407BF36CE2FB3C1BD3FCE04E019949F10A4CD1A9800FC53E2B692453E0FBBA111F1D34FC78869D360358F508F';
wwv_flow_imp.g_varchar2_table(50) := '6853B6C75D6502F018D01EE2B4D90413807F4ADC4A722E07B7B111F133CEC0B00B2F447CA72D175B6853B6C75D6502F018502600FF000D54723E0F371E43FC9CB3D174C925888DDD19D2286CF84575F0F322A0BF16A5CD2ED803F0519174A1A6E3C0364D';
wwv_flow_imp.g_varchar2_table(51) := '58FF763A465D310BD6B871AA421FB3E7F9D8A1AD45B307E01FD44C00FE61AB4FB26D235F9582F18D5331E2F2E9488D1D072184DA7E640228530D9C13B04CC0FAF9387B00FD04AA8CC72839AE4173FEAA6AC44E3B03F5977E1BB171E3D4259A34F04BE1BF';
wwv_flow_imp.g_varchar2_table(52) := '65880CE5A3EC01F8A716F600FCC3D65FC9424064D3B0633198A79E8EE1332E4762975D0AABFDF43B6D9AF5B79BBC06E02FBEDACC843D006F15297239E42D13E6C9DF40C3F4E9A81A3F1E942CDB06601617FEBCAD313869EC01F8873D13807FD8FA245942';
wwv_flow_imp.g_varchar2_table(53) := 'DA79C0B2609E7432EAA65F8ED4843D60080183E6AFF4F58FF8AAFFB6C03101F8644A3AED843D006F94A862FB6306CC13A6A269FA1588EDB92768B9CFA461AF8DCEBDE94B7FA53001F417A9F29FD366324C00E52BE7136FB82EA469C03A692AEAA7CF426A';
wwv_flow_imp.g_varchar2_table(54) := '8FDD611843619D7FC7D8300178603BBD886002F00F5B6F25D3971F12CE419331E68E5B11DB7D0F98A6FAEE0FF9C204E09F8AB5D90F7B008350A26DC3360DC48E3F0E8DB3E620F5993DD41A80DAECD3A6C141B47F90AF32010C12C01DBCAECD7C980006A0';
wwv_flow_imp.g_varchar2_table(55) := '44DACBCB6691370DC82F1D87E6597350BDD75E302C734B92016D1AA43C07801485E0A2528E03A121D880096000B6D3CF57B4990F13403F35527C4C29269F472E9D8679DCF1A8BF7A0EAA274D82250C08439BDA36379AC6B92B8BD98D8484DDD90A210DC4';
wwv_flow_imp.g_varchar2_table(56) := '6AEA20E042F81873C804509EED94F3B4364B620228472D854C3E764707EC638E41F3F58B507BE0014A806B0898E589F2E469220087428B5D179DEFBF8D8EE79E4572FC9EA89BB83F84746108FF162399003C51E176853001F887EDC0254B099B92787EF6';
wwv_flow_imp.g_varchar2_table(57) := '20D42F5888BA830E8661599B63FBB529ADD803577DE185F2FBB3EBD660E38A15C8BCF6061AA75D8686CF1DEEFB320413C0C04DA9AF37B5D9127B007DA9A2B89EE7BAB05D1762CA31A8BBE272D44C9A04C38AC150FBFCFA73F93A92529A164AEEC30FB1F1';
wwv_flow_imp.g_varchar2_table(58) := '3B2BE0DCFD33187BEC8EDA1B17A16EF221EA777E1A121340DFB633D027FCD4DB566D6202E85B4514C39FCF6680432663D88205A89A74302CF5E5971034F7EF5B84E74F4814BEFF99F7DFC1FA5B6E87BCE7A730BA3A611E3419354B96A07EF2677D3F74C4';
wwv_flow_imp.g_varchar2_table(59) := '04E0B95A370BD466534C003B5622A5EFCEE772700EDC0F0DD75E8BDAC33F8F583C5158762F06F9695316CDF7D5BC9E161D04BADE5D8D0DDFB913F9BBEE46329B85745DE0C049A85DB218F593273301F8303E057D0D34142D95503F980076A04D4A21EEBA';
wwv_flow_imp.g_varchar2_table(60) := '300F3B14A92BAE40EAB0C3904824D4A9BE9273AD4D516AB5DF555B7EC40099B7DF51737EFBBEFB60B5B541C4626A6B521E3809F54B6E545300BF7702D903F08F09B4D91513402F4AA4033C52C238E4B3A89E391335877D1E96690142AAED3E9DB37E9A6A';
wwv_flow_imp.g_varchar2_table(61) := '940AB529FDDE2A6C58BE02F95FFD1A56471B4C2B5EF87536AB3C80FA258B51C71E802FA3933D000F602573CEAE5D83D6850B91BFE76790160D2C6D9CB7C31E502B68C0B98E0B67DF8968B8FA6AD41D79940AF2A1137DA6E639BF6A8BDCB2DA9FF9E03DAC';
wwv_flow_imp.g_varchar2_table(62) := 'BDE10638F7FD1A09DA91A02F7FA9300178609D7D4C09790A30788CC34C0034FC5DE900BBED8EDAEB6F40EAF34720914CC0082891172DF5D18D46864B5FFED5D8B4EC1638F7FC0CC2058415DBBC00A9F6049800066F9C7D48600FC00388434B00E4F6D314';
wwv_flow_imp.g_varchar2_table(63) := '7BEFBD507BDD7CD41C7C288C441252C5D5427DFD7596D2DD85547BD73F5FC5A6DB6F837DDF0330B36908D382410B91C5F05FD5422600DFD5C304E001C461240035F41D093969126AAE9C8586C38F80998CABEFBEFA026B1CFCA5F0DED22E437AD55B68BD';
wwv_flow_imp.g_varchar2_table(64) := 'E336E4EFFB3544675A4D47E832F1D2A469F30A01138007D6C95300DF410C1D0150A6DE4C2770F0C1A8B97C26AA8FFE17B5DAEFD2B5E21A077E4FE029BC574807E9375F41EB6D2B90FBE57D30C8ED37761070CC04E0BBEDB207E001C4612200FA8AE6B359';
wwv_flow_imp.g_varchar2_table(65) := '1813F741EDAC99A8FDE27130E3F4E52F6CF26B75FBE9541F791C822E31B6D1F5DA8B68B9ED56C85FFD0EA62D219309DA84E8BD300178609DEC01F80E6258084045F2B92EDC7DF64162DA74341E7B2CACEA2A35AB26075BF7D75FEDF1D3C93E378FF637FE';
wwv_flow_imp.g_varchar2_table(66) := '814DCB97C17DF011C4D259188944E17AF31D152600DF6D973D000F200E0501A8AFAD0BE380FD503DE372541F790CAC242DF8393005B9D9FAB725D5B97E3B87CEB75E41CBE21B917FF47198D99C6A4F1F43BFA01526000FAC933D00DF410C8A00C8B57685';
wwv_flow_imp.g_varchar2_table(67) := '84E91870F280DC7357345E73356A8EFD0204ADF6BB8E3A3D6FEC689EED0B3A85E1ED380E3A5F7B096BA7CF82F5F24B88E50AFB00FD1AFC4C00BE68665BA1EC017800735004A09A4E49336C1B18B313AAAEB90A4D5F990AABBA46CDBBD5AF3DE85F79220A';
wwv_flow_imp.g_varchar2_table(68) := 'D93C68CEDFF9FA4BF878C96218BF7908663205516E6251F600CA837E004F33010C00B46D5F2911404B311210564CCFC873299EDE81B3FB6E485E7A291ABF7A02923575859B7A3567EF2E7CD5691222E0BA0EDA9F5C89CEEFAC80FBF893402E07D3286CF5';
wwv_flow_imp.g_varchar2_table(69) := '95559800CA826B200F33010C04B56DDE2911C0A62201D0419652B08D07E23F214245EE3B2EA423E0EC3D1EC96F5D8CDAAF4E4555754D81780238CFEFAA8063C0B51D743DFF3C5A6EB81E72E5E3A094A2B2676EC1720061022807AD013DCB043020D83EF9';
wwv_flow_imp.g_varchar2_table(70) := '527ACD1A6C9C3F1FCE4F7E02CAA5D5F3C08B47556C11230CC8BC0373AF3D919C311D0D534F8251550D830EF694FB95F5A071D457FAC7CED9E8F8DFFF41D78D4BE13EF578F138C420A20D99003CD0CE8E453001780471FAE3F558BFE2BBB0EFFF354CDBEE';
wwv_flow_imp.g_varchar2_table(71) := 'FF425799F5D3079EEEE6EBACAE46D5B72F40F3895F47ACBA9E8ED3AB3FF43BDD85BEFEF95C065DCF3D87B605D7C17EE62F482493AA41FD5EF0DB5EA399007C572513804710BBD92CD2ABDE4176CD472AAFF5A00CBF8F36292F3F5185DA7DF78659535D5C';
wwv_flow_imp.g_varchar2_table(72) := '6F1085A09A32A7D983EABE5B0CF2C967D1F9B767D076F3CD90FF6F25451B1522FC4A2B9103AD840960A0C8F5FB3D26807E43D5C78334E8E98F5B58EAF29B00D4D8324CED8B7D3D51B025E0E432E87CEA09B4DD7413CCE75F5039BD691AE249FF9900BCB2';
wwv_flow_imp.g_varchar2_table(73) := 'CE5EE53001780E71D1F43D1901BD344E25CE2D7CEA757EF0A9BE9E4E463E9F43DB138FA173E1F590CFBF00417910E81A31AFFACE04E0B9756E2B9009C07388BDB2FEBE1AA67BE817DA431E0EA5F092B92CDA9E5C89B69B97C27DFAAF88C593EA4E41454A';
wwv_flow_imp.g_varchar2_table(74) := '5E41C004D097110CFAF74C008386B0B20450786F2E9F45FAF1C7D1BAFC16B8CF3DA70E18D1597EAFC6FD664499007C372E2600DF218E7E0534E84B59FB65268DB6679E46C7828505B7DFB4CA8FF0EB2F244C00FD456AC0CF31010C18BACA7991CEF25386';
wwv_flow_imp.g_varchar2_table(75) := '6E99C9A0FDB9A7D031EB2AB8ABFE09531AC58CC23E61C104E013B05BC43201F80E71F42BA04B7BB2D90CDAFFFC28DA6F5C04E3B557F59C306402F0DD7898007C87389A15D07CDE91855D865C5727DA1F7D149DB72E877CE945C40D138E0108D7E7B84326';
wwv_flow_imp.g_varchar2_table(76) := '00DF8D8709C07788A35901CDF96D3AD5D7D98EB6FFFE3D3A57DC01F1F7BFC334E9DA704DF70657080134CD5B88C4989D023114268040600F71A5B4E2578C33C87476A1E5A187D0B57429CC575E86519D54910762B0117EFDED7E05108075CA4918366F21';
wwv_flow_imp.g_varchar2_table(77) := '9263C6698FE9505BB67C2F407FADB1329E53F7F14120974963C3EF1F46D7B265309FFF5FC45229B814E2ABF6FA34C5200C7102806DC338ED1B18366F3E52A3C60462604C0081C01ED24A29B457BAC877A6D1F6E747D1B67809CC575F81158FF91BDBDC1B';
wwv_flow_imp.g_varchar2_table(78) := '1C011040CB3D77213D7B2E9C38C536F878B48AC2C61D07D699A7A3E99AB948348F0AC428980002813D7C95AAFC9D12C8B675A0FDE187D1B17C29CC37DE54DB7CC234B41380F2318800264D42EDE225A89BFC59059A9FBE075D0E4A04D0397B2EA4060270';
wwv_flow_imp.g_varchar2_table(79) := '1D07E6B9DFC4F0D95723D9D41C8851300104027BB82AB5E95C1145F8757660E3FDBF45FAA69B61BDFF1E2CB3B0D8574CEEABADD1A50C02926E079E7C006A962C46CD81875286511F0940C06D6B47CB5D3F46FADA7990090BA63B885C067DA045D7B4DB8E';
wwv_flow_imp.g_varchar2_table(80) := '83D8B48B307CC62C246A1BB4E1DBB322268040600F57A5AE2BE1747562E3EF7E8BF65B6F87F5C61B30923198CE3657756968F6968BCA0122007CF600D45D7F1D527B1F504C6FEE5723049CCE366CFAE54F9199B708226EC270FDDBED2002C81A26AAE6CE';
wwv_flow_imp.g_varchar2_table(81) := 'C1880B2E8015A70556FD8509403FE6E1A8511D5F2E1CD9CF777460D3AF7F89AEEFFF00C6EB6F42C40AB1FDE41504E1019448404A17CEB03A88FD0F803172149D44F2751220ED3CDC77FE09F13FFF281E68F66FC2211C07F9E611A8BBF146349E301546D1';
wwv_flow_imp.g_varchar2_table(82) := 'DBD26D1C4C00BA110F497D7445B74324D0D98E8D0F3C88F4F2E53056AD82615A85A4A29E9FEC1960C7D596A4BE2508CA5C2C2802CAFBA34D5B00A08CAD990CDC7DF741C3D2A5A8997C080CAAD7C7094E6FE833010CD02EA3FE1A1DDD75F394C3EF6FD838';
wwv_flow_imp.g_varchar2_table(83) := '6D1ACC175F82A84E41080FCFF37B05525F370879550FC9A1C1E977291280F1C563D1B07831529FDEBDB0D8EA77BD329AA43E00000A3049444154DB91CF041000E861A832AF2EEEB0D1B5F231747DFB32D8EFAD864826605062C1404C310CA8F8DF0635C8';
wwv_flow_imp.g_varchar2_table(84) := '056067B3489D790E1A6FB80E665D1DA5580804752600FF751ECA1A5CB88A00DA1F5F89AE4B2F835CFD2E904AFAEAF9861288201AE5D8C82552A8BBFC4A344DBB4485562BC7230017800920080308419D2502E8787C253A371340AA100CC0C53F04E8EAF6';
wwv_flow_imp.g_varchar2_table(85) := '8E0E3813F743C3B265683CEC10485A89A57F9900068FBBECF3CAD9C1D73114241001B8450F800940A346E9AAF47C16C64927A1E9A65B50DDD4B4559E458D2D5155B107A01BF190D4C704108C22643E0777CC2854CF998D61A77F1366B9F7257ADC6C2600';
wwv_flow_imp.g_varchar2_table(86) := '8F018D8A382600BD9A2A79F77657178C638EC1F01577A2EA533BEB6D04EF02048E77681AC004E0BF2A7A4EE9D5BD894E1E4E7D3D52D3A6A3F9924B0B5FFF00E6FD3D7BCE1E80FF7610CA1A9800FC57CB560BFB14FB4F5FFF238E40E3EDB721397E022C95';
wwv_flow_imp.g_varchar2_table(87) := '7B2158066002F0DF0E4259031380FF6AE94900AE9B87A86F44E2AAABD074D6D910895831F28F09C0534DF02E40FFE06402E81F4E837DAA749C4A52F28F2F1F8FC66BE62335617CF1C31FECE0E75D80C16A37C2EF330168521EB9F98EA356FEEB972C41CD';
wwv_flow_imp.g_varchar2_table(88) := '946361A5529A2AEFBB1A9E02F48DD1907C8209408F5A85EDC0152E8CE997A1F99269883534063DEDDFAAE34C007AEC2074B53001F8AB127543B474D58DD1EE314762E4D265B076DA19169DFA0B78E18F7701FCD57D24A43301F8AC261AF842C2DCFF0024';
wwv_flow_imp.g_varchar2_table(89) := 'AFBF01759326C1A463D642C010FE651A2AB757EC01948BD810799E09C03F45AA4C62992CE45E7BA176D62CD41FFF2598C984F2060C04BFF7CF1E807FBA8F8C6426007F544583DFE8EC84BBFBEEA8BEE272D49FF0359875D530E05F7AB1C1F464287A00EF';
wwv_flow_imp.g_varchar2_table(90) := '00F8D46040A984779900BCD7B28484CC67E1ECF169D45E36038D34F86B6BE1C05177290693F26387FD5C2D84D8C57B243E2951DB86A794F261005FD4D1A928D7C104E08DF6E824AF3ACDEBBA9074D477F7DD50F5AD6FA161EA8988D5D4A94A94EB1FA285';
wwv_flow_imp.g_varchar2_table(91) := 'BF1E3D7F4408719C3748EC588A4E02B815C0653A3A15E53A9800BCD21E255775216326CC7DF747E2E28B517FF41458B5352ACC9732FD85B82C11425CA5A37DDA5090525E08E0BB3A3A15E53A980006AE3D5AE3A3FCC4AAD8B6BA32CD9D7214EA665C89FA';
wwv_flow_imp.g_varchar2_table(92) := 'FDF6834816527CD373DA0C7F60DD39A77B0AF0E381BD5ADE5BDA70E89E021CD23D05F84B79CDABBCA79900CAD73919B16348182EB9F50E605870478F46E2EC335077E6BF21D63012312B9473FDDE3A7B68F714E0AFE52351FE1B3A0980AE58D9547E132B';
wwv_flow_imp.g_varchar2_table(93) := 'EB0D2680F2F5AD08C0C94366731063C6C03CFA08549D7C32AA0F3914B2B61E312943B7CFDF472F1B85102DE52351FE1BDA08809AD63D0D58D33D0D18597E332BE70D2680DE75ADA2F80A86A47E92AE03E4EC42545FF308981327227EE249A83BEA08C4C7';
wwv_flow_imp.g_varchar2_table(94) := '8E859120979FDC0272FBC3B5CFBF038B5E2B84D07623A96E02780CC09195339CCBEF2913C0F6312B85E9AA041ED92CDC4C171CCB8218330EF189FBC03AE628544DFD1AAA9B47C28CC74315D65BA61568DB01A076E92680EF01B8A04C402AEAF1ED12002D';
wwv_flow_imp.g_varchar2_table(95) := '5E556056E042AE7ECAD6E9A8453D8706BF69C21DD60863A74F21BEF75EB08E3C0235471E89E4C891B0A580251CF5B50FE1DE7E7FEDF8B66EF77F5A7F1F1EEC73BA09E054003F1F6CA387F2FBEA6620DB46C7132BD1317D06E49B6F41C4E3FE5E89152A40';
wwv_flow_imp.g_varchar2_table(96) := 'C5E62BC768FF5ED456038D4D40633D8CB163608D1A8BF89EE3113F6832AAC68F87994A15B3F7CAC21680CAF6A1D5ACBD46EF3421C4BD5E0BED4D9E56A4A4941481F13100B2682EDB41407DE51C0799375F45C7FDBF81FBD15AA8EB692AA4188609C38CC1';
wwv_flow_imp.g_varchar2_table(97) := 'A8AE06EAEA610C6F84183E0AD6F061B0468E446CD808756E5FA82B7B861C2E3900C38510EDBAD4AD1D4129E5FD00A6EAEA60D4EA9174339094707259B89D9D80E36A9EA80588184DF085804937F2C46270E3160C2BAE4EE949A1027A956B6F8970C6EF7B';
wwv_flow_imp.g_varchar2_table(98) := '80DC034288133D90D36F114110004F0376A81E32F35289F04CB6DF26B8F5838A038A139ED2802FFC77E11FFA6DC8A3F806D873F59A56F79F2A0C8200781A301813E177872A02DADDFF4008802AE5834143D586B95F834040EBF6DF161F73102D1EE8AB7C';
wwv_flow_imp.g_varchar2_table(99) := '2E60A0C8F17B4318016DF1FF3D31D43E05287A00A3017C10C41464081B10772DBA0804E2FE0736052892009D763A2BBA3AE39633029E21709710E26CCFA4952128100FA04800BB02780540E18C261746A03211C800D8B39B00286396F612180114498093';
wwv_flow_imp.g_varchar2_table(100) := '8468573957183204B486FE6EDBF7A009804E06BE0EA03E644AE1E630023A106803B08710629D8ECAB65747A00450F402E677EF0CCE0B0A00AE971108108105DDA71CC9FE032B612000FAFA9317C07902023303AE380004E8AB4F5F7FF202022B811340D1';
wwv_flow_imp.g_varchar2_table(101) := '0BA0E38FCB0343812B6604F423705177E20F3A1E1F68090B01C4003C00E0F840D1E0CA19013D08FC11C0978510793DD5F55E4B2808A0E805D054E099EE7C0113820685EB67047C44E04D000705EDFA97FA171A022892000D7E2201DE15F0D10259746008';
wwv_flow_imp.g_varchar2_table(102) := 'D07C9F063F9140284AA808A04802340DF8AF62FAF65080C48D60043C4080DC7D72FBC9FD0F4D091D011449801705436322DC108F1008C5A2DFB67D09250114498013887A64792C267004BE2F84A09BB14257C24C0094F7692980E9A1438D1BC408F40F01';
wwv_flow_imp.g_varchar2_table(103) := '4A61B48802DD841094EE317425B40450424A4A790A801F00285CE9CA851188060294D8F31421C4EFC3DCDCD01340713A40BB031427C05B8461B6266E5B0981BF03F87A9856FB7B534D2408A04802E4019027401E01174620AC08FC0AC0378510E9B036B0';
wwv_flow_imp.g_varchar2_table(104) := '67BB2243003DA6042715E755EC0D44C1C22AA78DF4D59F2384A02DECC894C81140D11BB08AD9841600181B19B4B9A14311810FBB53DB911DFE500841771345AA4492007A780329009700980DA03152C87363A38E005D75BF04C0ED5171F7B70778A409A0';
wwv_flow_imp.g_varchar2_table(105) := '0711D0E09F098002888814B830027E214073FBDB69F00B218804225D860401F420023A43F0650074BD128514D7445A3BDCF8B020D001E0610074ADDD836139C8E30538438A007A0222A54C00F89722199C00A0D90BC05846C52040093B1E2C0EFA3F0821';
wwv_flow_imp.g_varchar2_table(106) := '2875F7902B439600B6210303C06EDDB104070038B0F837FD3C62C869943B341004E8C6EAE7B7F9F3561417F5CAED7C4510406FA04829C7F520831231EC5C2E88FC7CA4107877DBC12E84782F523DF0B0B1154D001EE2C8A218814822C0041049B571A319';
wwv_flow_imp.g_varchar2_table(107) := '016F106002F0064796C208441201268048AA8D1BCD0878830013803738B21446209208300144526DDC6846C01B049800BCC191A530029144800920926AE3463302DE20C004E00D8E2C85118824024C0091541B379A11F0060126006F7064298C40241160';
wwv_flow_imp.g_varchar2_table(108) := '0288A4DAB8D18C80370830017883234B6104228900134024D5C68D6604BC418009C01B1C590A23104904980022A9366E3423E00D024C00DEE0C85218814822C0041049B571A319016F106002F0064796C208441201268048AA8D1BCD0878830013803738';
wwv_flow_imp.g_varchar2_table(109) := 'B21446209208300144526DDC6846C01B049800BCC191A530029144800920926AE3463302DE20C004E00D8E2C85118824024C0091541B379A11F00681FF0F5813154BD3E23D770000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7383511544126891452)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250204143548Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EECBD87971C5776E6F985CFCCF205EF019205EF080FC2D181DDCD6EB2A79D6667A573E6CCCE9A33B3E6CFD91D';
wwv_flow_imp.g_varchar2_table(2) := '8DB423AD56A359F58C5A62AB9BDDCDA6074090A0010890B0F484F7E5D28479B1E7BE882C03C2645465A24C7E49A50A5DF53232E2F76EC4FBDE7DF7DE67C4711C832F122001122001122081A62260500034557FF362498004488004484013A000A0219000';
wwv_flow_imp.g_varchar2_table(3) := '0990000990401312A00068C24EE725930009900009900005006D80044880044880049A9000054013763A2F99044880044880042800680324400224400224D0840428009AB0D379C9244002244002244001401B200112200112208126244001D0849DCE4B';
wwv_flow_imp.g_varchar2_table(4) := '26011220011220010A00DA00099000099000093421010A8026EC745E32099000099000095000D00648800448800448A0090950003461A7F392498004488004488002803640022440022440024D488002A0093B9D974C022440022440021400B401122001';
wwv_flow_imp.g_varchar2_table(5) := '1220011268420214004DD8E9BC6412200112200112A000A00D90000990000990401312A00068C24EE725930009900009900005006D80044880044880049A9000054013763A2F99044880044880042800680324400224400224D0840428009AB0D379C924';
wwv_flow_imp.g_varchar2_table(6) := '4002244002244001401B200112200112208126244001D0849DCE4B26011220011220010A00DA00099000099000093421010A8026EC745E32099000099000095000D00648800448800448A0090950003461A7F39249800448800448800280364002244002';
wwv_flow_imp.g_varchar2_table(7) := '2440024D488002A0093B9D974C022440022440021400B4011220011220011268420214004DD8E9BC6412200112200112A000A00D90000990000990401312A00068C24EE725930009900009900005006D80044880044880049A9000054013763A2F990448';
wwv_flow_imp.g_varchar2_table(8) := '80044880042800680324400224400224D0840428009AB0D379C9244002244002244001401B200112200112208126244001D0849DCE4B26011220011220010A00DA00099000099000093421010A8026EC745E32099000099000095000D006488004488004';
wwv_flow_imp.g_varchar2_table(9) := '48A0090950003461A7F392498004488004488002803640022440022440024D488002A0093B9D974C022440022440021400B4011220011220011268420214004DD8E9BC6412200112200112A000A00D90000990000990401312A00068C24EE72593000990';
wwv_flow_imp.g_varchar2_table(10) := '0009900005006D80044880044880049A9000054013763A2F99044880044880042800680324400224400224D0840428009AB0D379C9244002244002244001401B200112200112208126244001D0849DCE4B26011220011220010A00DA0009900009900009';
wwv_flow_imp.g_varchar2_table(11) := '3421010A8026EC745E32099000099000095000D00648800448800448A0090950003461A7F392498004488004488002803640022440022440024D488002A0093B9D974C022440022440021400B4011220011220011268420214004DD8E9BC641220011220';
wwv_flow_imp.g_varchar2_table(12) := '0112A000A00D90000990000990401312A00068C24EE725930009900009900005006D80044880044880049A9000054013763A2F99044880044880042800680324400224400224D0840428009AB0D379C9244002244002244001401B200112200112208126';
wwv_flow_imp.g_varchar2_table(13) := '244001D0849DCE4B26011220011220010A00DA40DD09C488471CD38051F76FE001498004488004C64B800260BC049BE9F3E9B8AE7F18181AE6658037E258FF223662282412400FFC8601132202121930521A34133A5EEBF425508BC07D90DD7FF718F7FE';
wwv_flow_imp.g_varchar2_table(14) := '44F21763D4FD97DE92D31732AFAC210428001A82759A1E549E3C7A904FDFE9656A01A0923FCAE0AF0C1100C9634A067F339500E9C701110BFA40C901F40FFD3BBE4860EA11D0F65F15BC779C7ED5E6475977A28C875A1A86FC2F03E64815701F5511EBC1';
wwv_flow_imp.g_varchar2_table(15) := '7FB400B8D7F74F3D9A3CE387498002E061D29EB2DF953CBEE2384EC669FDB419FDC8A93EAFE4CFEA2ED7A9FF1E4588C3002A08A07C5FFF5BFF2E5288951C7BC4E281F62828BA0CA6ACCD34D7890FDF12329A9BA32E7E48F88AD43562188699BC2D795B30';
wwv_flow_imp.g_varchar2_table(16) := '6D07A6EBC2721CC0B6115B96BEC9EE252C468A0A2339647ADC3B99D7E29B68AE7EE2D58E264001408BA8814032A3577A8096B987CC5692C7D3C899C8DD0E14AB085110200E7CA05201CA65A8E220C2C141A8520971C54F0441A4A0D408E9A014E228A267';
wwv_flow_imp.g_varchar2_table(17) := 'A086DE6193C941400FB732789B662A90479F97F8C764B4364D1396E5E881DFF05C98F93CEC9616588516209743EC79301C078663C1342D58A907AD7AB4614F5AE279D302403487393AF666A497617210E2594C3602140093AD4726E9F9C8A325D22E7E40';
wwv_flow_imp.g_varchar2_table(18) := 'E627961EFC15C22044E4077A20D76FBF02A35286213F7D1FAA5444303088B03808547CC0AF40158B888A45A84A19B1780282507B01902E236804F26F1569AFC0C817E73493D440785A893496C1DF92D178D82796CCE5D36531F10098264CD386E1D880EB';
wwv_flow_imp.g_varchar2_table(19) := 'C2F072B00A05988502E07A88535160B6E461E67330BD9C6E637A79FD1322105C07A6E3C2121191AE1D0CC5DDDC6339825D4402DFF111C5773E61C98804EE20509D7144E97ABD3CDE6CC488C20A2A7DFDF07BFB11DEEC83BA710BF1AD1BC0AD6BB06EDF84';
wwv_flow_imp.g_varchar2_table(20) := '79FB16A29B3751B97603416F1F5418EA813D8E4218A10CFA1120B37EA560C6C94CA6EA3C95A0C27B99E6FDD65CD97924F0B0098C5AE7378C64756CE41AFF8890BD6A00AD324CC4A609659ADAE51FDB3660D9D08100B60DB3AD15F68C4E98333A117775C2';
wwv_flow_imp.g_varchar2_table(21) := 'E89E01AB7B36EC19B3617575C1ECEA84D3D901B7A31D96E96A615E150055F941B1FCB02D61EA7D1F3D0053AFCFEA7AC6C3ABEE774FD78B63A5076E71E387E2AAAF5460944B308B8388FAFBE0F7F6C1BF791BD17579DF04AE5F056E5C8179FB06ACDBB7A0';
wwv_flow_imp.g_varchar2_table(22) := '6EDC40E5CA75047D03DAC52F0F3D79302503BD8E7E1AFADFC9CA67F5D179EFA0400A80BA9A000F364E02770DF44B8F396CABC3C3B10CD6F21641AD1D5DA9674D1F47A9C443D0D6027B66178C99DD50DD9DC08C19B067CE853D730EAC193361CDE882D325';
wwv_flow_imp.g_varchar2_table(23) := 'EF4E586D6D88F305C46E2E8925701D5876EA1DD0DE88FBBD4664EC3061779C9630F53E4E0130F5FA6CEC673C6A89305DD71F4A261A99AC373C7F5191AF67EFFECD9BF0AF5F837FF932A26FBE85FAE65BE0E64DA05884512A03C532E26209F1E000501A84';
wwv_flow_imp.g_varchar2_table(24) := '11566044016259F3EF93F5FE8A1EFC658DD448A648433FABF3A5516185D54C827B4C6338BB19BB19F093F527704FB9AABD5A49DA4CB210709777BACCA5836053AF9899F360B6B600853CE29CABDDFEB20460E60A30F279FD967801E43C18DD5D30162D82';
wwv_flow_imp.g_varchar2_table(25) := 'B17811AC397360CF9C09AF7B26BCCE19B03CF79E175B7D02E8FB4FCE4FD27B86A219EBCF88479C7C042800265F9F34EE8CAA4F1F195CD3013609ECAB3E009219883C8464F0465081EAEB45E5F215542E5C40E5DB6F51F9F24BF8A7CE223CF3198C1B37E0';
wwv_flow_imp.g_varchar2_table(26) := 'AA104E3CECC21777BE0EE5736D20E7E841DEF023208A75C4B3B837EFF6BAF3012AE70743E6467C91C0D425A0856A6C2683EB5D5EDFF96DBA34A66309242B40C4B292FB270242593293B81839A489288E11CAE1BB3B61AE580E7BE50A58CB96C05EB800B9';
wwv_flow_imp.g_varchar2_table(27) := 'F98B919FBB104E47178CBC07B84E72FF89072E0D52D481BDE287D0CB6F49B2AE5600A3F211A72E7B9EF9830950003C98D1B46921EE7C7DD31B06D4B0133EB9EDE308AA5846A5B717FEF5EB88AF5F8371FD32E22B97115DBC8CE8F21584D7AF27EF4B5711';
wwv_flow_imp.g_varchar2_table(28) := '5DBD06A354846D24314FFAF191A63FE999BE63E9870E4C6B44A4F2F0C36724D4EA203F7AB04F440AF300A78DF935E985A433EBBBB8D7AB83FF900810319EC6C4E8813FF59425837FA80580C4CFC8802DDE824400C488F31ECC993361CD9E0D73E60C98B2';
wwv_flow_imp.g_varchar2_table(29) := '5C306B369CD97361CE9D0B63DE3CFDD39D350B4E67A70E381C99AAA8437B753A61BA2457FDDE26EDB166BA6C0A80A6E96DB9CD93FF22180865560203321F37FD0AE2C14104376EA0F8ED790C7EF925A22F3E87F1E53998E7BF8571F91A70BB5F47F5EB19';
wwv_flow_imp.g_varchar2_table(30) := '882C5CCAFFC9A2BD2DA3BF3CE446CC72AA0F90EA4CA23AB2F3C1D234D6C60B1D07816AE64BF57EA9FE6F3DF51F96C94A9C03A6FC4AC1085522B4AB9E839682F60CC40B16C058BE02F6F215283CF618F28B17C39E3113464BABCE2218CA55485DFFA396E1';
wwv_flow_imp.g_varchar2_table(31) := 'C67109FCE8D42040013035FAA92E679914E949660DA11F410D0C00B76E22BE7605D1850B082E5C807FF1927EAB8B17605CBE00E3C675187D0330CA15982A0DDE13D7A4E722762D282B896636EF7473B2B25F5DFA8C07218121022304B48E273062442200';
wwv_flow_imp.g_varchar2_table(32) := 'C42B5096E05C1F90745AF99B634349FCC08C6E18F317C25AB810DE02792FD0FF3616CC87356B16ECAE2E58ADAD305C6FA86037E36B9AC7E628009AA7AFF57ABA8E3EAEF8087BFBE19FFF1695339FC23F7512C1A727117DF915CCBE7ED8BE9FCCF6C30052';
wwv_flow_imp.g_varchar2_table(33) := 'C847AFC4CB3A7F10C18A623DEB57AE542C4BD29864DDD08C0D2D10F8220112682C81A1015AF6DDD07B6F249534758AADACE7CBD74BA541597E33AD24F836AD366874B4C358B61458B31AF6EA15F0562E87BB68219CF66E584E412F0C520034B6FF26D3D1';
wwv_flow_imp.g_varchar2_table(34) := '290026536F6438973B83E3F4663C2343E64694EA95878254DB8B4A2584FD7D88AEDD4078E122822F3E47E5CC49F867CF2038F319E28B97E144015CC384655B881D47CF2422571E2206CC40C10C1337406C2733FF389D95984A9601325C009B9200098C89';
wwv_flow_imp.g_varchar2_table(35) := 'C0F0009D06F36A219038EF87EE47C93E10412E45B6CA49C12D9D862BF7F5FC793096F7C05EF1189C55CBE12C5B0677DE623833E6C26EEF8059C8C394224512C03BF4544985C51D9B7A512C8CA90B27CD872800264D57D47E22DF098DD351BC12CD9B96CE';
wwv_flow_imp.g_varchar2_table(36) := '951BD7941B5816E9011544087A6FA3F4ED37287F7616FEC953884E9E02CE9F8771EB26D0D70FD55FD695FCCC58C1B6D3B544295022B37C2BD9FC471E2886BCD348E1E1C0E6F4314001507B27B225098C83C0481130B433A7916C109464F5A4958165D0D7';
wwv_flow_imp.g_varchar2_table(37) := '953643685F9EC4EBB82ECC420B62A91FD0DD0963C142D8CB57C35DB91ADE8A15C82D5D02BBB313869DE405247942123994FC57DD8C483B1A2478B07A1D5403E3E8D189F92805C0C4701FD7B77EA7F088080025D1C1729326F5C074BC90640F95CA086EDD';
wwv_flow_imp.g_varchar2_table(38) := '867FE13CCA674EA17CE23882E31F23FAF434CC1B37E0491C9F2D33FD0262C7D3B37BC30847DCD5C3B38C2457387928E89B3FFD79F728FE715D223F4C02245003813B83F68604C01D9FD5C587C47327F93F7E00B354810A4204F2FBEE193057AC84BD763D';
wwv_flow_imp.g_varchar2_table(39) := '72EBD723B77A259C850B617775C26CCDC3B02D18D6C85D3D1311A03307462E195000D4D06393AB0905C0E4EA8F9ACE2689AF4B7479E2F2AB96CD8D611A52A51F084B4594AFDD44F9ABAF503E7902C1E95330BEFE0AD6858B5097AF20BA711346A5024B36';
wwv_flow_imp.g_varchar2_table(40) := '26B11DC0C921969FBA7058B269C9D076BD693A9E9EF9A7D3FE3BEF754EFE6BEA3A362281BA12B8DB983B94743352A08B77408FD9318C208029FB76C83E1E52B7C3F3107775C3983507C69CD93A48D059B512EE86F5701F7D04B93973E0C84645235E7A82';
wwv_flow_imp.g_varchar2_table(41) := '31722290D610AAEBC5F1600D274001D070C40DF882341D48BBE224A75FD281D2DC609D7957F1E15FBE8AC1B39F63F0D847183CFC36A24F8FA370F3160A955017FC88647D5F07F0555FBC831BD0533C24094C3A027AFE9E8EDE7A122122408B8108A15288';
wwv_flow_imp.g_varchar2_table(42) := '0A2DB0D7AD85F7D493C86FD98A96152BE1CD9D0F530A0AE9F204C9442011144315BD193C38E97AFAC1274401F0604693AF455500E8C15F8AFA24B9C0B2BD6E78E33AFCF3E7119EFB1CE1A7A75039750AA57327115DBE00CF0F90332CBD15291C3709E2AB';
wwv_flow_imp.g_varchar2_table(43) := '5E1DD3F6265F3FF38C48A0CE048696EF46A4144AE5CFB8524154A920947D3F24AD77FE7CD8AB57C359BD0AF6EA55707A1E83B77811DCD9B360155A619A4E7266DA131027153FEB7CAE3C5CE3095000349E7103BE2159E953329387012579C0A512A2AB57';
wwv_flow_imp.g_varchar2_table(44) := '3178EA130C1EFD0838FE099CD367615CBD8620AA2094C9BE9402B56C5812C89F160E69C0C9F1902440029390C0DD8AFC24AB89698121F1048827B19A4124B5046676C3EF91B4C19568D9BA196DEB36C09BB30076BE1DA66C459CEEE2C93D04266187D770';
wwv_flow_imp.g_varchar2_table(45) := '4A140035409AE826D5F4FA3B6FE02856887C1FC18D9B08BFFA0AC1D933287F7A0295939FC2FCFC0BB8172FC3106150F010E53D2859E397FC6015C3A20098E86EE5F793C0432570B78041593E9457F2B734ED4F4440A582583C8A391795B933A0962D466E';
wwv_flow_imp.g_varchar2_table(46) := 'F51A14245070E51AE41E790C4EF74CBDFBA0595D4A141D515D16900AA3230383E81E78A87D5DEB975100D44A6A82DA250938C95A9B9EC4A7E7A17FEF5710DEB889CAE933E87FE30D940E1FD6A57BDDBE5E98A552523BDC80CEE3978A7DBA54A86CCA2322';
wwv_flow_imp.g_varchar2_table(47) := '60449D8009BA347E2D0990C0432470A700D0B1437A633019ACD3425EE2CA4F77258CC310CA3474D12F95CF23CAB7C298BB00B92776A075FFD3C8AD5C0947B626D65504938794DEE258E20462C092E78DFC5E029328001E624FD7FE551400B5B37AE82D93';
wwv_flow_imp.g_varchar2_table(48) := 'ED3A6523BD24B9CF921B55EEB32844584C5CFEC1175FA0FCD151F4FFF155943FF8400FFE05CBD4853C222F07256EBCB45EB854F2D3AE7F59FB975DF9589BFFA1F729BF9004268AC0DD04406426CF1829E42533F691E374B23C20FB0C4488C30895C10AC2';
wwv_flow_imp.g_varchar2_table(49) := '5C0B9C6D9B50F8C1B3F0363F0E77D9A37066CD815D28C0B46D3DF84BB1505D8740495692381D290026AACF1FF4BD14000F2234417F4FB6EA4CD3FBA4CA9E61CA4E9EFAE5DFBE85F2D75FC13FF109FCF78E2038F109A2AFBE427CE306ACD08725B37D19E0';
wwv_flow_imp.g_varchar2_table(50) := '25BF5F4A81EA943E99FD271B86E8813FDD1274822E8F5F4B0224300104EE1CE0AB2E7B2D0E5297FD507D0FF1062879664831A10851B9825024C2EC99301F5B0673DD5AD89BB7C25BB31685471E416EE60C2D20644343A93E9A6C2E686811C01D8627A0B3';
wwv_flow_imp.g_varchar2_table(51) := '6BF84A0A801A204D4413BD6F5F9C6CD3A937DA917F1A40581C40F9CB2F503A7614E577DF4570E020E22FBF826D18B0F339D97A1C912ED391D4E76779DE89E83D7E27094C1F02897B3FD65B124BC640287147B209D892A53076EC84B77D3BDAB66C466B4F';
wwv_flow_imp.g_varchar2_table(52) := '0FEC9656BDADB02C1D44E9CC5F962DAB4B97D387CAF4B8120A8049DA8F890740E2FC930A5C52B4A37CF50A4A5F7E0EFFE38F11BCFF3EC24F3E85FAFC0BA0AF17562E0753B600951B338DCCD5653A59A16792F6304F8B04A60081A1DA5F526D546911A04A';
wwv_flow_imp.g_varchar2_table(53) := '65447E80A8AD03F1D2A5B056AF427EEB16E41FDF80DC633DF0E6CE83E1B8697A7232FB1F5971640A5C75D39C2205C0A4EDEA24022089CB3510DEBE85FE8F8FA1FFDDC3088FBC0FE3D8711857AEC0949B52EAF5CBEE7C8E9D0886B490DFA4BD349E180990';
wwv_flow_imp.g_varchar2_table(54) := 'C09420205E4759D7976544A938A2038983080822BD03A1EC061ACF9A0963CD2AD85B36A365D71368D9B2054ED72CED099097FEFF0C029C94FD4D013049BA2519EE93017FC46D03E55710DCBA89CA179FA3F8CE3BA81C7A07D1A953302E5C80512CC1F23C';
wwv_flow_imp.g_varchar2_table(55) := 'BDB947E8C8A63DA676FB5B128ACB17099000098C93808E11181200692C91C41149A49F1FE80DC462CF839A3B5BEF30E8EDDC81DC13BBE0F52C87377B0EEC5C7EE80C981538CECE68C0C729001A0035EB21ABEE7EEDBA370C24D5FC13A7997FED1AFA4F7C';
wwv_flow_imp.g_varchar2_table(56) := '8CD287EF03870EC3FCF838D4ED9B7A9D5F5E9661EB80BEC89235B764C73EBD356FD693607B12200112B81B81110F936A6692CE1D500AA6A415ABE4B7AABD1DF1F21530376D416EE70EB4EDDC066FDE02FD24933CA6A47C59D5A749D493810005C004F742';
wwv_flow_imp.g_varchar2_table(57) := '7253C469C05FB20DAF4EF5F37D84BDFD289F3B8B814307E1BFF72ECC4F3E85FDED799D06A85AF2B28D9FDE9D4F5E5155A557F37927F8BAF8F5244002D383C09D99037A494057F9316049A071207101C5A432E98C99C0A33D7077EE40CBFEA7905BB31A6E';
wwv_flow_imp.g_varchar2_table(58) := '57172C2FA72735777A01385199581BA1009840FE7A8BCE34C056026CB45296203E2854AE5CC2E0A727E17FF811E28387107FFA29E2DBB710874152C447067F2389ADD5953C47DC490CFC9BC04EE55793C0342370DFD441F1354A09E128D09318D968CC6C';
wwv_flow_imp.g_varchar2_table(59) := '6907962F07B6EF80B76D0B5AB73C8EDCE2A5FA6FF2ACD2CFBDB434803CF3182038710643013071ECF58DA0ABFC49D52C49F78B24EE3F4438D887E2A99318387810D17BEFC33E761CE6850BDACD1FB6E4F596BF52CFBFBA632F03FD27B013F9D524D0E404';
wwv_flow_imp.g_varchar2_table(60) := '74A0605A6CCC2E9660070A61F74C547A96C3DEB615EDDF7F062D9B36C26EEF8261D87AAF0179EEC93C46A6301400136740140013C75EBBC3AA75FEB5DB3F54285FB988D26767E07FF03EA20387A04E9F8171FD3A502E41391662CFD569817A9D3FDD939B';
wwv_flow_imp.g_varchar2_table(61) := '0260023B915F4D02CD4E40670AC8BA8082E5FB30831081E5A0D2DE01ACE841E1C9DDC8EFD88EDCAA3570E72D8269895A48663EA6141BE23AC084591005C084A14FBEB83A78CBCFB0AF0F03C78FE935FFF8BDF7601FFD18C6D5AB081D0B91E7E81B4597D8';
wwv_flow_imp.g_varchar2_table(62) := 'D4057E860B7B52004C7027F2EB4980043481A4A2608CB05241250811CF9A016BDD1A78DBB6A2B0EF29E4376D81DBD1013394806796099E68B3A10078083D303440570BF38C28CAADD7C3A4B67F7F3FFCAFBF46F1E001945E7F1D387912F6E5CB30CA6544';
wwv_flow_imp.g_varchar2_table(63) := '394FA7DA4824ADCEC315E1A015372BFD3D84EEE357900009D44840C727C531A24A0551A904E5B9C09C59B056AD42FEE9FDC8EF7D12CE9265B0DBDB607976EAFE4F12A0ABCFC9EAE3918E811AA18FA31905C038E0D5F2D124CA3F794939DFA4167FB24396';
wwv_flow_imp.g_varchar2_table(64) := 'DEA90F40D0DF8FCA179FA172EC188237DE4024417F57AF02B6A98BFC482D40BD1740B23B875E6FAB6EE3595D0AA8E55CD886044880041E0A01291B1C04BA74B07E56CD9E0367E76EB87B9F82B3F971D82B1E83D3D10E27CD0DD0BB08A6298249DA206303';
wwv_flow_imp.g_varchar2_table(65) := '1E463F51003498F29000901CFF6A853ED96253067151CA7E00FFFCB7281E7E076571FDBFFF01CCD3671057CA88DB5A00D96F5B34837C363D57BD8DA7FC726839A0C117C1C393000990400602BA6C70146911A02A65A8420B8C477A606EDC0C67CF1370F7';
wwv_flow_imp.g_varchar2_table(66) := 'EC84B7641172AE07CBB092CC80746E541DFC191B9001F8189B52008C115C968F25253092415CA6FDCA4AF7CD2E57A06EDE84FFC927E8FFE75FA3FCC6EB302E5C8453A9E8FAD9712E0758E9361A772CF457D3FE98F297A527D8960448E0611090380079C7';
wwv_flow_imp.g_varchar2_table(67) := 'B182520122C34068B950B3E6C2D9B71BF9179F4761DD3A1466CE81936FD1A7249A411E957AA9537EC16D841BDE5514000D479CB8EDF53B963CD8A4625F148608AF5D4378EE1C2AEF1F41F1B7BF85FFDE7BB0CA6538E9DEDA7AF03792241906FA3D948EE2';
wwv_flow_imp.g_varchar2_table(68) := '97900009D481C0D0FABD0E555288A20841DF0042DB81B56923BCE79E4561C776B4AE5E0B6FEE0218B693164549B203F4EC9F02A00E3D71FF435000341CF1B00090321991AEDA13431507513E7512FD6FBCA6B7F58D4F9E8479F1120C15C1F472304D2908';
wwv_flow_imp.g_varchar2_table(69) := '9CFCC7C1FFA17412BF840448A08E0486360112111045888A25444A21EAEA021E5D86DCAE9D687BE179E4373CAE8B0719B093B440F102488600A300EBD81B773F140540C311270240FE8B4400288558CA665EB98CE2BB8771EB9F7E05FFC30FE00C0CC04D';
wwv_flow_imp.g_varchar2_table(70) := 'CF25364C9DE697A4FB3D9413E49790000990404308E8815C16F82530300CE1972BF01D1BF6B6CD68FDB33F41E1C97DB0E72D865D68D7139F6A10E08864A9869C170FAA5336654ACA57630928BDAA2551AE41ACE07FFB0D2A273E46E5E04154FEF847A8B3';
wwv_flow_imp.g_varchar2_table(71) := '67201BF95AB273966407C8BCBF9A32C8DE696CD7F0E82440020D2190A42BA765CAA5E84F18E91D04C3620961AC809E47603FFB24BCBD7B50D8B20DF94796C332657F93340E802E8086F4CBC8835200341C71D50390A4B9F89532063FFA10FDAFBD0275F8';
wwv_flow_imp.g_varchar2_table(72) := '5D38C73F8175F51A62C7419CCF6BBF5775D6CFB1FFA1740EBF840448A0CE04AADEFB9165828D20821544DA13209503A3AE4E444B17C1DEB219ED2FBC80D65DBB61E7DB2019047ACF40BD0E50E713E3E14611A000784806A15484C00F51BE7C05C5B7DF44';
wwv_flow_imp.g_varchar2_table(73) := 'E9372F21FEF838BC2B3760952A50AEAD8B66E8421AE9AA3F05C043EA1C7E0D0990405D098C1200E20510BF6618E9FD4E4C9DEF6720B22DF8F91CAC552BD1FAB39FA0E5B9FD70E72D84E9E460DA765DCF8707BB3B010A808764195219AB78E53A8AA7CF22';
wwv_flow_imp.g_varchar2_table(74) := '78F515A8DFFF06F8F26B18CA8661D988C5DE654720BE48800448601A1118DAA954AA984A847F5AE8470581CE8632162F84FB83E790DBFF0CBCD56BE1CE5D042B97E3E4FF21D80005C043802C5F11F6F5A3F7C427E89788FF036FC37AF7308CEB3711E75B';
wwv_flow_imp.g_varchar2_table(75) := '11BB3918A6DE4DFB219D0DBF8604488004268640B55C30FC0A54A9047475028FAF87BD7327F2BBF6A0B0690B9CEE1943426162CEB239BE9502E021F57370F92A6EFCFE65DCFEDD6F81939F2277F5324C71FD3B39C096C0971826E3311F526FF06B488004';
wwv_flow_imp.g_varchar2_table(76) := '268E4092DC1C2BC90A08A06C0B418B540A7C0CAD2FFC18ED3FFE09DCA54B61491974C60034B49B28001A82575CF9A9E5460AAA12A072EE1C6EFEB7FF82DE977E05E3D245E48C24DD4536F591D692F2276FBE48800448A0290818316223461404F07BFB11';
wwv_flow_imp.g_varchar2_table(77) := '7776A3F0939FA2FD4FFF0CF9B56BE174B4C174ABC9D14D41E4A15F240540BD90A7CBF73194366ABD818F38F5070751BE7011A563C750FEF53FC27FF58F406F3FCC7C2B0C53F6C50EF53EDAF26FC348CBFED6EB9C781C1220011298AC04D26000E5FB886E';
wwv_flow_imp.g_varchar2_table(78) := 'F7E91D4FED7D7BE1BDF0020ADBB6A1B07C05ECCE4E7DF623770A9CAC973315CF8B02A05EBD9656FB5546A44B5F4A552B1100FEA54BE8FDF043940EBF03F3EDB7617D7C1C7129802AB42196413FAAC090CF48D95F8B91AFF5EA0E1E870448600A10101110';
wwv_flow_imp.g_varchar2_table(79) := '84C0E000E038887A1E03B66D4561CF5EB4EFDD076FC9D26A2175EE10D880EEA400A817D4EA56BDE2D6D27B5B5940A8503E7D1AB77EF3CF28BEF9069CB367E15DBB014431949B14FD810AF44698B2ED6F6CD20350AFEEE0714880042637816A9120238A60';
wwv_flow_imp.g_varchar2_table(80) := '967D9D1A58E9E840B86C09724F3E89CE1FFF18F9356B61488134A98FA24BA4C5A96F95CBA5F5E85D0A807A501C7252E96C573DFCC79142345044E9C811DCFEEBBF42E9B55775B95F4FB6F7D5052EAA052FA575BA5D10235EEAD61B3C100990C0E4269014';
wwv_flow_imp.g_varchar2_table(81) := '094AB635B722A5E741E53042A5B50DEEDE3D68FF577F82C2D6ADB0BB67C0F272495DA0580AAA1B30A55C3A1305C7DDC11400E346980CDFC996BFF2B6F4BF83FE01942F5D44E9E00194FE9FFF17C1C183E21380D3D50553AFFDA75B5E8E58DF621580BA74';
wwv_flow_imp.g_varchar2_table(82) := '060F420224300508680190EEFC63C9BE279142A57F10BE69C2DCBA19F99FFD04F95D4F20BFEC51B8DD3392CA80710013262C0A80BAF43005401D3026C3BFD4FB17F794AD83FA062F7C8BDE4F8EC23F7810E66F5F8179FC534006FE8E8EE4E75D04401D4E';
wwv_flow_imp.g_varchar2_table(83) := '858720011220812943A09AF8A4E7F3B25360FF40B261DACAE5C053FB90DBB50BED5BB723BF6C99F69A46140075ED5D1D249000002000494441545B0A803AE01C1600B2E1AF83D8F7D1FFE9C7B8F1C62B080E1F46EEA34FE09EBFA283FEA21659FB4F0400';
wwv_flow_imp.g_varchar2_table(84) := '5F24400224400232B9177780024AC564EBE039B310AE5E0D6FE74E747EFF79B46C7C1C705D4471A89750C50BC02580F15B0E05C0F8190E2D01C4B2C3956CF9DBDB8FFEB7DFC4ADBFFF3B04EF7F00EF463FDC4AA8E302956371838BBA30E741488004A60B';
wwv_flow_imp.g_varchar2_table(85) := '8158E64412411504808AA02C0B517B27DCADDBD0FEDFFF190A4F3E05B3B35DC7001874FFD7ADDB2900EA86523CFF21223F847FF92A065FFE2DFAFFD3FF8DE0E3E370AC1CEC7C0B0C09783159EEB78EC87928122081294E20890590A2684994BF2C05C483';
wwv_flow_imp.g_varchar2_table(86) := '25283F84B37E030AFFE6DF22FFFCF370E6CD852D1BA6890795AFBA10A000A80BC6E42052D6B272BB17E52FBE44E9E59751FEBBFF0C75EE1C2CB700B3B53D1100ACF75F47E23C140990C0742030240024DD4F0440FF00E2B20FF3914761FFE2E7F0BEF77D';
wwv_flow_imp.g_varchar2_table(87) := 'E457AC406ED62C980EEBA5D4ABCF2900EA4552B2F9FD0A8A5F7F83C1E3C7E1BFFE3AD4EF7E87F8ABAF60E6F2300A85248A75A8A6551DBF98872201122081294E401750D78FC81871B184B85C463C7F3EB0770FECBD7BD1BA7D3B5A56AE842DCFD3297EAD';
wwv_flow_imp.g_varchar2_table(88) := '93E5F42900EAD81361A988FE6347D1F7F6DB88DE390CEBC38F605CBD0AE45CC47A7B4B0392F5C2170990000990C0DD082493A4D8AF00BE0FD5D581A8A707D696CD68DDBF1F6D4F3C01A7BD9B3B05D6C9782800EA0452C675BFFF366EBFFA2A7A5FFA35E2';
wwv_flow_imp.g_varchar2_table(89) := '631FC3BB701156B108E5D9885D07866CF893D4FDE18B0448800448E01E046215218E4328D741D4D6066BE50AB4FCF45FA0EDF91FC099B300162CBDDF0A5FE3234001303E7EFAD32A8E111A312A17CEA3F79F5E42FF2F7F099C3D877CB9022B567ABB4B65';
wwv_flow_imp.g_varchar2_table(90) := '9BC98E7F14007520CE439000094C6B02BAA47A0C152B042A82B164315AFFE41768FBD94FE02E7904B69D836126B10023F65E9DD6481A7171140063A23ABC3795FC2B0C0294060751FAFC330CFEC3AF50F987FF06F3DBF3F01C07966D23360DBDEDAFDEFC';
wwv_flow_imp.g_varchar2_table(91) := '8A4B006322CE0F91C0542070B7B569DEF2D97B2EA98A1EEB676BA55404E6CD47EBCF7E8AF69FFD14B99E15B0DB3B61B8EEA88D8218173006CE71CC8A34D9B1554BFF26DB53F8C522062E5FC6E08913F05F7A09EAB7BF8579ED1A9CB65658AE97E4FDF329';
wwv_flow_imp.g_varchar2_table(92) := '901D333F4102538C40BAC3EDA8B3AE16099F629732A1A75BE518FA3ECAFDFD8867CE44E1F9E7D1F6E28BC8AF5F0F67FE7C9885C2A86D822900B277193D00D999E9B2BFD5C2BF32BAFBBDBDE83F731AC5F7DF47F48757601C781BC6ED5E58EDAD303C2FA9';
wwv_flow_imp.g_varchar2_table(93) := '5845013006D2FC08094C0D02D5C1E77E1E003E026AEF4B1D302D4FDA8A8FA0BF1FAAA31DD69EDDF0F63F8BC2B66D6859B51A764767B20490AE01DCAF0F6AFFE6E66A49013086FE96E13F8A156243B6F731E05FBB86FEF7DE41F1C0DBC0A1C3B04E7C02A3';
wwv_flow_imp.g_varchar2_table(94) := '3808B416001DFC67EA0040BE488004A62781BBCDFCEFBC527A026AEFFB2ACF3808A00606A00A05446B56C2D8B11D2D7BF7A163D71E78B3E724CE55254584F4A358BF181A98813397006A87556D29B3FFC407203BFF01958BDFE2F6CBBFC1E01FFE00EBC4';
wwv_flow_imp.g_varchar2_table(95) := '49B8172FC1087CA88207C37160284307006AB59AFDEBF809122081494E8002A0FE1DA49F9851A8530223DB42D0D585B8A7076D3F7C1E9D3FFD39728B962463BEEC24AC2B09261A8002A0F6BEA007A07656432D65104F9600C4490594BF388B1B7FF7B718';
wwv_flow_imp.g_varchar2_table(96) := '78E925D85F9F47BEEC27EE2BCF012C0B7AABCB34FA9F02600CC0F9111298E40428001AD54131E238828A2304251F71F70CB4FEE2E7E8FC77FF0B72CB5727833D05C098E153006444571DC0ABEEBC1811CA9F9CC0CDBFFC0BF4FFE33FC2BE7E0339C7D3F5';
wwv_flow_imp.g_varchar2_table(97) := 'AA23BDF18F013B4DFF6B4617E0FD163E2886321A1F9B3F1402B52ED6E9FB7944632D02540CA31A572DA1EC4938FB90E78F369FAD0B856F6CC6505180F07A1FE27C0E2DBFF839DAFF8FFF0DDEE39B6099B2C43A7C4C8D3CDB5734756B0A800CDD3F720017';
wwv_flow_imp.g_varchar2_table(98) := 'A3936215AA5C4259AAFFFDE55F62F0A597600CF4C3696D0124F75F6F5A61C0D64B00C943A0991E00A36645E9837024EE66E391C1D4D8748208D41448960EF0E276AEBE65D491C1DF0C2398A14AB6B7B56C4052809BECBEAF67D7E98D826417D53084BA79';
wwv_flow_imp.g_varchar2_table(99) := '1B869787F7C28F90FF9FFE2DBCCD9B61B7B6C3B25DED0930E338D15B7779D6D4F39CA6D3B1280032F466F546AEE6F347E53282DBB750F9F04314FFFAAF5191DAFFE522CCAE76C492FF9FEE586DA9E112C0CD22001246A27A92F7BDB24D9B8547063363D3';
wwv_flow_imp.g_varchar2_table(100) := '092450CBEC510FEE86910CFE66BAFE6CCA3D1EC3082358412A006C1B30921569DAF9D83A550B00D92A388A10DFEE85E1E660EF7F06EE9FFD29DC2D5BE0CE9E0BA7D0223BADC3542A79E29AB5F4E2D8CE67BA7D8A0220438FCAAABFBC92923E40D0DB8FE2';
wwv_flow_imp.g_varchar2_table(101) := 'F90B281F3982F0977F8FE8CD3780A00C7474005A0024857FAA82613A3F04EEBCE564472F44111086D091BC7203DFA5E40403763218209B3E14022397F992FB5DC6FBD4C2A5A09765C190FBDB327581AFD832A02C33893ED3014222FD93CF24FB7F0CFBC2';
wwv_flow_imp.g_varchar2_table(102) := 'A6F333A0219D9306F78900406F1F0CC785B17737AC9FFF14EEB6ED6859BC146E6757F2D52A8461983053D1D590F3996607A500C8D4A1551F40326C95AF5E47FF99B328BFFB1EF09B5F0347DE058200686FD7022049506D8ED728777F3AE3D7AA5D18C8F6';
wwv_flow_imp.g_varchar2_table(103) := '9EE9B371D88B92E4F92689947C91C0E42070A79D56CF2A59674E270032C33425B557069D241C18B68958DEA6A93D7FF2D2FF8AE5679206CCA58031F6B188AF3004FAFB13E1B56D0BF0A31F20B76307DA56ACD1E9801263ADE250486B01509DA48DF11B9B';
wwv_flow_imp.g_varchar2_table(104) := 'E663140019BABAEA01A80E59E5F3E7D1FFD151940FBF03BCF61A8CE3C793596F5B5BF30A0099F9CBDE08A689504A75B6B6C0EAEC86D9DA8AD84E8222F503520223450018B1FEC917094C06022305801EF245CCAA18885412F313F87A994F0DF623EEEB03';
wwv_flow_imp.g_varchar2_table(105) := '6EF5C1AC04B064C95F827E65807292EC1FC332F58C54067F2D77E55893E122A7DA39A402C0E8EFD75CD5DAD5889FDE87DC134FA063F376E4162D4E0400640920155C53ED1A27E87C290032801FA9E0E5DF952F3EC7E0A1B7513E7810F1E17781B39F25EE';
wwv_flow_imp.g_varchar2_table(106) := 'BFD6D6E6140032DB1797BF52F0F33954BABA80450BE12D5F0567E14218394FD38E6313B1160080654630AB399219FA824D49A05104460ED232F8AB50DEA11EFC556910E1AD6B08AE5C803A7F11C6B79761DDEA83AB141C19F02D4BC7FFC840A5DFD56580';
wwv_flow_imp.g_varchar2_table(107) := '111EB0469DF7B43D6E55000C0CEAB957F4C852A86D5B90DBBD079D4F3E8D5CCF727DE9E28B11A1C565C5DA2D8102A076565A65EA75FDF467E5CC490CBEFA3B540E1E84FAF813E0DB4B4014C3C8E7B48BB0995E43417F958A0ED8F13BDA515EB400E6EAD5';
wwv_flow_imp.g_varchar2_table(108) := '68DDBE13B9E52B61E67388A582622C513DE2A68B619AA2DAB9456233D9CA94B8D6745D4AAACCA948418511E228D4593F51DF4D4437AE22BE720DB8780D8644A7970661944B50038350FD45607000C6E0A05E123424405062042C5BBBB0B517AC899607C7';
wwv_flow_imp.g_varchar2_table(109) := 'DADF434B832200C4B35A2CEA4385736741AD5A81DCDEBDE8F8D18BC8AF5D3F5493A55A0888CB8AB551A700A88D53AA30EF1000278E61F09F7F85CAA103509F7D03E3C66D20543A05B0D9525174C093B8FF8B45FDA0F467CE80BFA207CEB6ADE87AF639B4';
wwv_flow_imp.g_varchar2_table(110) := 'ACDB002397D733A9E1304AED0F487AA0AAAA32F4079B9240C3085447109DC49266B1C84F1DD8EA037E05289681C112A2DE3E546E5D45E5CA25045F7D8BF0F3AF812FBF84F9CDD730FA7A13F3761C989EA7DF3239A000B87FCF7D271D5304934C2E6487C0';
wwv_flow_imp.g_varchar2_table(111) := 'D616A8C5F3E1EDDB87F67FF9DF21B7795B1A7191C46132AEA8F6BB8202A0765669104F5A015029543E3882C15FFE17540E1ED0B301A35849946A9345A1EA9B5554BAA4E10C0E220E0304B367C35FBB0ADEAE5D98F1C31FA16DD366C0B0F45C7F64C02003';
wwv_flow_imp.g_varchar2_table(112) := 'A33218209B4E0A02A3025E25D9A55844E9F635942F5F44E5CB6F109EFB0AEADC39189F9F052E5D42DCDB0F942B3062A51F0D52244CDEDA1390E6AD739BF0D15D3B8AB19E27C8F262A48BB087A681B0AB3D1100FFE67F406ED76E18A6A30FA0D30119585C';
wwv_flow_imp.g_varchar2_table(113) := 'F37D42015033AAA461B20B8089B05246E5D03B28FDF5DFC097188081DE24E74F7281C5C5DD24AF516E3AF100A46ECF60F62C04AB56C1DDBD0B335E78016D5BB6E85BF34E0130C207D024C47899538DC083DCC9329B8FCA2504C541847D03086EDE4274E5';
wwv_flow_imp.g_varchar2_table(114) := '32A2F3DF203AF705D42767117DFE25C26B97A0067BF50E228EEC12EAD850923920A96B922ECC08C121D3F88E00484580C41705953202C786B76F2FDAFFDDBF47FEA9A7607BF9A17D001ED45F53CDFE1A79BE140019E9CA1A76245929030328BF7100C5FF';
wwv_flow_imp.g_varchar2_table(115) := 'F89FE01F3808A812CC9C9DB8B79B44008C74D3E97CE8D403208180C18C990856AE84BBEB0974BF980800C3B211A5B511E4813794FFC73B36A315B2F9A423A023FC634486812852088B03086E5C4778EE4B84473E4670F4382A9F9D4270E96B588303F064';
wwv_flow_imp.g_varchar2_table(116) := 'C0B74C284FEA09587AB33093A130F71700E93326E8EB83AF14DCBD7BD0FEBFFFAF283CBB1F4E5B3B2C61CA2A80996E0D0A804CB824C85F41499ADBED3E145F7B03FDFFE13FC23F7408B611C16ECD27AEF026D9FA77942B7F2C02402F1DD05F97D104D97C';
wwv_flow_imp.g_varchar2_table(117) := '1212A826F8556B0048447A542A21BC7113FE3797E07FFE052AA74EC03F7902C6993330BFF90646A50CB41500890D90A0580A80FB0A0019DC956418F5F521084338BB76A2EDDFFFCF28EC7F166ED74C58A60B930220D3DD410190015752E44B5282228437';
wwv_flow_imp.g_varchar2_table(118) := '6F61F0D557D1FBE77F0EFF9D43702D135E5B9B8EF895B4E16678510034432FF31A1F442099FB279B842719FF92E592AC5B472A861F29F8B76EC23F7706C1D1A3880E1D823AFC1EE26B576178360CD7D19F6916CFE18378DE735E50F500F4F7C30F43D83B';
wwv_flow_imp.g_varchar2_table(119) := 'B7A2F57FFCD7C83FFB0CBC59F360BB2D6911A05ABE816D34E798E1A835594235582D929BBAE223B8760DC5D75E45EF5FFC058277DF45CEB2E0B5B7EBE01E1109CDF0A20068865EE6353E984032FCCBA85F2D165EDD955E4F1A645B7B1520BC7A0DE1175F';
wwv_flow_imp.g_varchar2_table(120) := '203C7A1481940F3F750AF1375F23EEEF83613B30242EA02A1E4638C69AE369329AF25D1D8369A071D0DFAF3D00F6D64D28FCEB3F45EE99A7E0CD5F0CA7D00153022C1FDC616C9112A000A8D114AA3772A814C25211FEE54B28BDF63AFAFFEAAF111D3902';
wwv_flow_imp.g_varchar2_table(121) := 'CFB6530F000540CD31005C02A8D1FAD86CF21348067F8971113F4075D0D6B52EE2084614228E6244834504972EC13F7B1A9577DE41F0FB3F203A73168663C26829C0302C18B279D81D17DC6C22E07E0220ECEF471486B0366D44EE5FFD4BE49E7A0ADE92';
wwv_flow_imp.g_varchar2_table(122) := '65703ABB609A160540869B8502A04658A304C0401F2A17CEA3F4FAEB18FC9BBF45F8C1874302A099727CE901A8D178D8AC690824026078F73F49FDB394D4A88F01CB858A0D04A5415D33A0F2FEFBA8FCE6B7083FFC00EAFA75187E597B004CF106E812C2';
wwv_flow_imp.g_varchar2_table(123) := 'C3D8280086538DA381014441086BC33A78BFF819BC279F84F7680FDC1933614A09E6A6B1B6F15F2805400686892B2F42D07B1BFED75FA1F8C61B18FCBBFF0FD14747E1D8365C1D03D03C453E280032180F9B360581EFD6B590B4E0AA4FC0D225B08358A1';
wwv_flow_imp.g_varchar2_table(124) := '522EC2FFE62BF8473F4470E43D0407DE4174EA342C25C1C42D302DD94C2CD946BCD906FFFBC50048AD112D00C210E6DA35F07EF26378FB9E84B76205BCD973290032DE6514001980692F8094B9BD7903952F3E43E9CD3751FCE57F4574EC386CC781237B';
wwv_flow_imp.g_varchar2_table(125) := '0048810FC600D49606C825800CD6C7A6539340122228FF2751FE220022CB802F256D077A115E3A0FFFE84728BDF41BF86F1F84D9771BB663253B081AB6F60424AFE69201F75B02181200AB57C179F1055D1028BF6A35DC79F361D10390E936A100C8806B';
wwv_flow_imp.g_varchar2_table(126) := '48005CBB82F2D93328BFF916CABFFA47449F7C0ACBB661530024F5CF6BAD03400190C1FAD8742A1248F20364E497886B43A7FB2913505238338AF4E642FE67E7D0FFEA6B28BEF536D499D3302F5F861944B0BD56987AEF8064AFBB667AD522008C552B61';
wwv_flow_imp.g_varchar2_table(127) := 'FFE8475A0014D6AC812702C0B6B90490C150280032C0D2413EE201B87C09E5D3A75079EB4DF8FFF4CF50274FEA1B55B6BCA5078002208349B1E93427A08B03C906583A1850CFEB93AD81E5BAA51A3000FFFA35F41D3B8681F7DE4570E020D4474761DE1E';
wwv_flow_imp.g_varchar2_table(128) := '80E3159278004BA522609AC31A7179B50800AC5C09EB87CF6B01D0B2662D720B1650006434110A800CC08604C0A58B289F3E09FFADB710BC2402E094DEE54B6F03CC25007A0032D8149B4E6F027A01A0BA9990F67849A1B03459D01457BFEC2D544159B2';
wwv_flow_imp.g_varchar2_table(129) := '8A4E9F42E9D5D75179ED0DE0AB6FE1540298123FE05A30A464F0F44635EAEA6A12002B56C0FAC10FE0EEDB8B9675EB905FB8880220A38D5000640036EC01B888F2A9535A00442FFD5A0B0088AB8E02804B0019EC894D9B8440BAA3A02C05281DDA9FD4C1';
wwv_flow_imp.g_varchar2_table(130) := 'D6FFC91ABF14178BC5B37819836FBC8DE2CB7F4074EC6358E7BF81591C8499CBC1C879D0E5B69B30BE68C84AD23A00D518002C5F0EEB07DF87BB772F5AD6AF477ED1620A808CB71405400660A304C0E95308DE1C1600310540F6BD00180390C1FAD874CA';
wwv_flow_imp.g_varchar2_table(131) := '1248A7EE5A00A40583926B490540BA6A1D554A281F3D8EE29B07E11F3C80E8FD7781AB5760170A300B8564F7C03B04C074F60ADC99CE27A58065BF1195660118CB7BB400904D810AEB3620470190F916A100C8808C0260342CA60166301E366D7A02D53A';
wwv_flow_imp.g_varchar2_table(132) := '815510892F6078988B8300E1C5ABF03F3D83E2ABAFA0F8EB7F40F4F96770F379D82D2DA3960FE418DF4D399CDE88470A002569802B7AE0FCF07BF0F6EE456EDD06780B96D00390D10428003200A300A000C8602E6C4A02F725501DC0ABB3F8385250A50A';
wwv_flow_imp.g_varchar2_table(133) := 'C20B9731F8C757D0FF777F8BF0C4C7706205C771748D111D6394BE9A4D00E8F889D403A005C0CA1EB82200F6ED457ECD06B80B96E8606C1602AAFDC6A300A89D5552EA5367014810209700E801C8603C6C4A027710F88E00907D466020E8ED43E9ED0318';
wwv_flow_imp.g_varchar2_table(134) := 'FCFB5FEA2241D6F5ABB02A655DE4C6F4BC6429608408681AB00F1000E201D069937CD54C8002A0665489CB8D02601818054006E3615312788000903F8700822842F9C3A328FEF66584870E213EF929CC6B57B47BDB94A500A9369A16176A2AA8F7110085';
wwv_flow_imp.g_varchar2_table(135) := '35C912806463F1553B010A80DA595100DCC18A022083F1B02909DC470054E7F4523438448CF2E79FA3F4EE61F8070F41BDF53670EE1C2CD384D9D68AD8B2D26042292E94BC9BE2450150F76EA600C880941E80D1B0280032180F9B92C03D0480FC3A1100';
wwv_flow_imp.g_varchar2_table(136) := 'F236215B8E57AE5F41E9B3B3281F3A84F0572F21FEE02358F2D7F63628CB44948EFA96EC1C4801007A00C6767B510064E04601400190C15CD89404EE4B60E43ABE08802478CD808A63BD6360F9EA65940F1D44E9AFFE06D15B0760C531ECCE4E285B0440';
wwv_flow_imp.g_varchar2_table(137) := '525ED854525EB84940D30350F78EA600C880940280022083B9B029098C89807ECEC8AEA383FD281E3C8481FFF3FF42E5953FC28E22B89D1D890740467DD961981E80A40E006300C6646B140019B051005000643017362581311390674D188528BE7704B7';
wwv_flow_imp.g_varchar2_table(138) := 'FFC39FA3F4FBDFC3191C8097CB2196CD84CC64018E3100491A2005C0D84C8D022003370A000A800CE6C2A624302E02F2BC291E3F8E1B7FFB9F51140FC0A54BF0FC0A8C58018EAD4B0337D70601F7AE034001303653A300C8C08D0280022083B9B029098C';
wwv_flow_imp.g_varchar2_table(139) := '9B40E9DC395CFFC79730F8FA6BB0CF9D837BFD1ACC28023C17B0ACEABE42E3FE9E297100C600D4BD9B28003220A500A000C8602E6C4A02E32220CF9BD2575FE1D61F5FC1E05B6FC1387A0CCE375FC3080318853C0C4B72DE9BC80B4001302E7BBADB8729';
wwv_flow_imp.g_varchar2_table(140) := '003220A500A000C8602E6C4A02E322A000942F9C47EFA103281E38001C7E17E6A9D330021F465B0186EDC08845003449F15B0A8071D91305C038F1510050008CD384F87112A899803C6F2A572E63E0E887281D7E07F1EB6F6A2F00CA65C4EDAD8008007A';
wwv_flow_imp.g_varchar2_table(141) := '00180458B3457DB7213D0019E051005000643017362581711308AE5FC7E0C94F503EF21EE23FBC02BC7B0471B108D5DE86D8711804986E06C420C0B1991A0540066E1400140019CC854D4960DC04829B37503C7D0A95F78F40FDEEF7C0A1C350C522A254';
wwv_flow_imp.g_varchar2_table(142) := '0068E73F0B01310D708C96460190011C050005400673615312183781AA00100F40F4BB3F207EE730E2D220942C01C816C18C01E012C038AC8C0220033C0A000A800CE6C2A624306E02C10DF1009C44F9FD23085301A04A83883BD21880588A013108904B';
wwv_flow_imp.g_varchar2_table(143) := '006333350A800CDC2800280032980B9B92C0B8098C1400C1EFFE00F5CE61A8B20880369D05207B0170332056021CABA1510064204701400190C15CD89404C64D402F019C4A3C00C302A0384200703B6096021EBB99510064604701400190C15CD89404C6';
wwv_flow_imp.g_varchar2_table(144) := '4D20B8793D590238F21EC2DFBD02F5CEBB8907A0BD4DC700D003C0BD00C66364140019E85100500064301736258171134804C0A7A88800F8FD2B5087DE03630006A0C210E6CA1EB84C031C978D510064C04701400190C15CD89404C64D400440E9F42728';
wwv_flow_imp.g_varchar2_table(145) := 'BF2F1E803F6A01205900717B8BF600C8D6800C02640CC0580D8D022003390A000A800CE6C2A624306E02C30240B200120F4092062802C0D5833F050005C0580D8D022003390A000A800CE6C2A624306E024302E0C891A125000A002E018CDBB0D2035000';
wwv_flow_imp.g_varchar2_table(146) := '64204901400190C15CD89404C64D80026004426E06346E7BBAF30014001990520050006430173625817113A000A00018B711DDE700140019E8520050006430173625817113A000A00018B7115100D40721050005407D2C89472181DA0850005000D46629';
wwv_flow_imp.g_varchar2_table(147) := '636B450F40066E1400140019CC854D4960DC0428002800C66D44F400D40721050005407D2C89472181DA0850005000D46629636B450F40066E1400140019CC854D4960DC0428002800C66D44F400D40721050005407D2C89472181DA0850005000D46629';
wwv_flow_imp.g_varchar2_table(148) := '636B450F40066E1400140019CC854D4960DC0428002800C66D44F400D40721050005407D2C89472181DA0850005000D46629636B450F40066E1400140019CC854D4960DC0428002800C66D44F400D40721050005407D2C89472181DA0850005000D46629';
wwv_flow_imp.g_varchar2_table(149) := '636B450F40066E1400140019CC854D4960DC0428002800C66D44F400D40721050005407D2C89472181DA0850005000D46629636B450F40066E1400140019CC854D4960DC0428002800C66D44F400D40721050005407D2C89472181DA0850005000D46629';
wwv_flow_imp.g_varchar2_table(150) := '636B450F40066E1400140019CC854D4960DC0428002800C66D44F400D40721050005407D2C89472181DA0850005000D46629636B450F40066E1400140019CC854D4960DC0428002800C66D44F400D4072105409D0580911EAFFAB33EDDC4A390C0B42140';
wwv_flow_imp.g_varchar2_table(151) := '014001D04863A60720035D0A8007088048C1280E02418060E64C042B57C1DDF504BA5F7C016D5BB6C0B06C440064BC3705A6BC38F867B040366D3602140014008DB4790A800C742900BE2B00AA63786C1888958231380884218219220056DE5300C8B8CF';
wwv_flow_imp.g_varchar2_table(152) := 'B13F83F1B1695312A000A00068A4E1530064A04B01701758469C0EE406A062A05402A2281100CB97C3130FC08F5F44DBD62D32EF871A31F1A700C8607CF7695A75A6C8CF914C63247F49C41669D787F6C33D0A05000540232D8E0220035D0A803B61C588';
wwv_flow_imp.g_varchar2_table(153) := '0DA12222C084A100A352411CC70866CC40F0E863709FD889192FBE80D6AD5B6018D69000C8809D4D1F4020E981E4AD9757F4BFE53FA57F691AA6F40E394E4102140014008D345B0A800C74290046C3D233CC5400E82146A6F741900880CE2EF84B97C0D9';
wwv_flow_imp.g_varchar2_table(154) := 'B2195DDFFF1E5A1EDF08C3CB21F28364A4E26BFC04D2315D78474A0FF7302D1BA6E3C074EDE46D5990BEA100183FEE8938020500054023ED8E0220035D0A80EFC2120F40D5C56CC812402A00FCD65694E7CF83BD6635DA763F81C2CA15886D0751C5A700';
wwv_flow_imp.g_varchar2_table(155) := 'C86073B534554A21F4432D008C9656585D9DF0BABB91EBEE8293CFEBC19FF3FF5A484EBE36140014008DB44A0A800C742900EE0D4B8B8038D60180120CE8E773A87475C158B2088535ABE02E5C0018265425D41E028E48190CEF3E4D857B24BA2B8A1179';
wwv_flow_imp.g_varchar2_table(156) := '3998F3E6C15DB218F9050BD03A670EDC9616BD24C0D7D42440014001D048CBA500C8409702E0BBB0BE93CAAF941600916521F45CA0B515D68C2E586DAD30620371140DAD57578FC6D9690623D44D136246AC205E17E538A8B4B643CD9F0F77E30614366D';
wwv_flow_imp.g_varchar2_table(157) := '427ED122781D1D703C2FF5D064FD0EB69F0C04280028001A6987140019E85200DC5D008C8E3C4732C397B70CF6710C15A7C1683A583059011077B5FCE4EC348301569BA63114E2713124FDB2A303C1D2A588D7AE4361EF1EB4EEDA0977FE7CD8B60BD34C';
wwv_flow_imp.g_varchar2_table(158) := '56FF29B2C6C079127C84028002A09166480190812E05C0BD3D0023FFA2C727A9092002200CA1242E208C608A0090012B1500D5B92C07A70C462883F9082F8A6A6F03962D85B5652BDCADDB91DBB801F9E53DB03B3B35EBEAEA3F1967633C595A53005000';
wwv_flow_imp.g_varchar2_table(159) := '34D216290032D0A500C8004B9AA69E80AA47E04E4F019700B2F1D4FC8469B90CF83EC2CE76048F2E83F5F8E3687DF639B46EDB0177F66C98AE03C3B699FD9F0DEFA46C4D014001D048C3A400C84097022003AC3B9B1A9C838E839E1EF865E62F6F25EBFE';
wwv_flow_imp.g_varchar2_table(160) := 'AE8B78E96260EB26B83BB6A16DC76EB4AC5CC574BF71419E7C1FA600A00068A455520064A04B019001169BD687405538C9924A5A65316C6B43B860219C2D9BD0F2ECD3286C7E1CEEBC85B05ADBB9D65F1FEA93E628140014008D34460A800C74290032C0';
wwv_flow_imp.g_varchar2_table(161) := '62D3FA10A806542A05F80162CF45B47809B06103723BB7A3E3C9BD28F4F400963BA216607DBE9A47997802140014008DB4420A800C74290032C062D3F111A8CEFCC31046B90CD96C292CB4402D980F67EB1614F6ED456EFD7AE4962C81DDD1957E17B758';
wwv_flow_imp.g_varchar2_table(162) := '1C1FF4C9F7690A000A80465A25054006BA14001960B1E9F809A4859524E82FCEE5102E598A78FD7AB43EB957CFFCBDC58B61E899BF91EEF853DD0D80F116E3873F398E40014001D0484BA400C840970220032C361D1B0149DDAB0EFC410015C7086D07F1';
wwv_flow_imp.g_varchar2_table(163) := 'FCF970763C81DCDE3D283CBE01F99E4761B5B4E9EF90E67A43A6A1719F02606CF027DFA7280028001A6995140019E852006480C5A66322305452D9F711572A88723954E6CC85B9661DDA9F7F1E1D4F3F0377C13C188E85D8B286F65562B19F31E19EF41F';
wwv_flow_imp.g_varchar2_table(164) := 'A200A00068A491520064A04B019001169B662320D37749F593357F9DEAA7105AB69EF99B1B37C2DDBE0D6DBBF6A075FD7A189E93CCFC47BCA5A222E7FDD9904F85D6140014008DB4530A800C74290032C062D36C04440048AA9F14F9090204B93C82D973';
wwv_flow_imp.g_varchar2_table(165) := '606FDC80B61F7C0FAD3BB7C35DB008566B1B602605942900B2219E8AAD290028001A69B7140019E852006480C5A6B513904546E207C800002000494441547C49F3938D94A46CB265412D58A06BFB7B3BB6A3E399A7D0B26EAD0EF8ABC6F9570F3E32EE9F';
wwv_flow_imp.g_varchar2_table(166) := '1E80DA914F9596140014008DB4550A800C74290032C062D3DA08C8CC5F2AFC49A47F14E91D14A3D9B3E06CD98C96FDFB91DFB419DE92A5B0BBBAF5F16413A591AFEFECC658DBB7B2D5142140014001D04853A500C840970220032C36AD8D4035E2DFAF20';
wwv_flow_imp.g_varchar2_table(167) := 'B61D44F3E6205EB552E7F9777CFFFBC82D5F91CCFC6543C534D2EFCE593F67FEB5A19E8AAD280028001A69B7140019E852006480C5A6F72630A2C80F2A1528C4881C1B983D1BCEE62DC8EDDE83DCE64DC8AD5A3954E42749F51B1DE9C7C8FFE96F641400';
wwv_flow_imp.g_varchar2_table(168) := '14008DB4720A800C74290032C062D3FB1388E364BDBF5C86F25C847366C35CB5126DCF7E0FEDCF3C0777E9125DF617B63534EE73C06F3EA3A200A00068A4D5530064A04B019001169B7E97409AEA873084BC2349F5332DC473E7C0DAB4119EA4FA6DDF89';
wwv_flow_imp.g_varchar2_table(169) := 'D6751B61B6B78E8AF2978331D5AFF98C8A028002A091564F0190812E054006586C7A770120D1FE950A62DF47E07AF067CC84B9660D5A25D56FDF1EE4162E82D3DA06D361AE3F4D08A000A00068E47D400190812E054006586CFA1D0252E04722FD551020';
wwv_flow_imp.g_varchar2_table(170) := '340DA8B9F310AF590B77DB36B43DB90F2D1B37C069691D35D31F99EB2F4B00490500BE9A850005000540236D9D0220035D0A800CB0D87498C088223FB2EEEFDB36FCEE4E581B37A2E5FB3F407EFB76BDAB9FD3DD0DD3B27545BFEA9B02A0B90D89028002';
wwv_flow_imp.g_varchar2_table(171) := 'A0917700054006BA14001960B1A94EDB938D7D0C15EB5C7F71FB2BD344387B16A29EE5F076ED44BB088075EB60E50B4383BEA0ABCEF6AB02A0FA3BA6FC3597615100500034D2E2290032D0A500C800ABC99BCAE0AF4CC00823D8E50A8C48A1629908BABB';
wwv_flow_imp.g_varchar2_table(172) := '75AA5FE1A9A791DBB409DE8A1E58B366E9215FEC4B5CFCD560BFEA603FB2FA1F054073191605000540232D9E0220035D0A800CB09ABCA992BD7D0CA537F7B14B15C0B451EAEE42D8D383B667F7A3FBF917E0F5F4009E03651950A90090A43F7973A06F72';
wwv_flow_imp.g_varchar2_table(173) := '034A2F9F028002A0917702054006BA14001960356BD36AAA5F14C20803BDAB5F64188867CC84B16E3DECEDDBD1B26327DA1EDF04674697A624E57DA5D04F8C38F100540B05352B435EF710010A000A8046DE0E140019E852006480D5CC4DE318A6EFC3AC';
wwv_flow_imp.g_varchar2_table(174) := '54103AC9CC3F5EBE1C2DCFEC47EB934FC37B64199CCE0E989E371CEC277102B20860183028009AD97A465D3B05000540236F060A800C74290032C06AB6A64333FF080823200AA1970166CD46B47A35ACCD9BD1B26B375AF4CCBF1B8669E899BE8EF68F63';
wwv_flow_imp.g_varchar2_table(175) := 'E8F15FFE2D81831400CD663DF7BC5E0A000A8046DE0C140019E852006480D56C4D8752FD2A40E023706CF85D5D3057AF46E1D9FD28EC7802CEB2A5B066CE8095CB0D07FBA5237F2441831051C0188066339DFB5D2F0500054023EF070A800C74290032C0';
wwv_flow_imp.g_varchar2_table(176) := '6A92A67A873E71F9A7A97E90DAFE8811CE998368E54A385BB7A1FDA96750D8B00166670762CBD4337FBDD62F1E7FD91300801600E9EF1904D824C653C36552005000D46026636E420190011D054006584DD07428D54F291DE96F06214215226C6B81B971';
wwv_flow_imp.g_varchar2_table(177) := '33DCFD3F80B76D3B723D8FC199330B86EB0CA5FA0D15FB49B7F993C15FEC8BD5FE9AC070325C22050005400673C9DC94022003320A800CB09AA0696CC47AB62FEBFD56A90C333610B5B7225AB208DE9EA7D0FAC2CFE0AD5B0FB3BD00C33687D6F639C837';
wwv_flow_imp.g_varchar2_table(178) := '8171D4E91229002800EA644A773D0C054006BA140019604DEBA6DAEFAFABFB19810F150508C300517B3B9C0D1BE1EDDA8DFCD61DC86FDC047BDE7CC4B66E9D14F891CA803AD88F99FED3DA44EA7471140014007532250A80F182A400182FC1E9F5793308';
wwv_flow_imp.g_varchar2_table(179) := '6096CB7AFDBE58F0102E5D8C96E79E47E7F32F22B77C399C8E76C0F3F4DFB5008863585A001892EC3FBD60F06A1A4280028002A02186951E941E800C74290032C09ACE4D757D7FA55DFF5011545727A2E5CB613CFE380ABBF7A26DDB0EB873E6C04C0779';
wwv_flow_imp.g_varchar2_table(180) := '5DE827150012F897BA00A633215E5B9D0850005000D4C994E801182F480A80F1129C1E9F97F2BE500ACA3611B5E6613EF618BC679E436EF73EB88F3CA2F3FCAD7C7ED48E7ED52BE7BC7F7AD8C0C3BA0A0A000A8046DA1A3D0019E852006480351D9B4AC4';
wwv_flow_imp.g_varchar2_table(181) := 'BE0CFC151F4A45C0CC1930572D87BB6533F24F3E8BDCA6ADB0BBBA74911F5DD08735FDA7A3153CD46BA200A00068A4C1510064A04B019001D6746A9A56F933644BDF30845F2AA30203CEDA3568FBF10F51D8B3076ECF4A5873E6C2F45C7DE543697ED389';
wwv_flow_imp.g_varchar2_table(182) := '03AFE5A113A000A00068A4D1510064A04B019001D67469AA77E94966FEB2DE1F1B067CDB45D0D50D6FC70E74FDE2A768D9B11D665717603B300C89F5A700982EDD3FD1D741014001D0481BA400C84097022003AC69D054AFD74BAA9FEF238E2244468CA8';
wwv_flow_imp.g_varchar2_table(183) := 'AD15E68A55B0B7EC406EEB16B46C7E1CEED24580EBE9DDFCA4C69F11A735FEB9E03F0DAC60622F81028002A09116480190812E0540065853BC69D5851F0701E272496FD9ABDA5A0029F2B3F72914BEF723E4D6AC86D3DD0933EFE98D7F9494048E4D9100';
wwv_flow_imp.g_varchar2_table(184) := '499E3F05C014B782893F7D0A000A80465A21054006BA140019604DE5A6B24B9F9254BF0851E0A3522EE999BFBB762D72DB7720BFE309E4366F81337F3E2CD7D679FD52113056B29D8FF8004C46004EE5FE9F44E74E014001D04873A400C84097022003AC';
wwv_flow_imp.g_varchar2_table(185) := '29DE5402FE20017FB1C2A019432D5A88F6EFFF105DDFFB21BCE52B60CFEC825528E899BE9EE8EB5081B4C8CFC8208029CE81A73FB104280028001A6981140019E85200648035D59A8E88F497757F55A9200A43841D6DF01F5D0A73E346743CF31CDA77EE';
wwv_flow_imp.g_varchar2_table(186) := '8137772E4CDBD2857E86BCFC621C77BEB804F05D262294D2CA8877EAA43B115685D590C26AC235150A000A80463E4A290032D0A500C8006BAA351501202E7CDF072A1504BE0F5F26F68F2C83FBA3E7917BFA69E457AF81376F219C4201B265AF2EF4C79A';
wwv_flow_imp.g_varchar2_table(187) := 'FEB5F7743AC247124F918A23CD31AD94287F9640CA2498524A278BC04AF75D181253CDA5AA280028006ABFC1B2B7A400C8C08C022003AC29D6544AFB4AA47F5C2A43C9C63EB93CA2D9B3E16CDE8CC24F5E447EF72ED8B3E7C2F272B04C1396C408E8292C';
wwv_flow_imp.g_varchar2_table(188) := '83FD6AED6A9D5129837FFA16747A83A4EAC0AF632E2A50810FD3B461BB7998962D3B28A512A12A086AFDC6A9DF8E028002A091564C0190812E0540065853A4A98ED64F53FD5410A022B37FC382BD660DF24F3F83FCCEEDC8AD5F0767C92258F9829EAF26';
wwv_flow_imp.g_varchar2_table(189) := '3BF90D0B80E69A938EAD638706FED40B90544BA87A02E497215450827FEB16C2DE7E58B9027233E6C02EB4406FBA1C2B98868457563F39B6F3986A9FA200A00068A4CD520064A04B019001D614685A1DB8A5B67F5C2C228A22546C07C19CB9C8ED7B125D';
wwv_flow_imp.g_varchar2_table(190) := '3FFF390A9B37C3E9EED015FEA4C88F04FAC9D01FA7EBFF2CF75B5B47EB7B279DF9CB8648D5613C94DA0A7E196AE036A2DB37E1DFB88E60A008B76B265A963D06A7A32B591488232D002C0A00C4A541A8F616C071939A131254D10CAF74994E0D0C408521';
wwv_flow_imp.g_varchar2_table(191) := 'CC953D707FF83D78FBF6A2B06603BC054B60D8763390A8DB355200644049019001D614686AA4BBFA29DF47303888C83411AF5E0D6BD72E1476ED42DB8E9DC82D5902D3754604FBC97024816C69B11FD6FBAFB9A7875CFFC22C0D065488E0DFBC86D28913';
wwv_flow_imp.g_varchar2_table(192) := 'A89CFB1C61B904A3D082DCB247D0B6763DDC59B3D3258228A9AF40014001400150F33DF7A08614000F2234E2EF140019604D85A612F417868852D77F347306BCEF7F1F859FFD14F975EB909B351B764BAB76F9DF2BC89F1E806C1D5DE5A8B7485601A2CA';
wwv_flow_imp.g_varchar2_table(193) := '00CA9F7D86BEDFBF86D247C711E73C388F3D82960D1BD0BE652BBCB9F352F195D45868B6EA4A5C02E01240B63B2C5B6B0A800CBC280032C09AC44D93357C24A97EE2FAF73C60E1029852E867FFB3C83FFD34728B16C3713D1DF027AF6A185AF5B2B8D9CF';
wwv_flow_imp.g_varchar2_table(194) := '7D3A5807FBC58875F09E0CD9D574C96157B52C07847DB750FEEC2CCA1F7D84D21FDF807FE63360FE3CB8DBB7A0B0652BDA366FD12997C9A7D2988B264B05A400A00068E4A3940220035D0A800CB02671535DBC278E1194CBA8148BC0DC39C83DFB34F2CF';
wwv_flow_imp.g_varchar2_table(195) := '3C0377C346384B97C1696B87D4F8D3C3BF7800D2DC75B1010EFEF71FFCB5B8D2A17B7A9E0FD3D03B24240500247E42E22EA1503E730603AFBE81CAC143501F7D04F4DE86B176156C1160DBB7A375FD06BD0470A7E89AC4A655F753A300A000A8BB518D44';
wwv_flow_imp.g_varchar2_table(196) := '1A4B54135F3511A000A809D3A46C9414959160B25857F8534A21CAE510CE98016BF52A149EDB8FC2EE5D70162D86DDDAA6D3CFCC58E9B5EAA4AE7FB20C3052004CCA0B9DE093D24192777800440054DDF712BC15F6F7C2BF7801E5A3C7F4CC3FFCE02398';
wwv_flow_imp.g_varchar2_table(197) := '5F7D014B606FDD02F37BCFE992CB2DEBD6C19D396BC803534D199CE04B7CA85F4F014001D04883A30720035D0A800CB02651D3EAE05FCDF50F8B4584B2BD6F4F0F9CFDCFC07DE209E4D6AC85B778911EFC2DCB4A067C11003283D5A97FC34B014D12733D';
wwv_flow_imp.g_varchar2_table(198) := 'A61E54B1CCFB93847F3DEB4FC593D65FE2F61F1C40E993E3183C7800C1071F213E7112E637DFC2EAEF8529297FDBB721DEFF1CF23BB6A375ED1AED011829BC9A2B0910A000A00018D38D58E38728006A04557D8049AA987FF922CAA74F2178F32D442FFD';
wwv_flow_imp.g_varchar2_table(199) := '1AEAE429C4927ED2DA0AC89A319D2A19A836BEE9D0ECDFF7A1F4B6BE06A28E7638DBB723FF8B9FC3DBF5049C597360E772B075AEB9E49DEBEC73EDB24EF2CF39ECD7D253E2DA17E124DC9294BDD4E51F54100E0CC23F7F1EC58307507CE50F509F7C0AEB';
wwv_flow_imp.g_varchar2_table(200) := 'DA35D8FD03B0550CB3A5056AFB0EA867F723BF7D1BDAD60D0B80E488C3E983B59CCB746843014001D0483BA600C840971E800CB02651531DC51F4508FAFA1002B01E7D04CEF6ADF0763E81FC13BBE0F6F4C0CC17F400A34BD3C6328825456A64BD5A067F';
wwv_flow_imp.g_varchar2_table(201) := '0A80DA3A34914DD58592AAD74421E8BB81C113A7503CF221C2F78E00473F447CE532A022586108A7E4C36A6941B46D07D47E1100DB5301306BA87A2005C02B5087DE631A20D3006BBB196B6845015003A46A130A800CB02653D33846142BF8E532A29656';
wwv_flow_imp.g_varchar2_table(202) := '787B76A1F5C72F22B76913BC858B6075740EB9F8756D00EDC131927AF53A80ADD992CFC6D379D58AFEB24532A0421F517900FED75FA1EFF5B7517CF56D18A74EC1BD7C09465086CAE7345CA76F4057FF8BB6A64B001400BA13E801A007603C77E3833E4B';
wwv_flow_imp.g_varchar2_table(203) := '01F0204223FE4E019001D604371D4AF50B0284A51222D745BC701ECCD5AB91DFBD1B857DFBE03DF228EC961698B63B545E4606FF6A542C8BFDDCA713AB817E3ADDAF5AD37F78994492F624D54F0F60674EA274F428CA070F23FCF018EC2B57E006BE0E0F';
wwv_flow_imp.g_varchar2_table(204) := '50394F2F99597DFD307279A8ADDB008901D04B006BE1CEA207A074FA13948F1C41F87B7A0064C32E5602ACDFC3950220034B0A800CB026B86935552F94223F92EBDFDD05E7C93DC8ED7F06F98D8FC35BFA18ECCE4E1DB2A15DFF46E2E897D7C89C7FA6FC';
wwv_flow_imp.g_varchar2_table(205) := 'DDA5235385A4244EC2B823D54F682A208A638495124AE7CEA2EF8FAFA17CF01070EA14AC4B976085016CD7D5655B4564495606FAFB817C1EF1D66D308604006300E801A007A0918F520A800C74290032C09AA8A67AF15E25834A1441E5728866CD82B162';
wwv_flow_imp.g_varchar2_table(206) := '399CA7F6C1DBBB1BDE9265F0DABB60398ECE5897597F92AA667EA7E08F5C46F3D59FBB7FE725FB21C8C43DD9BA57008D4AF58B14FCEB5751FAFC739465E6FFD60184C73E8679F50AEC7219A665C2CCE56048B6851C270886048078004C0A80A10EA000A0';
wwv_flow_imp.g_varchar2_table(207) := '0068E4A3940220035D0A800CB026A8A91145C9C05F2A251B862C5E0CE7A9A7E1ECD90373FD3A98CB96C06DEB846B5A49953F99C1EA1D7D8787F93B0B6330FE7F74674AA29FCCFEE565CA6634BA5092244C261B2545C5410C1E3B86BE3FBE02FFC8115867';
wwv_flow_imp.g_varchar2_table(208) := 'CEC1BE7A0D868AF4ACDF903D17847D5A65D1182100E80118CD9A028002A0918F520A800C74290032C07AD84D6506AF1462DF078200CAB1117776C25EBF1EF91FBD006FF76E180B17C1686B836D99B04359B75688C5EB9F94FB1B2A58FBB04F7DAA7D5F22';
wwv_flow_imp.g_varchar2_table(209) := '0092C4BC2441324DF50B2B087AFB50F9E65B0C1E3A84C1975F863A711CEEADDB70830086B8FDBD9C1EFC87EA8FC91280FC8D4B007735030A000A80463E1F280032D0A500C800EB2137D5417F1220D4DFAF67FE7864298C5D3BE06EDF81FCD6EDF01E5D0E';
wwv_flow_imp.g_varchar2_table(210) := '4B2AFC994976BAA9925AF54AF6A6D5F56A92C18CAF07134866FAA333F3E57F0703B73078EC04060E1C867FE47DA8E31FC3B8721936144CDB4EAA2B9AB25D6BE22DD02F0A80FB02A700A00078F01D39F616140019D851006480F5B09BCABABFACE8FB3EE2';
wwv_flow_imp.g_varchar2_table(211) := '4201E6B62DB0FFC58FE06EDB066FE152B8ED5DB04D136624697EC9C2BE1201902E0124C57E2800EED56D8973BFBA183232D5CF800A6453A55E54BEF90AFDAFBF8D81DFBF0E75EA34DC1BD760F91520EF01394F2F179849370DBF280028006A7D5654453E';
wwv_flow_imp.g_varchar2_table(212) := 'EB00D44AEC81ED28001E8868B801054006580D683A722D3E993FEAC57BC4525FBE5884B22C980B17C05DBB16CECEED70F7ED85DBB31C766B3B2CDB49067E5987AE96A89500345DEC3F29F6333CC035E0E4A7E421D3603F99AF4B7D84D4E1AF99A7D91232';
wwv_flow_imp.g_varchar2_table(213) := '9EFB37AFA378E2184A47DE43E5DDF7111E3D01F3DA35B82A82691A885D0790B57FE9310A804C96400F003D00990C2663630A800CC0280032C06A40D36A98DEC8343DF99A280CE14BAE7F5B1BBC2776A2F0BDFDC84B919F477BE074CF8029C1664A66FBC9';
wwv_flow_imp.g_varchar2_table(214) := '5B0FF53AEDAF197798AFB563AAB37C29A2940801ED2391A0099DE91743A90851B9ACB7F4ED7BF9650CBEF63A8C739FC1BE71137618C1CA79C3A97EF7FA5A7A00E801A8D524E901A89554CDED28006A4695CC7AB817400660756E3AE401D033D018711022';
wwv_flow_imp.g_varchar2_table(215) := 'AEF8885D17D1EC59C0F21EB8BB7723BF772F728F3D06AFAB1BB6E3268E6B890F30D295E734E58FE97DF7EEA0EA3A7FB2B35FB50EFF88803F29F273F5322A674EA3FCE18728BDF916FC8F8EC294C15F299D61617A890048F6061ACEAD1895654101400150';
wwv_flow_imp.g_varchar2_table(216) := 'EB738202A0565235B7A300A81915054006548D6D2A03B9A1A0CA15C4C5328C59B361EDDE057BEF5E388F3F0EBB67399CEE6EB8960D4B0FF632EB4F86B1A1A50396F7BD6F1F0D47FA03469CC6FACB035844B0D4EE2915513EF131065FFE0DFC77DE01CE7D';
wwv_flow_imp.g_varchar2_table(217) := '0EE3DA0DED69D1D1FE96A5032BAB1519477ED9280F0E05000540AD4F0B0A805A49D5DC8E02A066541400195035A8A90C4031E23080520120E57DDB3B602D5F81DC33CFE8D9BFB5EC1158DD33613976BAB18FACF127434EB2A50FB3FA6BE91CEDE2D7A97E';
wwv_flow_imp.g_varchar2_table(218) := '89EB3FA116230A4AF06FDE42F99B6F5179EF3DF8BFFF1DA28F8FC1BCD50B2B8A0189B5C8E5748E7FB2A7C2775F1400B5F440D286310023585100D46E3835B6A400A81154F2F8E31240065CF56F2A0F00293F3B38A823CFB17811AC5DFF7F7BE7E125C591';
wwv_flow_imp.g_varchar2_table(219) := 'E7F96FA429D716E86EAC848413D0184940E3849106698C66563B333BF776F7F6E6DEBBDDBBDD77F7EE4FBB7BB7B3BBA3D168662404C23B493819E41048082BDA944977EF1799D55D400391D0DD54657D93D7A39188CECAF84454C6377EF1335BE16ED98C';
wwv_flow_imp.g_varchar2_table(220) := 'E20B1B509050BF9E5950B6AB9DCFE20DAB04A8C515EAE8E99F6648EA0E80F23B4A97F80DC30ABC5BD730FAC1471879EF20826327619F3DA333FCE9A53E27DC1D58CA7EA0CCA200301F070A000A00F3D992BE2505400A66140029604D435329E9ABD3CFCA';
wwv_flow_imp.g_varchar2_table(221) := 'CEB25484BD7E1D9C5FFC14F9AD5B5190F4BEBDE2F06743F9F1CE53FCD574C47A6201D04E6C8AA17EF7DB9537FEF73B03FE80A05A8677F33B54BEF804A3FB0E60F4EDF780F39F227FF3161CAFA68BFA4412EA27F9148207574FA40030FF725000500098CF';
wwv_flow_imp.g_varchar2_table(222) := '96F42D29005230A30048016B0A9BEA54B341007F74545798B39F7E0AEEF3EB758C7F61FB56E49E7B0E4E772F6CA7EEF037EEC236EEC0167BFE4F7E263D858FDA7AB74A9CFC74E9DE38AA72A2326243A89F77EB06CAC70EA2BC7F2F6AC74EC03FFD09D4B5';
wwv_flow_imp.g_varchar2_table(223) := 'EB7023B1F65B40CE417457A8DFDD872DF503013A019A4F130A000A00F3D992BE2505400A66140029604D61535DA2370CE155ABF04B25B8439B50FCE94F50DCB811C5254BE1F6F5415952586622C83C3EC38E971A095DD3497EE8F67FE7A8242B7118C58E';
wwv_flow_imp.g_varchar2_table(224) := '7D2200C63323272D43DF43502EA3F6C5058CFDE1F728BFF526A24F2EE8337FE5855012EAE7BA7738FBD5A306E41677E76EB8C72B804E800FFCA6500050004CE1ABF49E5B5100A4A04B019002D6E33695E37E31DD7B3E54B982C8CD21983B179154F5DBB6';
wwv_flow_imp.g_varchar2_table(225) := '0D859D3B515CB10285DE59BAB46C7CD505409C6A56448014ABBF23C90F7D00C74746E7454A2C00F5455BD6E33A22A1E95DFB1E95331FA17AFC18BC0307109CFC00B87A0D961FEAA23EE288594FF223FE1972D517F9FB5900EE981A14001400A6EF0A3A01';
wwv_flow_imp.g_varchar2_table(226) := '9A92326E4701608C8A4E8029503D7653BDF8CB122E95E224D4AF6716B0750BACDD2FC3DDF0A236FBE7E7F421673970F4CEBE7EB27C6F553FAEF9930F872CF072A4A293FC44802D0113498E05114F7EA58CCAD93318FD8F7F436DDF7BC0975FC3BE795B8B';
wwv_flow_imp.g_varchar2_table(227) := '3248295FAD16929F471D710A000A00D3B94301604ACAB81D0580312A0A8014A81EBD69E2E92FA17E915FD39EE551EF2C584B97C1DDB50BB91D3BE12C5B0E774E3F9CBC0B292D23F9E5252F80888638BB1F1DFD4C06409FFB2702400E50E21A092102AF02';
wwv_flow_imp.g_varchar2_table(228) := 'EFDA55543FFF12D5E3C7517DFB6D04A74E410D8FC42181E24B21097E5443553F930F9CAC0D05000580E9DCA100302565DC8E02C0181505400A548FDEB42E00CA65449532306F2EB06508F6D62D286D184271E52A38E2ED6F3B50765CBE27F6F48F43FDE2';
wwv_flow_imp.g_varchar2_table(229) := 'AA7E0F0E437BF487CBDE6F367AE44B74451896E1FD700DD50F3E44F92F7BE11D3BA9BDFDD5D5ABDA47408AFA2865C38E26EC2A9347FB1BB2A200A000309C2ADADA24193D590CC894D843DB51003C14D14403FA00A480F5884D75A85F28BB7905552CC25A';
wwv_flow_imp.g_varchar2_table(230) := 'F91CECD77E0477FB761497AD4061602E6CDB0124E98C9C394B844092E3BF9EEC4742FD68F69F7C00265BACB508884204E55154AF5D46F5F38F513D7418B53FBF87E8DC27B06F0EC3F2034479176151048005BB6E3A6838F37FA421A700A000309D381400';
wwv_flow_imp.g_varchar2_table(231) := 'A6A48CDB510018A3A2052005AAD44D75CAD830D4A17E7E10000B16C059BF1EF94D1B51DCB615F9D5ABE148619F5C5EDF3B0AEBA7D7714D791525857D18EA772FFB64D5D70B7D8332AAEFFE25E35FE457E05DFD1623470E6374EF5E041F7C08FBB32F615F';
wwv_flow_imp.g_varchar2_table(232) := 'FF415B5994882EC78E7FE498A5E19EA907BBF117280028004C271005802929E3761400C6A8280052A04ADD5449DAD93082E7FBF0F27958EBD622B7670F8A439BD1B972250AF3E669C7B3D8D02FC98026B6A0F1A9FF44A53A6EFFEFC29F184BEA8BFFF83F';
wwv_flow_imp.g_varchar2_table(233) := 'C5095076FE6323F06F5C41F5B3F31879FBCF187BFB2F5017BE4461AC0A478C2CF982F6C568CCEBFF58667F0A00E3EF07C3001B50510018CF1BD3861400A6A4980A380529B3A6B21045965496F1618D8EE9587E7FDE3C842B57C2DEB429AEECB772254AE2';
wwv_flow_imp.g_varchar2_table(234) := 'ED5F2CC4A998C56D4D6AD337EC64E3DD7FBDB82FABFCDC4DBF5ED14F00EA9DBBDED28B036008CFABA07AF922468F1D45E5F021F8C74FE9337F89F3774458590E54CED5E24B0B80BB42FDCC46FA01AD6801A005C0741251009892326E4701608C8A168014';
wwv_flow_imp.g_varchar2_table(235) := 'A88C9A8A00D0257A8300F6581956A913D8B81178E565381B3622B76A15F20303C84B553F715093B37E847AA9B7F5393F4FFA1F067ADCC94F16FF500480A4EE933C0921FCEA286AB7AE62ECEC69DCFE8F3751D9BB0FCEE52BC8573CD892204042FD24D6BF';
wwv_flow_imp.g_varchar2_table(236) := '516D3DEC03D3FE3D05000580E99CA100302565DC8E02C0181505400A540F6EAAD76DA5ABFA455E1591948F9D3307B664F5DBB60DEEF61D7057AC80DD3F00A790D7A17E2A94252BD02240E79BD79EFE14002663123BF925297E75E21F09F52BA376F96B94';
wwv_flow_imp.g_varchar2_table(237) := '3FFC00E5E3C750D97F08FE99735A884919655D5341C7FA4F41A8DF831E92028002C06412EB5706A3004C5199B6A3003025C5238014A41ED2B46E4AAE56817219E89B8368EB66D83BB6EBAA7E1DCFAD82335BD2FB3A7A076AD5CFFDAD500B80F8CC9F02C0';
wwv_flow_imp.g_varchar2_table(238) := '78401A52F34984852F8BFFCDEF51397502E5DFBF05EFC831E0F27750C3A35A294439A9E867C5A17E53E5EC77BF87A500A000309DC81400A6A48CDB510018A3A2052005AA78DD4836E8758F71BD078D8030F011057E1CC7DF5182B56C19AC3DAFC0DDB553';
wwv_flow_imp.g_varchar2_table(239) := '87FA15FBE7C292443372DC2FA66839264832FDE9643F2AC9ED4F0B80F190C447F71182CA082ADF7CADCDFED5A347E0ED7B1FD1279FC119ABC216A9655B08DCF8BC5F122C4D99B73F0580F1583536A41360030D0A80479A430F34C045BAB62A2F1302CC03';
wwv_flow_imp.g_varchar2_table(240) := '6042296E533FDF97FF6F89939EDE4DDA10E77D8937F7FD0AD4DC01B8EBD722B769138A92DF7FDDBA38D4CFCDD573D2C6E57F937C7571A5BA38F5AC88005E931168FC3AC70A2CCEF91F22D0A17EDF6164DF7E0CFFFB1FE09F3903E7C635386363B0834847';
wwv_flow_imp.g_varchar2_table(241) := '524462F217C7CCFA2F4E37645A001E4898028002603ABF82B400A4A04B01600E4B0B004930AF53CC2AED80065FCAFA2AF8A1073F6FC35EB51CF9575E4671EB5674AC5E83C2C2A7A01C09F59B282893E4F9D3A6691112718A1F295BC7F3FFC94763224192';
wwv_flow_imp.g_varchar2_table(242) := 'F6B348167FBF3C82DAB5EF50F9E41C46DFFC13C6FEF54DE0EB8BC8175DB8F95C9CE2F7AEEC7E33B233A000A000307DADD002604ACAB81D0580312A1E01A440A5D7E8FA31402496FF2004462A880220EC9B8370F9B37037BE88CEDDBB505CBB16F9FE7970';
wwv_flow_imp.g_varchar2_table(243) := '4A1DF76C3CE34528F665AF27FBD137E7FA7FD77024CBB52EEF170B242DC2C4ECEF5750FDEE1B9DE4676CFF7E04878E439DFE18D6F008ECCE12EC425E3BFB4D1CD5CC9C01403B76791ED4F030502C22DA3404F5EA6B286E1E42D7DA41E4FA076211939C28';
wwv_flow_imp.g_varchar2_table(244) := 'B59BDD8716005A0052BD775336A60048018C16007358F5F55916A140C2F7C210285700370FAC5A05B57D2B0AF292DFF0020A4F3D0DDBC94349B2F989627EE61FC696494584286628BE137AD10CE15746E0DDBAAA77FEC37FF823C6FEFC0EEC2F2FA2305A';
wwv_flow_imp.g_varchar2_table(245) := 'D1D5FF502C00FAC8E57173FA3EE2205000D002603A756801302565DC8E02C018152D00295025A1E312EAE723A85510DA16A29E5EA8A717C3DAB409EE8E1D28AE5E8DD2C285C87775C71BFA2049559B6CF3B8C937231EDB47624F099D1D21047CAF066FEC';
wwv_flow_imp.g_varchar2_table(246) := '366ADF7C0DEFA353A89D3A89EAB113F0CE7D02EBF6305CA5604B921F274EF23323E6FEC9BA430140016036CD190668CA29453B0A8014B0680148012B691A791EC27219616707A2C141585B3623B7790B0A1B36A2307F3EF2B694F46DA82C9798AEEB567E';
wwv_flow_imp.g_varchar2_table(247) := '8A8087338F33244E98C95518A276EB06CA97BE42F5D449F87FFE33C2E327A1AE5E07AAB5D8B1527BFAC7A17EF57C0A4F4404500050009B18314100002000494441543C7C8AC72D6801302565DC8E02C018D5BD1680DABB7BE1FFEBEF109E3D07380E5467';
wwv_flow_imp.g_varchar2_table(248) := '679C39AD8D022BC64DFDE31CE3503FD9F923A82194FCFD1D25E0A9A7616DDDA2ABFAE5D7AC4561F1333ABDAFE49AB7A4B25F1239205500255A902701F74ECCFA022DBBFDB8F261BC74CBFFAB0B006D09181D45F5D38F317AE8206A478F00C74F407DF915';
wwv_flow_imp.g_varchar2_table(249) := 'EC9A0FE5BA88644C5C49F23343A17E0FFA8E5100500098BE8329004C4919B7A300304675AF00A8BEBB175E220094E3C06A330170F7EE5C16A238D44F21AA9611554711CEEE4534B81AD6860DC849A8DF0B2F223F3017F95C01B6E401A8C7F76B8FF5F88E';
wwv_flow_imp.g_varchar2_table(250) := 'F23DE7CE7F7201503FDBD7F510C4E49FA44416F37F20497E6A15D4AE5C4179EF5E8CFD9FFF8BE0D44938B787E1F80194A5E2AA7E561CEA97A40648F10D9886A614001400A6D38A02C09494713B0A006354F71700C1D9733A71CDB800D0A7B1ED7035D696';
wwv_flow_imp.g_varchar2_table(251) := '950C3F1194AF13FCC78E7F051B787631ACEDDBE06EDD82FCFA17907F760972AE0B773C2FBD24FA5109B1A4A46F3BA07B843ED6CFFAE3DC08B13DC052529E57D04708464750BB741995B3675179E71D54DFFC3DA20B17E03A0E9C42112252757EFFE48AEF';
wwv_flow_imp.g_varchar2_table(252) := 'F7842F0A000A00D3294801604ACAB81D058031AAC98F00262C002EACAE4EE890B736110062AED78668D98D06212C2F8055AEEA7032BFBF1FFE73CB60BDB01EC51D92E4673D9C79F3617774E9337F29EEA389268566EABB7F6D01483126EDD53459F6B500';
wwv_flow_imp.g_varchar2_table(253) := '10874949921C2FFEB2F3F72F7F8BDAFE43A8FDF95DF8A73F40F0CD1788866FC396DCFE4E0E6A92C23E1400CD3D831806D8303E1400533E59290052201D7702FCF632CAE7CF417C00BCDFFD0ED199B3B0A45CAA38BA5971F8555B5C2200F4973282F20228';
wwv_flow_imp.g_varchar2_table(254) := '3F841504B08A05842B9F43B87D3BDCCD43E87CF10514172F86720A0D67D74992200D8A4BBED97C4976FE3A618F8A77FD61086F7418B5EFBF43EDFCC708DEFA0B82B7DF4578E512E08412DE9F24F869D2087A5A006801309BFC740234E594A21D05400A58';
wwv_flow_imp.g_varchar2_table(255) := '5A00F8012A972F63F4CC5954DF7D17DEEFFE1F70FEBCAE58673BF678F29514B76DD9A67A1912111046F0FD10816303FDB3612D598CDCC6211476BE1C3BFC2D980FB7330EF5938DBFCEF4A78BFA24616B2D4B60661F5C8465BCF78FCDF83217FDD1DBA87E';
wwv_flow_imp.g_varchar2_table(256) := 'F905CA070FA17AE83022A9E8F7F545A8F218544E2AFA89492ACECAF4C477FB93E1A200A00030FD1AD102604ACAB81D058031AAE408C00F50BEFC2D46CF9E4779DF3E786FFE3B70E6345CDF8793245491D7743B5CB2A714E123C9E72A7E806A5707A2D52B';
wwv_flow_imp.g_varchar2_table(257) := 'E06CD9808E2D5BD1BB711B8A8B16C372DCB80E7D3D35AD4E0E14EFFB65296BD2BD69530D611CE71FEA5DBF98FE43298FFCC30FF02E5D44F5C4098CFEEEDF50D9FF3EECD111E40A39D88973E01349EF9B861C05000580E97CA100302565DC8E02C01855DC';
wwv_flow_imp.g_varchar2_table(258) := '30080254AF5EC7D8852F51397512B503FB117E7E01B6EFC31627AB6670AC4AD9A7476D2E0BB7A5CFA315AA6205E8E986B37E350A5B37A2B46A101D8B9722D7D115DFBE510034C4ACDBF4F8BF17FF5DFAB19EA23FF69A08E1F91EBCE16178173E837FF808';
wwv_flow_imp.g_varchar2_table(259) := 'BCC347503D7C14FE850BB05408A7A713B62DA22B29C2D430279B4E9A5200500098BE8028004C4919B7A300304695AC63126A757B18D52B5751FDF22B543EFD18FEF757B4139C36B7B6D9351E871E59505DDD28AD5E818EB5AB90EBEF879D2B4089D77943';
wwv_flow_imp.g_varchar2_table(260) := '71B938543086141F21B419B087757722D83FD64D0D351534EB3040F5879B18FDE62BD40E1D82FFBBDF233A7112F8E1B6FC25E05840CE81B2ECF12A8C4DE1ED7FBF7E530050003CEC3B51FF7B0A005352C6ED28008C51250DC5F1AA5245707B04DECD1BA8';
wwv_flow_imp.g_varchar2_table(261) := '5DBD0A7F6438DEE16AAFF8F6BA92C87D44524DBE5842F1A905283DBD50279CD10B5818C68B7CC2268E1A6870FBA300B873C2C481FEE38B7F3D2392FECF818FE0F60FA87C7101E50F4EA176F020C277DF4374E10BD8B2E0978A88C40F45CC2A505A00D449';
wwv_flow_imp.g_varchar2_table(262) := '37EDBCA400A000307D6552009892326E4701608C6AA2611404883C1F61AD86B05241E87BF1AE36D9AD35EDCBF611FAFAB05F899798E47F6D077647118E64FEABC7F64B88E0B8993F16485CF31F405516FF50CEF9A193F5D4D98572F4347C0BE58B5FC193';
wwv_flow_imp.g_varchar2_table(263) := '9DFF3B7B119C3D8BE8CA778846C7E2844092D75FBBFD8F6F991E367C4FFEEF290028004C672105802929E3761400C6A8CC1AD6CDAD595EE81AFB3659CADEBBACD84CEB6B3675128B495D002849AA185B968200FE0F3731F6E5058C9DFE08C1FE0350FB0F';
wwv_flow_imp.g_varchar2_table(264) := '02DF7E1BEFF6F5D19394F36D41694501400160FAFDA000302565DC8E02C018D5E40DEB8B5D0BBE7A1FB3E7F7FEFADD67CD752664638E5A222A746984C49D44AC4BFEED9BA87DFE39C6F6ED4375DF7EE0E34FE05CF91EAA5201726E5C87A2C1B7A2A52C50';
wwv_flow_imp.g_varchar2_table(265) := '14001400A65F0F0A005352C6ED28008C513D78C11BDF0937B5C7D5637476B25F6DD8FEEBD8FE8636F5BFE2E26FCEBC7EFC5F2FEC8330807FF306AA5F5D40F5E44954DF7C0BDE7BEFC3BE790B6E2EA7D34F471279624911E0D8F2DF72D38F028002C0F42B';
wwv_flow_imp.g_varchar2_table(266) := '4201604ACAB81D058031AA075B00E29A6C6D140358C731EEE17FA703E46447038F893A33BF7EB7506AEC984E3605C00F7C78C33FA0F6D927A8EEDF0FFFD061041F9E46F4D54558B51AAC4201CA7574B54558E2F02719FFE23BD1029099A902A6026EDC55';
wwv_flow_imp.g_varchar2_table(267) := '48D6D110E1C80842DF87B5723972AFFF18F95D3B511A5C8FFC42C9361A8762F33223400160C6C9A055CBEDBD0CFA64DA84C67E5352F505BAF1E8E86E2B491886A8FE700363DF7C85EA91A3F0FEF5DF101D3906355686E5C6E67E5D8741DE8749A23FF1F8';
wwv_flow_imp.g_varchar2_table(268) := 'B75A3103352D00B400987E796801302565DC8E02C018D5C31AB6D4BEEB619D79C4BFA7C1DF049CF8F525799162AB514332A440CEFC7FB885CA679F62ECC431D48E1C4170F030D4175FC1B62CD81D9DDAE41F6704D48517E3FA0A22005A710A5200500098';
wwv_flow_imp.g_varchar2_table(269) := '7C69F4F78416005354A6ED28004C49B11D094C1581500440BC5A4BA89F0800F1F9D3497E6EDD40F9ABCF517DFF006A6FBE85E0CC5944A3235061209916605BB189B3BED91F77FC6FCCAD3055CF3913F7A100A000309D671400A6A48CDB510018A3624312';
wwv_flow_imp.g_varchar2_table(270) := '982202890010AF1109F51331A07C1FC1AD9B18BBF009C63E3889DAFE0388DEDB8FE8F265A86201AA54D4897DEA66FE56DCEC4F4A8F028002C0F46B4501604ACAB81D0580312A362481A921A08F009234BF3AEF8FE721B8711DDEE71730B67F1FCA7BF722';
wwv_flow_imp.g_varchar2_table(271) := 'F8F45358376EC0AA567531254B322B268E7E9959FCEB665DCF831A1E068A45449B86A05E7D0DC5CD43E85A3B885CFF8066259CE4B4A3DD926DD309B0E13B470130352FA046A451DD1639E5B7E60D498004B4993FC150F790A8BB8BCAA2E64B921F59FC3F';
wwv_flow_imp.g_varchar2_table(272) := 'FB14B5132750F9F35F50DBFF3EA25B3761779660E75CD852D4A79E1E386B486901A005C0744E53009892326E470B80312A3624819404929DBE38EAE9DC3E51B2834D9480E7793ABD6FF5B34FE1ED7D0FDEFE03FACC3FBC7409087C589D1D506E2E09F14B';
wwv_flow_imp.g_varchar2_table(273) := '7C06523E42D337A700A000309DA41400A6A48CDB510018A3624312484120D9F6CBC65DE2FAC5594F04801DD78C421484A8DDBA8ED1AF3F47E5C471F8FFFE7B84EF1F82BA3D1C9BFB25BE3F49F293E2535BAF2905000580E9ACA500302565DC8E02C01815';
wwv_flow_imp.g_varchar2_table(274) := '1B928039017D6E9D5800C6CB1FD7D3FBCA99FF0FB750FDF463940F1F42EDE85104274F21FAE24B584108BB50D4094D224B0AFB643CB492028002C0F46B4501604ACAB81D0580312A3624017302E33B7FD9F58712A70F448E821F84F06E5D47F5EBCF513B';
wwv_flow_imp.g_varchar2_table(275) := '7808DEBFFF1EC1871F212A8FE9C55E5B09A4A29F4E0E90F1C55F7052005000987EAD28004C4919B7A3003046C58624604E400B80E418402FE34188A0568577EB06AA9F7F86CA0727E11D3E8CE8FD83C0D717817C0EAAA3034A59B0C64D07E69FD7B22D29';
wwv_flow_imp.g_varchar2_table(276) := '0028004C272F05802929E3761400C6A8D890045210901D7F1821500A8105F8350FC1956FE17DFA09AA070FA0F2DE3E049F7D06FBF6AD38B7BFED4039B978E79F24094AF169ADDB94028002C074F652009892326E4701608C8A0D49E0FE04EE29F0A30500';
wwv_flow_imp.g_varchar2_table(277) := 'E087216AA10FEFFA3578E7CEC03B761435C9F277E428D4F56B704A05D8853C142C9DCE57FC053215E7FFB04943014001F0B03952FF7B0A005352C6ED28008C51B121094C422059AD8324D44FCEFA6D710054802F71FE952ABCAB5750FBE46354F6EDD329';
wwv_flow_imp.g_varchar2_table(278) := '7EA3CF2FE8C5DFF23C38F93C94EBC6C57D2423A0C4FCB79302A000A000307DB150009892326E4701608C8A0D49E02E02F58C7E11501700E2BE278E7C12FA570B7CD4BEBF82E0FC59D48E1F43F92FEFA276F418ACB161E464E76F3BB0A2D8D33F5091160D';
wwv_flow_imp.g_varchar2_table(279) := 'B2F85BA1D4FB6B938B028002C074AA53009892326E4701608C8A0D49E04E0275473FF9A72CFAB2686B077E59FCC7CAA87CFF3DAAE7CFC13B7800FEB1A308CE9E4374F95B585108A7AB0396E38C9BFD65F10F550B57F57BD4C941014001603A7728004C49';
wwv_flow_imp.g_varchar2_table(280) := '19B7A3003046C5862470270131F17B92E427029C3082530FF5F303542F5F46F9F419548F1C46EDDD77109E3E0D7B74148E6DC192243F92ECA7AE1692DB8AE5BF6D76FE759414001400A62F160A005352C6ED28008C51B12109DC4940CCFC7E1417AAB1C5';
wwv_flow_imp.g_varchar2_table(281) := '7C1F44082A15D4AE5F43E5CC19540E1C8077FCB85EFCD5B797615B0AB654F6B39D78F16F8738FF874D1A0A000A8087CD9146B1188608474610FA3EAC95CB917BFDC7C8EFDA89E2E07AE4172ED656355EE6042800CC59B12509DC414057F50B238450086C';
wwv_flow_imp.g_varchar2_table(282) := 'C0F77CD42E5D42EDEC391DEA577BF75D449F7D0AA75281258D2D4906648D7BFCB7DD6E7FB2F94301400160FA5E7980054004402E1100FC5E9902159F23560334A7C596ED4BE03EF67959D77D3F44CDAFA17AED1AAAA74FA376F8B04EF2139E3801EBDA55';
wwv_flow_imp.g_varchar2_table(283) := 'B8C522EC6211A12DCE81715640ABDDBCFDEF3773280028004CDF2A930800F7F59F20376E01781AB6F8D598DE8FED2800380748E0A104F4563F39A01F7FBB286DFAD7DEFE951A6ADF5E46E5FC7954F6EF476DFF3EE0C20538B76EC1F13C588582CEF41759';
wwv_flow_imp.g_varchar2_table(284) := '622D0893503F89FB7FE82767BF0105000580E92C4F0440941C01A8952B602502A063701D0A0B29004C518E9FAAD002901619DBB7150159A4A3707CFD8F5DFD95ECE3E14711AA52D2F7CA15D43E3A83DAB163A8BDBF1FFEF163B06FDE442E9F87A32BFB39';
wwv_flow_imp.g_varchar2_table(285) := '886C854845FA278EF5D7376A2B94937696028002C0F45BD02000E0FBC0CAE7A07EFE53B8BB7642044071C1225A004C5926ED78049012189BB71781081122110051149BED65D1B62DBDF3AF8E8D61F4D22554CE9D837FE0008263C7E3243F57AFC2F63CD8';
wwv_flow_imp.g_varchar2_table(286) := 'B99C764AAA57F593C5BF6E4A8805002F16037AF01CF06E5C43F9FC69548E1C81FF873F227CFF30A2F228C2EE0EC0CD3588C936984B8900C0C8889CBB41AD5A09F58BD791DBBD0BA55583282E58A8536AF33227400160CE8A2DDB90800880A0410048E29E';
wwv_flow_imp.g_varchar2_table(287) := 'D096AA7E01CADF5CC4F0C953FAE51CECDB0775F60C9C6A156E210F4B59714A5F7AFA3F78D6D002400B80E97BE52E0160AD5E05FB8DBF426ED72E1457AD4261DE022809B1E5654C8002C018151BB62301D9F98B0540CEFB61D9084320288FC1BBF63DCAA7';
wwv_flow_imp.g_varchar2_table(288) := '4F6374EF3ED48E1D85FAF863D8DF7F0FDBB6607775C62F22F9A5762AECF3281384028002C074DEDC7504A00657C3F9E51BB10560C54A14E6CEA7003065C9238094A4D8BC3D09C8365E42FDC4DBDF51F07C09F5FB06DED933A81E3C84CA3BEF203C7B1E4E';
wwv_flow_imp.g_varchar2_table(289) := '790C8EBCA05C1B513E4EF26385716A5F5E0F204001400160FA0569880288E40860ED209C5FBF81FCEEDDE858F61C0AFDF328004C595200A424C5E66D43E0EE883FEDEDEF47F024C9CFB5ABA89EF908B5C387E01D3F86F0838F80EFBE8363DBB00B0544AE';
wwv_flow_imp.g_varchar2_table(290) := '8DD09658FFB8A80F05C043A64D2200ACE161404225370D41BDFA1A8A9B87D0B5760D72FDFDFA2845A75B6E43B7C9D807E00C2A470FC37F33F60108CBA388BA3B741129444915C976F8763686017A3ED4BA41D8BFF9250ABB776901509C33970220E53CE0';
wwv_flow_imp.g_varchar2_table(291) := '11404A606C9E6D02E36E7A496EFF7A553FAFEAC1FFEA226AA7CFA27AE87D540FEC43F8E59770C64661FB0194650162F6B7242560E2E0C7DDFFA493A5D1FD51AA202A09951C1E864A0440A405C06674AD1D6C7B01E0DFB886B14400786FFE1141E204080A';
wwv_flow_imp.g_varchar2_table(292) := '00A8F56B60FFA75F21BF7B173A97AE4071F6000540CAD73305404A606C9E4D02F5B5BA71CD96852A0842546B351DEAE79FFA10DEA1A3F08E1C82F7D129A85B379193243FF9BC2EE75B3FEF97DFAB0B896CD27ABC5E3506406A6E8D02606808D16BAFA220';
wwv_flow_imp.g_varchar2_table(293) := '0260CD1AE4FA620B803863B653E064BD1EA4775D048044011C86275100078E680B80EAE9041CB72DA30082614905EC41BDB01EEEDFFD0DF22FEF46C733CB50EC9D0365D10930CDB79302200D2DB6CD2481BA89F98EAA7E529D4F57F51B43F9EBAF513E7B';
wwv_flow_imp.g_varchar2_table(294) := '06DEFE03088F1C43F4D597B07EB8052BF075A89F36C56A7FBF7891D2FF3FF9C924B047EC549DCDDD16001100B83D0C940A88B66E82FAC91E1486B6A0B46A1DDC39FD9A6914056D953541295BF7D7BB761563674FA372F810FCB7DE4678F808A24A19514F';
wwv_flow_imp.g_varchar2_table(295) := '2794E3C6A5A3DBC4D2A49223007F7818BED402D8F4020ABFFD7B147FF4320A0B1623D7D10B5B2C71BC8C09500018A362C3AC1290F7A754F6937F4A595F5B0AFC280935F650F9E61B8C9E3886CAE1C3F00F1C02CE9C815DA9C02D16603F20E69802E0DED9';
wwv_flow_imp.g_varchar2_table(296) := '32E90E5E922A791EA2DBC3883A0A50DB37C2FAE98F901FDA8AE28A7570670FC42313F96D240014948A53DA8A00183DFDA11600C11FFF84E8C8D14400742502A07DFC4C2C992B61086F7818B52080B365133AFFE9B728EE7905F9FE0570721D3AFC961936';
wwv_flow_imp.g_varchar2_table(297) := 'CCDFD41400E6ACD832A304B405204C048014E9939DFFC830CA972FA372FA34CAFBF6E9AA7EEA8B2F605DBF0189F0B74A459D7444C9AE7F921D180580B900100B4078FB36502A42EDD80CE7E7AF21BF792B8ACFAD87DBD9336E5169AF2380641E0EDFC2C8';
wwv_flow_imp.g_varchar2_table(298) := '9953281F3A08FFCDB7111D3882A83C06F47469CB533B5900B40090EC9BB787510D43B8DBB7A2E75FFE091D7B5E416E561F6C2B07B112500098BFA82900CC59B1655609E8AA7E71CC7EE428847E05E5AFBEC4C88953281F3E0AFFFDF7117DFC095CCF4B52';
wwv_flow_imp.g_varchar2_table(299) := 'FB2A9D0C482E3B54DA6A70F74501904E008805001D45A8AD4370E40860D366149F1B84A37D000244A11C014CFCC9EA541CEF577296ED5DBB82914F3E44F9E821787F7807D18163C0D898F60190238089B4D29927A2A34044005446CB282B85DC8E9730FB';
wwv_flow_imp.g_varchar2_table(300) := '7FFE333A5F7905B9AE6EFD3DD4C704BC8C09500018A362C39627A017EA86203FF1DB6BE854E847F0476EA1FADD25943FFA0863070EC13BF501F0C9A7B0AE5D83E3D8B03A4A80253600510D11ECFB54F5A300301400D22C08F4AE362AE4747E776BC30B70';
wwv_flow_imp.g_varchar2_table(301) := '57AE42EE9925B07A7B35EBF61300523B1AF0876FA2F2CDE7F03E3E87F0C849E0F4A750950A54A99078BCCB246E8F45CF0AE39A1C153F40B554427EE74ECCFAEFFF88AE9D3BE1E4F2DA32C7FA1AE9DED21400E978B1752B13A857F5D37D9070BDF8ACBFBE';
wwv_flow_imp.g_varchar2_table(302) := '5807D51ACA9F9EC7E8F1A3A84AEEF523C780AF2FC2A9D62019C623C7D23FB20FD5497EE42EF771C0A200482100A20861E869B6614F0FC2813EA8BE01A8BE7EA0D491F800DC1D9FD1CA13D1E0D9EB3BD96A19E1F02DE0FA755897AEC0FAFE3A94C4C03BF6';
wwv_flow_imp.g_varchar2_table(303) := '78512A83BBB57E13396A9302405283A39087377700051100FFF91FD031B4593BFF4989AEF86A0F413415834A01301514798F962020297DF5C65D3F6D72D82F2220F0E15725D4EF3B948F1CC6D8DEBDF04F9E043EFD0CD60FB7E1160A3AC94FA8B3FBC667';
wwv_flow_imp.g_varchar2_table(304) := 'FE62FA7FD06B860260720130D9EB59EFF055A4C59824510AA58052A188B0580292088B969860D3F0902A0CA1020F56AD067BAC0AAB52830A12F5D94E912622002A556DECF066F7C25FFA2C0A3B7761D62F7F8D8EF5CF27DF459DB05BE4F9348C44366F49';
wwv_flow_imp.g_varchar2_table(305) := '0190CD7165AF2621104A4E7F29ECA3E29C72725E6843CCFEB73176F122C6CE9C436DDF3E0472E67FF11B58950AC4EC68C959AB63EB978FBC62EA3BFF8709000EC2FD4540E3DF684126A5921375A08329C5E14B0A2AB5F9664E7B3D58B1D8D40BBFFCDC15';
wwv_flow_imp.g_varchar2_table(306) := '6E9AF97926D69020801A1BD373C45F341FFEDA3528EED889593FF9194AAB56C7D922235F4701C81F5E66042800CC38B1558B1390E54516FF603CA58CA4500D61791578972F63F8C4498C1E3A82F0F061581F9D861A1D855D2A694FEB3609B36E8A111E5F';
wwv_flow_imp.g_varchar2_table(307) := 'EF252C434CBEED5E4C49163FC7D17E2772B5E55C140692FB5FCA002B057FF912045B865078690766EDD88DE2D2655A98C70240F6FFF1311DAF8713A000783823B6C800012D00E48F1C034892955021181D8177FD0A2AE7CF61F49DBDA81E3804EBF3CFE1';
wwv_flow_imp.g_varchar2_table(308) := 'DCB8094BDA89C39F98A075519FB67CF5CEF8C8EBD7B63E3F91DD6E4001208B9F2CFEF2235691191F9126F8C0BA00907A11B68D60ED20C25776A1B86D3B7A366C4271D1D3B1004018FBE770F9371E340A0063546CD8CA044400045A0044B0940DCB07BCEB';
wwv_flow_imp.g_varchar2_table(309) := '5731F2F927183B7604D5DFBF85E0D0113823237073395DD52FCC39882C0B56143BFDF19A6102145D31F0760F6D4B0480648B54AE8368F346E0F59FA1B0650BBA56AE46BE7FAEC6543F9EE30180F9F79402C09C155BB6308138DB5F882011004E18A1F6DD';
wwv_flow_imp.g_varchar2_table(310) := '77183EFB619C64E53FDE4474F4385410C0EEEE04720E42397B1593A24EB74A93620B0F3F1FBD05098CA7D54E044024C9A27239D8BB76C2F9CD6F901FDA84E2534F23D723A1A21301BE1400E6834D0160CE8A2D5B9880BC206A5A0444902CEB12D62767FF';
wwv_flow_imp.g_varchar2_table(311) := 'A31F7D80CAC10308DF7A1B38794A4704489E7538D22AF6F857ED5472B585C7988F9E1D0277C86D39FAF07D043FFC00140AC8FDF82728FEF6BF22BF7123DC39B361150BE31D97DFA300309F071400E6ACD8B28509C40220D239FF6569979A61FEE54B18FD';
wwv_flow_imp.g_varchar2_table(312) := 'E014AA070F227AFB4FC0A95308C300617717608B93605D00B45312DA161E643E7A6608DC59315242750378376F212A74A0F4C61BE8FE1FFF8CDC8617754A6EE5C44B7EFD7768AB339F061400E6ACD8B28509DC7D0420AF0C6F12011049563A2D00EC38DC';
wwv_flow_imp.g_varchar2_table(313) := 'AA1E9BD6C27DE7A39340AB111817003A59578420F051BB3E8CB0D885AEBFF90D66FFEFFF85FC8BCF8B9A1FCFFFA7AD757525D06A1D7E42CF4B01F084C0F3636796403D0C5027F2492AADD544007C985800FE185B00E00788BABAE2D02B3AA1CDEC20F1D3';
wwv_flow_imp.g_varchar2_table(314) := '48202130B18B0F752968F1DDA9964384B3E7A2E7D7BFC69C7FF927E4572D9F38FBD747750D660092342240016084898D5A9DC0840008A194AB770AD5CB97304601D0EA43CBE7CF2801F98E46E29353ABEAEC907E6F1FB06C25BA7EF633CCFAF55F23B778';
wwv_flow_imp.g_varchar2_table(315) := '91EEB9E8749514F3822561931905320DDDA2009806A8BC65F31130B500447E00D002D07C03C8276A4F029E8768740461B103E1AA41589BB7A273F74EF4BCB40DEE407FCC244E03D8100610D7F9E0F5700214000F67C416192070B700904D821C018CDC65';
wwv_flow_imp.g_varchar2_table(316) := '01A000C8C060B30BAD4F4042FF644DAF56110DDF46D4D38BF0A51DB05F7B0D9D9B36A17BF54AB83D3DE3FDD4E5BC136F009DE99B9711010A00234C6CD4EA041A0580A51C6D251401304C01D0EA43CBE7CF3081A85643383C8CA8BF1FF8D9EBB0DF78039D';
wwv_flow_imp.g_varchar2_table(317) := '6BD7A26BFE3CB8A5D278CFEBEBBFE8066EFECD27040580392BB66C610214002D3C787CF4F62390E4840E25FEBF5A05162E84F3CB5F21F7AB5FA1B46C394A5D5D7024636772352602A200309F2E1400E6ACD8B285095000B4F0E0F1D1DB908094880E7536';
wwv_flow_imp.g_varchar2_table(318) := 'CEC0B6612D5982C22F7F8DE25FBD818264FF735D589664F398B8EA41006D08EB91BB4C01F0C8E8F88BAD448002A095468BCFDAEE04A2502A4106084B4584FD7DB00707517AFD17E8F8D1ABC80DCCD589BC58F1EFF1670905C0E333E41D5A800005400B0C';
wwv_flow_imp.g_varchar2_table(319) := '121F9104EA267D31FB7B5544FD7D88D6AD853334848E5DBB517A7123DCAEEEF1AC7F04F6780428001E8F1F7FBB45085000B4C840F131DB9B80F6FE8F108D8D212C97A1163F0DFBD53D7077EF46E98517515CB214763E4F47BF299A251400530492B7696E';
wwv_flow_imp.g_varchar2_table(320) := '021400CD3D3E7CBAF624708FC39E14FE8922042323082A1558CB96A1F0B77F87E24F7F82C2D265C8CD9E0DCB95525EBCA6820005C05450E43D9A9E000540D30F111FB0CD08D417FFF1B2BF75F37F14C11F1B83E77970D6AD47D77FFB4774FCEC67C8CD9B';
wwv_flow_imp.g_varchar2_table(321) := '07DB75C78BFFB419AE69E92E05C0B460E54D9B8D000540B38D089FA75D089884E5459658FE2328CF471486F01D075E6F2F729B36A1E76FFF1E9DBB5F86D3DD0D4BF2FE4ABA5F939BB60BE0C7E82705C063C0E3AFB60E010A80D6192B3E69B608DCAF98B6';
wwv_flow_imp.g_varchar2_table(322) := '2EB429F9FBA4E29F25D97C43A8D132941F209C370FC1DA35C86DDB8A9E577F8C8E75EB61E77271CE7F56E79EB209420130652879A366264001D0CCA3C367CB328107ADD7F5043E52F2370C0344B7878120821A5C0DFBB53DC8BFF4123A5ED880C2D38B61';
wwv_flow_imp.g_varchar2_table(323) := '2B150B00B998EE774AA60C05C09460E44D9A9D000540B38F109F2FAB041EB66117D37F1485887C0FDEED11844A21B77D3B4AFFF07728BCB403CEA2A76077F76801604BD11F2D0078063015F38502602A28F21E4D4F8002A0E987880F9851020F1400F297';
wwv_flow_imp.g_varchar2_table(324) := '410848D5BF20402D08E0F7F4A0F8A31FA1E7B7FF0585A121A0BB1BB01DD850B075D51F29F94B013015D38502602A28F21E4D4F8002A0E987880F985102F7F50190907F1501BE0F7BAC0C281BB58101F82B9F4371F76ECC7AFD751456AE04DC1C22843AF3';
wwv_flow_imp.g_varchar2_table(325) := '9F7602140120F902783D36010A80C746C81BB402010A805618253E631609DC5F00C8B21EC60260640C56A1087FFD7A843B76A028CE7F1B36223F7F4182A47EF82FFFFAB043852C529C9E3E51004C0F57DEB5C908500034D980F071DA86C07DF7EA72EE2F';
wwv_flow_imp.g_varchar2_table(326) := '3F810F542B50BDB360ED7A19CEEB3F47E18517515AFC34DCAEAE84533D66A08E8D1680A998401400534191F7687A0214004D3F447CC07623100450812F3600048E02162D44E127AFA3F4C6AF905FF11C72DD5DB0726EBB5199D1FE5200CC286E7ED89322';
wwv_flow_imp.g_varchar2_table(327) := '4001F0A4C8F37349E02E0249BE7F71FC43A502140B08162D805A3B88D29E1FA3E3E53DC82D5A04DBB6A1E8EC37ADD38702605AF1F2E6CD428002A0594682CFD1F604EA02A0524534360AD5D707F5D23638BB76A2B86908C595837066F5F2A47F06260A05';
wwv_flow_imp.g_varchar2_table(328) := 'C00C40E6473C790214004F7E0CF8042420045418EA74BF12F6172082F5EC33C8FFFCE728BCFAAA36FDBB7DFD71D63FE29A76021400D38E981FD00C0428009A6114F80CED4C40253B7F55AD22F23CF8853CBCB9FDB0D7AF43F72FFE0A5DBB5E863D772E94';
wwv_flow_imp.g_varchar2_table(329) := 'E34259162D0033305928006600323FE2C913A00078F263C027686F023A784F76FE958ACEFA17CC1D80BF6E10EE962DE8F9D16BE87A7123AC7C1E656B2E6F000012D349444154757F7F06FB4DFF7CA100987EC6FC8426204001D00483C047682B027794F9';
wwv_flow_imp.g_varchar2_table(330) := '8D002559FCC21061AD82D052502B9F83B3670F722FBD84E2DAF5283CB51896E4FBD70A2082B618F09A56021400D38A97376F16021400CD32127C8E762070F7D21D97FAF5A4E62F7CC74230AB1BB98D9BD0F1D7BF4461F3165873E741154BB02D0B761867';
wwv_flow_imp.g_varchar2_table(331) := 'FDD3D9FEA801A675BA50004C2B5EDEBC5908500034CB48F039DA85805EBB75BA5F09F40F809151BDB0FB8B162258BF16F9AD5BD1B5FB65149E5B05ABD4A11BC76B7E92F657870052014CE77CA100984EBABC77D310A000689AA1E083B4130115C5F9FE25';
wwv_flow_imp.g_varchar2_table(332) := 'E9CFED6128278F70CB1684BFF839724343E858BA0C85BE3E389603154ADB10521A588E022C258E801400D3395D2800A6932EEFDD340428009A6628F8206D44202EF35BD3D5FB949B87356F01D4EE9761FFE217C8AD5983FCAC5EE4F27958E22310845A2C';
wwv_flow_imp.g_varchar2_table(333) := 'C88F9CFF53004CFF44A100987EC6FC8426204001D00483C047681F0289035F54AB211C1B45542A42AD5A0D676808B96DDB511C1A82BB70211CD7899DFD745D8048EFF8F51F7106A413E0B4CF170A806947CC0F6806021400CD300A7C86CC1390B55C3A19';
wwv_flow_imp.g_varchar2_table(334) := '463AE42F0C02846108CC9D0B7BF72EE4F6EC4171DD3A149F5E0CB7B3531BF8E39A805122002C58911557FBA5F57FDAA70B05C0B423E6073403010A806618053E43D60948789F3EF3AF546155AA080B0504F3E6410DAE4671CF1E74ECDC85FC534FC1EDE8';
wwv_flow_imp.g_varchar2_table(335) := '80653B090E910071F4BF8A620B40FC2F59A7F5E4FB4701F0E4C7804F30030428006600323FA2AD09C8121E59C9625EAD417901303080F085E7E16C1E42E7F61DE85CFF7C52E2573CFDEBAB3C57FA27357128009E14797EEE8C12A0009851DCFCB0362320';
wwv_flow_imp.g_varchar2_table(336) := '3B7F48F85EB50AE5FB080B45047D7DB056AE447EC74B286CDC84C2F215C8CF9D0FCBB6B4D95F27FB81C5ADFE139C2B14004F103E3F7AE6085000CC1C6B7E527B119038FFD0921C3F219CD132EC2044B87021BCE7D7E99D7FF74B3BD0B16A10765737A02C';
wwv_flow_imp.g_varchar2_table(337) := '6D258810E885DF8284FA8908E0F5240850003C09EAFCCC1927400130E3C8F981ED40409CFEA200A1EFC74E7C3917D6EC59B0560FC2DAB61DF91737A063701085B9F3358D28123B81D4000C75A63F9B02E089CE120A80278A9F1F3E53042800668A343FA7';
wwv_flow_imp.g_varchar2_table(338) := '6D08E82C7F12E7EF03A365448E03FF99A7103DBF06854D9BD1B3F92514962E87DDD30395CB8D630925E40F8176F693587FF9C3EBC910A0007832DCF9A9334C8002608681F3E3324340A7F2D5DBF7C4317F3CD42F4014FA7A5B1F49A3D9B3116E580FB563';
wwv_flow_imp.g_varchar2_table(339) := '1B3A366C42CFCA75C8CFE9D3FEFDF50A7FF13FE3987FB96C66FB7BA2F38402E089E2E787CF14010A809922CDCFC912017DBEAF0540A443F424635F64299DAE17E2F03736862897D767FE58BD1A851DDB51DCBE1D85254BE1F6CC86EDBAF7E090EF62FD6A';
wwv_flow_imp.g_varchar2_table(340) := '08FACB12B696E90B0540CB0C151FF4710850003C0E3DFE6EBB12880580A4E7459CAE37142910C502200875FE7ED5D78F70FD5AD89B36A173EB3674AF7F1E764FEFF8CE9F7EFECD3B7B28009A776CF86453488002600A61F256ED43A05ECDAF7E062059FD';
wwv_flow_imp.g_varchar2_table(341) := '2A154452DA77D62C60D932A8C141382FBC80DC9AB5283DBB14C581B9508EADFDFCC5D92FF6F367AC7F334E1A0A80661C153ED39413A0009872A4BC619B105089C93EB6044450E5AAB60460F932E0472FC3D9B61585D56B905FF83472A50ED84AB201CA49';
wwv_flow_imp.g_varchar2_table(342) := 'BF4EF0ABCFF9E9E8D79C938502A039C7854F35C5042800A618286F9709020DFE7DF7F64712F24B19DF9A87280C10D84058CA43F5CE81BDF029386BD7C17D691B726BD7C25DB8086E67D7785A1F71F28B43FDA0177F5A009A73BA500034E7B8F0A9A69800';
wwv_flow_imp.g_varchar2_table(343) := '05C01403E5ED3241A0D1303FE19AD7D03589EF1793BF0880BC8B70A00FEAF917616FDF89E2DA75E858B204858101A86201916DDF65E88FEF288B3F0F009A73BA500034E7B8F0A9A6980005C01403E5ED5A9A8098E875C1BD24B44FFE3DF6CE57DAB12F0A';
wwv_flow_imp.g_varchar2_table(344) := '4244811F3BF2E55CA0BB136ADE00D4D26761BDB809D6D036EDE9DF396B36728538C65F4E0526BB58D8AF79A70A0540F38E0D9F6C0A0950004C214CDEAA2509D477E112D627E7F9B22FB7936DBF7C3FF4F9BE54E3134FFF4A0581ECFC3B3A102D7E0AD6CA';
wwv_flow_imp.g_varchar2_table(345) := 'E5C8BFB00EF9756B603DB3146A6021DCAE5EE4732E6C2B4EE433A9058199FE9B7AAE500034F5F0F0E1A68A0005C05491E47D5A95407D271E584060C9620FD88184F6C5B9F9F599BDE540D98E2ED313DA363077006A8D78F9AF4761D38B28AC5E05BB770E';
wwv_flow_imp.g_varchar2_table(346) := '94CAE92C7EB614008AED065CEA5B70625000B4E0A0F191D313A00048CF8CBF912D02770A0031FF47B0BD1096E723AA5575319FB09043D8DB0B2C980F6BC912B82B5620BF7215DC65CB602D5A04D53707B65D8053CF0A28C17EFA38212EECC3ABB5085000';
wwv_flow_imp.g_varchar2_table(347) := 'B4D678F1691F910005C02382E3AF6586C0B80050118224918FEDF9507E088411204E7EBDDD08172D80B56635DC4D9B905F3D888EC5CFC2ED1B80EFE6E04BFADE48C1D50EFE11422BF1F467A85F4BCE130A80961C363E745A0214006989B17DCB139030BE';
wwv_flow_imp.g_varchar2_table(348) := '864BEFCFA308A1EF21F46A08AB5584B2F8E7F3C0FCF9B0162F86BDE419B8CB9E85B37C399C65CB905BB808B95973E0B8799DD84717F18D2258616CFA8F2DFF71A21F75D7E7B53CBF36E80005401B0C32BB98A42F1513272258CAD1C6CADAE54B18FEF014';
wwv_flow_imp.g_varchar2_table(349) := 'AA070F22FAE39F8053A710F901D0D505384E5CBB9417096484409CD23F42942CFE81E723104120617C2F6ED0A97C4BEBD6A2B46219DC8101D81D1DB0F20558B6039538FAD50BF9C8F7488C087184BF251A20A9149411586DD20D0A803619E876EF262D00';
wwv_flow_imp.g_varchar2_table(350) := 'ED3E035ABBFF0F8DD7D73B72F1E497CC3B4A87F12911B3411057DE93855F9CFDE4EF0A05A0BB0BE8ED819ADD076BF1D3B0D6AC85333888C2D2A5282C5C00A7D43191D4274127F797E78853FCC83DEB0220793A06FBB7DC24A30068B921E3033F0A010A80';
wwv_flow_imp.g_varchar2_table(351) := '47A1C6DF690602776FAE1BCBEBEAE78B22A82000C21091A310D90A9117E894BD101120BBFC28D2BBFD402C5B4F2D8235B80AB9C13528AC5983FCB34BE0F40FC0EEE981DDD909BB508092088064535FB7834DACEF13F5FC98E2A71966C8A33F0305C0A3B3';
wwv_flow_imp.g_varchar2_table(352) := 'E36FB610010A80161A2C3EEA3881C92CEBF70880304458AB21F27DD992038E15EFF6C5B1CF76617594A04A25846E0E517737D4D225B0D7ADD1297C0B6BD6222F697CDD1C64C9E726BEBD261F05407B8D77DBF69602A06D87BE653B3EBEF827CE758D1E29';
wwv_flow_imp.g_varchar2_table(353) := '71CEBE38FB4EE07BF0CA6504D5AA5EFFE547C2F9FCAE2EA8B973E13EF32C728B9F81B3603E9CF9F360CF9B075B2AF6C9D9FF9C39B04A1D70453724267EEEEA5B76CAA47E700A80D4C8F80BAD4860420084B0947B5F274031994674026CC521CED433C769';
wwv_flow_imp.g_varchar2_table(354) := '7A93BDBEFE476C76BF63F7AFCFFB2D7D1E5F0D4204510847D970F339443D3DF02475EF33CFE838FEFC73CFA1B06409720B16C0E9EA82E5B83AD18F84F5C93D1D15C01607D9E40F6D01999A4EF7ED0C05407B8C73DBF732765C9257A5D42777F4EEA976F9';
wwv_flow_imp.g_varchar2_table(355) := '5B0C7F78F28E28002D00BABB81E40CB4EDC111C08C10A89BDE65D197755F85B1035FFD270A027D8EDFF803D7862AE4B5600DFAFA80FEB9C8F70DA0D03F00ABBF0F90C23D03FD70E6CD87DD3F0077CE1CB83D3DB0ACB8369F2CFC81F60F94C81811C6E2E4';
wwv_flow_imp.g_varchar2_table(356) := '177BF5F36A0F021400ED31CE6DDFCBC905C0E53BC3004F9E82BC687518A008008601B6FDBC992900E367EFF5587A997B75012015F9E49C5F4CFB96A563F1436957C8C3EAEE809A371758BE02F6F295282C5986D2E26774189FD3DB05552A02B613A7F8B5';
wwv_flow_imp.g_varchar2_table(357) := '6C589682B224755FECC51F4961005102921A58AFFB8CE79BA9316F86CFA100688651E0334C3B0179C7F9890DC0860D3B8A50BB2402E0242A070E207AEB8FC08993FA450BD7D5A6555E2430E504E275575FE3BEF489795F07D3BB0E543E07E4F240AE10CF';
wwv_flow_imp.g_varchar2_table(358) := '45C7D659FA20CE7C9D9D40B1045528E9387DBBB70B565F1FD4C245B0163D0577FE02E4FBE7C2E9E9862D55FCC63FABC1A8AF1D089207A99F29C8749F502153DE6DDEB03909500034E7B8F0A9A69880BCE76A88F499A71C00B801E05DBE84918F4EA17CE8';
wwv_flow_imp.g_varchar2_table(359) := '20C2B7FF140B805A2D5EFC99D56C8A47A0CD6F37EEC1377196DFB8384B885E2456A78E02ACEE2EA89E5950BD7D40770FA2EE12D4AC6ED8F306E08853DFEC7EB8DDB3E1F6F4C2E9EA88BDFCF3059DD14FE572B0723928A73179CF03D8DF1BE3D7E603D55E';
wwv_flow_imp.g_varchar2_table(360) := 'DDA70068AFF16EDBDECA7BCED35600E870272D00AE7E87D14FCFA3FAD107080E1F4178EE63A05C8EB300F222812926A09464CC93743AB1154062ED65A196E3A6409CF95C09D98B0500BA6741F5CCD10240759560F576C1EE9F03A7BF1F4EEF1C5D8AD7E9';
wwv_flow_imp.g_varchar2_table(361) := 'EC8253C831746F8AC7A99D6E4701D04EA3DDC67D9517AE9CA1CAF9A9B67646807FFB26AADF5D44F5D2D7F0BFBA88F0CA55449ED790F6B48D81B1EB5348401FB2C3B61D58569C604732F6C94E5D32EEA96211512E8F289FD34E7D565176F30544B9222C37';
wwv_flow_imp.g_varchar2_table(362) := '07CB75B4395FFE4E49929E5C1ECACDC372E47E0CDA9BC2816ABB5B5100B4DD90B76F87250620B678C6879D417514DEED1BF0866F21B83D8270AC12FB00D0FCDFBE93649A7A2E3B7F5B92F288335E3205AD5C5EEFE2AD5209513E8F484CF739572FECB147';
wwv_flow_imp.g_varchar2_table(363) := '5EECAD5F8FED8F1FADE10841A7E26D1000CCE2334DA397DDDB520064776CD9B3BB08C46180F5142A0A61E023A88D21F4AA3A756AE48F1B67C98E04A6908084D789F7BD1C01C48BBAFE77C7D6BB7939728A1C1B911547E137FAE1D7C3F5261E4666F0C42C';
wwv_flow_imp.g_varchar2_table(364) := '96D2BC5A0270F19FC2F16A9F5B5100B4CF58B7794F27F200D4F75412FF1C45817E9D2AFD22A5E77F9B4F9269EF7E7D718FAD00893F8092E32939A08A8F0AAC719110EFF825C14F6CB98AC5AB9EAFC91F5BB7E5EA3FED0397D10FA000C8E8C0B25BF71288';
wwv_flow_imp.g_varchar2_table(365) := '6B984D5800EA2FD3D822CBD728E7CCCC10B8BBB25F6C778AFF379E85F5FF8DFF9B960649A860E3EFCAB142FDCFCC3C393F256B042800B236A2ECCF43088C67511FDF53C5028017093C39028D79FE279B8B13F5F7269E9192F5C98D57563E9902202B23C9';
wwv_flow_imp.g_varchar2_table(366) := '7E90000990000990400A0214002960B129099000099000096485000540564692FD20011220011220811404280052C0625312200112200112C80A010A80AC8C24FB410224400224400229085000A480C5A6244002244002249015021400591949F6830448';
wwv_flow_imp.g_varchar2_table(367) := '80044880045210A00048018B4D49800448800448202B042800B23292EC0709900009900009A42040019002169B920009900009904056085000646524D90F122001122001124841800220052C362501122001122081AC10A000C8CA48B21F244002244002';
wwv_flow_imp.g_varchar2_table(368) := '2490820005400A586C4A0224400224400259214001909591643F488004488004482005010A8014B0D89404488004488004B2428002202B23C97E90000990000990400A0214002960B129099000099000096485000540564692FD20011220011220811404';
wwv_flow_imp.g_varchar2_table(369) := '280052C0625312200112200112C80A010A80AC8C24FB410224400224400229085000A480C5A6244002244002249015021400591949F683044880044880045210A00048018B4D49800448800448202B042800B23292EC0709900009900009A42040019002';
wwv_flow_imp.g_varchar2_table(370) := '169B920009900009904056085000646524D90F122001122001124841800220052C362501122001122081AC10A000C8CA48B21F2440022440022490820005400A586C4A0224400224400259214001909591643F488004488004482005010A8014B0D89404';
wwv_flow_imp.g_varchar2_table(371) := '488004488004B2428002202B23C97E90000990000990400A0214002960B129099000099000096485000540564692FD20011220011220811404280052C0625312200112200112C80A010A80AC8C24FB410224400224400229085000A480C5A62440022440';
wwv_flow_imp.g_varchar2_table(372) := '02249015021400591949F683044880044880045210A00048018B4D49800448800448202B042800B23292EC0709900009900009A42040019002169B920009900009904056085000646524D90F122001122001124841800220052C362501122001122081AC';
wwv_flow_imp.g_varchar2_table(373) := '10A000C8CA48B21F2440022440022490820005400A586C4A0224400224400259214001909591643F488004488004482005010A8014B0D89404488004488004B2428002202B23C97E90000990000990400A0214002960B129099000099000096485000540';
wwv_flow_imp.g_varchar2_table(374) := '564692FD20011220011220811404280052C0625312200112200112C80A010A80AC8C24FB410224400224400229085000A480C5A6244002244002249015021400591949F683044880044880045210A00048018B4D49800448800448202B042800B23292EC';
wwv_flow_imp.g_varchar2_table(375) := '0709900009900009A42040019002169B920009900009904056085000646524D90F122001122001124841800220052C362501122001122081AC10A000C8CA48B21F2440022440022490820005400A586C4A0224400224400259214001909591643F488004';
wwv_flow_imp.g_varchar2_table(376) := '488004482005010A8014B0D89404488004488004B2428002202B23C97E90000990000990400A0214002960B129099000099000096485000540564692FD20011220011220811404280052C0625312200112200112C80A010A80AC8C24FB41022440022440';
wwv_flow_imp.g_varchar2_table(377) := '0229085000A480C5A6244002244002249015021400591949F683044880044880045210A00048018B4D49800448800448202B042800B23292EC0709900009900009A42040019002169B92000990000990405608FC7F1134D4920CBC2DBB0000000049454E';
wwv_flow_imp.g_varchar2_table(378) := '44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(7383511880590891452)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250204143549Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383503147820891442)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15602980586217
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383503417220891442)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15602980586219
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383503702420891442)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15602980586220
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383504043815891442)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15602980586223
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383504316044891443)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15602980586223
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383504643974891443)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15602980586223
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383504913155891443)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15602980586223
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383505227143891443)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15602980586223
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383505568579891443)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15602980586223
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383505842881891443)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15602980586226
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383506125008891444)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15602980586226
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383506468651891444)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15602980586226
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383506729910891444)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15602980586226
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(7383507081692891444)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15602980586226
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(7383514105442891454)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15602980586304
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(7383514237647891454)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>15602980586304
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(7383514302959891454)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>15602980586304
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(7383513708005891453)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>15602980586301
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(7383513995332891454)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>15602980586301
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(7383514050365891454)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>15602980586301
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(7383515104150891455)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(7383512096694891453)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>15602980586308
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7383667367192891665)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15602980588487
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/depots_depot_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7383537753136891498)
,p_lov_name=>'DEPOTS.DEPOT_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEPOTS'
,p_return_column_name=>'DEPOT_ID'
,p_display_column_name=>'DEPOT_NAME'
,p_default_sort_column_name=>'DEPOT_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15602980586752
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/depots_depot_name_1
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7383546863793891508)
,p_lov_name=>'DEPOTS.DEPOT_NAME_1'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEPOTS'
,p_return_column_name=>'DEPOT_ID'
,p_display_column_name=>'DEPOT_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DEPOT_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15603440501180
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250204150806Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(8011502222184969816)
,p_query_column_name=>'DEPOT_NAME'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
,p_created_on=>wwv_flow_imp.dz('20250204150806Z')
,p_updated_on=>wwv_flow_imp.dz('20250204150806Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(8011502676263969817)
,p_query_column_name=>'DEPOT_ID'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
,p_created_on=>wwv_flow_imp.dz('20250204150806Z')
,p_updated_on=>wwv_flow_imp.dz('20250204150806Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7383674819586891672)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(7383674819586891672)||'.'
,p_location=>'STATIC'
,p_version_scn=>15602980588556
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7383675149647891672)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7383586495507891551)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>15602980587216
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(7383634080335891629)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(7383634080335891629)||'.'
,p_location=>'STATIC'
,p_version_scn=>15602980588098
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7383634321637891630)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(7383634762072891630)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(7383515438850891455)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(7383507952272891445)
,p_name=>'Breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250205085115Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7383508167762891445)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7383532605100891486)
,p_short_name=>'Depots'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7383535787923891490)
,p_short_name=>'Containers'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7383545520615891504)
,p_short_name=>'Stock'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7383553735012891517)
,p_short_name=>'Staff'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7383692701583891690)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7723141649765755126)
,p_short_name=>'Clients'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7964333259569919387)
,p_short_name=>'Revenue Report'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
,p_created_on=>wwv_flow_imp.dz('20250204121302Z')
,p_updated_on=>wwv_flow_imp.dz('20250204121302Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8246812415950348711)
,p_short_name=>'Depots_2'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
,p_created_on=>wwv_flow_imp.dz('20250205085115Z')
,p_updated_on=>wwv_flow_imp.dz('20250205085115Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(7383508831094891446)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250204143900Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(7383507349195891444)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15602980586226
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(7383512096694891453)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15602980586290
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(7383512150092891453)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15602980586297
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(7383512726903891453)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15602980586297
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(7383507610801891444)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15602980586229
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'CW Content Management System'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383529358915891468)
,p_plug_name=>'CW Content Management System'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383568861348891531)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(7383566903869891530)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Depots'
,p_alias=>'DEPOTS'
,p_step_title=>'Depots'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250205083833Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5440335224142692204)
,p_name=>'Container Report'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONTAINER_ID,',
'       CONTAINER_TYPE,',
'       DEPOT_ID, ',
'       LEASE_STATUS,',
'       HEALTH_STATUS,',
'       MARKET_READY,',
'       RAND_VALUE,',
'       LEASE_PRICE,',
'       LEASE_START_DATE,',
'       LEASE_END_DATE',
'  from CONTAINERS',
'  WHERE DEPOT_ID = :P1_SELECTED_DEPOT;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202194858Z')
,p_updated_on=>wwv_flow_imp.dz('20250202205805Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5440335307943692205)
,p_query_column_id=>1
,p_column_alias=>'CONTAINER_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Container Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202194859Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5440335441362692206)
,p_query_column_id=>2
,p_column_alias=>'CONTAINER_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Container Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202194859Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5440335537340692207)
,p_query_column_id=>3
,p_column_alias=>'DEPOT_ID'
,p_column_display_sequence=>30
,p_column_heading=>'Depot Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202194859Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5440335684367692208)
,p_query_column_id=>4
,p_column_alias=>'LEASE_STATUS'
,p_column_display_sequence=>40
,p_column_heading=>'Lease Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202194859Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5440335707575692209)
,p_query_column_id=>5
,p_column_alias=>'HEALTH_STATUS'
,p_column_display_sequence=>50
,p_column_heading=>'Health Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202194859Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5440335878642692210)
,p_query_column_id=>6
,p_column_alias=>'MARKET_READY'
,p_column_display_sequence=>60
,p_column_heading=>'Market Ready'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202194859Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5440335905889692211)
,p_query_column_id=>7
,p_column_alias=>'RAND_VALUE'
,p_column_display_sequence=>70
,p_column_heading=>'Rand Value'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202194859Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5440336037416692212)
,p_query_column_id=>8
,p_column_alias=>'LEASE_PRICE'
,p_column_display_sequence=>80
,p_column_heading=>'Lease Price'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202194859Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5440336171576692213)
,p_query_column_id=>9
,p_column_alias=>'LEASE_START_DATE'
,p_column_display_sequence=>90
,p_column_heading=>'Lease Start Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202194859Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5440336251874692214)
,p_query_column_id=>10
,p_column_alias=>'LEASE_END_DATE'
,p_column_display_sequence=>100
,p_column_heading=>'Lease End Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202194859Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383530663662891484)
,p_plug_name=>'Depots'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250205083833Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(7383531045800891484)
,p_region_id=>wwv_flow_imp.id(7383530663662891484)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:INFINITE_MAP:RECTANGLE_ZOOM'
,p_updated_on=>wwv_flow_imp.dz('20250205083833Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(7383531582596891485)
,p_map_region_id=>wwv_flow_imp.id(7383531045800891484)
,p_name=>'Depots'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEPOT_ID AS id, -- Ensure ID is available',
'       DEPOT_NAME,',
'       LOCATION,',
'       LONGITUDE, ',
'       LATITUDE,',
'       GEOMETRY,',
'       DATE_ADDED,',
'       DEPOT_NAME AS title,',
'       DEPOT_ID AS info_window',
'  FROM DEPOTS',
'',
''))
,p_has_spatial_index=>true
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'GEOMETRY'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
,p_updated_on=>wwv_flow_imp.dz('20250205083833Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383532124611891485)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(7383507952272891445)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5440336803236692220)
,p_name=>'P1_SELECTED_DEPOT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7383530663662891484)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202203215Z')
,p_updated_on=>wwv_flow_imp.dz('20250204181410Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5440336531132692217)
,p_name=>'Depot clicked'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'this.data.id'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250202200448Z')
,p_updated_on=>wwv_flow_imp.dz('20250205081109Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5440337251654692224)
,p_event_id=>wwv_flow_imp.id(5440336531132692217)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_SELECTED_DEPOT'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20250202204137Z')
,p_updated_on=>wwv_flow_imp.dz('20250205081109Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5440337199485692223)
,p_name=>'Depot Click'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7383530663662891484)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_MAP_REGION|REGION TYPE|spatialmapobjectclick'
,p_created_on=>wwv_flow_imp.dz('20250202204137Z')
,p_updated_on=>wwv_flow_imp.dz('20250205082023Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5440338905317692241)
,p_event_id=>wwv_flow_imp.id(5440337199485692223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_SELECTED_DEPOT'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_created_on=>wwv_flow_imp.dz('20250205082023Z')
,p_updated_on=>wwv_flow_imp.dz('20250205082023Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5440337393818692225)
,p_event_id=>wwv_flow_imp.id(5440337199485692223)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5440335224142692204)
,p_attribute_01=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202204239Z')
,p_updated_on=>wwv_flow_imp.dz('20250205082023Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5440336650803692218)
,p_event_id=>wwv_flow_imp.id(5440337199485692223)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7383530663662891484)
,p_created_on=>wwv_flow_imp.dz('20250202200448Z')
,p_updated_on=>wwv_flow_imp.dz('20250205082023Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5440338707225692239)
,p_event_id=>wwv_flow_imp.id(5440337199485692223)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("Clicked Data:", this.data);',
'',
'if (this.data && this.data.id) {',
'    console.log("Depot ID:", this.data.id);',
'    apex.item(''P1_SELECTED_DEPOT'').setValue(this.data.id);',
'} else {',
'    console.log("No Depot ID found");',
'}',
''))
,p_created_on=>wwv_flow_imp.dz('20250204181410Z')
,p_updated_on=>wwv_flow_imp.dz('20250205082023Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Containers'
,p_alias=>'CONTAINERS'
,p_step_title=>'Containers'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'19'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250204105336Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383533750025891488)
,p_plug_name=>'Containers'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250204105336Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(7383534100367891488)
,p_region_id=>wwv_flow_imp.id(7383533750025891488)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:INFINITE_MAP:RECTANGLE_ZOOM'
,p_updated_on=>wwv_flow_imp.dz('20250204105336Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(7383534699627891489)
,p_map_region_id=>wwv_flow_imp.id(7383534100367891488)
,p_name=>'Containers'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONTAINER_ID,',
'       CONTAINER_TYPE,',
'       DEPOT_ID,',
'       LEASE_STATUS,',
'       HEALTH_STATUS,',
'       MARKET_READY,',
'       RAND_VALUE,',
'       LEASE_PRICE,',
'       LEASE_START_DATE,',
'       LEASE_END_DATE,',
'       CONTAINER_LOCATION',
'  from CONTAINERS',
'  WHERE LEASE_STATUS = ''Leased''',
'  FETCH FIRST 50 ROWS ONLY;'))
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'CONTAINER_LOCATION'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_tooltip_column=>'CONTAINER_ID'
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
,p_updated_on=>wwv_flow_imp.dz('20250204105336Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383535220831891489)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(7383507952272891445)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Stock'
,p_alias=>'STOCK'
,p_step_title=>'Stock'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7383536847721891493)
,p_name=>'Containers'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'CONTAINERS'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383541011024891501)
,p_query_column_id=>1
,p_column_alias=>'CONTAINER_ID'
,p_column_display_sequence=>0
,p_column_heading=>'Container ID'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383541446981891502)
,p_query_column_id=>2
,p_column_alias=>'CONTAINER_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Container Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383541874487891502)
,p_query_column_id=>3
,p_column_alias=>'DEPOT_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Depot'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(7383537753136891498)
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383542233894891502)
,p_query_column_id=>4
,p_column_alias=>'LEASE_STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Lease Status'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383542626802891502)
,p_query_column_id=>5
,p_column_alias=>'HEALTH_STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Health Status'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383543008237891503)
,p_query_column_id=>6
,p_column_alias=>'MARKET_READY'
,p_column_display_sequence=>6
,p_column_heading=>'Market Ready'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383543415907891503)
,p_query_column_id=>7
,p_column_alias=>'RAND_VALUE'
,p_column_display_sequence=>7
,p_column_heading=>'Rand Value'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383543861982891503)
,p_query_column_id=>8
,p_column_alias=>'LEASE_PRICE'
,p_column_display_sequence=>8
,p_column_heading=>'Lease Price'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383544234333891503)
,p_query_column_id=>9
,p_column_alias=>'LEASE_START_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Lease Start Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383544642042891503)
,p_query_column_id=>10
,p_column_alias=>'LEASE_END_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Lease End Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383536947177891493)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(7383536847721891493)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383539941948891500)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383545086983891504)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(7383507952272891445)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383540457566891500)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7383539941948891500)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:RR,4::'
,p_icon_css_classes=>'fa-undo'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383537459354891497)
,p_name=>'P4_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7383536947177891493)
,p_prompt=>'Search'
,p_source=>'CONTAINER_ID,CONTAINER_TYPE,DEPOT_ID,LEASE_STATUS,HEALTH_STATUS,MARKET_READY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383538142137891498)
,p_name=>'P4_DEPOT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7383536947177891493)
,p_prompt=>'Depot'
,p_source=>'DEPOT_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'DEPOTS.DEPOT_NAME'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383538583253891499)
,p_name=>'P4_LEASE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7383536947177891493)
,p_prompt=>'Lease Status'
,p_source=>'LEASE_STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383538908275891499)
,p_name=>'P4_HEALTH_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7383536947177891493)
,p_prompt=>'Health Status'
,p_source=>'HEALTH_STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383539234679891499)
,p_name=>'P4_CONTAINER_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7383536947177891493)
,p_prompt=>'Container Type'
,p_source=>'CONTAINER_TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov_sort_direction=>'ASC'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'D'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383539647275891500)
,p_name=>'P4_MARKET_READY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7383536947177891493)
,p_prompt=>'Market Ready'
,p_source=>'MARKET_READY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov_sort_direction=>'ASC'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'D'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Staff'
,p_alias=>'STAFF'
,p_step_title=>'Staff'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383546654450891506)
,p_plug_name=>'Staff'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'STAFF'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Staff'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7383546768076891506)
,p_name=>'Staff'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GTMUZAMA@GMAIL.COM'
,p_internal_uid=>7383546768076891506
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383547783056891512)
,p_db_column_name=>'STAFF_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Staff ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383548147448891512)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383548586431891512)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383548921926891513)
,p_db_column_name=>'EMAIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383549386198891513)
,p_db_column_name=>'PHONE_NUMBER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Phone Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383549776064891513)
,p_db_column_name=>'ROLE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Role'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383550100325891513)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383550507208891514)
,p_db_column_name=>'HIRE_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Hire Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383550926940891514)
,p_db_column_name=>'SALARY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383551336723891514)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383551737570891514)
,p_db_column_name=>'ACCESS_LEVEL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Access Level'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383552155960891515)
,p_db_column_name=>'DEPOT_NAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Depot Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(7383546863793891508)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7383558666282891522)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'73835587'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STAFF_ID:FIRST_NAME:LAST_NAME:EMAIL:PHONE_NUMBER:ROLE:DEPARTMENT:HIRE_DATE:SALARY:EMPLOYMENT_STATUS:ACCESS_LEVEL:DEPOT_NAME:'
,p_sort_column_1=>'STAFF_ID'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383553296576891517)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(7383507952272891445)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383552524098891516)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7383546654450891506)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Clients'
,p_alias=>'CLIENTS'
,p_step_title=>'Clients'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250203215240Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7723132447963755119)
,p_plug_name=>'Clients'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CLIENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Clients'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215240Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7723132599319755119)
,p_name=>'Clients'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'CLIENT_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_CLIENT_ID:\#CLIENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'GTMUZAMA@GMAIL.COM'
,p_internal_uid=>7723132599319755119
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215240Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723133279873755120)
,p_db_column_name=>'CLIENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Client ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723133673919755121)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723134000865755121)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723134455543755121)
,p_db_column_name=>'CONTACT_NUMBER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Contact Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723134868811755122)
,p_db_column_name=>'EMAIL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723135265466755122)
,p_db_column_name=>'COMPANY_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Company Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723135656381755122)
,p_db_column_name=>'LOCATION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723136085756755123)
,p_db_column_name=>'LATITUDE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Latitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723136443630755123)
,p_db_column_name=>'LONGITUDE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Longitude'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723136840399755123)
,p_db_column_name=>'GEOMETRY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Geometry'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723137298694755123)
,p_db_column_name=>'IS_ACTIVE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Is Active'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723137614525755124)
,p_db_column_name=>'LEASING_STATUS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Leasing Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723138046516755124)
,p_db_column_name=>'LAST_TRANSACTION_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Last Transaction Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723138495231755124)
,p_db_column_name=>'CLIENT_SCORE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Client Score'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723138827805755124)
,p_db_column_name=>'TOTAL_SPENT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Total Spent'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723139249828755125)
,p_db_column_name=>'TOTAL_LIABLE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Total Liable'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7723139663565755125)
,p_db_column_name=>'DEPOT_NAME'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Depot Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(7383546863793891508)
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7723375182666757231)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'77233752'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CLIENT_ID:FIRST_NAME:LAST_NAME:CONTACT_NUMBER:EMAIL:COMPANY_NAME:LOCATION:LATITUDE:LONGITUDE:GEOMETRY:IS_ACTIVE:LEASING_STATUS:LAST_TRANSACTION_DATE:CLIENT_SCORE:TOTAL_SPENT:TOTAL_LIABLE:DEPOT_NAME'
,p_created_on=>wwv_flow_imp.dz('20250203215240Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215240Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7723141776928755126)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(7383507952272891445)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7723140119668755125)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7723132447963755119)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7723140429456755125)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7723132447963755119)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7723140951008755126)
,p_event_id=>wwv_flow_imp.id(7723140429456755125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7723132447963755119)
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Add Client'
,p_alias=>'ADD-CLIENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Client'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250203215217Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7723116182139755105)
,p_plug_name=>'Add Client'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'CLIENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7723127649179755115)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7723128023643755116)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7723127649179755115)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7723129492463755117)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7723127649179755115)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_CLIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7723129812111755117)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7723127649179755115)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P7_CLIENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7723130271482755117)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7723127649179755115)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P7_CLIENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723116480289755106)
,p_name=>'P7_CLIENT_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Client Id'
,p_source=>'CLIENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723116815217755106)
,p_name=>'P7_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723117245288755107)
,p_name=>'P7_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723117621450755107)
,p_name=>'P7_CONTACT_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contact Number'
,p_source=>'CONTACT_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723118008833755108)
,p_name=>'P7_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723118406026755108)
,p_name=>'P7_COMPANY_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Name'
,p_source=>'COMPANY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723118889997755108)
,p_name=>'P7_LOCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Location'
,p_source=>'LOCATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723119235836755109)
,p_name=>'P7_LATITUDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Latitude'
,p_source=>'LATITUDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723119654372755109)
,p_name=>'P7_LONGITUDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Longitude'
,p_source=>'LONGITUDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723120046842755110)
,p_name=>'P7_IS_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Is Active'
,p_source=>'IS_ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723120478345755110)
,p_name=>'P7_LEASING_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Leasing Status'
,p_source=>'LEASING_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723120869935755110)
,p_name=>'P7_LAST_TRANSACTION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Transaction Date'
,p_source=>'LAST_TRANSACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723121275848755111)
,p_name=>'P7_CLIENT_SCORE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Client Score'
,p_source=>'CLIENT_SCORE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723121661482755111)
,p_name=>'P7_TOTAL_SPENT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Spent'
,p_source=>'TOTAL_SPENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723122092580755111)
,p_name=>'P7_TOTAL_LIABLE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Liable'
,p_source=>'TOTAL_LIABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7723122408669755112)
,p_name=>'P7_DEPOT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_item_source_plug_id=>wwv_flow_imp.id(7723116182139755105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Depot Name'
,p_source=>'DEPOT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPOTS.DEPOT_NAME_1'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7723128154509755116)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7723128023643755116)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7723128932482755116)
,p_event_id=>wwv_flow_imp.id(7723128154509755116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7723131062462755118)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7723116182139755105)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Add Client'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7723131062462755118
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7723131492130755118)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>7723131492130755118
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7723130664942755118)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7723116182139755105)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add Client'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7723130664942755118
,p_created_on=>wwv_flow_imp.dz('20250203215219Z')
,p_updated_on=>wwv_flow_imp.dz('20250203215219Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Revenue Report'
,p_alias=>'REVENUE-REPORT'
,p_step_title=>'Revenue Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250204121302Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250204122638Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7964332677983919387)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(7383507952272891445)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250204121302Z')
,p_updated_on=>wwv_flow_imp.dz('20250204121302Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7964333400654919388)
,p_plug_name=>'Revenue Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Select depot-level data and company total',
'SELECT  ',
'    cm.depot_name, ',
'    TO_CHAR(cm.total_sales, ''FM999,999,999.00'') as total_sales, ',
'    TO_CHAR(cm.total_credit, ''FM999,999,999.00'') as total_credit, ',
'    TO_CHAR(cm.monthly_recurring_revenue, ''FM999,999,999.00'') as monthly_recurring_revenue, ',
'    TO_CHAR((cm.total_sales /  ',
'        (SELECT SUM(total_sales) FROM ( -- Subquery to calculate total sales across all depots',
'            SELECT  ',
'                COALESCE(ds.total_sales, 0) as total_sales',
'            FROM depots d',
'            LEFT JOIN (',
'                SELECT depot_name, SUM(total_spent) as total_sales',
'                FROM clients',
'                GROUP BY depot_name',
'            ) ds ON d.depot_name = ds.depot_name',
'        ))) * 100,  ',
'        ''FM990.00'') || ''%'' as sales_percentage, ',
'    TO_CHAR((cm.monthly_recurring_revenue /  ',
'        (SELECT SUM(monthly_recurring_revenue) FROM ( -- Subquery to calculate total monthly recurring revenue across all depots',
'            SELECT  ',
'                COALESCE(dm.monthly_recurring_revenue, 0) as monthly_recurring_revenue',
'            FROM depots d',
'            LEFT JOIN (',
'                SELECT depot_name, SUM(total_liable) as monthly_recurring_revenue',
'                FROM clients',
'                WHERE leasing_status = ''Leasing''',
'                GROUP BY depot_name',
'            ) dm ON d.depot_name = dm.depot_name',
'        ))) * 100,  ',
'        ''FM990.00'') || ''%'' as mrr_percentage ',
'FROM (',
'    -- Calculate total sales, credit, and monthly recurring revenue per depot',
'    SELECT  ',
'        d.depot_name, ',
'        COALESCE(ds.total_sales, 0) as total_sales, ',
'        COALESCE(dc.total_credit, 0) as total_credit, ',
'        COALESCE(dm.monthly_recurring_revenue, 0) as monthly_recurring_revenue',
'    FROM depots d',
'    LEFT JOIN (',
'        SELECT depot_name, SUM(total_spent) as total_sales',
'        FROM clients',
'        GROUP BY depot_name',
'    ) ds ON d.depot_name = ds.depot_name',
'    LEFT JOIN (',
'        SELECT depot_name, SUM(total_liable) as total_credit',
'        FROM clients',
'        WHERE leasing_status = ''Open Quotes''',
'        GROUP BY depot_name',
'    ) dc ON d.depot_name = dc.depot_name',
'    LEFT JOIN (',
'        SELECT depot_name, SUM(total_liable) as monthly_recurring_revenue',
'        FROM clients',
'        WHERE leasing_status = ''Leasing''',
'        GROUP BY depot_name',
'    ) dm ON d.depot_name = dm.depot_name',
') cm',
'',
'UNION ALL',
'',
'-- Select company total',
'SELECT  ',
'    ''COMPANY TOTAL'' as depot_name, ',
'    TO_CHAR(SUM(cm.total_sales), ''FM999,999,999.00'') as total_sales, ',
'    TO_CHAR(SUM(cm.total_credit), ''FM999,999,999.00'') as total_credit, ',
'    TO_CHAR(SUM(cm.monthly_recurring_revenue), ''FM999,999,999.00'') as monthly_recurring_revenue, ',
'    ''100.00%'' as sales_percentage, ',
'    ''100.00%'' as mrr_percentage ',
'FROM (',
'    -- Calculate total sales, credit, and monthly recurring revenue per depot',
'    SELECT  ',
'        d.depot_name, ',
'        COALESCE(ds.total_sales, 0) as total_sales, ',
'        COALESCE(dc.total_credit, 0) as total_credit, ',
'        COALESCE(dm.monthly_recurring_revenue, 0) as monthly_recurring_revenue',
'    FROM depots d',
'    LEFT JOIN (',
'        SELECT depot_name, SUM(total_spent) as total_sales',
'        FROM clients',
'        GROUP BY depot_name',
'    ) ds ON d.depot_name = ds.depot_name',
'    LEFT JOIN (',
'        SELECT depot_name, SUM(total_liable) as total_credit',
'        FROM clients',
'        WHERE leasing_status = ''Open Quotes''',
'        GROUP BY depot_name',
'    ) dc ON d.depot_name = dc.depot_name',
'    LEFT JOIN (',
'        SELECT depot_name, SUM(total_liable) as monthly_recurring_revenue',
'        FROM clients',
'        WHERE leasing_status = ''Leasing''',
'        GROUP BY depot_name',
'    ) dm ON d.depot_name = dm.depot_name',
') cm;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Revenue Report'
,p_created_on=>wwv_flow_imp.dz('20250204121302Z')
,p_updated_on=>wwv_flow_imp.dz('20250204122638Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7964333521073919388)
,p_name=>'Revenue Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GTMUZAMA@GMAIL.COM'
,p_internal_uid=>7964333521073919388
,p_created_on=>wwv_flow_imp.dz('20250204121302Z')
,p_updated_on=>wwv_flow_imp.dz('20250204121507Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964334267469919389)
,p_db_column_name=>'DEPOT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Depot Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250204121302Z')
,p_updated_on=>wwv_flow_imp.dz('20250204121302Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964334671553919390)
,p_db_column_name=>'TOTAL_SALES'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Total Sales'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250204121302Z')
,p_updated_on=>wwv_flow_imp.dz('20250204121302Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964335061699919390)
,p_db_column_name=>'TOTAL_CREDIT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Total Credit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250204121302Z')
,p_updated_on=>wwv_flow_imp.dz('20250204121302Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964335409424919390)
,p_db_column_name=>'MONTHLY_RECURRING_REVENUE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Monthly Recurring Revenue'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250204121302Z')
,p_updated_on=>wwv_flow_imp.dz('20250204121302Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964335847020919391)
,p_db_column_name=>'SALES_PERCENTAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Sales Percentage'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250204121302Z')
,p_updated_on=>wwv_flow_imp.dz('20250204121302Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7964336214508919391)
,p_db_column_name=>'MRR_PERCENTAGE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mrr Percentage'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250204121302Z')
,p_updated_on=>wwv_flow_imp.dz('20250204121302Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7965209286638931869)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'79652093'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPOT_NAME:TOTAL_SALES:TOTAL_CREDIT:MONTHLY_RECURRING_REVENUE:SALES_PERCENTAGE:MRR_PERCENTAGE'
,p_created_on=>wwv_flow_imp.dz('20250204121507Z')
,p_updated_on=>wwv_flow_imp.dz('20250204121507Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_imp_page.create_page(
 p_id=>16
,p_name=>'Depots_2'
,p_alias=>'DEPOTS-2'
,p_step_title=>'Depots_2'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_created_on=>wwv_flow_imp.dz('20250205085115Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250205090831Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8246811974647348710)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(7383507952272891445)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250205085115Z')
,p_updated_on=>wwv_flow_imp.dz('20250205085115Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8246812664716348712)
,p_plug_name=>'Map'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEPOT_ID AS id,  ',
'       DEPOT_NAME, ',
'       LOCATION, ',
'       LATITUDE, ',
'       LONGITUDE,',
'       GEOMETRY, ',
'       DATE_ADDED, ',
'       DEPOT_NAME AS title, ',
'       DEPOT_ID AS info_window  ',
'  FROM DEPOTS;',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
,p_created_on=>wwv_flow_imp.dz('20250205085115Z')
,p_updated_on=>wwv_flow_imp.dz('20250205085115Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(8246814619149348715)
,p_region_id=>wwv_flow_imp.id(8246812664716348712)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:INFINITE_MAP:RECTANGLE_ZOOM'
,p_updated_on=>wwv_flow_imp.dz('20250205085115Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(8246815133967348715)
,p_map_region_id=>wwv_flow_imp.id(8246814619149348715)
,p_name=>'Depots_2'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'REGION_SOURCE'
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'SDO_GEOMETRY'
,p_geometry_column=>'GEOMETRY'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_fill_color_is_spectrum=>false
,p_extrude_unit=>'M'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_tooltip_adv_formatting=>false
,p_tooltip_column=>'DEPOT_NAME'
,p_info_window_adv_formatting=>false
,p_allow_hide=>true
,p_updated_on=>wwv_flow_imp.dz('20250205085115Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8246812741241348712)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(8246812664716348712)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250205085115Z')
,p_updated_on=>wwv_flow_imp.dz('20250205085115Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8246813595336348713)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250205085115Z')
,p_updated_on=>wwv_flow_imp.dz('20250205085115Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8246814067906348714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8246813595336348713)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:RR,16::'
,p_icon_css_classes=>'fa-undo'
,p_created_on=>wwv_flow_imp.dz('20250205085115Z')
,p_updated_on=>wwv_flow_imp.dz('20250205085115Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5440339379132692245)
,p_name=>'P1_DEPOT_DATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8246812664716348712)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250205085955Z')
,p_updated_on=>wwv_flow_imp.dz('20250205085955Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8246813294751348713)
,p_name=>'P16_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8246812741241348712)
,p_prompt=>'Search'
,p_source=>'ID,DEPOT_NAME,LOCATION,TITLE,INFO_WINDOW'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'collapsed_search_field', 'N',
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>false
,p_fc_initial_collapsed=>false
,p_fc_show_chart=>false
,p_created_on=>wwv_flow_imp.dz('20250205085115Z')
,p_updated_on=>wwv_flow_imp.dz('20250205085115Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5440339094889692242)
,p_name=>'Capture Depot Data'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8246812664716348712)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_MAP_REGION|REGION TYPE|spatialmapobjectclick'
,p_created_on=>wwv_flow_imp.dz('20250205085955Z')
,p_updated_on=>wwv_flow_imp.dz('20250205090831Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5440339134247692243)
,p_event_id=>wwv_flow_imp.id(5440339094889692242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("Full Event Data:", this.browserEvent);',
'',
'// Ensure event data is present',
'if (this.browserEvent.data) {',
'    console.log("Depot Data Raw:", this.browserEvent.data);',
'    ',
'    // Extract values safely',
'    let eventData = this.browserEvent.data;',
'    let tooltipData = eventData.tooltip ? JSON.parse(eventData.tooltip) : {};',
'    let infoWindowData = eventData.infoWindow ? JSON.parse(eventData.infoWindow) : {};',
'',
'    // Store depot details',
'    this.data = {',
'        title: tooltipData.content || "Unknown Depot",',
'        info: infoWindowData || {},',
'        latitude: eventData.lat,',
'        longitude: eventData.lng',
'    };',
'',
'    console.log("Processed Depot Data:", this.data);',
'',
'    // Store in APEX item',
'    apex.item("P1_DEPOT_DATA").setValue(JSON.stringify(this.data));',
'',
'} else {',
'    console.log("Error: No data found in event!");',
'}',
''))
,p_created_on=>wwv_flow_imp.dz('20250205085955Z')
,p_updated_on=>wwv_flow_imp.dz('20250205090831Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'CW Content Management System - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383518841033891460)
,p_plug_name=>'CW Content Management System'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383522074364891464)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7383518841033891460)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383519365837891462)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7383518841033891460)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383519985001891463)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7383518841033891460)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383520692771891463)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7383518841033891460)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383521317926891463)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7383518841033891460)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7383525249061891465)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7383525249061891465
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7383526031218891465)
,p_page_process_id=>wwv_flow_imp.id(7383525249061891465)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7383526964874891466)
,p_page_process_id=>wwv_flow_imp.id(7383525249061891465)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7383522541280891464)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7383522541280891464
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7383523402120891464)
,p_page_process_id=>wwv_flow_imp.id(7383522541280891464)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7383524075735891465)
,p_page_process_id=>wwv_flow_imp.id(7383522541280891464)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(7383524702111891465)
,p_page_process_id=>wwv_flow_imp.id(7383522541280891464)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7383528108428891466)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7383528108428891466
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7383527723420891466)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7383527723420891466
,p_created_on=>wwv_flow_imp.dz('20250202162801Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162801Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administration'
,p_alias=>'ADMINISTRATION'
,p_step_title=>'Administration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7383514105442891454)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162804Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383692224932891690)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(7383507952272891445)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383696773966891693)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383697159057891693)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(7383696773966891693)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(7383692914826891691)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(7383512150092891453)
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383697505941891693)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383697987172891694)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(7383697505941891693)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(7383512096694891453)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383698770166891694)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(7383697987172891694)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7383699157756891695)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(7383697987172891694)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162804Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383699867974891697)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383700234101891697)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383700694355891698)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383703612013891701)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(7383697987172891694)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(7383695630218891692)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20250202162804Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162804Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383698367597891694)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7383697987172891694)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:RP,10022::'
,p_icon_css_classes=>'fa-user-plus'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7383702715549891700)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7383698367597891694)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250202162804Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162804Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383703233532891700)
,p_event_id=>wwv_flow_imp.id(7383702715549891700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7383699157756891695)
,p_created_on=>wwv_flow_imp.dz('20250202162804Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162804Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(7383514105442891454)
,p_required_patch=>wwv_flow_imp.id(7383512150092891453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383569268794891531)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(7383569327037891531)
,p_region_id=>wwv_flow_imp.id(7383569268794891531)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7383571499628891533)
,p_chart_id=>wwv_flow_imp.id(7383569327037891531)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10010_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10010_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7383572004288891533)
,p_chart_id=>wwv_flow_imp.id(7383569327037891531)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7383572672884891534)
,p_chart_id=>wwv_flow_imp.id(7383569327037891531)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383569496425891531)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(7383569527568891531)
,p_region_id=>wwv_flow_imp.id(7383569496425891531)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7383576488856891536)
,p_chart_id=>wwv_flow_imp.id(7383569527568891531)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10010_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10010_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7383577093748891536)
,p_chart_id=>wwv_flow_imp.id(7383569527568891531)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7383577674296891537)
,p_chart_id=>wwv_flow_imp.id(7383569527568891531)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383569657095891532)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(7383569763022891532)
,p_region_id=>wwv_flow_imp.id(7383569657095891532)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7383573984835891535)
,p_chart_id=>wwv_flow_imp.id(7383569763022891532)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10010_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10010_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7383574538146891535)
,p_chart_id=>wwv_flow_imp.id(7383569763022891532)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(7383575116807891535)
,p_chart_id=>wwv_flow_imp.id(7383569763022891532)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7383569897140891532)
,p_name=>'Recent Errors'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10010_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10010_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383578796380891542)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383579159014891543)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7383569956346891532)
,p_name=>'Latest Activity'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10010_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10010_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383581994939891547)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383582327332891548)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383570069797891532)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383584652635891550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7383569268794891531)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10011:&APP_SESSION.::&DEBUG.:RP,10011::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383585014216891550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7383569496425891531)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10014:&APP_SESSION.::&DEBUG.:RP,10014::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383585453741891550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7383569657095891532)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10011:&APP_SESSION.::&DEBUG.:RP,10011::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383585870776891550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7383569897140891532)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10012:&APP_SESSION.::&DEBUG.:RP,10012::'
,p_icon_css_classes=>'fa-angle-right'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383570196506891532)
,p_name=>'P10010_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7383570069797891532)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7383570257928891532)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10010_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383587489306891552)
,p_event_id=>wwv_flow_imp.id(7383570257928891532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7383569268794891531)
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383587927116891553)
,p_event_id=>wwv_flow_imp.id(7383570257928891532)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7383569657095891532)
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383588453672891553)
,p_event_id=>wwv_flow_imp.id(7383570257928891532)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7383569496425891531)
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383588918062891553)
,p_event_id=>wwv_flow_imp.id(7383570257928891532)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7383569897140891532)
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383589424274891554)
,p_event_id=>wwv_flow_imp.id(7383570257928891532)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7383569956346891532)
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10011
begin
wwv_flow_imp_page.create_page(
 p_id=>10011
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(7383514105442891454)
,p_required_patch=>wwv_flow_imp.id(7383512150092891453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383622233343891605)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10011_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10011_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10011_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_page_header=>'Top Users'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7383623368752891605)
,p_name=>'Top Users'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GTMUZAMA@GMAIL.COM'
,p_internal_uid=>7383623368752891605
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383624053593891613)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383624449965891614)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383624828457891614)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383625284034891615)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383625648056891616)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383626068304891616)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383626494913891617)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383626865554891617)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7383629984299891623)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'73836300'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383622312487891605)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383622565854891605)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10011_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(7383622698928891605)
,p_region_id=>wwv_flow_imp.id(7383622565854891605)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(7383633538623891629)
,p_chart_id=>wwv_flow_imp.id(7383622698928891605)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10011_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10011_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383630899127891625)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7383622233343891605)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383622780320891605)
,p_name=>'P10011_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7383622312487891605)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(7383634080335891629)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383622976537891605)
,p_name=>'P10011_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7383622312487891605)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7383622495786891605)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10011_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383632195459891627)
,p_event_id=>wwv_flow_imp.id(7383622495786891605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7383622233343891605)
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383635504535891630)
,p_event_id=>wwv_flow_imp.id(7383622495786891605)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7383622233343891605)
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10012
begin
wwv_flow_imp_page.create_page(
 p_id=>10012
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(7383514105442891454)
,p_required_patch=>wwv_flow_imp.id(7383512150092891453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383615312379891597)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Error Log'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7383615923395891597)
,p_name=>'Application Error Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GTMUZAMA@GMAIL.COM'
,p_internal_uid=>7383615923395891597
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383616590323891599)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383616911100891600)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383617331517891600)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383617778651891600)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383618190731891601)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383618542390891601)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7383621090636891604)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'73836211'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383621939617891604)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7383615312379891597)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10013
begin
wwv_flow_imp_page.create_page(
 p_id=>10013
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(7383514105442891454)
,p_required_patch=>wwv_flow_imp.id(7383512150092891453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383601252038891573)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10013_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10013_TIMEFRAME'
,p_prn_page_header=>'Page Performance'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7383601886192891573)
,p_name=>'Page Performance'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GTMUZAMA@GMAIL.COM'
,p_internal_uid=>7383601886192891573
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383602593208891584)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383602982754891585)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383603304836891585)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383603799690891585)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383604197747891586)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383604589830891586)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383604964280891586)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383605315188891587)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383605747046891587)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383606109937891588)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383606581627891588)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383606955886891588)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383607342727891589)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383607778341891589)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7383612672487891593)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'73836127'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383601357382891573)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383613528236891594)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7383601252038891573)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383601183292891573)
,p_name=>'P10013_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7383601357382891573)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7383601443661891573)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10013_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383614861731891596)
,p_event_id=>wwv_flow_imp.id(7383601443661891573)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7383601252038891573)
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10014
begin
wwv_flow_imp_page.create_page(
 p_id=>10014
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(7383514105442891454)
,p_required_patch=>wwv_flow_imp.id(7383512150092891453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383589923287891554)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10014_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10014_TIMEFRAME'
,p_prn_page_header=>'Page Views'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7383590505819891554)
,p_name=>'Page Views'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GTMUZAMA@GMAIL.COM'
,p_internal_uid=>7383590505819891554
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383591254286891564)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383591641461891564)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383592019051891564)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383592460503891565)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383592864506891565)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383593269900891565)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383593668350891566)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383594083014891566)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383594441291891566)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383594807990891567)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7383598592572891570)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'73835986'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383590003707891554)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383599464620891571)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7383589923287891554)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383589800161891554)
,p_name=>'P10014_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7383590003707891554)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7383590150045891554)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10014_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383600798130891572)
,p_event_id=>wwv_flow_imp.id(7383590150045891554)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7383589923287891554)
,p_created_on=>wwv_flow_imp.dz('20250202162802Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162802Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10015
begin
wwv_flow_imp_page.create_page(
 p_id=>10015
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(7383514105442891454)
,p_required_patch=>wwv_flow_imp.id(7383512150092891453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383636039445891631)
,p_plug_name=>'Automations Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Automations Log'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7383636643680891631)
,p_name=>'Automations Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GTMUZAMA@GMAIL.COM'
,p_internal_uid=>7383636643680891631
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383637328702891634)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383637700888891634)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383638151297891634)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383638584576891635)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383638956621891635)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383639336470891635)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383639772224891636)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10016:&APP_SESSION.::&DEBUG.:RP,10016:P10016_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383640180874891636)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383640524373891637)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7383643995287891640)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'73836440'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383644876101891641)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7383636039445891631)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10016
begin
wwv_flow_imp_page.create_page(
 p_id=>10016
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7383514105442891454)
,p_required_patch=>wwv_flow_imp.id(7383512150092891453)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383645400979891641)
,p_plug_name=>'Automation Execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7383647837060891643)
,p_name=>'Messages'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10016_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383648224378891649)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383648678825891649)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383649032637891649)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383649405021891650)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383645830554891641)
,p_name=>'P10016_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7383645400979891641)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383646206975891642)
,p_name=>'P10016_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7383645400979891641)
,p_prompt=>'Automation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383646604804891642)
,p_name=>'P10016_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7383645400979891641)
,p_prompt=>'Started'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383647079663891642)
,p_name=>'P10016_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7383645400979891641)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7383647443882891643)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10016_AUTOMATION_NAME,',
'       :P10016_START_TIMESTAMP,',
'       :P10016_STATUS',
'  from apex_automation_log',
' where id = :P10016_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7383647443882891643
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7383514105442891454)
,p_required_patch=>wwv_flow_imp.id(7383512096694891453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383651600516891652)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383651742984891652)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383652929828891653)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7383651742984891652)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383653215697891653)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7383651742984891652)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7383654626572891654)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383654996903891654)
,p_name=>'P10020_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7383651600516891652)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7383653352567891653)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7383653215697891653)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383654084506891654)
,p_event_id=>wwv_flow_imp.id(7383653352567891653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7383655333789891655)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10020_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>7383655333789891655
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10021
begin
wwv_flow_imp_page.create_page(
 p_id=>10021
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(7383514105442891454)
,p_required_patch=>wwv_flow_imp.id(7383512096694891453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383655717004891655)
,p_plug_name=>'Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7383656508477891655)
,p_name=>'Manage User Access'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:RP:P10022_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'GTMUZAMA@GMAIL.COM'
,p_internal_uid=>7383656508477891655
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383657250108891658)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383657604668891658)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7383658023668891658)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7383659622320891660)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'73836597'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383660502306891661)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7383655717004891655)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383660907272891661)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7383655717004891655)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10023:&APP_SESSION.::&DEBUG.:10023::'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383661318629891661)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7383655717004891655)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&APP_SESSION.::&DEBUG.:10022::'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7383655887421891655)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7383655717004891655)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383661946155891662)
,p_event_id=>wwv_flow_imp.id(7383655887421891655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7383655717004891655)
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10022
begin
wwv_flow_imp_page.create_page(
 p_id=>10022
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7383514105442891454)
,p_required_patch=>wwv_flow_imp.id(7383512096694891453)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383662447303891662)
,p_plug_name=>'Form on Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383662592493891662)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383665373691891664)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7383662592493891662)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383665717320891664)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7383662592493891662)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383663560285891663)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7383662592493891662)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383664956619891664)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7383662592493891662)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383666028974891664)
,p_name=>'P10022_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7383662447303891662)
,p_item_source_plug_id=>wwv_flow_imp.id(7383662447303891662)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383666472435891665)
,p_name=>'P10022_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7383662447303891662)
,p_item_source_plug_id=>wwv_flow_imp.id(7383662447303891662)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383666872853891665)
,p_name=>'P10022_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7383662447303891662)
,p_item_source_plug_id=>wwv_flow_imp.id(7383662447303891662)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10022_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383667289745891665)
,p_name=>'P10022_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7383662447303891662)
,p_item_source_plug_id=>wwv_flow_imp.id(7383662447303891662)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(7383668581447891668)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10022_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10022_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7383663693779891663)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7383663560285891663)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383664305849891663)
,p_event_id=>wwv_flow_imp.id(7383663693779891663)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7383668843061891668)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(7383662447303891662)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7383668843061891668
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7383669290737891669)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7383662447303891662)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7383669290737891669
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7383669622056891669)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7383669622056891669
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10023
begin
wwv_flow_imp_page.create_page(
 p_id=>10023
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7383514105442891454)
,p_required_patch=>wwv_flow_imp.id(7383512096694891453)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383670059913891669)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383670168715891669)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383670270454891669)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7383670059913891669)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383672273866891670)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7383670059913891669)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(7383673582702891671)
,p_branch_action=>'f?p=&APP_ID.:10024:&APP_SESSION.::&DEBUG.:RP,10024::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(7383670270454891669)
,p_branch_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383673921623891671)
,p_name=>'P10023_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7383670168715891669)
,p_prompt=>'Roles'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383674346136891672)
,p_name=>'P10023_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7383670168715891669)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383674705173891672)
,p_name=>'P10023_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7383670168715891669)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(7383674819586891672)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7383672336536891670)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7383672273866891670)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383673029195891671)
,p_event_id=>wwv_flow_imp.id(7383672336536891670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7383675807712891673)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10023_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10023_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10023_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7383670270454891669)
,p_internal_uid=>7383675807712891673
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10024
begin
wwv_flow_imp_page.create_page(
 p_id=>10024
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(7383514105442891454)
,p_required_patch=>wwv_flow_imp.id(7383512096694891453)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383670363943891669)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383670464066891669)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7383670655126891669)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(7383670464066891669)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383677759972891677)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(7383678134569891677)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383670764068891669)
,p_plug_name=>'&P10024_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(7383670464066891669)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '&USERNAME!HTML.')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383670820007891669)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383681270696891680)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10024_VALID_COUNT),',
'           apex_escape.html(:P10024_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383681923555891681)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383670948806891669)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7383670363943891669)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383682607944891681)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7383670363943891669)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7383683043196891682)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7383670363943891669)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383684318253891682)
,p_name=>'P10024_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7383670820007891669)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10023_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383684710293891683)
,p_name=>'P10024_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7383670820007891669)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383685159064891683)
,p_name=>'P10024_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7383670820007891669)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7383683191750891682)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7383683043196891682)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7383683854281891682)
,p_event_id=>wwv_flow_imp.id(7383683191750891682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7383685520089891683)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10023_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(7383670948806891669)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>7383685520089891683
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7383685904601891684)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>7383685904601891684
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7383515438850891455)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(7383512726903891453)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383686817661891684)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(7383512726903891453)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'25'
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_last_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_last_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7383687565431891685)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10031_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7383687952348891685)
,p_name=>'P10031_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7383687565431891685)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20250202162803Z')
,p_updated_on=>wwv_flow_imp.dz('20250202162803Z')
,p_created_by=>'GTMUZAMA@GMAIL.COM'
,p_updated_by=>'GTMUZAMA@GMAIL.COM'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
