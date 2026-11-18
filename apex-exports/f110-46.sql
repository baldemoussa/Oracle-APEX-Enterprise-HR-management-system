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
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.0'
,p_default_workspace_id=>2334629225471735
,p_default_application_id=>110
,p_default_id_offset=>0
,p_default_owner=>'HR'
);
end;
/
 
prompt APPLICATION 110 - Enterprise HR Management System
--
-- Application Export:
--   Application:     110
--   Name:            Enterprise HR Management System
--   Exported By:     HR
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     33
--       Items:                   57
--       Validations:              1
--       Processes:               24
--       Regions:                 91
--       Buttons:                 44
--       Dynamic Actions:         11
--     Shared Components:
--       Logic:
--         App Settings:           1
--         Build Options:          6
--       Navigation:
--         Lists:                  5
--         Breadcrumbs:            1
--           Entries:             12
--       Security:
--         Authentication:         1
--         Authorization:          3
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  10
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Excluded
--   Version:         26.2.0
--   Instance ID:     1144025592197682
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
,p_owner=>nvl(wwv_flow_application_install.get_schema,'HR')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Enterprise HR Management System')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'ENTERPRISE-HR-MANAGEMENT-SYSTEM')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'4943D224016CFDF330B736345B3907B4616FB4653150A38B1D1025535817BBF8'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(5565032301564094)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Enterprise HR Management System'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_imp.id(5571242071564741)
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Enterprise HR Management System'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461362204908
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>5857050723579044
,p_ai_remote_server_id=>4935329377103760
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&SESSION.::&DEBUG.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(5565956225564136)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2471166859590295591
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(5566606273564351)
,p_nav_bar_list_template_id=>2850970698196720012
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_110_push_notifications_credentials
begin
wwv_imp_workspace.create_credential(
 p_id=>5857050723579044
,p_name=>'App 110 Push Notifications Credentials'
,p_static_id=>'app-110-push-notifications-credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --workspace/credentials/credentials_for_gemini_learning
begin
wwv_imp_workspace.create_credential(
 p_id=>4934944297103756
,p_name=>'Credentials for gemini_learning'
,p_static_id=>'credentials-for-gemini-learning'
,p_authentication_type=>'HTTP_HEADER'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://generativelanguage.googleapis.com/v1',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/remote_servers/gemini_learning
begin
wwv_imp_workspace.create_remote_server(
 p_id=>4935329377103760
,p_name=>'Gemini_learning'
,p_static_id=>'gemini-learning'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('gemini-learning'),'https://generativelanguage.googleapis.com/v1')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('gemini-learning'),'')
,p_server_type=>'GENERATIVE_AI'
,p_credential_id=>4934944297103756
,p_ai_provider_type=>'GEMINI'
,p_ai_provider_api=>'INTERACTIONS'
,p_ai_is_builder_service=>true
,p_ai_is_default_for_new_apps=>true
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('gemini-learning'),'gemini-3.6-flash')
,p_ai_oci_compartment_id=>nvl(wwv_flow_application_install.get_remote_server_ai_oci_comp('gemini-learning'),'')
,p_ai_oci_serving_mode=>nvl(wwv_flow_application_install.get_remote_server_ai_oci_srvmd('gemini-learning'),'')
,p_ai_oci_endpoint_id=>nvl(wwv_flow_application_install.get_remote_server_ai_oci_endpt('gemini-learning'),'')
,p_ai_oci_project_id=>nvl(wwv_flow_application_install.get_remote_server_ai_oci_proj('gemini-learning'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('gemini-learning'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('gemini-learning'),'')
,p_ai_max_tokens=>nvl(wwv_flow_application_install.get_remote_server_ai_maxtokens('gemini-learning'),'')
,p_prompt_on_install=>false
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5561297538563900)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5563969849564040)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5561483341563909)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5561624543563937)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5563757593564005)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5563109118563981)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5564263338564050)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5564528150564054)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5562837017563975)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5561036413563678)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5563477927563995)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG',
  'auto_ir_reset_button', 'Y')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5561958835563953)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5562564537563966)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(5562206385563961)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5842752223578671)
,p_name=>'Access Control'
,p_static_id=>'access-control'
,p_required_patch=>wwv_flow_imp.id(5569099372564563)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5843745655578684)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_static_id=>'access-control'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5843293778578677)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_static_id=>'users'
,p_list_item_link_target=>'f?p=&APP_ID.:10021:&SESSION.::&DEBUG.:RP'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5839544715578592)
,p_name=>'Activity Reports'
,p_static_id=>'activity-reports'
,p_required_patch=>wwv_flow_imp.id(5569188090564563)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5840946770578625)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_static_id=>'application-error-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10012:&SESSION.::&DEBUG.:10012'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5842452709578666)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_static_id=>'automations-log'
,p_list_item_link_target=>'f?p=&APP_ID.:10015:&SESSION.::&DEBUG.:10015,RR'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5840012795578605)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5841430790578645)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_static_id=>'page-performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10013:&SESSION.::&DEBUG.:10013'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5841971459578655)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_static_id=>'page-views'
,p_list_item_link_target=>'f?p=&APP_ID.:10014:&SESSION.::&DEBUG.:10014,RR'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5840417628578612)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_static_id=>'top-users'
,p_list_item_link_target=>'f?p=&APP_ID.:10011:&SESSION.::&DEBUG.:10011'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5566606273564351)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5834741944578529)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'About'
,p_static_id=>'about'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(5569706651564564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5836307980578544)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'About Page'
,p_static_id=>'about-page'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&SESSION.::&DEBUG.:10030'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(5834741944578529)
,p_required_patch=>wwv_flow_imp.id(5569706651564564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5834406604578526)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_static_id=>'action-a-pwa-install'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5836652799578546)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5835830217578541)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(5834741944578529)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5837203411578553)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'---'
,p_static_id=>'list_item-2'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(5836652799578546)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5835363984578535)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Page Help'
,p_static_id=>'page-help'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&SESSION.::&DEBUG.::P10031_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(5834741944578529)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(5569706651564564)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5856719944579039)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_static_id=>'settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(5836652799578546)
,p_required_patch=>wwv_flow_imp.id(5850237015578831)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5837791254578556)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(5836652799578546)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5565956225564136)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5838305476578563)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administration'
,p_static_id=>'administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(5571120301564741)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5633957892570866)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Career History'
,p_static_id=>'career-history'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-history'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5660659032574068)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Centralized Directory'
,p_static_id=>'centralized-directory'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-address-card'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6559458871620571)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Department Teams'
,p_static_id=>'department-teams'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-users'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5606121717570186)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Departments Overview'
,p_static_id=>'departments-overview'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-sitemap'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5584409363565836)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Employee Directory'
,p_static_id=>'employee-directory'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-address-book'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5579226403565411)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Executive Overview'
,p_static_id=>'executive-overview'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-area-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5620177607570602)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Job Roles'
,p_static_id=>'job-roles'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-briefcase'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5639156110571068)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Office Locations'
,p_static_id=>'office-locations'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-building'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6369261473209280)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Office Map'
,p_static_id=>'office-map'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-map-marker'
,p_parent_list_item_id=>wwv_flow_imp.id(5639156110571068)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(5853847345578921)
,p_name=>'User Settings'
,p_static_id=>'user-settings'
,p_required_patch=>wwv_flow_imp.id(5850237015578831)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5854388307578934)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_static_id=>'push-notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&SESSION.::&DEBUG.'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(5849918703578828)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D797055D779FF9DFB162D082D08212156597A881D813036981AECD80EE3D68CD3A69E749A1604F538344EEA749AC98C3B69DC4C9A76DAA6';
wwv_flow_imp.g_varchar2_table(2) := '13C7AD1B77620B67F24F124FEC86C64EE2A5D84930C6604906CC2216091068DF97B7DF7CDF7DBA208124DEBBF7BEE5BE77DEDCEF9E7BCF3DDF39DFF97D3F9DF5BE2705F22311308180249009F0A42A20092459600A01492053F049654920C90153084802';
wwv_flow_imp.g_varchar2_table(3) := '99824F2A4B02490E9842C030814C952A95D3060149A0B47165722A2209941CDCD3A65449A0B47165722A2209941CDCD3A65449A0B47165722A2209941CDCD3A6D4C413280AE8AA5F3C3DFBCEFA8B65B5FB9B2BD7BF78665DCD4BE7B6D4D49F7D706D7DF3';
wwv_flow_imp.g_varchar2_table(4) := '2399205C57AE33D79D31602C189328A04B7892E4124855456DFD99E504D6AE9AFDCDCFAFAB6F3E5A53DFECCF511C830104AF85549C5315A51142FD1D207EAD003FCF04E1BA729DB9EE8C0163C1983036E318FD1763C6D8813044123FE48FC495BEFEA5E6';
wwv_flow_imp.g_varchar2_table(5) := '92F5FB9B771210FF54B3FFDC9B247D2128A708ACFD50B14F00B5648D8B441E5323E01AC7E8AF1933C68E312479B3E6A5B3DFE2D679D50F4ECE995A353EB1892310FDA5A8C01655C5D7A82A4FD35FCE03141690C8C31C02051A9642FC3D39F36B4EC5B585';
wwv_flow_imp.g_varchar2_table(6) := 'EE8967E6328D569BCA8C36A9B174B52F1C75D5D49F7B9CFE4A4E43E035108948E4111F04EE11421CA0E1C0296AE9F732F6F129E646AE7125D0BA97CF2C08BA0BDE07D4FFA1229791C8232108886A6AE97F10CA2A38C4C386781619370291E12B4558F980';
wwv_flow_imp.g_varchar2_table(7) := 'DA521ED7C4B30E32EFE91050B15115787FDDFEE655D325311B1F1702AD7BF1FC5632FC1019B780C4A243666310814AA1E277F407BDCDA0FE8C6A9613880C5D2994F0AFA8543940261052E428A03FE8D7E3D112594AA0DA17AEE692A13F25D07249E4915A';
wwv_flow_imp.g_varchar2_table(8) := '08E4524BF463F6919566594AA0907BF879326E25893C52138155E33EB2CC3ACB0854537F76372076417E521C01B12BE22B6BCCB484409B7F72390710FF01F9B10902E23B5675659610C83B32C62D4F914DD093660273C2EEE1BFB40208F3045255415B14';
wwv_flow_imp.g_varchar2_table(9) := '4F59614C9CF290D94E8100B9EDCB566C799826D086FDE73F0D886AC88FBD10105811F19D39B34D1348852A5B1F733E489AB615BE3345A0EDF517B355E0C1A421200B368500FB2E3201329E8D2902F5237837156D2A0FD29747F21050C646BC779929DE94';
wwv_flow_imp.g_varchar2_table(10) := 'F369A3940964A67CA99B6404CCFAD01481A80994044A3201CC166FD687C60944F340327E2B49DA1E195231538D806102DDB9BFA594002E269187BD1128DDF4F215C37E344C20BF081A2ED4DE78A79FF53E75ACCC68AD0C1348A861F9CA8651D4534CCF8C';
wwv_flow_imp.g_varchar2_table(11) := '2F4D104891044A3122183547A8C67D699C4042E4183558EAA518028AE2346A9161028520BB30A3A0A79A9E505597519B0C134808876C81A643DD66F1661A03C3048209D6C6155F358CD0E82002FD1DF075B6C2DFDD86E06037C2BEB1B8166BE7CCCD3406';
wwv_flow_imp.g_varchar2_table(12) := '8609A4AA6A30D5400B7B47E06D3B47C4B94404EA22220D2138DC077F6F3BBCD7CEC3DF75056A38946A66DBDA1EC3044AB55A07077BE06DBF8870D08FCA85F371DF8655F8D3ED9BF0C896F5D8B4B20AF979B9088EF413C19AA10603A966BE6DED490B0285';
wwv_flow_imp.g_varchar2_table(13) := '033E6A65AE21273B0B0F6FAEC1E6E54BB060CE6C64391514E4666159F95C3C72F75AACF52C851A0A52B776252A8785035EB04495384313A50581FC5D9735F76D59EDC19C59D9DAF5CD2741116B9794617EC95C84A8AB0B0EF552CCAD078F957CD72E60B4';
wwv_flow_imp.g_varchar2_table(14) := 'E504B556E734E16B8EE367B76A64768CED0914F68D22ECF7A2B4B808F30BF36EEBCD0D9E455A9AE0509F164E3C0569B0EDA5B15288F29C9B9F878DD58BB171D96214D335C7F1B3207595137532FDDAF604E22E899D38879CCCE1EDA490BA3445081A4C4F';
wwv_flow_imp.g_varchar2_table(15) := '9E03303178B09D9BE5C6EE4F6DC0530FD7E2D1F51578744305BE42D79FDFBE1E39F4CCDF7B8D66753DB72BC6E073FBA9D99E40088735D467D1F847BBB8CD89BBB2D9B3728109B33195C65081BE0E1A43B9F1E48E8DA82A997D4B2ECBCBF2B5674C304EAB';
wwv_flow_imp.g_varchar2_table(16) := 'D260FD96441322C2FE310487FB896CDDD4650E1361D373F6677B02095796E6B6A1D1E8D679C22A304C698533A2C7CA01EA96545A3FFAECE655C8CF7171D4945240CF76DEB5029C9675A64A14A4B1D5D8A553F05E3DAF0DD6B955F3B5B780E3FCDD57906E';
wwv_flow_imp.g_varchar2_table(17) := 'CB08B62790E28E10A16F70642A7FDE123730EA43885A2D252BE7FA331E4715E4E5A2BA34FF7ADC7417ABCB0B9197930D5E739A948608E8A365047FCF55B8848A87D757E2994737E1B93FDF8ABA7B57636171BED62279DBCEDEAA3B29237BDDD89E40100A';
wwv_flow_imp.g_varchar2_table(18) := '9CB3E7A0ABAF1F6DBD4398E9438D0F1ACE45666CCED9455A521E43F1207CE1DCE87F8D666149A136709FD89AF8A90BE4D9DDB6154BF0FA971EC0BFFFE1723CB6BA049FAA28C057EF5D8237BEF00778FA918D7042858F668D137561E38F6263DBAF9BEE2E';
wwv_flow_imp.g_varchar2_table(19) := '2A039C2EFCA6E9342E74F65D8F9F781108A978EFC4055CEDEA86ABA0048A5B6F819856801A0926AA4C7B2D7820C54FC79542DE611AEBF4600911EB7B9F5985F2BC5BBB4107E97C7E5D299E7CB0465B8B0A504BC559D85D14BB5740B35F51903577218823';
wwv_flow_imp.g_varchar2_table(20) := '38F4F1198D28E7DA7B71AD7F1897BB07F0C9E52E1C78BF0997DB3BE1C89E055751A9A6C627E17041280E5CEB1DE4DBA8A48DF2140E2758582138D8CB01BEB9B3062E4568D7D39DF6D6CEC7626AED822303488756283D0844DE528818D90B97C139AB0097';
wwv_flow_imp.g_varchar2_table(21) := '8828874F9CC5DB474FE0DDC653F8E8CC798CF90370179723ABAC82524F3E783CD4373482D3EDB727D1998E410C8E8C510B7663C19267712E8782DAB25993339EE28EF97577D57CED09EB6917E64F49CB216D08C408724BE22E59849CC52B9055BA14EE39';
wwv_flow_imp.g_varchar2_table(22) := 'F3E1A69629BBBC4A8BE3B112A7BB599C0573B5A8570F9FC4906FFA7DB2416F00AF1C3AA9A5E56E50BBA0934A7B6B8BA8556172D0ED6D8F8AB9795A1AD6D32E6C7C4A2B02E97E60223972F2E0CC2F8633AF108AFB466BA1A799183AB2F3C0DDDA88D78FFF';
wwv_flow_imp.g_varchar2_table(23) := 'FCE5313477DE3A183FD7358CE7DE388A319F1F3CE6E2164FCF43B8DC5A57C94B047ADC4C616B4F64C6C87A33A5B3C333FB1388A6E4A1B161EDF58D407F2785B797E0002DEE8D124968EAAD3B895B1477F1028CFA8278F99D8FF03D22D2CF1B5BF1DA4717';
wwv_flow_imp.g_varchar2_table(24) := 'F1EC1BC7B0FFED63F00642E0347A8BA5EB2A34200F84C2B8D0EFD3A3660C4F5EEDD19EB39E7661E3937D0944CEE715E1D14B9FC0D7D142C4E920E98C4AFC7DEDE097CDC6AE9C418806B3BAFF786A9FBDC00317B55CDD23011C39DD82A3672FA16734A0C5';
wwv_flow_imp.g_varchar2_table(25) := 'F1334EA3A7D7433DAEFEC8253D6ADAB0B17D14275A3BA9652C9A368D9D1ED89640BE8E560406BA503EAF189B5757E3C13BD7E0A14D6BA392ED1B566245C522B89D0A784D263861639567562E1A3B31597216562367D172F035C7F1B3A99CAB64E512210A';
wwv_flow_imp.g_varchar2_table(26) := 'F1EA8767F1C3C68EA9926871970703F89B9F1C0168D6C85DA61669F3932D0914A4ED829077042B2B16E3FEB51E549615A1B46016E6E5E746250BE7E4A3B67201B6AF5B010120402DD254536A416B4BD39186D4261D2E5A8BE2B4FFF27F47F1A5D74EE244';
wwv_flow_imp.g_varchar2_table(27) := '9717FDBE107CB4B6D032E0C78F9A3AB1F3F9B7D0452BE6AEA2F9D79700266562C31B5B1288BB1D4508D454969B82BC9808C7AF81307978AF6AB4E584F61E5034A1B7AD1901DA99675D3682C9C32D152F23BC7DA2058FBDF036B6FCDB2FB1FE9F5FC7C3CF';
wwv_flow_imp.g_varchar2_table(28) := 'BD896F1FF810015A87CE2EBB037A97C77AC916B3E5DB924061DF98F68AAA19E387684AFEDA6F1BD1DED307DE615F525A8CCAF292A864D1BC3900EDC6F386AA97F7B6FC5ECD0F3CFB73D33242F6FC4AB8E7948167808EDCD9701596206BDE62EA0AABA064';
wwv_flow_imp.g_varchar2_table(29) := 'E76A69D3E5A4D8B122BC1BEE70380C9B1EA62D88771A4E21140AE2CFEE5D87A73FB3198FDFB79A363D5746254FDCBF06FFF0D9ADD851BB9CB625A89BEA6C9D640B2F4C3AF3E76A6B5059F39610814AE1C8CD07842DE1C64C9FF4ABD14CB51D7F7696A6D1';
wwv_flow_imp.g_varchar2_table(30) := '4323A344806AAC2A2F1C8F8D2D703A146CF594624D453978419077E1A35D4608F47781971EF47799622B39B5526724813AFB225B169ED20253DEE005C7CE81C8A2200FEC0351AE4369DF59EB68012F41B09E292392AC9C91041AF5F934D80BB29D5A68E4';
wwv_flow_imp.g_varchar2_table(31) := '74BA7D405B70EC22326E5BB1187F75DF1A7CF9A1F551C9176947FED18D1E14CFCE85D672F5B61B312125743292402A8D81187D210407318B8F56A45F39F489F6B5A11FEDDD8EFFFE9335F8DB7B16E30B9BCAA3922FDEB500DFDEB10C6FECDB86BB3D0B10';
wwv_flow_imp.g_varchar2_table(32) := '18ECB6ED4B661949A098197393C2F1AB7DF0FAFDD8F7400D6ACA8CCFAAF2DC0AFE75E71A2D772691766197D3B89D9949A0185E1E1BC76952D03B1C99B6D794D3CC6AD293D86FE6E638B42F41F25B91B16B275F233309641277DE54E52CF2B38C2F25B0BE';
wwv_flow_imp.g_varchar2_table(33) := '2E457939DA4C4EBFB753280964276FA5A0AD924029E8143B99644B02095AD11DF3FA70BCB5E3BAF48E44C62551816F6CF21555D69996C8960472E415629408D4D47C11BAF40E45F7C5C24C7370BCEB6B4B02B9F9E578DAB47415CE036F5646403239B58A';
wwv_flow_imp.g_varchar2_table(34) := '6422CF3122103B81622C205EC91DB30A6893920894333BF62224D762C76C1A0DDB12E8467DF4018D1EDE7832EDD578D2FAF73E812E87CE774E9B5C3E981E81342090DE9CE8E1F495BDFE643CE9F9AB5DD0A5478EA1AEC313CB451A102896EA4E4E9BBB74';
wwv_flow_imp.g_varchar2_table(35) := '35B2CB2B2747CABB98104803028DF747D0C328EA1F43D299723BD9318263D7463539DD13FD3242F75848D3D17547BCD37F9971A6F253E1591A1068BC3F821E46016B0C4967CAEDEB3F3B8CBF78F1FF35F9C6EBC7674A3AE9D9BB17FB341D5DF762671FF8';
wwv_flow_imp.g_varchar2_table(36) := '8B909312D9E4260D08A437277A1805F231249D2937FEAA342F25CC9466EA671103780982F5DD731720AB64F1D449533C3681048A17127A73A28751941343D29972E36F573001664A33F5B388010E5A82607D675E11A0D8D315F6B47A6AAFC8D824202009';
wwv_flow_imp.g_varchar2_table(37) := '9404D0D3A94849A074F26612EA22099404D0D3A94849A074F26612EA627F028D7FB36268D48BCEC1D1A82410B2EA47BF854197E97A7A68309B1450B303816684C9913D4B7B7EF2C225FCFAC8C751C9E0F088450B7791E9B866404C275D4F0F63524EA9C4';
wwv_flow_imp.g_varchar2_table(38) := 'B6279070BA91C33F0A55540A5E53894622EF13D973E12EA5D843C62824B63F842B0BFC1375D19087D3F00AB25D17EE52CD5969412053A08A0804577A0670F0CCB5A8847F279ACB14E3BA7C9DA912412F536B4FF556A8F552B272D1D6D587B71ACE46256D';
wwv_flow_imp.g_varchar2_table(39) := 'DDB4F949632F6EF9280B03873E78D6430359A4884AC61388FD903DFF0EEDBDA0ECB20A4425E55553FE6039E79569220934EE71FEC95D855A95A8C49D3DAE6534D0675F7A68349FE4EBA535811205AF42843ADEDA8995DFFA4554F2F59F7DA099A6B873B4';
wwv_flow_imp.g_varchar2_table(40) := 'D0CE2749200BBCC7EFF3F08F6B3AA8058B4A72F2C04B09FC537816149FD42C8C1348A8A349B53C850AE796C45DB2481B17F13F73B9AD942E85B69490227550D590E16F651A2690038A24508A10C0AC19667CA9182D5C5555C3AC355AA6D48B0F02667C69';
wwv_flow_imp.g_varchar2_table(41) := '9C40222C5BA0F8F833E1B9AA267C698240B20B4BB8A7E354A02A8CFBD23081C2E134EEC2E2E4A854CDD68C2F0D13285BB8641796AA8C88D12E33BE344CA0B0BFA74705A2FF3A668C9592C9138300FB907D69B434C3043AF6C4C6006D054696548D962EF5';
wwv_flow_imp.g_varchar2_table(42) := '928E00FB907D69D410C3041A2FF0E0782803FB2260CA879240F675BC5596278F4085701EE6C55B4859000002F1494441543ED4AA9AC87C128B00FB8E7D68A654532DD0C1BA0A2F65F0BF660C482F5D7BD5867DC73E346335E561461DA041D877213FB644';
wwv_flow_imp.g_varchar2_table(43) := 'C00ADF9926D047759EC3849E9C8D1108363B3E18F79D29B34D13884B1710B21562206C24C2229F5942A082D6CBAF505F76C546F865BAA96D9ACF2C40C112021D7CE6BE20C278D2027B64160940200CECD37C664159961088ED68DCE3A1D9987896AFA5A4';
wwv_flow_imp.g_varchar2_table(44) := '3202E2D98FEB3C07ACB2D03202B1410E7FFF5701F543BE96121302894A7C30E223EB8AB39440913D95D063645E3F893C520B818E60D0F1B9888FAC33CC5202B1598D752B5A5405F703A205F2932A08B48A70F8D3271EBFA3C36A832C27101BD8B4CBD3E0';
wwv_flow_imp.g_varchar2_table(45) := '56021B21C45B7C2F25790808E01DB712AC6DD85BDD140F2BE2422036F4C8AE153D9EDCCA1D2AC4F7F95E4AE21150557CA76A56D543EC8B78951E3702B1C13F7D4C849AEAAAF609A8FBE8DE4F228FC42030A6AAE2734D7B3C7FC73E8867917125906E7843';
wwv_flow_imp.g_varchar2_table(46) := 'DDB2EFAB4AF80E21F00D6A522FEBF132B41801015ECC7D86B0F634EDA9FAB1C5B94F995D4208C42537EDAA6E6BD8EDF92635A915AA22FE9888F42B8A5749E4610201520D11960720D43FF2E4562D6DACF3FC23634DF10939124620BD36DCA436EDAA7AB5';
wwv_flow_imp.g_varchar2_table(47) := 'A1CEB3C3E1578A8450B7D1DAD153242F1310C72110D4D3CAF02604081B0D23153FA4275F112AB68F85434584E5CEC6DDCB7EC1D8527C428F84136862ED8E3D5139D0B07BD97B8D75CB9E25D94D40AC6DDCED711128F92E38E73B04AA68FA590355DC03A8';
wwv_flow_imp.g_varchar2_table(48) := '0FD112FCCE4C10AE2BD799EBCE1830168C0963A361B4C7B38B5A9AEF36ECF1BC7B66EFF2A1899826FA3AA9049AAEB20CCA877515EDC7767BCEF3F4B3714FD52122D89BBC049F09C275E53A73DD1903C68231990EAF64C6A724819209882C3B3604248162';
wwv_flow_imp.g_varchar2_table(49) := 'C34BA6BE090149A09B0091B7B1212009141B5EE993DAA29A4802590464A666230994A99EB7A8DE9240160199A9D9480265AAE72DAAB724904540666A36924099EA798BEA2D096411909993CDE49A4A024DC643DEC5888024508C80C9E49311F83D000000';
wwv_flow_imp.g_varchar2_table(50) := 'FFFF90E3EC7E000000064944415403009D3D5299D4A530E20000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5568067548564454)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D698C1CC7757E33B3F7C5E5AEF620B94B7149D1BB24C570799A8A0E529665913682C4961219A01CC70E72490860C7098200CE3FC7401021';
wwv_flow_imp.g_varchar2_table(2) := '48A228B10DC48A6105B924C13F6CCB860D9134254B364DD1120F91229726B93CF6D29EE45E73B95E2FBBBA399CD9E999E9EEEDAAFE16ACA9D775BC7AF5BDFABAABDFF434A3BD2F9C4B230183B0AE8128E10F088418011020C4CEC7D4894000AC82502300';
wwv_flow_imp.g_varchar2_table(3) := '0284DAFD987C880900E703016C81B006428E00AE00215F00619F3E0810F61510F2F98300215F00619F3E0810C61580394B0440000905843022000284D1EB98B3440004905040082302204018BD8E394B0440000905843020903947102013111C870A0110';
wwv_flow_imp.g_varchar2_table(4) := '2054EEC664331100013211C171A810000142E56E4C361301102013111C870A81101120547EC5641D22000238040ACDF4440004D0D3AF9895430440008740A1999E0880007AFA15B372880008E01028A59BC1F89C08800039A1414518100001C2E065CC31';
wwv_flow_imp.g_varchar2_table(5) := '270220404E6850110604408030781973CC89000890131A54E88040BE398000F91042BDD60880005ABB1793CB870008900F21D46B8D0008A0B57B31B97C088000F91042BDD608684C00ADFD86C9B9840008E0129050A3260220809A7E83D52E210002B804';
wwv_flow_imp.g_varchar2_table(6) := '24D4A8890008A0A6DF60B54B0880002E0119283530C63102208063A8D050470440001DBD8A3939460004700C151AEA880008A0A3573127C70880008EA14243151028D4C6D013209D4A51E2C618CD0D5DA2D9ABE768E6F26923B1CC655C47A24DA1C0A2BD';
wwv_flow_imp.g_varchar2_table(7) := '1A08849600E96482E2A3D769B6FF0CCD8F5CA5E4F414A5E273C484E0C4329771DD8C68131F1D20EEA3865B61A55304424980E4CC9438DBBF4FF1C90F289D4EE5C58ADBC42747449F73949CB991B73D1AA88340E80890100B796EF012F159DE74D3F2867A';
wwv_flow_imp.g_varchar2_table(8) := 'BA77DD6ADAB375233DB167A79158DE24CAB88E6EFDA553499A1BBC4809419C5B45C8144720540448DE1CA779B195317D168B46697BCF3AFAF8AE4DD4DBB5923A9B1BA8AA3C662496B78A32AEDBDABD9662510BAA79B1754ADE9C30D520571801CBAB0A4F';
wwv_flow_imp.g_varchar2_table(9) := '62C1F4C53F794F3F377C45365A56574BFBEFDB421B3A5A28224BEF14B86E53672BEDDFBD85B88FD9626EB89FD2E29EC13C46AE2602A121407C6C507A281A89D0C3BDDDD4585D29CBF2098D3595461FEE6BB68D8F0F99A2A39CB75D1C55E2E81247991071';
wwv_flow_imp.g_varchar2_table(10) := '72049BA78D4241008EDE24A7272590DBC4B6A7AEAA421E3B15B8CFB69EB5B279426C83F8BE4016E410787C449C7280B3C4C5A120807DBFDEDAD448DDABEE2A1AF6EE552DD4D6DC28FBDB75CB429B8088930D8C008AE12080EDECDFBD7AC5A27BFE7C3EE2';
wwv_flow_imp.g_varchar2_table(11) := '7B82F51DEDB2D9620448648938AD685E467B36AFA3037B7BE96F3E79BF91587E4894B5372D937AF9CA82889384C33321140448CDCF4800EBAB2BA55CAC505765E948CDCF665593CC883895C5A2B47FC7067AFAA35BE8D14D1DB4A17D19D556961989E58F';
wwv_flow_imp.g_varchar2_table(12) := '89B2671EDD428F6DEF293CE294D502143A41201404E09B4F138CFA22F6FE665F33AFABB6EE1FF84C6D969B7966C4A9B5B19E9EDEB793EEBFA795229188D9EC8E3C1289D083EBDBE899FD3BA945F4311B20E26422E17E1E0A02446C31FC442A5D328A699B';
wwv_flow_imp.g_varchar2_table(13) := '0ABB6E53B13DE2148B46E8330FDD4BADF5556675DE9CDBFEBEE8C37DCDC688389948B89B878300B13289DAF84D6B3B240B0B14C66E4CCB1E9158B99459E0888F3DE2B44F6C7B96D758570C6EE324711FDE0E996D1171329170370F0701CAADB3EFE894B5';
wwv_flow_imp.g_varchar2_table(14) := '788B8572F48645A26885A59BF525456894734E6BDA9AE9BEAE16168B4ABFB9B695D6B437CBBE76DDB2D02620E26403C3A1180A02C4AAEB241CE7AF0C50CABE879135CE04EEDBD77F5D368E56D54A9905FBD97F77770751EE2D3FE5FD137D77AD5F259B2D';
wwv_flow_imp.g_varchar2_table(15) := '46806C11A71E11EEFDE38737D373071EA4D7BFB4CF48CF1D7880FE489475AFB442C17C1FA36AC4498253A4100E02D816E9D4CD693A7169A048B888DEBD789DA6A6AD2B809D5CACD41E716AAAB5A2455C574C6A12DF409BFD9C469C2ACA62F4D79FD8412F';
wwv_flow_imp.g_varchar2_table(16) := 'FDC187E90BF7AFA647BA1AA8A93A66A447BA96D11745D9CB9FFB30FDE5C7B75379CC5A02617CC6C99ABD89B28679A4BC9262D5F5726627FB2ED1F8CC9C3C762A4C4CCFD1A90B9765F3584D3D45CA2AE4310BF6885373EDED755C5F68B29388CFD499FD33';
wwv_flow_imp.g_varchar2_table(17) := '234EEBDA9BE8A53F79983EBBB58DA2E20A92D9DE3CE6BACF6F6BA797FFF423B4B66DB9594C618B38858200ECDD8AE6159C1989774047DE799FC6C582360A1C7C70DBC3EF9E25EECBCD2391285534AD64F1B614B1459CE2495BB8E8B656CE0F78CB65B6B6';
wwv_flow_imp.g_varchar2_table(18) := 'EB36CBEC11A7727136FFF72777D03DCB2BCDEABC39B7FDDAA777DE76252834E29477900037080D01F84C5DD9D2295D3171E326BDFAD63B74FACA302DB64CB9EE54FF90D176D216FDA968E9A048D9ED1120561E895911A781C9EC5F92713BA7E9FA84B5DD';
wwv_flow_imp.g_varchar2_table(19) := '8AE48938FD95D8D274D4DF6953BEB1B8CF97F66F93CD9C469C64078585D010807D14AB5D26CEDAD69520994AD1DB67FAE8FB3F3F45BFFCD535BA3A3A49B389244DCF27E88A90B9EC7BA2EEF8D90BC46D5907A78AA61514AB6960F18E14B1459CAE8FDFBC';
wwv_flow_imp.g_varchar2_table(20) := 'A3BED0826B361D8B459CB6AF5D4907B6B416AA5EB6FF4C6F1BED58675DD116BBE1969D341014264071E89735345365DBDD64DF4E8C4D4ED1C9BECB74F0EDD3F4D2A1A3F4CA4F7E418784CC65E3A2CE1C29128D89BE6B8875508EBF982DE274F4FD7E411C';
wwv_flow_imp.g_varchar2_table(21) := 'BE86E4689CA73829BEB43B76CEFA0DC39D1127EB47394FEDEAA2481E7D8B5573DF27B7AF914D400009857E424CDC1057AD5C4F31DB62CD374BBEE1AD5A95BF4FCC16711A9DBA4987CE5821D37C6364D6BFF6DE55621D6679A6BDF6A85067E3EDDF47987D';
wwv_flow_imp.g_varchar2_table(22) := '0AC9ED3AECBA0BD1A15ADBD05D014C0745C4FEBDB26D0D55B577517963AB20433D4545B428128D1A5707966382285C57B5622D55B68AAB46CCDADF9B7A32F3CC88D3E113E76968AAF07B8161D1E7C8C90B523D1390EF63648110EC11A7BB97951E71EA6C';
wwv_flow_imp.g_varchar2_table(23) := 'B074648B388921B5FB17D56E46054E88B715BCC8795BC467F8EAD51B8913CB5CC675D1CA9A82B4DA234E1CC5F9EF374E17448241B1F8FFEBF553F20BBB888388D36CA2F8AD963939B1E33245E324200F3416424F002F7CCB676A7BC469787C8A9E7FF528';
wwv_flow_imp.g_varchar2_table(24) := 'BD7E6E508451732FD4B488B11E116DFEEDD5A3343261BD7EA5C241C4E9EC88152D2A764EEF8D588F8964469C8AD519F47E2080471ECA1671FAC1B133F4FC8FDFA11F9DBA426707278D68D3D46C9CCE0C4C1A65FFFAA377E887A24D5244A74CB3B2469C6E';
wwv_flow_imp.g_varchar2_table(25) := '55DA234EEF0D5984B9555D70767AD0D29119712A5899221DB42700DFCC252646686EE832CDF49FA5E98B275D4933FD67686EE057C6DBE552B3D9C39D1C2DE26D14DF5798EB61E083093A7CA28FBE7DF0387DF59537E8EFBFF3537AF1D071A36C70D48AEA';
wwv_flow_imp.g_varchar2_table(26) := '440A8C38FDDFD1F3345FC2176F71B1FF79F9689F6926F1D6501E682C684D00FE9674F69A58186303C40FA9A59371D75C693CF62C167E7CF2039A1544E0B73C647B6B1CDF48FB1171EA1F99A0AFFFFC6AD1F37BFECD7EEA17E43415C40A8890997D54CCB5';
wwv_flow_imp.g_varchar2_table(27) := '24003F1FC30B3F3E31EC9B4F78CC797195C9763588F81471FAC6C177E9FC58E1CF38F5893EFF71E8A4C42A5BC449566A266849006321DA7EABBBAE6305EDDDB6D178E5E1531FDD4D6EA4DF7B7817EDDFDD4B1BBBACC72BD2E994D86A5DA274629EB2FDF1';
wwv_flow_imp.g_varchar2_table(28) := 'B682A34ABC2DE22813479B38B1CC655C574AC42929B6315F78E958412438373A477FFEFFBFA0A4B801679B73459CB84EC7A41D01F82DCE7C366667555756D2A33B37D37D3D7753475383F1CA432E772355C4A2D45C5745DBD6ADA2DF7E601B35D4D5186A';
wwv_flow_imp.g_varchar2_table(29) := '3936CF5B2FE3C0878FCC88D385C1317AFC6BAFD10B6F0F88306A6E030457E89BA2CD135F7F8D2E0E8DCB86B9224EB2C1120B6E0FAF15015273D3149F1C91183DD4DB436DCB6AE5B15702FFD0FE235B375034CA0F1410F1C3647CF3EDD578997A33234EF1';
wwv_flow_imp.g_varchar2_table(30) := '648AFEE1FBC7E8F1FFFC19FDD31B97E9F0A5491A9B4DD2D074820E5E9C34CA3EF5C25BF4AC68C36D4D7D8B459CCC36BAE55A1120216E484D07DDB37A15B5D4579B879EE77595E5D4B572851C87EF41963AE274F6EA087DE3E009FAB36F1FA1FB9FFD01ED';
wwv_flow_imp.g_varchar2_table(31) := 'FDC71FD2332F1E31CADEBFF681B4D549C44936D64CD08A0029DBDEFBEED6E5BEB98A63F96F9EB94C17AE5CF364CC20449C3C995800946A458074DCBAF96CAE5FD8937B8DF1F0D40C7DF7A7C7A94F2CFEDCDFF1BA6B452A3E47F3439788B77C999ABD8A38';
wwv_flow_imp.g_varchar2_table(32) := '658EA3CBB15E044825A55FF826551E78248CCFCCD16BC74E51D2F6CDEDB6F59DF4D4DEADC62B0FBFF2E93DE446FADBC71FA0A7F7EDA20736AD9533498BA80DFF90DDCF88931C5C23412102040FF5D74F9CA778226118565753457FF8E80EFAD4F6B5D4D3';
wwv_flow_imp.g_varchar2_table(33) := 'DE60BCF2D0A870E1A3B23C462B1BAB69DFE64EFAE26FEDA6BB96D5195AFD8E3819836AF6010214E9D0EBE337C8FE6399030F6EA6AEE6DA22B539EFD65C5B499FDDB359449C165CE777C4C9B9A56AB45C40510D5B036565FFF098B46747F76AEA5CEECF3D';
wwv_flow_imp.g_varchar2_table(34) := '070FBABCA6827AD775B06824B7234EF3C397899F9FE27B0D63008D3F4080229D3B61FB81FCBD1D2D456A29BCDBE8F43CBD72EC02FDB2AFBFF0CE0E7A70C429717392E6C70668EE9AD8E28D0D1289FB0D075D956C020214E9B6D18929D9B353ECCFE58187';
wwv_flow_imp.g_varchar2_table(35) := 'C2E5D169FAE7EFBE456F9FEBA7147F95EBE158AC9A6FB4F979AAD9EB7DDAFE7F6820007BBA8864DEFC7257BE49E5DCB32414F3CF2ABF75E8B8883859C1D64FEEFC90F1DAC3C37FF1189DFEF2275C49ACEBB9030FD2EFEC582F465DF8C7DF6AF3E3E40B47';
wwv_flow_imp.g_varchar2_table(36) := '7A7D82008AF8F37FDF3C4B73F30B11A7BB1A6AE85B9FDF4B7FF7D87AE3B5872D3565AECD82753DD2D5405FDDF721FAE6E7F6108FC5CAF97E202EB6452CEB94A23A4D46D7B9F40DDFA0C151EB81B57F797237ED5CE97DC469F7AA3A7AF6895D12D6F8C488';
wwv_flow_imp.g_varchar2_table(37) := 'F8F26D461EEB2080000A78F1F455EBB99DDFDDDD4DBD6DD5BE59BD4B108DB75AE6808929CB16B34CE51C0450C07B43B61FC83FD6DDEEBBC51FEBB1C64CDB1E37F1DD100F0604013C00D56D955747ACEDCF6FB4F9F77D83398F0D2DD615279528FC1767A6';
wwv_flow_imp.g_varchar2_table(38) := '9E6272AFFB80005E23EC82FEF9F8C2CD2FABAAABF0DF65ADB69BEC74D27ADE8AED513DF98FA6EA88C17EAD100001B47227265328022040A188A1BD560880005AB913932914810013A0D0A9A03D10281C01AD081089C524022FFEF82DCA96640308404020';
wwv_flow_imp.g_varchar2_table(39) := 'A0150162550BBF9412F3C23F20E00801AD0850DEB482CA6A1B291273EFE1304728A291B2086845005EF8FC66B3EACE1EAA5973AF4CCA7A07867B8E805604F01C2DBF06C038BE210002F80635060A220220800B5EF9F2FF1CA66CC905D550E131022080C7';
wwv_flow_imp.g_varchar2_table(40) := '00437DB011000182ED1F58E7310220800B0023E2E40288B754F89D81007E238EF102850008102877C018BF110001FC46BCC4F1367EE57B942D95A85676CFA69BCBCC06FC65A329EB9083003A78D1C739E8F6DFA782003E2E1E9587E2337F595D23952FB7';
wwv_flow_imp.g_varchar2_table(41) := 'DE10A1F27C4CDB034400D324E48B21E067C4C93E163F5F55715787760F1A82008BAD36D4698F0008A0BD8B31C1C510000116430775DA23000268EF624C7031044080C5D0F1AB0EE32C190220C092418F818380000810042FC086254300045832E8317010';
wwv_flow_imp.g_varchar2_table(42) := '10000182E005D8B0640880004B063D066604963A81004BED018CBFA4088482004E5E9998EDE52F4BE70000028C49444154358A8B95995EE387C44C19B97A088482005EBE3251B7C783D55BC2A5591C0A0278F1CA443EF3EBF8787069CB49BDDEA120002F';
wwv_flow_imp.g_varchar2_table(43) := 'D68A960EE2477A6B6CAF4C2C45665D3A3E1EACDE122ECDE22524406986A3371070030110C00D14A14359044000975D678F38657B5D623165A689BC953365E4EE200002B883A3D4828893844209010470D94D8838B90CA8C7EA40009701E66D4ADE885381';
wwv_flow_imp.g_varchar2_table(44) := '9128449C5C76924D1D0860030362F8100001C2E773CCD886000860034335D11E71E2D717BA914C0C782B67CA3AE72080C2DE45C4A974E78100A563B8641A548C382D1958390606017200A342316F5310712ACD53204069F8A1B7E20880008A3B10E69786';
wwv_flow_imp.g_varchar2_table(45) := '0008501A7EE8AD38022080E20E84F9A521E023014A3314BD8180170880005EA00A9DCA20000228E32A18EA0502208017A842A732088000CAB80A867A810008E005AA993A711C58044080C0BA0686F9810008E007CA1823B008800081750D0CF3030110C0';
wwv_flow_imp.g_varchar2_table(46) := '0F9431466011000102EB1A3D0C0BFA2C4080A07B08F6798A0008E029BC501E74044080A07B08F6798A0008E029BC501E74044080A07B08F6798A808704F0D46E280702AE200002B8022394A88A0008A0AAE760B72B088000AEC00825AA220002A8EA39D8';
wwv_flow_imp.g_varchar2_table(47) := 'ED0A0220802B306628C1A132088000CAB80A867A810008E005AAD0A90C02208032AE82A15E20000278812A742A830008A08CABD43054352B4100D53C067B5D45000470154E28530D011040358FC15E571100015C8513CA5443000450CD63B0D755045C24';
wwv_flow_imp.g_varchar2_table(48) := '80AB76411910F0050110C0179831485011000182EA19D8E50B0220802F306390A022000204D533B0CB170440003760860E6511000194751D0C77030110C00D14A14359044000655D07C3DD400004700345E8501601104059D705C370D5ADF835000000FF';
wwv_flow_imp.g_varchar2_table(49) := 'FF8EEDBDC200000006494441540300A40CE0B991B2E49C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5568325851564531)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D09741CC779E7BFEEB90010240082A4C00304481CBC49801429EB22754596625D9177BDCE5BAF48D0D22ACAE1646DEF2AF15A8E1229B19F';
wwv_flow_imp.g_varchar2_table(2) := '937DAB24CF475E2C8296A338B66459F225C7512252162D291609901045120749F00448101789633047A7BE21BAA7311C003398BE66FA8F3785AEAEAEFAAAEA575DFFA9AEEAEE91097F200002AE250001706DD3A3E220400401C05900022E2600017071E3';
wwv_flow_imp.g_varchar2_table(3) := 'A3EAEE26C0B587003005381070290108804B1B1ED50601260001600A7020E05202100097363CAAED6E026AED21002A096C41C0850420002E6C74541904540210009504B620E04202100017363AAAEC6E02FADA4300F434E0070197118000B8ACC1515D10';
wwv_flow_imp.g_varchar2_table(4) := 'D0138000E869C00F022E230001705983A3BAEE2690587B08402211EC83808B0840005CD4D8A82A08241280002412C13E08B8880004C0458D8DAABA9B40B2DA43009251411808B8840004C0250D8D6A82403202108064541006022E210001704943A39AEE';
wwv_flow_imp.g_varchar2_table(5) := '263059ED21009391413808B880000420A191ABFFB62D50D778A27875E389B2CDBBDACBD7BF7072595D63474DFDAEB6D51BBF7D74FDFA5D6D1B37EE6EDF04E73C06B1B6116DC46DC56DC66DC76DC86DC96DCA6D9BD0DCAEDF75A5006CDADD56B5A1B1F5E1';
wwv_flow_imp.g_varchar2_table(6) := '0DBBDAFEACAEB1ED55E19A843B2B9C52389B4689C27D7E0A9F0F49CA2939123A4E146D55243A1C8D7A0ECA12ED8F2ACAFB70CE63106B1BD146DC56DC66B2683B6E436E4B6E536E5B6E63E1B8ADB9CD5FE57380CF8575BB5A97BB510D5C2100758DAD75F5';
wwv_flow_imp.g_varchar2_table(7) := '8DAD4FD535B6ED15EE4A44A17689A41F48127D4934FA83C2D509B748387CDC4180DB9ADBFC413E07F85CF04852079F1BC2EDD9B0ABF58BF5CF1FDB902B28A6AA474E0AC0EAEF1FF68B21E06FD6ED6EFB7A7D63DB2922A94921E9CF8968AB70B384C30704';
wwv_flow_imp.g_varchar2_table(8) := '9211E073639B2449CF28B2DC2CC4E0785D63FB73F5BB3BEEE4732A59826C0FCB2901D8F8ADF66AD1E9FFD23FE4E761FB4F49A12714A2F26C6F2494DF3602CB88943F5494E81B7C4E0941F80B3EC76C2B8D091967BD00ACFEDAE1C20D8D6D3BEB76B7FE32';
wwv_flow_imp.g_varchar2_table(9) := 'EA51DA44A7FF13C169B170F880809104F89CFA029F63F58DED6FD535B6EEE073CFC80CECB095D502B0E1DBEDBFE52FF0BF2B113D4F8A748B1D0091A7FB0828A4DC4A2435FA0AFC62BEA0EDA3E4E0BFE98A96950250D7D8769BF8D67F478A2AAF880AAE11';
wwv_flow_imp.g_varchar2_table(10) := '0E1F10B09C80F8E2D92449F4733E17F99CB4BC000664985502C043AE0D8DADDF15F57E53C0FF88D8E20302B613183F17DFACDBDDF61D3E476D2F501A05C81A01A8DBD57E9318EE1F9448FA641AF5435410B08E80429F12E76833DF24665DA699E5941502';
wwv_flow_imp.g_varchar2_table(11) := '50BFBBFD1192943745555D79B386A8373ED943A02AAA28BF8A9DB336973995EC9D2D008A22896BABBF5014E5DBA2327EE1F001816C20E0E7735688C0334E2FAC6305806FBCA8DFDDF1B200F805E1F00181AC232044E08B75BBDABECDE7B2530BEF4801B8';
wwv_flow_imp.g_varchar2_table(12) := 'EDE937BDFE61FF0FC472CBC34E05877281404A04247AC47FC5FF129FD329C5B738922305A0BFB2FC0552E83E8B59203B10308780440FF4572E6934C77872ABA9863A4E00EA1BDBBE428AF2DBA95600F140202B08881582D8B9EDB0C23A4A00C484DF1F29';
wwv_flow_imp.g_varchar2_table(13) := '444F3A8C118A03028610E0739BCF71438C1964C4310250B7BBFD6651A7FF271C3E2090CB04FE7AC3F31D8EB96DDD1102109B25BDBAD4E788F2E4F2D987BAD94EC02379A28DB173DEA4A2A463D6111D2E30E4E767F5ABD22938E28240D61250A87AFC9CB7';
wwv_flow_imp.g_varchar2_table(14) := 'BD0AB60BC0FA6FB5AF15D7469FB79D040A00021612E0737E5D63C73A0BB34C9A95ED02207B946745C93CC2E103026E22E0F150D4F63B056D15007EC047B438BF934F6CF00101D71178D0E809C17409DA2A0024297F956E81111F04728980244779046C5B';
wwv_flow_imp.g_varchar2_table(15) := '956C1380BAC6F68744AD6F120E1F107033816D1B1BDBEFB10B806D0240A4FC915D9546BE20E024025152FED8AEF2D82200F5DF3A5E212ACCAFE8161B7C40C0F504B6AE7FE1E8B24C29CC24BD2D02A078220DA2B09270F8800008104972C4B39D6CF8B35E';
wwv_flow_imp.g_varchar2_table(16) := '0014853BFE0E1BEA8A2C41C0C9041EA1AB7DC3D2325A2E001B77B7DF206AC8970062830F0880C0388165E37D637CD79A8DE502A010F1EC3FE10F044060228128D18C5703265A4A7DCF0E01B0BC92A9E3404C10B09580E57DC35201A87FFEE8228177BD70';
wwv_flow_imp.g_varchar2_table(17) := 'F88000085C4B60CBA6BFEF28BA36D8BC104B054091E5BB45557812506CF001011048202045FDCABD0961A6EE5A2A0012C9F8351FC21F084C49E0B6298F2639984990A502A09052974961911604729D80D57DC43A01785AE1BC70FD9FEB6730EA97298175';
wwv_flow_imp.g_varchar2_table(18) := '74B5AF646A27A5F4DC29538A9869A4BA8A36EEFCF999DA417A10C87102059B2A5A6BADAAA365022066FE70FD6F55AB229FAC2610254FCA97CA9956D4320120922DAB54A650901E04EC25A058D65764EB2AAA545A9717720281EC25A010ADB4AAF4960980';
wwv_flow_imp.g_varchar2_table(19) := 'A854995595423E2090E5042CFBB2B44C004483400004047C4020050229F59514EC4C1BC51A0178FA6999242A9DB63488000220C004E65AB51428736E66BB15E59F9C450A79CDCE07F641204708F8362DDC9F67455D2C11807C39E0B1A232C80304728540';
wwv_flow_imp.g_varchar2_table(20) := 'C45FEAB7A22E960840D413B1A4325600431E20600581E9FA8C5165B044007C92172300A35A0C765C41C0AA3E6389000443615CFFBBE2B445258D2260559FB14400BC52082300A3CE0CD8710501ABFA8C2502E0C125802B4E5A54D2380253F519E37221B2';
wwv_flow_imp.g_varchar2_table(21) := '440014D98749C0295A4D8984293A364AD1E03029E1B12962E2905B088425D99251B325024084933AF1C48D0C0FD258CF191A397584464E1FA5D173ED347AFE388D9C69A5E1931F50B0EB0485077B88C521312DF6739F80672C924B0290FB0D966A0DC397';
wwv_flow_imp.g_varchar2_table(22) := '7B69F4CC310A5E3845E12BFDA44423499346468768ACB72B260E633D6749098792C64320086442C0A211402645CC91B48A42C1EE4E1ABB748EA26976E6F0953E313AE8885D26E4080D546386048C4E0601309A68327B4A9446C5903E327279C2D1B945B3';
wwv_flow_imp.g_varchar2_table(23) := '694DD552DA5AB78A1EBA6513FDB7DBB7D05D9BD7D1C695CB6969D9820971F95220282E11A2626430E100764020030210800CE0A59A3478F14C6C824F8DEFF37AE9236B6BE9DECD6BA87ED9225A3AAF880AF37CE4F3C85456348B562F59405BD72EA7FB6F';
wwv_flow_imp.g_varchar2_table(24) := 'DE48A5C573D464A40821E14B070513851A137832232067961CA9A723C013793CE1A7C65BB4A0941EB8B99EAACBE692A4064EB22DCAF7D3BDD7AFA6EB5755693178CE8045400B80070432200001C800DE744979D81EEABFA0459B33AB80B6ADABA67C5F7A';
wwv_flow_imp.g_varchar2_table(25) := '13BC2B17CFA7F535959A1D5E320C5FBEA4EDA7E3898E8D5068E0A2988B382B26223B636EECD2D958181F4BC716E25A4BC08CDC64338CC2E65502DCF9956834B6C3DFF6B7ACAB258FC4BE58505AFFD65594D1DCA2F8E540A8FF22A9B6A733C4A306EEF4BC';
wwv_flow_imp.g_varchar2_table(26) := 'FA307AAE83427DDD14BEDC4791E1CB31C77E0EE363A3621992E3729AE9ECE278F613800098D88611B1CCA79A5F5B5541730B67FE8837CBC6CD6BAB491E17101E5D44860755F3936E632B08A78FC53A7D2AAB0F5131BF1013039186972927358C03394100';
wwv_flow_imp.g_varchar2_table(27) := '02605233F26C3D4FDAA9E66BC5C49EEA9FE996E70416CE8FBF5889F398CA56A8BF9B62F71088C9C3C4788BE715D396959531C7FEC4E35CF6B19E33B14B83C463D8CF1D02100093DA321A0A6A96033E5FDAD7FD5AE2044FF1EC022D241A1AD5FC899EF040';
wwv_flow_imp.g_varchar2_table(28) := '0FF165823EBCB2AC941EFFE8667AF693DBE889BB36D003751531C77E0EFB9F776FA68AEBE202C3697934C01399EC87B38F80593943004C22AB44E277EE95CC29342C97223191A81A53C261D53B611B19B94263E23A5F0D0CF8BDF4E047D6D0A3DBD65279';
wwv_flow_imp.g_varchar2_table(29) := '495C40D4E3EA76E9DC027AF4B63574FF0DABC9EFF3AAC134D6DB4D91D12BDA3E3CB943000260525BEA27E80AF2F30CCBA5304FF75C55B2DB88C5A4230FDD8994589E797E1FFDFE3D9B6973E53C9A76DD91882449A21B96CDA73FB87733715A8AFD293476';
wwv_flow_imp.g_varchar2_table(30) := 'F18C30797542331694CE3F7109C2A2C4730A3CC1181EBC4491A101DCD9980E4393E242004C022BE91EE61A1C1A322C97C191F8A505C9D7361F77309E2054337CF086555452A0130DF5C0345B4EF38048AB46639B217159A1EEA7B2E54E1EBCD049C39D1F';
wwv_flow_imp.g_varchar2_table(31) := '52B0FBA4988F10730A626432D67B9E82174FD3E8B9761A392326287BBB083737A542D4F838D79E41C6E7E14A8B92273E84EE1B181AFF3ECE1C45DF607C282E797CD7180C5FEED5C256572CA4758B4BB4FD743DEB45DA35950BB564A9DE7B1011CB8BBC9C';
wwv_flow_imp.g_varchar2_table(32) := 'C89D9CFD9A81241E251CA2D0608F10825631CA382D9636933F1C9524A96B82CCAC2804C024BAB23F3EEC8F88A1FAC088318F44F70DC6471372207F42E9F93A5DBF7EBF6D55F984E333D9B97545DC861289D0742B0F3CBCE76F7D5E4E4C96DF9AF2055456';
wwv_flow_imp.g_varchar2_table(33) := '3C3BD9210A8BCB82E0F90E8C0692D231271002600E57920305A4BF0CE8387731E39CFA878374B1BF5FB3E3C99F38B9180D8E68C77C1E0F2D2C8A8B9076204DCFA2E23C625B6AB2487058F55EB30D8B6F721EDEEB0FF0730E4F3DB885BEFFF81DF4E1173F';
wwv_flow_imp.g_varchar2_table(34) := '462F6DDF4CFFFEFB5BE9979FBB87BEF9C856DA7EEB1A7D748A86C668F4FC7188C0042AE6ED4000CC634BDED97335EB474E9C26EEC05A409A1E9ED27BE743F1EDC81E91561297189EFC89DFA48AE83CE250EC5371DD5C526F1A8A05CCF01FDB285F50A2A5';
wwv_flow_imp.g_varchar2_table(35) := 'E621BBB6A3F3F0241FAF16A8411E59A6C7EF584FAF3D7633FDF6BAF9B476FEC4D14A69BE87B62E9D4D4F6EABA41FFDDE5DB47AC97C3529299130C59E7710139A5A203CA61080009882F5AA516FD13C310A88238E75E0AB87D2FEDF7EBE972EF5C7EFFCF3';
wwv_flow_imp.g_varchar2_table(36) := '158B0E234913ECE8971E2B749D7642A419ECE86D29E16B2F65B8C38E89493DB14C10B35E5490472F896FFC3FBCA99C029E89658C4548F8575D12A097776CA1DFB9738376849F7718EB3BAFEDBBD56376BD65B33370B37D49AC047867976A08B8031F3A99';
wwv_flow_imp.g_varchar2_table(37) := 'FE49DD3714A403C73A343B9298FCD3DBD50E28E3C3031190A00D2264E61F8FACEBC4BA3C548BA1FE0B1326EFBEFCF0665A591A500FA7BCFDCC8D4BE8A6154BB4F8E1CB7DC442A005C06338010880E148271AE46F6AFD84604B7B27BDD1748C8682C96FE2';
wwv_flow_imp.g_varchar2_table(38) := 'D1A7E6BEF6C1A96E7AFDBD660A85D5D9718902F3E39D441F5F129705EAFEF9BE892F1F51C367B23DD71BB7A5CF23664B0CD32357FA625EFEF7C0A61ABAAD32FED01287A5E3BEFCB135343B3F2E1EE1C1993DF5984E9E6E8E2BBBB9F296D45D9229B06029';
wwv_flow_imp.g_varchar2_table(39) := 'E93B4ED7A53EFAC93B4DD4DE1DEF388965191C1DA3D7DF3F4CCDAD27281A8D7FB3FBE796919C372B317A6C5F9FC7B94BF1CB85D8C10CFE9DEF8DDBD2E7C126232383A4B052899DD2D905F4D45DD5C237F3CFFC022F3D75FF26CD402485079EB4C8F0A44D';
wwv_flow_imp.g_varchar2_table(40) := '00029036B2F413485E3FE52D5C4EB2D7A725E66FF4775B8ED13FBEF12EFDF057CDF4FAAF0FD32F0E1CA51FBF7B885EDABB9F7EF4F601EA1D887FF372427FE962F2CE895F527098DEF1CA83BADF7779884643EAA8410D4D7F1B1436D8969A529F0787F1D2';
wwv_flow_imp.g_varchar2_table(41) := '1D6FD9DD5FBF8C66F964F666E4EEAB2D21AFC713B3A18825549E608CEDB8EC9F15D5CDBCB5AC28650EE4C12210585845DE5945D7D4666878942E89CE7EA1B79F06AE0C5330147F8E8023CB3E3F05AEAB10AB0AF1D9780E4F74BC2A208911871AFECBB62E';
wwv_flow_imp.g_varchar2_table(42) := 'D53BE3EDDED6F89C8524CBE4299838BC8F06E30F242D2E2A98713E890997CE8BE7831795247E8A52F40000100049444154D2316E1F02601CCB692D49E21ADD3FBF9CF297D4924F7C934BBA1141B2C49E82D9E27ABF9CF216D71277EE64712684890EEAD5';
wwv_flow_imp.g_varchar2_table(43) := '2D3DEE3DD44EC72FC5EF1C9C1037859DF68B97E9AD96F8E463CCB6244D4CA9C447198B0CB8EF4035BE78AEEE1E0731CFA086636B2C010880B13C53B2C6A301DFDC8542085650DEA2AA5827F78B7D5FC975E49FB7840265955450B19A020B2AC89364C430';
wwv_flow_imp.g_varchar2_table(44) := '55265EB13C2889D50735CEF7DEFE800646268E28D463536D39CDF7F77DA045619BDE22B1F4A8855CF5E81F7A2AC9F75E0D34E07FC92CDD4D4CCA0C1F4232A01CB96E020260730BCBFEFC5827E76B7B9FE860DEC262F2E41512E986F294C61F7754161135';
wwv_flow_imp.g_varchar2_table(45) := 'C9D04890FEEEF55FD3C1D3934F38AA71D56DF3E95EFA5B9166584C44AA613C7261DBEABEBAE5518DEA3FDE1BBF13510D9BE9F6C4C58178529DA0C50373DB6755ED20005691B6301FBE74E0D1849AE5E858885EDA77885E7CE7D894CB8FBC34F99D7DC7E8';
wwv_flow_imp.g_varchar2_table(46) := 'E57D2D141469D4F4FE9232F224DC76AC1ED30BC091AEF86A817A7C265B5EF4387AA6474BAACF430B84C71002100043302637A2CE605F7D3BCF050AF51BE3F83D7FD1E030B1FDE43913F168422F021CEF4867177DF987FBE8B9D7F7D30B6F1FA59FB79CA6';
wwv_flow_imp.g_varchar2_table(47) := '9FB59C8AF99FFBD9FED8B163A7274E1CB20D6FD13C4E9ED4F108463D70E47CEAA30C354DB2EDF1FE208522F161BF3E8F64F111367302F2CC9322E56404C2833DC48FC3F20F7FC69E83EFEB32ACF38784888CF59C8D3D3013B37FA193A263C987DE2C027C';
wwv_flow_imp.g_varchar2_table(48) := '39A05F19E032F70C5CA1D633DDF4F6E1E3F4ABC32762FE1EDD63C61C4712138A01311FC136787F32C7A30DF5D8C1135D74EC527C55400D4F77FBE281B35A12FEF64F7CEA513B084FC604200019238C1BE07BE2631DBEB78B267B1C361EDB185F849FBD3F';
wwv_flow_imp.g_varchar2_table(49) := 'D7117B963E99459E53C82B5F41FC4D3EDDAA03A7E77B15FC73CB286FC94AF2141673D0948E9705B99372A488A2D0FF79B58922F1FB9638382DF71FE786E87BEF1CD1D2786797687EB778ACAC2704C020DA7CCFFAE8B9364ABC69C5EBF1D0FC92622A9B57';
wwv_flow_imp.g_varchar2_table(50) := '62982B9E3D4BBB51462D3EDF90C3E223AE0BD4206D2B894934FE26CF5F7275D581C5803B167F7BB3633F87F18A449E88E39D334FCC41A67E6AB06D35B3B6F3BDF48DF7E2DFE06A782ADB91B0427FFCCAFB5A54498C42B82C5A003C861348BD950DCF3A87';
wwv_flow_imp.g_varchar2_table(51) := '0C8A6F3E7E1A4E89C4D7C4172F28A58FDD544F9FBC7D337D74D34ABAAB6E8561EEBE1BD6C5ECF28F8AB218A824597C42FD53BF7780AFA7B9C3F25D85BCCCC88EFD1CC6C7545BE96C790543F2C49700BFFE46337DB765EA7224DAEF0F46E833AFB650577F';
wwv_flow_imp.g_varchar2_table(52) := 'FCBE05EEFC9210AFC4B8D8378E0004C00096A1FE6E8AEA5E03BE797535DDBEBE864A0A0206589FDCC4D2794574CFF56BE9BAD2F8503D3C7829F63CFDE4A9CC3912E0E71D744B97CFBCF61FF4E8F70FD285E1E91F7ADA7B72907EF31B7B68DFD1D35AE13C';
wwv_flow_imp.g_varchar2_table(53) := '8182D844A616008F290420001962E5D978FDCB32572D2BA7158BE6656835F5E45E8F445BD7D792DFE78B255294288507D2FBF68D25CCF01F3F23E04F10815FB59EA13B9FFB05FDF717F7D3FFDF778AF6765EA601F14DDFD117A4973FECA13F79FD18DDF5';
wwv_flow_imp.g_varchar2_table(54) := 'B5BDF4C43FFE92FAAF8C6A25E0CE1FB8AE924892C86D7F56D717029021F1B0EE259C730A6751DDF245195A4C3F79C023D3BAEAA55AC29018050C9FFC808C74A3675B89DFF5C73F14C2F31D5A663A0FDF2B1058B88CF4C3F68858D46F12AB03FFF0660B3D';
wwv_flow_imp.g_varchar2_table(55) := 'F19DB7E8C6BFFA39DDFFB537E84BAFBC47AFED6FA7737DF1213F9BE249C540D9322271FDCFFB70E612800064C857D1BD86AB6649D98C7FFC73A6C5E0D5F2A3672E12BF6760A6365249C7EFEAE315077EED38BFCE7BF47C47D21784F23C42DEA26A8A3D37';
wwv_flow_imp.g_varchar2_table(56) := '908AE1F138B1D587D245C49712F8E61F8762C10602902164FD72DFEC82BC0CADA5977C782C4C3F79B785DE3F2A960143D35F6BA7677DEAD8D1E00805BB3B89B7893125AF8FFCA233E797AF245E52E4217D621CDEE79182B7B04474FA0AB1ECB8226DD160';
wwv_flow_imp.g_varchar2_table(57) := '1B709911800064C66FC2845B41E0EA75788626534A1E0C47E88D034768F0CA90163F3FE0A78D35E574DF96D5F4E9DFD8448FFDC6F586B847859D4FDCB29EEEA8AB21BDC8F17C43B0FBA498008D5FBF6B85111E5E19E099FCC0C2E55450B996F297D4C6DE';
wwv_flow_imp.g_varchar2_table(58) := '8BC023041687FCA5ABC83F6F31F152A488EEFA8F1D00200076503720CF3D07DB2674FECDB515F4D9FBB6D0C39B96D34796CFA765A58554513ACB105729ECAC5F524277AC5C444F3E7003DDBAAE4AAB01DF8E1CEA39A7ED4FE5E1A72079B250F6E7118BC3';
wwv_flow_imp.g_varchar2_table(59) := '547171CC1A0210006B381B9A4BD7C0105DEC8BFF3EC0B675D5F4E0C64ACAF7790CCD6732631F5DB3846E5D1B1701FEAD80C9260627B381706710909D510C94221D02874FC4EFB45B503C9BEE58B5289DE486C4BD73D5622A2ACCD76C857ACF1BFABC033F';
wwv_flow_imp.g_varchar2_table(60) := '40C53736F10843CB041EC30940000C452A196A2D99319EF53FDFD3AB1DBA71E552F2E85FDBAD1D31D7D37A6190BCBAA5BAC8E890A10230D6D72526194F123FF0C40F56F1EA83B935B2D7BA5DB943000C259FC1533029966354CCFCEBA32E2E49FE86607D';
wwv_flow_imp.g_varchar2_table(61) := '1C23FDBCF2B06BEF61FAA7BDCD7449F73B8546E691688B575AF8FE035E7E9CECC9C7C434D84F8D000420354E8E89C56FE9D5176651517C18AE0F37C3CF6F197EFECD163A7E3EFEB20ECEA7AA6C2E3D747D0DFDC1DD75F499BBEB0D71FCB3625B572D25FE';
wwv_flow_imp.g_varchar2_table(62) := '9521CE831DCF338C9EEBA0085E15CE380C71100043305A674421F3471993D566F75B87A9BB2FFED69F8A7945F4EAEFDE453F7EF446FACB7B6AE9892D8BE977B62C32C4F1CF8A7DF3E3EB68DFFFBA933E7BEFC6099739633D67262CBF4E565E844F4F0002';
wwv_flow_imp.g_varchar2_table(63) := '303D23C410043E38D74F672EF609DFD50F7F3BBFFAD8CD543B377035C0A4FF3CBDF1E8A685F4DDC76EA702BF2F960BBF8874AC273E111A0BCCE27F76161D026027FD6CC95B0C3ADEFCE0A456DAD2D905F4D5FBD750C063FEA4A79AE9DAF9F9F485FB36A9';
wwv_flow_imp.g_varchar2_table(64) := 'BB1419B94C51DD1398DA0178D2220001480B973B230F8C86A8BB37FE96DEAF7E7C33CDF15B7FEA3CBCBA94B6ADAED01A212A561EB41D786644C0FA569C513191C84E022C006AFEFCED7FE3924275D7F2EDC375E55A9ED1E0B0E687676604200033E3E6AA';
wwv_flow_imp.g_varchar2_table(65) := '5483C3635A7DE716E6697E3B3CC5F95E2DDBE868F60B8056199B3C10009BC06753B6FCE0915ADE3C7FBC03AA61566E0B75B73BF3FD0156E69D8B79410072B15551271048910004204550880602B9480002908BAD8A3A65050127141202E08456401940C0';
wwv_flow_imp.g_varchar2_table(66) := '260210009BC0235B10700201088081ADD07EEE22B574765FE3CEF65D363017980201E30840003264297BFD9A85D6CEB374B0EDC435EE6C4FBF16071E1060024E7110800C5BC253589CA105240701FB0840003264EF2B5E4081F9E5C45BBD93FDD63DA79F';
wwv_flow_imp.g_varchar2_table(67) := '611590DCC50420000634BE6756D1B502108000188016264C260001301930CC8340220127ED43009CD41A33284BE7A5214AE6AE048DFBA5206506E54292EC200001C88E769AB494FFF0AFEF533277AC2BFEFCFEA489533C60DD6B3F522C10A21946000260';
wwv_flow_imp.g_varchar2_table(68) := '184A180281EC230001C8BE364389B39880D38A0E01705A8BA4599E82CAB5A43A2C3DA6090FD10902809300045C4C0002E0E2C647D5410002904BE78005D3F527BAFB69E7F79A93BACEC1F8BB0333C5FA427377D23CFEF4672D9A6949CAAED3572BB8833C';
wwv_flow_imp.g_varchar2_table(69) := '20E8A0C6C886A25C191DA377DBCE267523A1A8615538796928691E1F9CBAA0E521F9E20F626981F0A445000290162E447612017EF6C249E5C9C6B24000B2B1D55229B39197033A5B92C73BE1B987548A92691C39903F214FFFBC25945FBE823C05733235';
wwv_flow_imp.g_varchar2_table(70) := 'EDFAF410805C3A05F4F7ECEAFD99D651674BF2FA2674C64C4DA7929E97377DC50BB47CBD85C52479AEFE4E602AE99D10C7A965800038B565502E10B0800004C002C8C802049C4A0002E0D49641B940C0020210000B20230B77137072ED21004E6E1D940D';
wwv_flow_imp.g_varchar2_table(71) := '044C260001301930CC8380930940009CDC3A281B08984C000260326098773701A7D71E02E0F41642F940C04402100013E1C23408389D0004C0E92D84F281808904200026C195A4F81334A7BB7BE88DE66386B8F73E3CAE95F89AE7E1E3596A71E0B18F40';
wwv_flow_imp.g_varchar2_table(72) := '36E40C0130A99524AF5FB33C321AA4AE9E3E43DCA58141CD2E9E87D750C0334302108019829B2E99B7B08464935F58C14FC84D570E1C0781A9084000A6A293C93159A6BCC5B514B8AE827C25D7117756A31C9E87CFA46190564F0002A0A76182DF933F9B';
wwv_flow_imp.g_varchar2_table(73) := '7C45F30D1500EF64CFC3EB9EDB37A12A309906816C890A01C89696423941C00402100013A0DA6652B7F270F45C0FED3976DE10C7B6D43A4924A95E6C7380000420071A51AD82E4F1AA5E3AD2D9456F34B51AE2D8966A58F2E2555C2A8B5CD8420072A115';
wwv_flow_imp.g_varchar2_table(74) := 'C7EBC07303E35ED336DED9734DB39D2B86B3A91E10806C6AAD69CACA6FC90D94551277524F5E2179F26619E40AC937A794F2162E2759D89CA618389C4504200059D458A914953BBEBF7411B11004CA9689AD11AE927C7317921C2848A508889345042000';
wwv_flow_imp.g_varchar2_table(75) := '59D458282A08184D0002603451D87335816CAB3C0420DB5ACC61E595648F56A287BFF16FB4FAD99F1AE2FEF99D239A5D7D1E5A203C861080001882D1BD46647F9EE995E79F06333D13976600017069C31B55EDD8E4A02F6094B96BEC780B4BF01B80D750';
wwv_flow_imp.g_varchar2_table(76) := '312E0002601C4B575AE21140DEE21ACA5F524B7962D5C13027961C0B96AE26FFBCC559C3351B0B6A890044144F241BE1A0CCA913E0F71FF03D0286395E72942D393D53AFA48531259F346645769610F62A51088015AD893C72864044095BD2672C1100AB';
wwv_flow_imp.g_varchar2_table(77) := '2A9333AD8F8AB89E4058F1E58E00585519D79F3500601B01A3330EF8BC61A36D26B367C908C0AACA24AB20C240201B098472EA1220AC8C646323A0CC2060170139E2C99D49C0B159C3C3768144BE20908D04ACEA33965C027CF88935AC66C16C6C089419';
wwv_flow_imp.g_varchar2_table(78) := '04A62360C2F1E0789F31C1F444939608C078965DE35B6C400004A62660595F81004CDD10380A027610386955A61000AB48231F1048918044947B230051A9A329D61FD140206B089854D05C1C0148CD26C1825910C83102D6F515CB2E01648A400072EC34';
wwv_flow_imp.g_varchar2_table(79) := '4575CC2160655FB14C00F677D6B60A5C51E1F0010110989CC0F0785F993C8681472C13007A5A129D5F6923FC81408E1030A91A2D14EB2B64C99F750220AA239184CB00C1011F10988C8064711FB1540088943D93551CE12000024C206AE997A4A5021009';
wwv_flow_imp.g_varchar2_table(80) := '4B3F11555484C3070440E05A020A45A33FBA36D8BC104B05E0D063356744550E09870F08643501930A7FA8E9D32BCF99643BA9594B05804B2011FD9CB7702000021309D8D1372C170031FE87004C6C77EC81408C80108057631E0BFF592E009EB1817DA2';
wwv_flow_imp.g_varchar2_table(81) := '7E9DC2E10302201027706A4EE799F7E3BBD6F82C1780FD8F5F1F1255DB2D1C3E209095044C2A74E39EA76FB7E43D80FAF25B2E009CB914F1348AADB81A10FFF10101B7139028EC91E55D7660B045009A1E5DDE29AE777E614785912708388E80423FDDBF';
wwv_flow_imp.g_varchar2_table(82) := 'BDEA941DE5B24500B8A2E2EBFF2BBC85030110A0E7C8A63FDB04A0B9A1668F1805FC8B4DF546B6203023024627E23EC07DC168BBA9DAB34D0062058C469F8C6DF10F045C4A204CF2FFB6B3EAB60A40D3A7571C14957F4D387C40C08D045E6B69A86AB1B3';
wwv_flow_imp.g_varchar2_table(83) := 'E2B60A00575C8E489F2789AEB01F0E045C4460C823D1E7ECAEAFED0270E0D1EA7652E829BB41207F10988E80911B45A1B4000004AF49444154C725523EBF7F474D8791366762CB7601E042D7CCAAFE3B9294B7D90F07022E20B0AFA9A1F69B4EA8A72304';
wwv_flow_imp.g_varchar2_table(84) := 'E0A54F4811392C37E052C009A704CA6032011EFA6F37398F94CD3B4200B8B47C292086453B843F2A1C3E20908B04A28A2CFD0F270CFD55B88E11002E50D38EDA1F8875D1FFCB7E381070120183CAF2B983DBAB7F68902D43CC384A00B8464D0D355F1197';
wwv_flow_imp.g_varchar2_table(85) := '02FCAC00EFC281408E1090FEA6B9A1C6B63BFE2683E83801E0827A82038F8BEDBF0A870F08643F0145F9617367D5679D5811470A003F32EC199BF59044D22B4E84863281401A045EF3840A3F4516BEEA9BD2F873A40070F9F73FBE68B86947D57F9124E9';
wwv_flow_imp.g_varchar2_table(86) := '59DE870301BB08CC385F89BEDCBCA3FAB7F85C9EB10D93133A560062F59624A56947F553420478D924120BC33F10703E8131318FF5A9E61D355F20710E3BB9B8CE1680717242045E882ACACD44CAB1F1206C40C0910424A216292ADF2C3AFF8B8E2C6042';
wwv_flow_imp.g_varchar2_table(87) := 'A1B24200B8CC8776D6BE574CBE3AE1FF33E1F8B56262830F083886404821E919796C6053D3A7AB2C7FB7DF4C29648D007005F7342C1B154B294F2BB2BC5628ED8F390C0E04CC2490826DD1EFE9653922AD3ED850FD259EC04E218D63A2649500A8D40E6E';
wwv_flow_imp.g_varchar2_table(88) := 'AF6A6D6AA879405C5FDD22C2F82DC362830F08584E608F22D32631DCFFAF7C27ABE5B91B9061560A805AEFE61DD5FBC488E01651891B15A2EF88F0A070F880809904F81C7B91BF7CC4B977FBC1ED354D666666B66DD177CCCEC27CFB071A6ADE3DD850F3';
wwv_flow_imp.g_varchar2_table(89) := '88672CBA841489DFB0D2617EAEC8C165048E93A43CC9E798E8F86286BF3A27469E392100EA89B8FFF1153DCD3BABFF5A3450B5A2D03D22FCEB62AEE0B4D8E203026913889D3B127D43AC3EDD2DCEA9AAE61DB55FE5732C6D430E4E905302A0E77C7067CD';
wwv_flow_imp.g_varchar2_table(90) := 'BF8846FB3D3157B0548A46EB1445E1978EBC25E20C09870F082423C0E7C65B12295F129DBE9ECF9DE61D35BFDBDC509BB3B7A5E7AC00E85B97DF3D787067EDB3CD0D35DB842B8C284A9542CAC7C528E1CF453C7E2761B3D85AFAABAC223F7CEC23C06DCD';
wwv_flow_imp.g_varchar2_table(91) := '6DFE1A9F037C2E7824AAE67343B86D4D0DB5CF884ECFC7ED2BA14539BB42001259B6ECAC3D7EB0A1F615314AF8D3E6869A8784AB176EB170D295CB9447E42D1923EF429F222D8D7A7CCB89E45A49A135B21CD9105568932C49D7C3398F41AC6D441B715B';
wwv_flow_imp.g_varchar2_table(92) := '719B71DB711B725B729B72DB721B0BC76D5D2FB60FF13970509C0BFB1DF07AAEC4F3D48A7DD98A4CB2298FF6CFD4049B1B96F57FD8B0ACEBD73BAB4F1F7AA4F2447343555BD3CE9A0F0F6C5F79E8D0CE9A03077654EF87731E8358DB8836E2B6E236E3B6';
wwv_flow_imp.g_varchar2_table(93) := 'E336E4B6E436E5B64DF55C744B3C08805B5A1AF504812404200049A0200804DC420002E09696463D41200901084012280872370137D51E02E0A6D6465D41208100042001087641C04D0420006E6A6DD4150412084000128060D7DD04DC567B0880DB5A1C';
wwv_flow_imp.g_varchar2_table(94) := 'F505011D0108800E06BC20E036021000B7B538EA0B023A0210001D0C78DD4DC08DB58700B8B1D5516710182700011807810D08B8910004C08DAD8E3A83C0380108C038086CDC4DC0ADB58700B8B5E5516F101004200002023E20E056021000B7B63CEA0D';
wwv_flow_imp.g_varchar2_table(95) := '028200044040C0C7DD04DC5C7B08809B5B1F75773D010880EB4F010070330108809B5B1F75773D010880EB4F017703707BEDFF130000FFFF573E1CEC0000000649444154030097A913E26FB7165A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5568584346564541)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000233494441547801EC534B6BD460143D93A41DC7D8294815ACC5476941C1A28B5A9785AE0AE2AA0B37FE04B72E04A17F40C1A5A220B8F107E8C6955DA888A0A50C';
wwv_flow_imp.g_varchar2_table(2) := 'A58FA1A5A54C3BD32799CE23932199DE9B613224FDDA2F1D86164A420EF79ECBBDF73B394994079FD2B5B3848233BE220191039103E11CA83950F239F4C1702388B7EBEF0D25C02E17307AA70F2303D7DDC8DC2E1AB811ABC32EE55BD6134A006FD7947A';
wwv_flow_imp.g_varchar2_table(3) := '6B230E762B78F6A8DFC560320676452F6FE349AF038ECC794E86FA5649979AB8843FCB394CAF64296E424D74A14353BD29CED9950F13F73039761B1C997B0DC724A104D86609BB250B8BDB1C2B60CBD386836FA90CBE12D2468D1CA821AE911374582352';
wwv_flow_imp.g_varchar2_table(4) := '2ABDA502F8B0D19B493C1DEEF730D413875930F02F93C77F826596A174C6F1F2FB12DEFC5AA3B80C76497A3A354805389689ABC98BD4DABCAB5605AFC6C9EEF1BB9824BC181B40A2B883D95C019FA7B314F7619BC5E6C03199548068F64A32014D6D8ECE';
wwv_flow_imp.g_varchar2_table(5) := '670DBC9DB88F99E70F3DBC7F7C8B5ED5BE68DC576B6EF1954F468C5205C3D774DFD048AF0EC72AFB6A222215A0EADDF8F233259A6D4B4D2A40E98843B9E07FBA1F73194C2D6C9C8E00D1294141DC33F47A8A8307E61AB9E7158E48A40E1C3177A81C14C5';
wwv_flow_imp.g_varchar2_table(6) := '3C46EE1D6A0C14420988A91A52AB390FCC037B5AA6A104685D9791AEEA1E98AF6CE5DDEF80BF05CE5B55104A8068F9BAD683DF7B9D2E386757DEFD5D4703CC4573C15ACB02828BD8958F8B5534C03CD823E26D13205A1EA61609881C38FF0EC8FE840300';
wwv_flow_imp.g_varchar2_table(7) := '0000FFFF47BF46BD000000064944415403000AA41B70FE9DC4100000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5567739183564444)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD09941DD779D8F9AFEA6DBDEF1B1A3B0190204080E02E8AA4246A236DC99B36DB8A2DDB19D98E7CE268623BB64F721CC7F1C93933C73393';
wwv_flow_imp.g_varchar2_table(2) := '99CCC9D84A64CB19DB1AC78B2C39922C4B96285312292E1257700140625FBA01F4BEBCFDCDFD1E080268BC5755AFDF56CBBFD9857EAFEAD6ADFBFD6EB3EBAB5BF5AAEC039F395C62C280DF017E07F81DE07780DF8168FD0ED8C21702082080000208444C';
wwv_flow_imp.g_varchar2_table(3) := '40840420725D4EC00820800002089000F03B80000208208040E404346046005481090104104000818809900044ACC309170104104020EA0297E22701B8E4C0BF082080000208444A80042052DD4DB008208000025117B81C3F09C065097E228000020820';
wwv_flow_imp.g_varchar2_table(4) := '1021011280087536A12280000208445DE04AFC2400572C78850002082080406404480022D3D5048A00020820107581ABE32701B85A83D70820800002084444800420221D4D9808208000025117B8367E12806B3D78870002082080402404480022D1CD04';
wwv_flow_imp.g_varchar2_table(5) := '8900020820107581B5F19300AC15E13D0208208000021110200188402713220208208040D405AE8F9F04E07A13E6208000020820107A011280D07731012280000208445DA052FC240095549887000208208040C805480042DEC1848700020820107581CA';
wwv_flow_imp.g_varchar2_table(6) := 'F193005476612E020820800002A11620010875F7121C0208208040D405AAC54F02504D86F90820800002088458800420C49D4B6808208000025117A81E3F0940751B96208000020820105A011280D0762D812180000208445DC0297E1200271D96218000';
wwv_flow_imp.g_varchar2_table(7) := '020820105201128090762C612180000208445DC0397E1200671F96228000020820104A01128050762B412180000208445DC02D7E1200372196238000020820104201128010762A212180000208445DC03D7E120077234A208000020820103A011280D075';
wwv_flow_imp.g_varchar2_table(8) := '29012180000208445DC04BFC24005E942883000208208040C804480042D6A18483000208201075016FF193007873A214020820800002A1122001085577120C0208208040D405BCC64F02E0558A720820800002088448800420449D492808208000025117';
wwv_flow_imp.g_varchar2_table(9) := 'F01E3F0980772B4A228000020820101A011280D07425812080000208445DA096F849006AD1A22C0208208000022111200108494712060208208040D4056A8B9F04A0362F4A238000020820100A011280507423412080000208445DA0D6F849006A15A33C';
wwv_flow_imp.g_varchar2_table(10) := '0208208000022110200108412712020208208040D4056A8F9F04A07633D640000104104020F002240081EF4202400001041088BAC07AE22701588F1AEB2080000208201070011280807720CD470001041088BAC0FAE22701589F1B6B2180000208201068';
wwv_flow_imp.g_varchar2_table(11) := '01128040771F8D470001041088BAC07AE3270158AF1CEB218000020820106001128000771E4D470001041088BAC0FAE3270158BF1D6B2280000208201058011280C0761D0D470001041088BA403DF19300D4A3C7BA0820800002080454800420A01D47B3';
wwv_flow_imp.g_varchar2_table(12) := '1140000104A22E505FFC2400F5F9B136020820800002811420010864B7D1680410400081A80BD41B3F0940BD82AC8F0002082080400005480002D86934190104104020EA02F5C74F0250BF21352080000208201038011280C075190D460001041088BA40';
wwv_flow_imp.g_varchar2_table(13) := '23E22701688422752080000208201030011280807518CD450001041088BA4063E22701688C23B520800002082010280112804075178D450001041088BA40A3E22701689424F520800002082010200112800075164D450001041088BA40E3E22701689C25';
wwv_flow_imp.g_varchar2_table(14) := '352180000208201018011280C074150D450001041088BA4023E3270168A426752180000208201010011280807414CD440001041088BA4063E3270168AC27B521800002082010080112804074138D440001041088BA40A3E3270168B428F5218000020820';
wwv_flow_imp.g_varchar2_table(15) := '10000112800074124D440001041088BA40E3E3270168BC2935228000020820E07B011200DF77110D440001041088BA4033E2270168862A75228000020820E0730112009F7710CD430001041088BA4073E22701688E2BB5228000020820E06B0112005F77';
wwv_flow_imp.g_varchar2_table(16) := '0F8D430001041088BA40B3E2270168962CF5228000020820E0630112001F770E4D430001041088BA40F3E22701689E2D35238000020820E05B011200DF760D0D430001041088BA4033E3270168A62E75238000020820E0530112009F760CCD4200010410';
wwv_flow_imp.g_varchar2_table(17) := '88BA4073E3270168AE2FB5238000020820E04B0112005F760B8D420001041088BA40B3E3270168B630F5238000020820E0430112001F760A4D420001041088BA40F3E3270168BE315B400001041040C077022400BEEB121A840002082010758156C44F02';
wwv_flow_imp.g_varchar2_table(18) := 'D00A65B681000208208080CF0448007CD62134070104104020EA02AD899F04A035CE6C050104104000015F099000F8AA3B680C0208208040D4055A153F0940ABA4D90E0208208000023E122001F05167D0140410400081A80BB42E7E1280D659B3250410';
wwv_flow_imp.g_varchar2_table(19) := '400001047C234002E09BAEA021082080000251176865FC2400ADD4665B082080000208F8448004C0271D41331040000104A22ED0DAF849005AEBCDD6104000010410F0850009802FBA81462080000208445DA0D5F19300B45A9CED218000020820E00301';
wwv_flow_imp.g_varchar2_table(20) := '12001F74024D400001041088BA40EBE3270168BD395B440001041040A0ED0224006DEF021A800002082010758176C44F02D00E75B6890002082080409B054800DADC016C1E0104104020EA02ED899F04A03DEE6C15010410400081B60A9000B4959F8D23';
wwv_flow_imp.g_varchar2_table(21) := '80000208445DA05DF19300B44B9EED228000020820D04601128036E2B3690410400081A80BB42F7E1280F6D9B365041040000104DA264002D0367A368C0002082010758176C64F02D04E7DB68D0002082080409B044800DA04CF661140000104A22ED0DE';
wwv_flow_imp.g_varchar2_table(22) := 'F84900DAEBCFD6114000010410688B0009405BD8D9280208208040D405DA1D3F0940BB7B80EDAF5FA05492523E2B859545C92F5C94DCEC94642F9E91ECF99392993A2E9973C72E4D53C7CAF374596E6EAA5CB6B0BA585E77FD1B674D04104020D8022400';
wwv_flow_imp.g_varchar2_table(23) := 'C1EEBFC8B5BE542C48319791C2F27C79679F99363BFBE9E3929D392BB9F9F3925F9C91BC59A63BF8427A49CAD3EA52799E2ECBCD9D2F972D270966DDEC85D3925F9A9592A9B3542C46CE93801140A05D02EDDF2E0940FBFB8016781128152537372D1973';
wwv_flow_imp.g_varchar2_table(24) := '349F3E7D5832E6285F77DCC5ECAA97B5AF2BA33B7B5D57EBD0246055EB3C77B49C40689271DD0ACC400001044226400210B20E0D5D38E6A85C77FCABA70E95138062667D3B7C2F2E9A10E86982B46ECB8C2690087851A30C0208AC47C00FEB9000F8A117';
wwv_flow_imp.g_varchar2_table(25) := '68C37502A5425EF4BCFEEA99C3E51DBFBEBFAE509366E88E5FAF27C89C7DADDC067DDFA44D512D020820D036011280B6D1B3E16A027A519F0EF56767CF49299FAB56ACE9F38BB9ECA5EB05A64F885E53D0F40DB20104108888803FC22401F0473FD08A37';
wwv_flow_imp.g_varchar2_table(26) := '04CAE7E4CDF9FD62362D522ABD31B7BD3F0AE965C99E3F55BEF0B0BD2D61EB08208040E30448001A67494D750AE8B97EBD20AF54F2DFD5F87A1A20631213FDA4419D61B23A0208445CC02FE19300F8A527A2DC0EB3C3CF5E3C5D3ED7BF1E86BEEE2EB969';
wwv_flow_imp.g_varchar2_table(27) := 'EB46B977DF4DF2AE3BF7C9C36FB955DEFFD6DBE4C71EB8433EF0B63BCBAF1FBEE75679E79DB794CB68D981DEEEF56CAA7CAF818C3925E097D1897505C14A0820808011200130087CB751C00CF3EB67F8F38BB3353562A8BF4FF6EFDA260F991DFB7BEEDC';
wwv_flow_imp.g_varchar2_table(28) := '2BB7EFDC243BC60765C340B78CF474CA40574ABA5309E94AC6CBAF477A3B6572A0A75C46CBBEF3B69BCB89C21DBB7788D625357C155616CA1F43AC61158A228000026F08F8E787ED9FA6D092280AE895FEB5ECFC3B5249B9EDA61BE4C10337C9FEAD1332';
wwv_flow_imp.g_varchar2_table(29) := '6A76EC9D8998C42CCB339F96D5C460C4240A376F1A3575DD2877EDD9293D5D1D9EEBD024203773D673790A228000027E13B0FDD620DA131D81F2057FB3E73C051CB36DB975D776799F19DEDFBB794C74A7EF69450F853A1371B96972447EE0EEFD72CB8E';
wwv_flow_imp.g_varchar2_table(30) := 'AD924C243CAC25925BB82885E5394F652984000208A8809F2612003FF54684DAA237F4C95D3CE329E2FE9EEEF270FDBEADE30DDDF1AFDD782A6ECB81ED1BE4A1BBF7496F57E7DAC515DF672F9C91627AB9E23266228000027E162001F073EF84B46DA55C';
wwv_flow_imp.g_varchar2_table(31) := '5632D3C7A55472FF98DFC4F0A0BCE3C06E1934E7F45BC5D1DF999487EEBA45C606075C37592A5FC06892805CDAB52C05104020EA02FE8A9F04C05FFD11FED6989D7E76F6AC78B9B3DFA6F11179EBDE1DD2DBE16D48BE91781D8998493C6E948D63C3AED5';
wwv_flow_imp.g_varchar2_table(32) := '167319C9CF4DBB96A300020820E0270112003FF54604DAA237D529AC2CBA46BA616448EEDFB3A37C15BF6BE1261548C66CB9CF24205E92008DA9968B199BD464F76A4D0266865E441F86542A14CA8998BE9637E6BB574009041058AF80DFD62301F05B8F';
wwv_flow_imp.g_varchar2_table(33) := '84B83DA5425E721E2EFAEBEDEA90FB6FD921F198F72BFB9BC576390918E8ED71DC44C9EC40F30B177C73F7C2AB1B5B2AE4CAD729E845977A23237DE051F6FC09C94C1D35D331D1D7D99933A2CB348929AC2E49C99CA6B9BA0E5E238040F8044800C2D7A7';
wwv_flow_imp.g_varchar2_table(34) := 'BE8D487740E55BFC3AB4B0339592FBF6DD24A978CCA1546B176912F0C0FE1B5D3F1D50D453014BB5DDCFA0199194B41D0B17456F58A44F364C9F3A5CDED1EB45973973AA42FB4177F2DA173AE96BDDF1E7E6CE4BCE2402D9E9E3923E7358D2A70E95EBC8';
wwv_flow_imp.g_varchar2_table(35) := '9BBA34B666B4953A11888E80FF222501F05F9F84B2457A2BDD82879DE35D37DF207AD31EBF21E88581779B53126EEDCA991DACC6EA56AED1CB4BF96CF9C985E93347247DEEA8E8484B6165418A667EA9543423FCA5F2E4BCDD4B654A663443275D57EBD0';
wwv_flow_imp.g_varchar2_table(36) := 'BAF4E14C5A77CE2409BA2DE77A588A00024110200108422F85A08DF9C51929BA0C2B6FDD30269B86FB7D1BEDB6D101D74F06E8698E82876B1C1A1664B158DEF167A68E979F5CA847F4DA06DD81376A1B5A57299F13AD3B3737F5E6A880986D376A1BD483';
wwv_flow_imp.g_varchar2_table(37) := '40D805FC181F09801F7B25846D2A2CCFBB4675CBF68D62B7FFB4BF633B6FDDB9D9F5544061794E5A310A905F9A3347FBAF5FDAF19B617FC7863770A12602D999B3929E3A2A0533CA20E2FE71CE066E9EAA1040A0410224000D82A49AEA027AF45872D941';
wwv_flow_imp.g_varchar2_table(38) := 'EDDC3CD9D2CFFA576FADF392F1FE6ED1910AA7527A93238DD9A94C3DCB34B9281FF15F38553E2AAFA7AE7AD6D538F53A83ECF95326E1F1DF131CEB898D751168AC803F6B2301F067BF84AA5585D545D161E46A41C5EC98ECDF3E596DB1EFE6EFDA382A3D';
wwv_flow_imp.g_varchar2_table(39) := '9DD59F1BA03BE866DD1DB0985991CCB963A2A67E81C99BD19DCCD923C285827EE911DA8180370112006F4E945AAF40A924978689AB573066CEFB7725E3D50BF86CC95077876C181D726C95DEEFC0B1C03A161674477BFEA414B3ABEB58BBB9AB14735993';
wwv_flow_imp.g_varchar2_table(40) := '981C2D7FDCB0B95BA276048227E0D7169300F8B56742D22EBD20AD985EA91A4DCCB665DBC468D5E57E5D3039EC7C9BE0522E6D76D40DBA3DB049A2F433FA5933E45FEBA98578CC96AE5452764C8ECAFD7B6F9087EEB8497EF82D7BE443F7ED978FBEFD80';
wwv_flow_imp.g_varchar2_table(41) := 'FCD43B0EC847EEDF27EFBF7B8FBCFBB61BE5DE3DDBE5A6CD13D2DD99125D576AF8D2BECE4C1D93BC4FEF875043281445201202240091E8E6F605A947ABA552F5F3C3DD5D1D32DAD7DDBE06AE73CBC37D5D12B3EDAA6BEB8EBA9869C091BAD9F9EB0577B9';
wwv_flow_imp.g_varchar2_table(42) := 'D929C7D3286B1B928CC7E5EEDD5BE5636607FF1B3FF216F9B9B7ED9187F76D9607764DC8DD5E2D08790000100049444154DB46E5C0E641D9B3A15F764FF4CBFE4D43F2961B46E51D376D90F7EDDF223F7DDF4DF26BEFBF5BFE894910EEBA696B3919585B';
wwv_flow_imp.g_varchar2_table(43) := '7FB5F7A5727BCF4976E68C9806572BC67C042224E0DF50ABFF05F36F9B695980048AD98C636B077B7BA4AF33E958C68F0B53F1986C1C1BA9DA34DD1116CD2840D5021E17E4E6A625BFE8FDE642033D9DF2BEBBF6C8AFFCD03DF2C307B6C90DA3BD2651B1';
wwv_flow_imp.g_varchar2_table(44) := '3C6EED4AB1841939D835D62B3F72DB36F9D5F7DD5D1E2118EAEDBE52C0E595B6393737E5528AC50820D04E01128076EA4761DBC5826394437D3D8ECBFDBAD0B62C191BEC736C9E8E0238167059A83BD1FCE24553CAFD63763A647F9F19E2FFC47B6F977B';
wwv_flow_imp.g_varchar2_table(45) := '778C4A4F2A6ED66BCC77326E9747083EF1DEDBE45D076E2C9F52F052737EE1A2E8750B5ECA520681B00AF8392E12003FF74E08DAA657C43B85D16DCE4F3B2DF7EB323DA6EE35E7C91DDBE792FC38ADABA74EF408BAFCA01EA78266D996B161F9C85B6F91';
wwv_flow_imp.g_varchar2_table(46) := '1F3043FCDDC9C6EDF84DD5D77C772662F2E0EE0DF2E1FB6E11B76B2074451D05C95E3C2D45978F806A5926041068BD000940EBCD23B3453D02764B006266A839A8209DC984D8B6A602952328395CFB50798D4B73D52C3B7DB2FCA4BE4B73AAFFBB6FFBA4';
wwv_flow_imp.g_varchar2_table(47) := '7CF4BEDDB263B47523297A6AE0A71FD8237AB160F5965D5AA2094C76FA84E8EFC2A539FC8B409404FC1D2B0980BFFB27D0AD2BEF005D8E8213F1586063EC703BDA2EB90FDD570A5E2FF8D3FBF0575A76F5BC07F7EF921FBF67574387FBAFAEDFE9756F47';
wwv_flow_imp.g_varchar2_table(48) := '427EFAAD37C93BF6EF742A565EA62300D999B3E5D7FC830002FE112001F04F5F84AF25E60858FFF8570B2C66DB1233E7D2AB2DF7FBFC642C26B6F9CFB99DB52501FA64BEC2F29C739566E9DBF6ED9077ED9934AFDAF86D063FDE75F3A43C78E026D74614';
wwv_flow_imp.g_varchar2_table(49) := 'D34BA2B1B916F44B01F3BB5B2A14A454C88B98D77E6916ED089680DF5B6BFBBD81B42FC802965866275F2D8292E87FD596FA7F7EB1DC7EA71DBC6582D0C9FCF0F25D2C8A5EF4A7C3E64EC50FECD824EFBA79A35391962DB32C4BEEDF392607766E72DCA6';
wwv_flow_imp.g_varchar2_table(50) := 'C6949F3FEF58A6D50BF5548B7E5433BF345B7E7AA2DE67416F6DACF732D0272A66A68ECA95D7C7CA0F41D232B9D973A2EBE8751A5A47ABDBCDF6106894000940A324A9E73A01DDF95BF1EA1FF12B164B922F54BF47C07515FA6C462E6F8E104D1250B559';
wwv_flow_imp.g_varchar2_table(51) := '35ECFBB50EDDA9145C9E24B8657C58DEBB6FCBBA3EDAA7DB68C6948ADBF2DEBD5B647264D0B17ABD3BA297D10DC74AEA5D684ECB147369D14F28E8CE5C77F0D90BA725377FC1ECD4E7A4B0B2203A52A18941317BE9664EFA5AE7E9327D009396D575F496';
wwv_flow_imp.g_varchar2_table(52) := 'CCD90BA724BF382325BDD0D1D45D6FF3583F4C02FE8F8504C0FF7D14DC16DA31B1ECB863FBF36698D5B1808F17664C02E0D43CCBC4EFB4FC9A6566983937377DCDACB56F7ABB3AE40377ED923E73FE7DEDB276BFEFEB4CC847DE729374A6128E4DC9CDB5';
wwv_flow_imp.g_varchar2_table(53) := '6914C0EC9C75479D3EFBBAA44F1F11BD26A16092AD92CB352A4EC1E8BA5A47F6E219593D7DD88C161C2D271162B6E5B41ECB10F08B0009805F7A2284EDD01DA015774900CC284050434F67F3527468BFC6EF35B6FCE2AC945C7646EFBE75A78CF4A4BC56';
wwv_flow_imp.g_varchar2_table(54) := 'D9F272DAB6B7EFDBE1B8DDA239522E2CBB3F1ADAB1925A169A9D71DE1CA1A7CD0E5A77D43A6C5FCBEAB5942DA457444704745B3A9A633AB496D5291B32812084430210845E0A701BDD46001696AB3F27C0EF61CF2CBAB4BD861180F20EC321603DFA3FB0';
wwv_flow_imp.g_varchar2_table(55) := '79C8A1843F16DDB1754486FB9D3F92A83BE4A6EF1C8BC5F24D88D2678E486EE6AC78F95445A304755B39332AA0A30D9AECB825768DDA2EF52050AB000940AD6294AF49C08A3B0F09CF2E2ED7549F5F0AE70B25999A71BE5ADF76B8FEE1EA384A85DCA573';
wwv_flow_imp.g_varchar2_table(56) := 'C857CF5CF3FACE5D9B7D75DE7F4DF3DE7CDB9988C99E2DE36FBEAFF4A29859313BE45CA5450D99A7F567CCB9793D1AD711879219056848C53554A2DBD46B0832E74F4AF6FC29717A20560DD552343002C16828094030FA29B0ADB412CE43D60B4BAB32B7';
wwv_flow_imp.g_varchar2_table(57) := 'E2FCBC003F06BF9ACBCBF9D9EA43D9562C2E56B2C353D30BABCBA23B8C6A85F5E8FFEE1BC6AA2DF6DDFC5B378F487F4F57D57669ACBA93AE5AA08E05859505C94C1F17FDA9DBA9A3AA86AD5A585DBCD4A6569EFA6858EBA928CC02240061EE5D1FC46699';
wwv_flow_imp.g_varchar2_table(58) := '1100A723E1D54C462E2C046F1440DB9C77B8805163B65D929F72F794CC50B5D969955F57F967E7E4A8F4A6E25596FA6FF6584F4AB68F3B9FAE28A64D9F37F8C85C4F2DE8C7F84A0EFDE2A6655922C9784C7A3A9232D2D725FAA4CA9ECE64799ED4F1A5A7';
wwv_flow_imp.g_varchar2_table(59) := '0132663440DB584735AC1A1081A034930420283D15D0765A962D7647F5A341DD894ECD2E042EBA6997365BC99468F2E31698EEAC8AAB4B8EC5B68DF63B2EF7DB42DBB664AF1905706A5731B3DAD06704E4E6A6452FF273DA66A5655DA984DCB36BA3FCE6';
wwv_flow_imp.g_varchar2_table(60) := 'FBEF94CFFEFC83F2D54FBE57BEF2CBEF962FFDD283F2D71F7F40FEEAE3F7CB973EF160799E2EFBB38F3F28BFF1BE3BE5EE9D1B454F7754AAD3699EB631C753129D8858D6420112801662477253E6902AD6D9EB18FAD90B339277B89ADE71E5362C9C35A7';
wwv_flow_imp.g_varchar2_table(61) := '2CCE5E9C71DCB29DF2F6E8DC523E6B86FFABDF0B61A4BF47360F79ABCBB1412D5E38DEDB29A944F5518BF2B9F95C634EFDE8CE5FA75A42DC3CD22F3F75FF1EF9C38F3D20FFF147F7C9C70E8CCB81F12ED9D8939089EEB88C765D3BE9BC4DBD09B96DA24B';
wwv_flow_imp.g_varchar2_table(62) := '7EE6B671F93F7F6C9FFCD1CFBE5D7EF66D7B65F3707F2D9B96DCDC79C9CDF2A8E49AD0025538388DB583D3545A1A5401BBA35B2C331250ADFDE94C569E3F1A9C7BC51F9B9A95A59574B570C4B22CB13D9EFFD71DA1387C6D343B97B11E6FD7123854D3F2';
wwv_flow_imp.g_varchar2_table(63) := '453DA9B8DCB8D1F9BA8552BEFE0B0173F366676A8EFEBD069834C3FBFFEC5DB7CAA73F7A8FFCEB776C975BC73B652015F3BAFA9BE5741D5DF7D7DFB64DFECB47EF965F7CE77E3322907873B9DB8B5ADBED561FCB11588F0009C07AD458A72681F2057171';
wwv_flow_imp.g_varchar2_table(64) := 'E73F8E874E9C96956CBEA67ADB5178763923474E9E76DCB4DDD1235E86FFB5123D37AC3FAB4D7AA42A56B5A5FE9D9F8CDB260118766C6049EFB3EF58C279A17EC4CEEB91743C66CB47DEB25BFEEE9FBF5BFEC5BD9B64739FF3EFA3F396AF5DBAB53F299F';
wwv_flow_imp.g_varchar2_table(65) := '7CEB66F9BC396DF04377EE12DDD6B5252ABFD39180C2CA62E585CC0DAC40901A4E0210A4DE0A705B633D038EADD76B015E3EE9FF61D1974F4D4926EB7CE41AEBEA15CF370172B9606D388047FF973B7ACC9C06B8FCBAD2CF7A1280626655F4A2BA4AF5AE';
wwv_flow_imp.g_varchar2_table(66) := '9DB77D6C403EFBF177C8BF7BF70ED9D053FDB484D4F9B5D99C22F85F1FBE513EF3736F9789C15E0FB595247BE1A4682C1E0A530481860B9000349C940A2B09C47B06C5EDAAF8C327CEC8A919FF5E1078767E458E9F764E52AC584C62DDDECF09BB8D00A4';
wwv_flow_imp.g_varchar2_table(67) := 'CC917425CF20CC73BB48AE542AAC2B8C523E6B769CA73CAD7BFF4D9BE4533F79B7DC32DAE9A97C230ADD31D1257FF2B17BE5DE1BDD1FD8A40F49D20B0335A6466C9B3ADA2D10ACEDDBC16A2EAD0DAA80158B4BBC77D0B1F93A0AF0EC9113326386D91D0B';
wwv_flow_imp.g_varchar2_table(68) := 'B661E1722627DF7EF66529B8DCAE37D13FE6FDE8DFC4512A563FED615996D86692807EC5632EE72E8AD52F7EAC1A72A954BE88CEEDDA09DBB2E5A3F7DD2CFFFB8FEC13BD78AF6A7D4D5AB0D18C06FCA71FDB2F1FB977B7D8B6F39F59BD3DB15E132026B6';
wwv_flow_imp.g_varchar2_table(69) := '2635876A11A828E0FC9B5971156622B03E8158F780C4525D8E2BCF2D2CC9F70F1D93746E7D47878E95AF73E1AA69CBA3CF1F964CCE79E8DF2A273943DEB7A27FF01D768231DBEC40CDB7F70AFD5532669217DB61E7B79E1BF5145616C4EDB6C9AAF0E17B';
wwv_flow_imp.g_varchar2_table(70) := '76C9BF79F006E94DB6EF4F5C77C296DF7EE70EF9F03D376A931CA7FCE26CF9D6C58E8558E87B81A035B07DFF77044D8AF6D62D50DE41F6395F18A61B397771569E78F5B894F44D9B27BDE5EF3F9A9DFFC579E75313966549627042C4FC94067D158A25B1';
wwv_flow_imp.g_varchar2_table(71) := 'CC7F0DAAAEE5D5D86AA1494E952D5B96556549E5D92533FA92F370C5FF3B6EDE24BFF6F61B7C21A721FE8669CB3BF76EA91CD45573CBB195D6312A72551DBC44A0160112805AB4285BB780DDD92BB18E6ED77A4E9E9B96479E3B2CCB99EA43E4AE95D459';
wwv_flow_imp.g_varchar2_table(72) := '408FFC1F79FE55B930EB7CCF7FDD8C6D4636E2DD7DFAD2FBA47B079723E45C21B83B047D5C72D12101F00E75A96461694EDCCE95DFBE6D5C7EE707F68A1E7D5F5AABFDFF76C42DF99D87F7C89E4DA38E8D29157292E776C18E46FE5E18BCD6910004AFCF';
wwv_flow_imp.g_varchar2_table(73) := '02DD62CBECF0F448D9B2DC7FF5CE9CBF28DF7AF1889C5F5C6D79CC33CB69F9DAD30765EAA2FBCEBF3CB2D16FFEB87B88696D2096CB1303839C002C675D4EE3D4E2651289FCE245739ABCB496F0CDF789982DFFF607F7956FE2F3E64C9FBC18EE8CC9EFFD';
wwv_flow_imp.g_varchar2_table(74) := 'E80149C663555BA4A744F273E7C50459B50C0B1068A480FB5FE1466E8DBA10300276AA531243136259EE43C07AF4FD6D73147E747AB625A704CCA8BB1CBF302F5F7BEA05F1FAA8E2C4C098C43A7B4C64B57FBB25007A145D7BADFE586331ED72CD844906';
wwv_flow_imp.g_varchar2_table(75) := 'BDB634BF3C27C55CD6B1F88FDFBB5B6E1C4A399669E7C2ED0349F9E13B763A36411F25ACD739381662A12F0582D828128020F65A08DA1CEF1D9278DF88A7489657D3F21D93043CF6D2D1A6DE2C68399D95C75F7E5DBEF5ECCB92CBBB1CBDBED172DDF96B';
wwv_flow_imp.g_varchar2_table(76) := '2C6FBCADFD47CCF973E94B01B83952B5A017332E09804BEC57EA2D497EE1E295B7155E25CCD1FFCFDEB9B9C2127FCDFAF83D5BA5BB23E1D8281DE96014C09188850D122001681024D5D42E50EBCEF3E89929F9E2779F97E78F9F93821912AE7D8B95D7C8';
wwv_flow_imp.g_varchar2_table(77) := '9AF3EC5AE7171E7B568E9E99AE5CA8C2DC78CF80680C1516799EE53602707E6ED9735D7E2AA8C3D96767971C9B64C59C778497572EE5F35272796EC007EFB949269B78939FCB6DA9F7E796BE84FCF0EDCEA30085F4AAD47393A47ADBC8FAEB1108E63A24';
wwv_flow_imp.g_varchar2_table(78) := '00C1ECB770B4DA9C02480C8C8BEE48BD0694CD66E5F9C3C7E4CB4FBC282F9E9892D3B38BEBBA5030932FCAD9B925F9FE6BA7E42B4F3C5FAEB3E8F091BCB5EDD3A3FEE4C8A6B5B36B7E6F279CEFF37FCA9C8E985F753E92AE79A32D5861219397A3E79C8F';
wwv_flow_imp.g_varchar2_table(79) := 'DA2D97DB435F6E6631BD6C0E88AB9FFB1FEDEB968FDEE67ED39DCBF5B5FBE707F74F8AB6B97A3B4A52CCAC545FCC12041A244002D02048AA599F80DE392F31B44112E6748065B95F1370792BF34BCBF2ECA1A3E6D4C0A1F285824F1E3E2987CE5E2CDF49';
wwv_flow_imp.g_varchar2_table(80) := 'F08CD9B14FCD2FCBF98595F274CEBC3E6312851366677AE8CC0579FAC829F9E67387E4DBCFBD2A2F1D3D250B0E0FF6B9BCBDAB7F26FA472469DA7CF5BCF5BEB61209711A05387D61564ECF056F6770766E55CECF55BFCFBDDE15D24A3A273F655333D253';
wwv_flow_imp.g_varchar2_table(81) := '70795CF21D374CC8CE41FF9EFB2FC771D53F7B463AE49E9D1BAE9A73FDCB72CC26F6EB9730C78F02416D130940507B2E44EDD61D6062684212C393666758DBAF6436972B7F4CEFD0F1D3F2E4C1C3F2CDEFBF24DF78FAC5F2457C7FFFE4F3A2D33F3CF582';
wwv_flow_imp.g_varchar2_table(82) := '7CE37B07E551736EFFC9978EC82BC74EC9F9D939D71BFB54224E0E4E887E8A412CEFC94AA57A2ECFB3ECB8B85D4078F8DCECE5E281F979E8EC8C635BF542504D021C0B9985FAD1B842DAF954C2FD3BC64CC9607D3FB0D3B9CD451373A9014F4B0C960AAD';
wwv_flow_imp.g_varchar2_table(83) := '6DB5406D7F6D5BDD3AB617298178CFA0A4266E10AFE7865B8963C5E2D2B1E106899BA37F69E4976549ACAB4F9C497A099F0000100049444154BE5E3A714E16D2EDBB1F8253DB2A2D9B59C9CA6B6634A6D2B2CBF3F4BE09975F3BFD2CE6B28EE7C3B78CF4';
wwv_flow_imp.g_varchar2_table(84) := 'CBBEF16EA72A7CB96CCF58B78C0DF448B5AFA2D9F91773D51F395D6D3DE6B74320B8DB2401086EDF85B2E5B61916EE98DC21FADC00AB96CF89375143CFF7EBCEDFEB4EABD6A6D89D3D6239C4BABC9A91C70E9FADB5DAB6957FF2F569B9B850FDA85D638D';
wwv_flow_imp.g_varchar2_table(85) := '79B819940650CC38DF0362FF9651D1FBEE6BD9204D13DD71B97DABCB2840960420487D1AC4B6920004B1D742DE663DDA4E0E4D4ACA1C71EBF0B8653566B8BD1636CBB2447752A9F16DE5F3FD563C29CDFAD253203A24EE54FF53874EC892DB8D759C2A68';
wwv_flow_imp.g_varchar2_table(86) := 'D1B20B4B1979FEF5338E5B2B273C1E3D4B0E0F4BD28DDCB26140BA12C1FB33A6772ADCBF715043A83AF14980AA34BE5A10E4C604EFFF9C206BD376EF026607ACA301A9F1AD92181817DBE30EC3FB06AA97D46DE9F508C9B1ADA2098898B6542FDD98253A';
wwv_flow_imp.g_varchar2_table(87) := 'CA20523DD1C9E4F2F2C8CBA7A5A8772A12FF7E7DFDE0715958713E6A4FE8F320BC9ABA7C3263CB60A77F315C5AB675A8CBB904CF0570F66169DD022400751352417305ACF279771D0D889B1D878E0E346B7B5A77A27F5452933B45AF47B0ECD6FDEF11EB';
wwv_flow_imp.g_varchar2_table(88) := 'EE133BEE7C53A0A75F3D2EAF9DAF3EB4DE2C17AFF5BE7A6E5E5E38EA7CAAC24E768AED71F85FB75B2A3ADF90A9BFC3D94CEBF0EB34D899706C5AC925F9715C99852D1208F6665AF7172ED84EB4BECD02BA73D68FDE756EBAA97C315EA27F44BC5C45EED6';
wwv_flow_imp.g_varchar2_table(89) := '6C3B9E10AD4BCFF16BDD89C17169E58EFF4AFB2CD14F175856F5518082D9217CFEA957E4EC82FFCE0DEB4715FFEAF197AE8453F195C638567149D5992E47C11D011CFEBF1CEB4047ECF2CBCA3F4D7F575EC05C041A234002D018476A699580D941EAC578';
wwv_flow_imp.g_varchar2_table(90) := 'BAB3D451810E73B4AE89810E2BEB517BBCBBBF7C557DEC8DA70EEA79FCF2EBAE3ED1657A71A1DE7320614E2BE84E5F8FF6B52EAD534CDDAD0AA3D276625DBD629B76575A7679DEFCD28A7CE97B4764D947B7089E4FE7E5CBDF7F5D5633CEF7EA8F75F698';
wwv_flow_imp.g_varchar2_table(91) := '532ABD974371FFA99F83D7A94AC978CC96589BFBAC4AD33CCDD6B6DB0E177F4AF9E917D56F80E46923146AAA40D02B2701087A0F46B8FD961D133BD9217A6A2031B44192231B2539BA5952635B44AF1D484D6C97D4C4B64BAFCD3C5D961CDE2809BDE7C0';
wwv_flow_imp.g_varchar2_table(92) := 'C0A8E84E5FEBF00DA1D919688262999F4E6D3A367551BEF0BDD71CEF8EE7B47E2397E91D15BFFAE249393EED72D73FD357DA4F356DBB3C1852FEA7E26A0EB941C5F27E9BA9B98B4ED5DBA5B1EB54BD044B10A847C0AE6765D645C0FF02C1FA031A332300';
wwv_flow_imp.g_varchar2_table(93) := 'B19E0157D6978E9F933F7FE28814DA785160365F94BF3547FECF1D39E1DADE725C6604C0B5E035054CDFD966BA66DE9537053344DEC867425CA9B935AFB4ED1A43D5AD39670755576341AB0482BF1D1280E0F72111844C2031302656DCF902310DF9E0B1';
wwv_flow_imp.g_varchar2_table(94) := '33F2A96FBC20B32BCE43EF5AB6D1D3C5E5ACFCE7AF3D23CFBD7EDAB56A1DA5D15117D782150A5856ACC2DC2BB3B2F9E00E912F669C2F70B46CFE3C5FE9695E354380DFB066A85227027508E8058F29732AC332C3E66ED59CB9302B7FF4C87372F0CC9C5B';
wwv_flow_imp.g_varchar2_table(95) := 'D1862D7FE9ECBC7CFAEBCFC8C579F74F24586627A6A76634A67535C0ACEFB4DE4C001F9474399EE96597873CB99C0ABA5C0F3FDB231086AD920084A117892174027A7D427924C0C330F0ECE28AFCCD775F96AF1E3C257A645E6AC2C971AD536FF1FB9517';
wwv_flow_imp.g_varchar2_table(96) := '4ECAE71E3F288B1E1EA0645996248636889D5CFF67F5358170EADC13B3CEF71C705AB7DDCB8ECF383FE469DD4953BB0363FB81112001084C57D1D0A809E84573B16EF7EB01D4259DCDCAA32FBC269F31A3015F79F154F9098285065C1F902F94647A2963';
wwv_flow_imp.g_varchar2_table(97) := '928BD3F2C78F3C2FDF3EF8BAA4B32E47AEDA2033C57A06CBF753302FD7FDED7607461D8D580DE06980E55C510E9E751EB5F1721A68DDB0AC58A7403856270108473F1245480592C393357D746E6E6945BE6376D2BFFF95A7E4B38FBF2A8FBD7EDE8C0A64';
wwv_flow_imp.g_varchar2_table(98) := '6ABA83A01EED4F2DA6E5F1D7A6E54F1F7B45FE9F2F3F29DF7AF13599595CF6AC6C273A243934E1B97CB58276B2A3DAA2F2FC678E4FC9E9C5D65F0351DE781DFF4C2DE7E5E9D7A7AAD6A0231F8DB8CF45D50DB000012340026010F86E8740494487AACB53';
wwv_flow_imp.g_varchar2_table(99) := 'D1BC0EE26462287F56BB897E66185D3FD6A8F738A8752BAF9E9C922F3FF992FCC7FFF15DF9BD2F3E6976E6AFCAD7CC6982A78F5D9023E71765663923F3E61CFAE1E94579CACCD3E1FDFFF6ED97E57FFBD2D3F27F7FE909F9D2532FCB91D3D3922F9ABEA9';
wwv_flow_imp.g_varchar2_table(100) := '61E37A5BE3D486ED220D3887AD47C14E3BC2531717E4C8C5E09D06383E979669876B282C9340B98D7E085F6D1308CB864900C2D2933E8EA394CF4A7EE18264CF9F94F4D9D7247DFAB0AC9E3C64A657CCF4B2AC9E303F033969DB5F96F4992392993E2EB9';
wwv_flow_imp.g_varchar2_table(101) := '9973925F9C91627A59DC6E615B53775996E84880DEC0488F0C6B5AF78DC27ACEFE9513E7E41FCD69822F3DF58AFCC5775E34A70B9E973FFCC673F297E6F5979F7EB53CBC7FF8D4B4E8CD86DE58ADA61FDA366D67D29CF7B73C5CC0E8A572CB8EBB8E803C';
wwv_flow_imp.g_varchar2_table(102) := '7A64DA4B55BE2AF3ADD72F38B62796EAF4F44910C74A5888808B80EDB29CC508AC4BA094CF497E69B6BCD3CF9C3B2AB9D929C92FCF8B3EDEB598CB48A9902BEF24F57EE7A55251023B99A3E362362D859545C999244793808C497432675F178D5BE79BE0';
wwv_flow_imp.g_varchar2_table(103) := 'D66578CD4A2609489821F5E4F046B113F53D99305728C84A3A2BB3E674810EEBAF64B292CBE7AFD95CAD6FF4483D39B259F4E85F4C5B6B5DBF6A795397ED72FF80275F3F276797BC5D9750753B2D5C706221278FBB3CDED9EEACE18E892D6C3B9B5281F0';
wwv_flow_imp.g_varchar2_table(104) := '4C2400E1E94B7F446276887A14AC3BBFEC85D39776FA261928E950BF3F5AD8D45694349929E445939C821909D091014D087454A0111B8E75F797EF7618ABE1813A8DD8AE531DB6395A4D8D6E11BD95B153B9F52ED3EB002CABFA0D81CECC2CCA5F3C7F6E';
wwv_flow_imp.g_varchar2_table(105) := 'BDD5B77CBDCFBD784E8E9FAF7E01A06559A2310B5F0834598004A0C9C051AA5E8FF8D3670E4BF6E219299A61FF28C5EE146B616541D26614246D4E7F1456179D8A7A5A66273B25A5B7391EDD6C4603529ED66946213BD921A9D14DD2B161876812D08C6D';
wwv_flow_imp.g_varchar2_table(106) := '689DFA71383BD5A52FAB4E9F7DFC1599CFD476AD42D5CA9AB8E0C26A41FEDBB79C1F9AA44F4B6CD42994268612D9AAC314380940987AB34DB1E8F9EEDCEC39D123FEA239DA6F53337CBF593DFDA1D74164A68E899E22A9B7C13A1AD0B17157F95907B116';
wwv_flow_imp.g_varchar2_table(107) := '8E08C4CC90BC5E98D831B943BC7E4CB1DE58CBA7161C2A595CCDCA1F3C71D2A1843F16FDE7C78E4926E77CBA25DE3B2C0D3D8D227C2150598004A0B20B733D0AE850B7EED072F3CE173579AC2EF4C5F49A87C2EA9264A64F944F133422E098395F9C1CDB';
wwv_flow_imp.g_varchar2_table(108) := '221D665420DE3DD0F05101CBB2CA75EAD314F5214BC9F2707F9F88541F9697067F69B2639B910FA76AFFF4DB2FC9B353CE37D7715ABFD9CB5EBE9896BF7EF290E366EC648734EB548AE38659E851205CC54800C2D59F2D8D26BF34271933ACAD47B62DDD';
wwv_flow_imp.g_varchar2_table(109) := '70083656CCAE1ABBD7CD4840633EC3AE43C63A749C3443F27A749E1CD924F19E81F295E4966D8B6579DF595B9625BA8E1D4F8AEEF413C393E55186A439E5A0C9862E6B471724FA871DE328148BF2BB5F7A5E4E2DFAEF82C0334B39F9CDCF7F5FF285EAA7';
wwv_flow_imp.g_varchar2_table(110) := '292CCB9244FF683B68D9664405EC88C64DD8750AE8857EB999B3A247B4EBA9CAFCAD13DBFC13D3C9B62416D0C936ED37DF6249ED5F7AEA247DE6B5F227236A5FBBFA1A562255DEF96B12D0B9F146D123F6C4C0B8C47B87CA1FA9D3F3F5BA73B7EC98E8A4';
wwv_flow_imp.g_varchar2_table(111) := '9F2AD0797AE4A98F238EF78F9975364B8739BDA03BFD78CFA0582619A8BEC5D62C8975F58B658E909DB6F6F2998BF21FFEFE2559C856DFD13AADDF8C657A6DC26F7FF9A01C3E3BEB58BDF65BACABCFB10C0BDB2B10B6AD930084AD475B108F1EF1E766A7';
wwv_flow_imp.g_varchar2_table(112) := 'CCCEDFF9696657372511B365E350AFDCB173933C746097FCC8DD7BE5C3F7ED930FDFBF5F3E74DFAD019DF6CB07EEBD45DE7FE7CDF2E0FE1D72F7CE8D72E3F8807425E35787EEF85A9380CC79733A209B762CB7EE8596253173CE3EDE3F22C9378EE43B36';
wwv_flow_imp.g_varchar2_table(113) := 'DC50DEB9776EDE2D3A754CEE129D971ADB6ACA6C94C4C0A859A757C4AC2B7EFA32ED490E4E9866D98EADFAC7574EC9FFF28D2352D0FB3439966CFEC27CB124BFFBB543F29D43CE4F4DB42C4B1283E3628213BE10689580F3FF49AD6A05DB098C40299F15';
wwv_flow_imp.g_varchar2_table(114) := 'DD61E98ECB4BA3077BBBE4B6DD3BE47D6FBD5DDE76DB5EB979DB26191D19969EDE5E497474493CD52989544740A74EE9E8EA96FEFE7E991C1B951BB76D963BF7ED96F7DD7BABDCBB7B9B8CF4747A2132A7017292354980A7C20D296449794763763A6FFE';
wwv_flow_imp.g_varchar2_table(115) := '14334FFCFFA59F0688F70DB936F40B4F1F965FFFD22B3293F69EA4BA565A6381854C517EED8B2FCB979F7DCD75CD78DFB0C43A7A5CCB51A09D02E1DBB61DBE9088A86902A5A2E466A7CB3B2CB76D7424E37260D73679E76D37CBDE4DA3D2938A4BCC725B';
wwv_flow_imp.g_varchar2_table(116) := '2BF8CBF57FA85422213B364DC83BEEDC2BF7EFB941BA5209D7C08AB9AC1496E75DCB45BE80495AE27D231273F958A01EFCFF9DD9F17EF26F9E93D7E71A739D452DF6C7E7B3F28B7FF98C7CF5F9A3AEAB692C9A008889CDB530051068A080FEBD6A607554';
wwv_flow_imp.g_varchar2_table(117) := '1566013DEF9F5FAE7E0393CBB177A652F2C0ADBBE596AD13D29974DFF95D5E2F6C3F3BE271D9363926EFB9FD66E9EB4CBA86A7A7552422374C72C5702860C5E29218D968F697EE7FBEBEF7DA59F9E5BF785A9E3AB3EC506363173D736E453EF1E74FCA73';
wwv_flow_imp.g_varchar2_table(118) := 'C7DC6F4E6459B624F4D6C9B1E8FE7F2201F90A6333DDFF0F0A63D4C454B3805EEC979B73BFE77A774FAFBCFBAE7D32DECF70E665E4DEEE2E79CF9DB7487F4FD7E559157F16CDE9154DB22A2E64E63502762225FAE90411F761A5A3D3B3F2337FF44DF9F5';
wwv_flow_imp.g_varchar2_table(119) := '2FBF2A7A35BE34E94BEBFECDBF3B243FF5878FC8B1F3DE46733406DB9C066B5293A8160147011200471E165E16C8CFE9457FCE575677A4CC91FFFE5DD2DFE1FD22B8CBF587FD67672A296F3736BDDDCED705E4172F9A532CAD1FB20EA27FBC674012FD23';
wwv_flow_imp.g_varchar2_table(120) := '9E9BFEC5EF1F91F7FE5FFF20BFF5D523F2F285C65D7479F07C5AFEF5570EC943FFE91FE46FBF77D8F3208E3EDC4963F01C0005DB2810CE4D930084B35F1B1A55A99097FCA2F34798E289B8DCBEF74619E94A3674DB61AAACAFAB53DEBA7B9B63487A2D80';
wwv_flow_imp.g_varchar2_table(121) := '9BB56305115BA89F6ED09B1F790DBB582ACA5F3FF9AAFCC29F3D2EFFFCF307E5CF5F3C2F3A645FCBC582B3E9827CDF0CF3FF7FCF4FCB2F7FE125F9C5CF3E2E9F7FFAB0E87D08BCB643EFAF101F18F55A9C720834458004A029ACE1AA542F4ED387DC3845';
wwv_flow_imp.g_varchar2_table(122) := '75D3F66D72C350B75311961981D1C17ED93CE1FC873FBF7051F46E81A57C4EF4D316419EA4C9D734E87D0C12C31B6A1A0930DD20171757E41B2F1E937FFFF927E5139F7D4C7EFD7FBC28BFF7E871F9EB972ECA33532BF29219217875262387CCA447F8DF';
wwv_flow_imp.g_varchar2_table(123) := '3CBE287F79F082FC1FDF3E21BFF9C583F2CB7FFEB8FCEEDF3E255F7FE1A8CC98BAB44EAF53BC77A87CFA42DBEE751DCAB55720AC5B2701086BCF3630AE62C6F902AABEBE5ED9B371A8815B0C775577EEDA2276BCFA69124DB6B2D3C7451F1E9439F35AF9';
wwv_flow_imp.g_varchar2_table(124) := '8E8199B3AF07F267FACC11496B0C53C7441F12959B3F5FFEB44331B322522C36A4A375479A189C90C4C0F8BAEA5B58C9C863AF9E92389D68570000100049444154CF3CFAA2FCD6E7BE2BFFE4BF3E221FFA83AF9BE91BF2C14F7D433EFCA9AFCB2FFDC9A3';
wwv_flow_imp.g_varchar2_table(125) := 'F2DB7FF3847CFA9B2FC8B75E3929B34BEB3B85A09FF54F0E4F8AB6795D8D6525041A284002D040CC305655CCA6A59871FE63B777EB4649C5F855F2DAFFDDA9B86C1919702C5E3247CE7AEA452F0CD4E72D047ACAAE964734F28B33A29F74C89C3F29FA2C';
wwv_flow_imp.g_varchar2_table(126) := '84CC8553E56440A4E468E17561C20CA9A7C6B6346CE7AA43FA05875BF77A6D9796D34F2E68DB12DCEA5739023685B7B9FCD50E6FDF3624323D522B157255EB4A2693B279A4BFEA72165C2BB09C2FC9CB538B726ACE1C015FBB2852EF34B929AC2C882603';
wwv_flow_imp.g_varchar2_table(127) := 'E9D347445F3702406FA59B9AD82E7A8EDDB2AC465459571D9665895EE8971ADF26DAB6BA2A6365041A2C4002D060D0B055A723007A345A2DAE89E1014946E10E3FD5003CCE37FB7D39727159BEF1FC11F9DE0B2F493E1DED04E06A361DDDD01181B4395D';
wwv_flow_imp.g_varchar2_table(128) := '504E044AF59D1AB0931D921CD928C9B1AD124B758965B53E11B02C5BF416CC49B3E34F0E6F146DD3D531F33A3802616E290940987BB701B1E98568D5AAB16D4BC60639FAAFE67379FE62B6288F1D3A254FBEF08ACCCF5CBC3C9B9F6B0434D9CC9AD3037A';
wwv_flow_imp.g_varchar2_table(129) := 'AD40299759B3B4C6B76FEC80531BB69B646093D9013B7FFCB2C6DA1D8BDBC94EB3CD8D92D204A4A35BA40D0988F08580070112000F48512E522AE6AB861FB36332D4D3BA3FAC551BE2E305532B79F9FB670EC98993A7A498AF7E2AC5C721B4B4693ADA54';
wwv_flow_imp.g_varchar2_table(130) := '7ECCF4F471714A3EBD37CA925877BF744CEE90943ECED8EC902DABF123029665B6D3D92BA9896DE56DE936D9F14B08BEC21D020940B8FBB7FEE84AD52FD08AC5629EEE735F7F238259C38985ACFCE3B3AF487AD1FDF6C9C18CB079AD2EE6B29239F7BAE8';
wwv_flow_imp.g_varchar2_table(131) := '35288DDA8AEE945313DBA563D34DE56440CFCD5B75DC8257D78DF70C9A23FD2D97EA1C37A71C78A04FA3BA8B7A5A204002D002E4C06EC261E7AF31D9315B92F198BE645A2370623E234FBE7848B22B4B6B96B8BFB52C4BF463627D5D1D3239D8279B86FB';
wwv_flow_imp.g_varchar2_table(132) := '03394D0EF5C9506F9789C53607C396D4FAA523267A3AA0914980B6C18AC5CBA3027A6EBEC39C2248991D777248EF25302AFA197DBD8050CFDFC73ABAA43C75F6942F2AD46589FE11D1B27A519FAE9B1C9E14BDB84FEBD4BA99C22510F668ECB007487CCD';
wwv_flow_imp.g_varchar2_table(133) := '13B0F53CAB55FB1FF6E6B5C81F359F5FC9C9F75E3E2CE91A76FE9DC9B8DC3031246FDFB7437EF4DEBDF2136FBB553E74DF7EF9C17BF6C807DFBA477EF61DFB0235FDC4FD7BE507EFDE233FFC965BE4C3F7EF9787EFD82D0FECD92607B68E951F8CE4F5D7';
wwv_flow_imp.g_varchar2_table(134) := '46AF0BD04F0AE885820DEF5DD3082B9E949819BAD7A7F15DFE8C7E7274B3E80E3E35BEDDFCD4699BE83CDDD9EBFD06B46CCC2405BAAEC96C1ADE2C2A44A055022400AD920EE476CCF0BFC3288065B1F35FDBADF942419E78E115595EF276E4DFD9DD2DEF';
wwv_flow_imp.g_varchar2_table(135) := 'BC7D8F7CFC3D77C93F7DFB2DF29EBD9BE48E2DC3B277A2576E18EE946D032919ED4E4A472216A869A033516EFB4E13C3FEC97EB96FE7983CB46F8B7CE82DBBE5971EBE4B1EBA7DB70CF476AFE5ABF85EAF05C84E1D9792B1AD58A05933F5F75BA766D54F';
wwv_flow_imp.g_varchar2_table(136) := 'BD3E17087FF3ECF0874884EB1570D8F7AFB7CAD0AFF79D83AFCBDCE2B26B9C9DA9A4FCC01D37CAAF3E7C9BBCF3C65119EF4D4AE88F2675676AA69E545CEEDF352EFFF343B7C98FBE654F7944405CBE8AF9AC14969C9F47E152058B1140608D0009C01A10';
wwv_flow_imp.g_varchar2_table(137) := 'DE22B05E8133330B7272DAFD637E1BCD39FD5F78CF6D72DFAE0DE5A3FAF56E2FE8EBC5E331B973DBA8FCDCBB6E978DC37DAEE1E4172F4A534E05B86E990251148842CC240051E865626CBAC06AAE20CF1F3DE3BA9DAD1B37C8CF3EB85F467B3A5CCB46A5';
wwv_flow_imp.g_varchar2_table(138) := 'C0684F4A7EFCAD7B65D7C611C7908BF99CE883921C0BB11001043C0B900078A6A22002D5058E9F9F970BB3CE1FF7DB383A241F7BCB0EE98CF3BFDD5AC9A1EEA47CE0AE1B65E7C4E0DA45D7BCD73B05EA3501D7CCE40D020D17884685FC258A463F136513';
wwv_flow_imp.g_varchar2_table(139) := '055672453972CAF9E8BFB733291FBC7B97A412B126B624D855F77624E483F7EC36A745E255032915F2929B9BAABA9C050820E05D8004C0BB152511A8287076665E16979CEFEDFFDEDB76C9582FC3FE1501AF9AD9DB9194BB766FBB6ACEF52FF54E81B9D9';
wwv_flow_imp.g_varchar2_table(140) := '7352CCE8530617A5B06AA695004EA6DDFA31C752F9B1C8A5EB03654EDB04A2B2611280A8F43471364DE0D899692994FF8857DEC496B141D9333954792173AF15B044F423831D5D3DD7CE5FF32E377F41F4B901B98B67253B7D4232D3C7033395DB6D1298';
wwv_flow_imp.g_varchar2_table(141) := 'DC8C69FBF993923977D44CC7243375AC1C4B6E76CA24354B522A16D644CD5B041A2B4002D0584F6A8B98403A5F9099F985AA515B96250FEDDF2629CEFB57355ABBA02B1197C9B1E1B5B3AF7B5FCC6745277D7EC0750B7D3CA3542A963FCDA0B73BD64F35';
wwv_flow_imp.g_varchar2_table(142) := '14B3662423BD5CDEE9E7571624377FBE9C0C64CE1D2BBF261168756746677B2400D1E96B226D82C0D985ACE40AC5AA35F7F576CBD621E7A3D9AA2B477041A95492235373B23AEFFE71CAB0F36862A0A301E95387A47C4BE47A9F90187630E2AB598004A0';
wwv_flow_imp.g_varchar2_table(143) := '66325640E08AC0CC4A468A66A77565CEB5AFB68E99A17F9BFFCDAE55A9FCEECCFCAAFCBFDF7E59FEE4D117E5ECACB73B2956AE295C73750420BF38237AAAA0FC3148338210AE08FD154D945AC35FA628F536B13654402FDB5A584957AD336686FF370EB9';
wwv_flow_imp.g_varchar2_table(144) := 'DFE0A66A05115930B39A97CF3F7B5C3EF30FDF97C3A7CF4B891D5CC59ED74F406467CE8A5E2B50CA652B96612602B5089000D4A2455904D608A4D3993573AEBC8DC76C99E8E3CAFF2B226B5E990CEAE0D492FCF1379E91A75F3926ABB9FC9A02BCAD2450';
wwv_flow_imp.g_varchar2_table(145) := '48AF48FAEC6BA29F86A8B49C79F508446B5D128068F537D13650403FBE95CD564F0012314B063BE30DDC62B8AA3A38BD247FF9F84B32B3E8FC11CA7045DD9868F4B440EEE2E9F2B5018DA9915AA228400210C55E27E6C60898A1EA6CB6FA2980643CC65D';
wwv_flow_imp.g_varchar2_table(146) := 'FFAA481F9F4DCBDF3CF1AAE4D3AB554AB8CDB6C4B22CB12D5B6C3BA09369BF6559620291F57C954A25D16B03F45303EB599F75AE1788DA1C1280A8F538F1364CA068128042B6FAB9D844CC96B86DFEC00B5F570B9C9ACFC867BF7350D22BDE2FF4B31329';
wwv_flow_imp.g_varchar2_table(147) := 'B975C766F9E587EE90DFFFE9B7C9E73EF12E79F4571E92477FF5BDF2CD7F19CCE9917FF9907CF593EF95CFFDB377C9A77EE6EDF2C987EF90FD3B3689C67AB597DBEBDCECB4391D30EB568CE5085C274002701D093310F02860CE618B390AAB56DA12FDAF';
wwv_flow_imp.g_varchar2_table(148) := 'DAD268CE9F5DC9C99F3DF6AA2C2F79DBF96F9D18969F7BF056F9C22FBC4D3EF5815BE417EE9C90B76FED95DDC32919EE8CC950474C46CCCF204EA35D31D9D8132FC7F2C0E61EF9F93B264C8CFBE4733FFF80FC4F26E6AD63831E7F49CC48C0DCB414D3EE';
wwv_flow_imp.g_varchar2_table(149) := '8FA1F65861448B452F6C1280E8F5391123D0168174BE287FF5FD63B238EF7EB4AACF4CF8A76627F8FB1FB943FED57D9B64C76052FA52B6C4ACB634BD251BD5C1A27E13E38D4329F95513F31FFCC45DF28BEFBA555209F7EB488AF99C6467CF895E97D292';
wwv_flow_imp.g_varchar2_table(150) := 'C6B2915008900084A21B090201FF0B3C7B7A5E4E9C39E7DAD0C9A15EF9CCCFBC4D7ECDEC04B7F5255CCB87B5C05613FB27EFDD249FFED80332DED7E51AA63E1B21679200D78214A82810C599240051EC756246A0C502B3E9823CF6F209D723D43BB78FC9';
wwv_flow_imp.g_varchar2_table(151) := '5FFCDC7D7260C27D87D7E210DAB6B93B3674C97FFFF80372FBD611D736E84581C50C9FAA7085A240598004A0CCC03F0820D04C81C74FCCCBCCDC9CE3266E9EE897DF79FFAD3264CEE93B168CE0C2B1AEB8FCFB1F3A20BB27065CA3D724C0B51005D60844';
wwv_flow_imp.g_varchar2_table(152) := 'F32D094034FB9DA811689980DEE9EF9513671DB7D7D791905F79EF7ED9DE9F742C17E585370CA4E45F3DBC5F7A52714786627A458A0E1F4F755C998591122001885477132C02AD1738787641662E5C70DCF0BF78CF7EB96F4B9F6319168ADCBBA957D4CA';
wwv_flow_imp.g_varchar2_table(153) := 'C9A2A84F49E413014E44D72D8BEA0C1280A8F63C7123D02281174E4C3B6E69EB48BFFCC4FE09C7322CBC22A0569B077BAECCA8F0AAB0EAED6396155665568404480022D4D9848A40AB052EAEE6657661D171B3BFF9F03ED18FC0391662E19B027183F5EB';
wwv_flow_imp.g_varchar2_table(154) := '65B3EA9F89D40B01F576C16FAEC40B0781E82E2201886EDF1339024D173831BB2AD96CAEEA76B60EF7C8FD5BFBAB2E6741658177EE1892EDA30EA74C4A4529711D40653CE6BE2960BFF98A170820804003054AA5929C9E599262B150B5D67B774E84FAE6';
wwv_flow_imp.g_varchar2_table(155) := '3E5503AF73811EFBDFBE75D4B1162E0474E4797361945F900044B9F7891D81260A144B22171757A4A42F2A6CA72311939B370C5558C22C2F023BC7AB7F2450932FBD18504C12E6A52ECA44538004209AFD4ED408345D40F73D2B697D5AA2C9042A6CAD37';
wwv_flow_imp.g_varchar2_table(156) := '95908DFD1D159630CB8BC0A4B11BEAAEFEB1C9525E1F5455D9DE4BFDD12813ED284900A2DDFF448F40D3048AA6E695D58CF9B7F2775767876C1D48555EC85C57812E3382A24954B582A57CCE0C00900054F361BE080900BF050820D01481A219024867AA';
wwv_flow_imp.g_varchar2_table(157) := '2700C9445CFA5D6E6AD3948685A4D24D7D4949C56355A32915F222454DC3AA1689FC82A803900044FD3780F8116892809EFA2F38EC8092315BF4236DC2D7BA04463AE392744800A46476FE3AADAB76568A82000940147A9918116887801901286A165065';
wwv_flow_imp.g_varchar2_table(158) := 'DBB1303FDBB74ACC8D9C6DDB964900ECEA551A7FBD18B07A81A82F217E87DF1E701040000104104020AC02240061ED59E24200010410A82AC0022E02E47700010410400081480A300210C96E276804104020CA02C4AE022400AAC084000208208040C404';
wwv_flow_imp.g_varchar2_table(159) := '480022D6E1848B000208445D80F82F0990005C72E05F0410400001042225400210A9EE265804104020EA02C47F598004E0B2043F1140000104108890000940843A9B5011400081A80B10FF150112802B16BC420001041040203202240091E9EAC6075AE2';
wwv_flow_imp.g_varchar2_table(160) := '41238D47A546041068A200555F2D400270B506AFAF11B0AE7977FD9B7C3E2FF962E1FA05CC4100010410F0BD000980EFBBA88D0D74C9003299AC9CBBB8200B4BCBB2BCB27ACDB464DE5F3DAD5DAEEF33B97C1B8363D30820103501E2BD568004E05A0FDE';
wwv_flow_imp.g_varchar2_table(161) := '5D2D60995F0FAB7A16503265BFFDC221F9CA5307E5EF9E7AD1FCBC32FDBD797FF5F415F3FEF2F4774FBE287FFBDD17E4E943C72553D05A4C457C2380000208B454C0FC856FE9F6D858C004AC58DCB1C5BAFBCE168A92CE1564D5E394CE17A4502CCA99F3';
wwv_flow_imp.g_varchar2_table(162) := '3392CE171DEB6721020820D018016A592B4002B05684F7D708D8C9CE6BDE37F24DA15412F6FF8D14A52E041040C0BB00098077AB48968C75F58ADB28C0FA61F4F4828E21ACBF06D644000104BC0850E67A011280EB4D987395809DEA925877FF55737889';
wwv_flow_imp.g_varchar2_table(163) := '00020820100601128030F4629363480E4E48ACA3A7C95BA17A041040A05902D45B498004A0920AF3AE15B02C498D6F9178EF9058FAC9806B97F20E010410402080027600DB4C93DB216076FCC9E149498E6D9158678FD8899458764C2CCB3293BD66B24C';
wwv_flow_imp.g_varchar2_table(164) := '0B75323FF846000104DA2CC0E62B0BD89567331781CA02BAF34F8D6F938E8DBBA473F36EE9DC72B399F4E755D3D63DD2B56DAF68C260D9FC8A5596642E020820D05E01FE3AB7D73FD85B3747FF624606AE9BE4D2D17FACAB4FAC7832D831D27A041008B8';
wwv_flow_imp.g_varchar2_table(165) := '00CDAF264002504D86F9750BE8D1BF4E7557440508208000020D172001683829152280000208F845807654172001A86EC312041040000104422B4002100743B6920000100049444154DAAE25305F085897AE87F0455B6804029113206027011200271D96';
wwv_flow_imp.g_varchar2_table(166) := '21508740BA50901CCF3AAA4390551140A099022400CDD4A5EE480B2CA573F2C2993939B79895D3F3693931B7EA693A399796338B1949933D44FAF787E0EB17A00667011200671F9622B06E817CA1285F7CE2A0FCFE57BF27FFE51F9E913FFCFAB39EA64F';
wwv_flow_imp.g_varchar2_table(167) := '3FF29CFCD7470ECA175F3C23191E97B86E7F5644000167011200671F9622509740B15492422E5BDB94494B6E65515E397156E65673756D9F951188AE0091BB099000B809B11C813609140B392916B988A04DFC6C1681D00B900084BE8B0930B002C59294';
wwv_flow_imp.g_varchar2_table(168) := '02DB781A8E407B05D8BABB000980BB1125104000010410089D000940E8BA948010400081A80B10BF170112002F4A94410001041040206402240021EB50C2F19780655962C512668AAF99CC3CCBF25763690D022111200C6F022400DE9C2885C03A042C49';
wwv_flow_imp.g_varchar2_table(169) := '8E6E96CE4DBBA463E2866B269DA7CBD65129AB208000020D11B01B520B952080C07502966D89DDD12D62D9622592D74C3A4F97F1B864E10B81060B509D5701DB6B41CA2180408D02259152BEFA8D7CCACB4AA6508DD5521C01041068840009402314A903';
wwv_flow_imp.g_varchar2_table(170) := '01041040C0170234C2BB000980772B4A228000020820101A011280D074258120102C01EE725C5F7FE50A2529710A690D226F6B112001A8458BB20820D030814C2E2FB922D740AC17F4C26A9EA745AE178FF5CA0224006506FE410081560B9C9D5B927F3C';
wwv_flow_imp.g_varchar2_table(171) := '3A274BD9A2ACE46A9CF245C99823E056B7B9D1DBAB396EE3B464A6F3AB0579E6CC829C9D5FA9DE24CB12CB8AD69FF8EA182CA924C06F472515E6218040D305965633F26F3FFF947CE88FBE233FFE99C7E427FEF8714FD3073EFD1DF9A14F7D5BFEC32347';
wwv_flow_imp.g_varchar2_table(172) := '033D82A0831FFFE6ABAFC9473EF378D9C06BFC3F69AC3EFA99EFC8EF7CE169995DC956EF27DDF9DBFC89AF0EC4127E3BF81D400081B609A4CD6980131716E4B5E979393235E7693A71D11CF9CE2ECAA3AF9E96D974A16D6DAF77C30BD9823CF1DA39797D';
wwv_flow_imp.g_varchar2_table(173) := '7A4E8E9D5FF014BB1AA9D5E99945C9E69D63B7931D62D9B17A9B19A0F5696AAD022400B58A511E01047C21B092C9C9522EB8D7102C9BB6670BCE3BF17AA0635D7D2296257C21504D8004A09A0CF31140C0DF022118DEB6ACE6ECA0AD585C62DDFDFEEEBF';
wwv_flow_imp.g_varchar2_table(174) := '06B78EEA6A172001A8DD8C35104000015F0B2406C785E17F5F77912F1A4702E08B6EA01108208040630412FDA312EF19684C6581A98586AE478004603D6AAC83000208F84CC0B26C490E4E881EFD8B58C217026E0224006E422C470081A609589625763C';
wwv_flow_imp.g_varchar2_table(175) := '61A6E4359365E659367F9E2CB353B7E3D7DAD88994C43A7B442FF28B770F48BC6F5892C31B2435B943E2FD2312C52F625E9F00FF87ADCF8DB51040A04E01CB8E99A3D509496DD821A989ED921CDF5A9E521BB64BC7F836490C4D8A6559756E25D8AB27C7';
wwv_flow_imp.g_varchar2_table(176) := 'B65C63533632F312431B24393421C99149F37383C47B8745138360474BEB5B2D4002D06A71B68700026501CB1CD9EA51AC5EB1AE47FCBA03D3C98A25C4D2A3DCAE5EB162F172D928FE635956F948DF32A321EAB276523F31230412F92F00D62B4002B05E';
wwv_flow_imp.g_varchar2_table(177) := '39D6430081BA042CCB1CDDDB4E7F82CCF248EFE04CFC3CECA7AEDF3156761670FABFCF794D9622800002F50898FD9B65997FEAA923F4EB06F74647ADEA1AB6B37E011280F5DBB12602082080000281152001086CD7D17004104020EA02C45F8F0009403D';
wwv_flow_imp.g_varchar2_table(178) := '7AAC8B0002082080404005480002DA71341B01041088BA00F1D7274002509F1F6B238000020820104801128040761B8D46000104A22E40FCF50A9000D42BC8FA0820800002080450800420809D469311400081A80B107FFD022400F51B52030208208000';
wwv_flow_imp.g_varchar2_table(179) := '0281132001085C97D16004104020EA02C4DF080112804628520702082080000201132001085887D15C04104020EA02C4DF18011280C638520B02082080000281122001085477D15804104020EA02C4DF280112804649520F020820800002011220010850';
wwv_flow_imp.g_varchar2_table(180) := '67D15404104020EA02C4DF38011280C659521302082080000281112001084C57D15004104020EA02C4DF48011280466A521702082080000201112001084847D14C04104020EA02C4DF58011280C67A521B02082080000281102001084437D14804104020';
wwv_flow_imp.g_varchar2_table(181) := 'EA02C4DF68011280468B521F02082080000201102001084027D14404104020EA02C4DF78011280C69B5223020820800002BE172001F07D1785BD8156D803243E0410A85B800A9A214002D00C55EAF424509292C4ECE02600B66D4BA9E429540A21800002';
wwv_flow_imp.g_varchar2_table(182) := 'BE132001F05D9784A9412E3B77B3F78C157366276A528142414A41998A05D349A6CDB98C14CAAFCDDB4ADF267CCBE27FB14A34CC43A01601CA364780BF4ECD71A55615B0CC1E5074D237D74F856249FEF6F1E7E4AFBEF58C7CEEF1E783333DF6BCFCE5A3';
wwv_flow_imp.g_varchar2_table(183) := 'CFC87F7FECC5EB83BA7A8EEEFCCD28C1D5B3788D000208F8458004C02F3D11D2765876CC31B252B128996C5656D399404DDAE6A249609C82B3931DE216BFD3FA2C43000115606A96000940B364A9B72C6077F6947F46F19F58579F88557D0444F8420001';
wwv_flow_imp.g_varchar2_table(184) := '04DA284002D046FC286C5A7782562C118550AF89D18AC525D6DD7FCD3CDE208040ED02ACD13C011280E6D952B311D01D616270DCBC8AD6B7C6CCF07FB4FA9C6811089A000940D07A2C80ED8DF70C48BCDB0C8707B0EDEB6972A27F5434E6F5ACCB3A0820';
wwv_flow_imp.g_varchar2_table(185) := '70B500AF9B294002D04C5DEA7E532039B259120363E69478787FE52CCB96E4E084E8D1BF88257C218000027E1608EF5F633FAB47B16D96259A00A4266F90E4D084C47B87CCA8C080C4BA7AC54E758A1D4F06674AA424D6D963DADE578E21DE372CC9E10D';
wwv_flow_imp.g_varchar2_table(186) := '929ADC21F1FE9128F62E3123D014012A6DAE000940737DA97D8D809DE89078DF88D9614E4AC22402C921B3E31CD924C9F1ADC199C6B698B66F90A4B67F64D2FCDC60129A61B14D62B0265CDE22800002BE152001F06DD784BF617A81A0658EFC2DB3E3D4';
wwv_flow_imp.g_varchar2_table(187) := '9D67D0266DBB9861FFF0F7141122D00E01B6D96C011280660B533F0208208000023E142001F061A7D02404104020EA02C4DF7C011280E61BB3050410400001047C274002E0BB2EA14108208040D40588BF15022400AD50661B085412B05CEE1560167727';
wwv_flow_imp.g_varchar2_table(188) := '6295D60CC4BC8EB82D8E21960211068D4420B4027668232330047C2E6059660F2F3A556E683E5F9013732BA28F4D9692D95B06682A9AB69E5ACC49A150AC1CDC9B73ABC7FF66115E444E80805B234002D01A67B682C0F502FA1142BBFAFF82BA13FDDAD3';
wwv_flow_imp.g_varchar2_table(189) := '2FCB9F7EF319333D17A8E94F1E79463EF7ADEF8BC6707DE06FCCD1F8CB49D01BEFF98100022D15A8FED7A7A5CD606308444F401F16A4F73E708A7C66252B87A717E595A9F9404DDAE60B4B19A7D0C48A05F7F48663602CAC5380D55B254002D02A69B683';
wwv_flow_imp.g_varchar2_table(190) := 'C05A01CB12BBB347A2FA65273BA31A3A7123E00B0112005F74038D88AA803E35D08AC52317BEC61CEB19885CDC04EC2E4089D6099000B4CE9A2D21709D80154B48A24F1F20149D8BE12CCB2A3F3FC18A60E273DD2F00331068A380DDC66DB36904103002';
wwv_flow_imp.g_varchar2_table(191) := 'FA04C1786F348E862DCB127D1264ACBBDF44CE37026B0578DF4A011280566AB32D04AA082487374A726493E88581558A047EB6C6A631268636043E160240200C02240061E845620885805E0FD0B17197683210EBEC153BD921FA29013B9E34F105EB1481';
wwv_flow_imp.g_varchar2_table(192) := '65D997DA9EEA148D253130261D933B85237FD3957C571560416B0548005AEBCDD6107014D0F3E2F1DE41498D6F95D4D816490C4F8A1E31EBEBD4D856332F1853726CB34964262565463534164D00AC78C23176162280406B0548005AEBCDD610F02C6099';
wwv_flow_imp.g_varchar2_table(193) := '23FF5847B7C4BA7A8337E9088669BB9548798E9782511720FE560B9000B45A9CED218000020820E0030112001F74024D40000104A22E40FCAD17200168BD395B440001041040A0ED0224006DEF021A800002EB122895A42316AC4F475C1D67D2FCF52D5D';
wwv_flow_imp.g_varchar2_table(194) := '3D23D2AF09BE1D02E657B01D9B659B08208080B380E5B26F2F150A5232FF39D7E2DFA5FAA4448DC1B9852E08CE2BB3140147011200471E16228040FB049C777EF97C5E1E3BBE2027167232B59C0FD474D2B4F93BC7E7A56062A8EE1B9DF181EA062C69A6';
wwv_flow_imp.g_varchar2_table(195) := '0009403375A91B0104D62FA043003A55A921932FC8BFFBFC13F2E14F3F2A3FF999C7E427FFF8F1604CA6AD1FFEC347E5B7FEE609C9E67255A213D17B4288E59C04095F08D421400250071EAB2280407305CA3B41874D944A25595C49CBB9B9453937BB10';
wwv_flow_imp.g_varchar2_table(196) := '8CC9B47561392DA6E90E918944E71E0AC2579B044800DA04CF661140C05D406F87EC5E2A9C25EC44473803232ADF089000F8A62B68080208AC1588750F48146F21ACCF7FD05B42AFF508E37B626A9F000940FBECD9320208B808E80840A27FCCA554F816';
wwv_flow_imp.g_varchar2_table(197) := 'C7FB86855300E1EB57BF454402E0B71EA13D0820708D801E0927FA47AF9917E6371AAB2600618EF14A6CBC6AA70009403BF5D93602087812480C8E4B6A6C8BE88880A7150258C84EA4CA4F50D45803D87C9A1C4001128000761A4D46208A02B1AE3E9304';
wwv_flow_imp.g_varchar2_table(198) := '6C95E4E084C43A7B4477987AAEDC4E242FBD363B503B30936973DC4CDAF6549789C92438E35B25DE3B14A9AE25D8F60A9000B4D79FAD2380400D027A4160BC7F4452E3DBA463E32E496DB84152133A6D373F833499369BB66B0C1DE667DC9CE2B04C4250';
wwv_flow_imp.g_varchar2_table(199) := '03054511A85B8004A06E422A4000817609E87D02823C8944F9463FC2579B054800DADC016C1E01041040008176089000B4439D6D22800002111720FCF60B9000B4BF0F68010208208000022D1720016839391B44000104A22E40FC7E102001F0432FD006';
wwv_flow_imp.g_varchar2_table(200) := '0410400001045A2C4002D062703687000208445D80F8FD214002E08F7EA015082080000208B4548004A0A5DC6C0C01041088BA00F1FB458004C02F3D413B10400001041068A10009400BB1D914020820107501E2F78F0009807FFA8296208000020820D0';
wwv_flow_imp.g_varchar2_table(201) := '320112809651B32104104020EA02C4EF270112003FF5066D410001041040A0450224002D82663308208040D40588DF5F022400FEEA0F5A830002082080404B0448005AC2CC4610400081A80B10BFDF044800FCD623B40701041040008116089000B40099';
wwv_flow_imp.g_varchar2_table(202) := '4D208000025117207EFF099000F8AF4F68110208208000024D172001683A311B40000104A22E40FC7E142001F063AFD0260410400001049A2C4002D06460AA47000104A22E40FCFE142001F067BFD02A0410400001049A2A4002D0545E2A47000104A22E';
wwv_flow_imp.g_varchar2_table(203) := '40FC7E152001F06BCFD02E0410400001049A284002D0445CAA46000104A22E40FCFE152001F06FDFD0320410400001049A264002D0345A2A46000104A22E40FC7E162001F073EFD0360410400001049A244002D02458AA45000104A22E40FCFE162001F0';
wwv_flow_imp.g_varchar2_table(204) := '77FFD03A0410400001049A224002D014562A45000104A22E40FC7E172001F07B0FD13E0410400001049A204002D00454AA44000104A22E40FCFE172001F07F1FD1420410400001041A2E4002D070522A44000104A22E40FC4110200108422FD146041040';
wwv_flow_imp.g_varchar2_table(205) := '0001041A2C4002D06050AA43000104A22E40FCC110200108463FD14A0410400001041A2A4002D0504E2A43000104A22E40FC41112001084A4FD14E0410400001041A284002D0404CAA42000104A22E40FCC1112001084E5FD1520410400001041A264002';
wwv_flow_imp.g_varchar2_table(206) := 'D0304A2A42000104A22E40FC4112200108526FD1560410400001041A244002D02048AA41000104A22E40FCC112200108567FD15A0410400001041A224002D010462A4100011415A8EE000004A64944415404A22E40FC41132001085A8FD15E0410400001';
wwv_flow_imp.g_varchar2_table(207) := '041A204002D00044AA40000104A22E40FCC1132001085E9FD162041040000104EA162001A89B900A10400081A80B107F1005480082D86BB4190104104000813A054800EA04647504104020EA02C41F4C01128060F61BAD460001041040A02E011280BAF8';
wwv_flow_imp.g_varchar2_table(208) := '581901041088BA00F10755800420A83D47BB114000010410A8438004A00E3C5645000104A22E40FCC1152001086EDFD172041040000104D62D4002B06E3A5644000104A22E40FC411620010872EFD176041040000104D6294002B04E385643000104A22E';
wwv_flow_imp.g_varchar2_table(209) := '40FCC11620010876FFD17A041040000104D6254002B02E365642000104A22E40FC41172001087A0FD27E041040000104D6214002B00E345641000104A22E40FCC1172001087E1F1201020820800002350B9000D44CC60A08208040D405883F0C02240061';
wwv_flow_imp.g_varchar2_table(210) := 'E84562400001041040A0460112801AC1288E000208445D80F8C3214002108E7E240A0410400001046A122001A8898BC208208040D405883F2C02240061E949E2400001041040A0060112801AB0288A000208445D80F8C3234002109EBE24120410400001';
wwv_flow_imp.g_varchar2_table(211) := '043C0B900078A6A220020820107501E20F93000940987A9358104000010410F0284002E0118A6208208040D405883F5C022400E1EA4FA2410001041040C09300098027260A21800002511720FEB009900084AD4789070104104000010F0224001E902882';
wwv_flow_imp.g_varchar2_table(212) := '000208445D80F8C327400210BE3E25220410400001045C0548005C892880000208445D80F8C328400210C65E25260410400001045C0448005C80588C000208445D80F8C329400210CE7E252A0410400001041C0548001C795888000208445D80F8C32A40';
wwv_flow_imp.g_varchar2_table(213) := '0210D69E252E0410400001041C0448001C705884000208445D80F8C32B400210DEBE2532041040000104AA0A900054A56101020820107501E20FB3000940987B97D8104000010410A8224002500586D908208040D405883FDC022400E1EE5FA243000104';
wwv_flow_imp.g_varchar2_table(214) := '1040A0A200094045166622800002511720FEB00B900084BD87890F0104104000810A02240015509885000208445D80F8C32F400210FE3E2642041040000104AE132001B88E841908208040D405883F0A02240051E86562440001041040608D0009C01A10';
wwv_flow_imp.g_varchar2_table(215) := 'DE22800002511720FE6808900044A39F89120104104000816B044800AEE1E00D020820107501E28F8A000940547A9A38114000010410B84A8004E02A0C5E22800002511720FEE808900044A7AF891401041040008137054800DEA4E005020820107501E2';
wwv_flow_imp.g_varchar2_table(216) := '8F92000940947A9B5811400001041078438004E00D087E20800002511720FE6809900044ABBF8916010410400081B200094099817F10400081A80B107FD4044800A2D6E3C48B00020820808011200130087C23800002511720FEE809900044AFCF891801';
wwv_flow_imp.g_varchar2_table(217) := '04104000012101E0970001041088BC0000511420018862AF13330208208040E405480022FF2B00000208445D80F8A329400210CD7E276A0410400081880B900044FC1780F0114020EA02C41F55011280A8F63C712380000208445A800420D2DD4FF00820';
wwv_flow_imp.g_varchar2_table(218) := '107501E28FAE00094074FB9EC81140000104222C400210E1CE2774041088BA00F14759800420CABD4FEC082080000291152001886CD713380208445D80F8A32DF0FF030000FFFF159F4BF5000000064944415403003101FDF0E398F3710000000049454E';
wwv_flow_imp.g_varchar2_table(219) := '44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(5568873243564557)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(5571120301564741)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(5571392122564741)
,p_name=>'Contribution Rights'
,p_static_id=>'contribution-rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'name', 'Administrator,Contributor',
  'type', 'A')).to_clob
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(5571242071564741)
,p_name=>'Reader Rights'
,p_static_id=>'reader-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', wwv_flow_string.join(wwv_flow_t_varchar2(
    'if nvl(apex_app_setting.get_value(',
    '    p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
    '    -- allow user not in the ACL to access the application',
    '    return true;',
    'else',
    '    -- require user to have at least one role',
    '    return apex_acl.has_user_any_roles (',
    '        p_application_id => :APP_ID, ',
    '        p_user_name      => :APP_USER);',
    'end if;')))).to_clob
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(5570725224564593)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(5570911045564727)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(5571001558564736)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
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
 p_id=>wwv_flow_imp.id(5572093046564882)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ALL_USERS'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(5569099372564563)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
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
 p_id=>wwv_flow_imp.id(5814941988578217)
,p_lov_name=>'ACCESS_ROLES'
,p_static_id=>'access-roles'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5719947476575109)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(5719947476575109)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5720579092575142)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5720168951575113)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/countries_country_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5642236902571164)
,p_lov_name=>'COUNTRIES.COUNTRY_NAME'
,p_static_id=>'countries-country-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'COUNTRIES'
,p_return_column_name=>'COUNTRY_ID'
,p_display_column_name=>'COUNTRY_NAME'
,p_default_sort_column_name=>'COUNTRY_NAME'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/departments_department_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5589880262566312)
,p_lov_name=>'DEPARTMENTS.DEPARTMENT_NAME'
,p_static_id=>'departments-department-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEPARTMENTS'
,p_return_column_name=>'DEPARTMENT_ID'
,p_display_column_name=>'DEPARTMENT_NAME'
,p_default_sort_column_name=>'DEPARTMENT_NAME'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5822192471578338)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_static_id=>'email-username-format'
,p_lov_query=>'.'||wwv_flow_imp.id(5822192471578338)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5822405079578343)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
,p_static_id=>'email'
);
end;
/
prompt --application/shared_components/user_interface/lovs/employees_first_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5589258133566299)
,p_lov_name=>'EMPLOYEES.FIRST_NAME'
,p_static_id=>'employees-first-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EMPLOYEES'
,p_return_column_name=>'EMPLOYEE_ID'
,p_display_column_name=>'FIRST_NAME'
,p_default_sort_column_name=>'FIRST_NAME'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/jobs_job_title
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5587871312566222)
,p_lov_name=>'JOBS.JOB_TITLE'
,p_static_id=>'jobs-job-title'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'JOBS'
,p_return_column_name=>'JOB_ID'
,p_display_column_name=>'JOB_TITLE'
,p_default_sort_column_name=>'JOB_TITLE'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/locations_street_address
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5608402359570297)
,p_lov_name=>'LOCATIONS.STREET_ADDRESS'
,p_static_id=>'locations-street-address'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'LOCATIONS'
,p_return_column_name=>'LOCATION_ID'
,p_display_column_name=>'STREET_ADDRESS'
,p_default_sort_column_name=>'STREET_ADDRESS'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5736073260575508)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_static_id=>'timeframe-4-weeks'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(5782966535577185)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_static_id=>'view-as-report-chart'
,p_lov_query=>'.'||wwv_flow_imp.id(5782966535577185)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5783687737577201)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_static_id=>'chart'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5783286672577193)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_static_id=>'report'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(5572253921564948)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(5849799122578826)
,p_group_name=>'User Settings'
,p_static_id=>'user-settings'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(5565474150564112)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5839352406578571)
,p_short_name=>'Administration'
,p_static_id=>'administration'
,p_link=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5638763969571062)
,p_short_name=>'Career History'
,p_static_id=>'career-history'
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5670368342574371)
,p_short_name=>'Centralized Directory'
,p_static_id=>'centralized-directory'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6559390384620569)
,p_short_name=>'Department Teams'
,p_static_id=>'department-teams'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.'
,p_page_id=>11
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5618925556570590)
,p_short_name=>'Departments Overview'
,p_static_id=>'departments-overview'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6577946799093071)
,p_parent_id=>wwv_flow_imp.id(5604905306570156)
,p_short_name=>'Employee Details'
,p_static_id=>'employee-details'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.'
,p_page_id=>13
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5604905306570156)
,p_short_name=>'Employee Directory'
,p_static_id=>'employee-directory'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5565630250564123)
,p_short_name=>'Executive Overview'
,p_static_id=>'executive-overview'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5632742633570856)
,p_short_name=>'Job Roles'
,p_static_id=>'job-roles'
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(5654314050571328)
,p_short_name=>'Office Locations'
,p_static_id=>'office-locations'
,p_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6370071797209820)
,p_parent_id=>wwv_flow_imp.id(5654314050571328)
,p_short_name=>'Office Map'
,p_static_id=>'office-map'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(6374258544213995)
,p_parent_id=>wwv_flow_imp.id(5654314050571328)
,p_short_name=>'Office Map'
,p_static_id=>'office-map-2'
,p_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.'
,p_page_id=>15
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(5566351661564172)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>4194319937007846
,p_default_page_template=>4075783602716660119
,p_default_dialog_template=>2103835248774687739
,p_error_template=>2104585595298951431
,p_printer_friendly_template=>4075783602716660119
,p_login_template=>2104585595298951431
,p_default_button_template=>4075790603270660137
,p_default_region_template=>4075786578761660127
,p_default_chart_template=>4075786578761660127
,p_default_form_template=>4075786578761660127
,p_default_reportr_template=>4075786578761660127
,p_default_wizard_template=>4075786578761660127
,p_default_menur_template=>2534890969069732905
,p_default_listr_template=>4075786578761660127
,p_default_irr_template=>2103954283454391425
,p_default_report_template=>2542081983073888486
,p_default_label_template=>1612549609962752680
,p_default_menu_template=>4075790987805660140
,p_default_list_template=>4075788786379660133
,p_default_top_nav_list_temp=>2530182346535839887
,p_default_side_nav_list_temp=>2471166859590295591
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2129856781885180476
,p_default_dialogr_template=>4504868307683981366
,p_default_option_label=>1612549609962752680
,p_default_required_label=>1612549789555753698
,p_default_navbar_list_template=>2850970698196720012
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.2/')
,p_files_version=>2461362204908
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4075791579648660165,2000,'universal-theme',8842.262)
,p_version_scn_master=>'SH256:S3Fh7S4ZMPpy-ID1j0RgxJIrTUyM6ZXOJB4KD7haOtc'
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
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5564763427564057)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5569706651564564)
,p_build_option_name=>'Feature: About Page'
,p_static_id=>'feature-about-page'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5569099372564563)
,p_build_option_name=>'Feature: Access Control'
,p_static_id=>'feature-access-control'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5569188090564563)
,p_build_option_name=>'Feature: Activity Reporting'
,p_static_id=>'feature-activity-reporting'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5849918703578828)
,p_build_option_name=>'Feature: Push Notifications'
,p_static_id=>'feature-push-notifications'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(5850237015578831)
,p_build_option_name=>'Feature: User Settings'
,p_static_id=>'feature-user-settings'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
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
 p_id=>wwv_flow_imp.id(5565032301564094)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
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
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Executive Overview'
,p_alias=>'HOME'
,p_step_title=>'Enterprise HR Management System'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6542126173401330)
,p_plug_name=>'Career History by Year'
,p_static_id=>'career-history-trend'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(6542237530401330)
,p_region_id=>wwv_flow_imp.id(6542126173401330)
,p_chart_type=>'line'
,p_height=>'360'
,p_lazy_loading=>false
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_overview_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(6542317810401330)
,p_chart_id=>wwv_flow_imp.id(6542237530401330)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Career History Records'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select extract(year from h."START_DATE") "CAREER_YEAR",',
'       count(*) "HISTORY_COUNT"',
'  from "JOB_HISTORY" h',
' group by extract(year from h."START_DATE")',
' order by 1'))
,p_max_row_count=>100
,p_series_type=>'line'
,p_items_value_column_name=>'HISTORY_COUNT'
,p_items_label_column_name=>'CAREER_YEAR'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6542486042401331)
,p_chart_id=>wwv_flow_imp.id(6542237530401330)
,p_static_id=>'x'
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
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6542565986401331)
,p_chart_id=>wwv_flow_imp.id(6542237530401330)
,p_static_id=>'y'
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
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6348546133096517)
,p_plug_name=>'Employees by Department Location'
,p_static_id=>'department-location-map'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(6348633135096517)
,p_region_id=>wwv_flow_imp.id(6348546133096517)
,p_height=>520
,p_tilelayer_type=>'CUSTOM'
,p_tilelayer_name_default=>'osm-positron'
,p_navigation_bar_type=>'SMALL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_init_zoomlevel_static=>'2'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:MOUSEWHEEL_ZOOM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(6348721294096599)
,p_map_region_id=>wwv_flow_imp.id(6348633135096517)
,p_name=>'Employees by Location'
,p_static_id=>'department-location-headcount'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with employee_counts as (',
'    select d."LOCATION_ID",',
'           count(e."EMPLOYEE_ID") "EMPLOYEE_COUNT"',
'      from "DEPARTMENTS" d',
'      left join "EMPLOYEES" e',
'        on e."DEPARTMENT_ID" = d."DEPARTMENT_ID"',
'     group by d."LOCATION_ID"',
')',
'select location_data.*,',
'       location_data."LOCATION_NAME" || '' - '' ||',
'       location_data."EMPLOYEE_SUMMARY" "MAP_TOOLTIP"',
'  from (',
'        select l."LOCATION_ID",',
'               l."CITY" ||',
'               case',
'                   when l."STATE_PROVINCE" is not null',
'                   then '', '' || l."STATE_PROVINCE"',
'                   else ''''',
'               end || '', '' || c."COUNTRY_NAME" "LOCATION_NAME",',
'               case upper(trim(l."CITY"))',
'                   when ''ROMA'' then 41.9028',
'                   when ''VENICE'' then 45.4408',
'                   when ''TOKYO'' then 35.6762',
'                   when ''HIROSHIMA'' then 34.3853',
'                   when ''SOUTHLAKE'' then 32.9412',
'                   when ''SOUTH SAN FRANCISCO'' then 37.6547',
'                   when ''SOUTH BRUNSWICK'' then 40.3807',
'                   when ''SEATTLE'' then 47.6062',
'                   when ''TORONTO'' then 43.6532',
'                   when ''WHITEHORSE'' then 60.7212',
'                   when ''OXFORD'' then 51.7520',
'                   when ''STRETFORD'' then 53.4466',
'                   when ''MUNICH'' then 48.1351',
'                   when ''SINGAPORE'' then 1.3521',
'                   when ''LONDON'' then 51.5072',
'               end "LATITUDE",',
'               case upper(trim(l."CITY"))',
'                   when ''ROMA'' then 12.4964',
'                   when ''VENICE'' then 12.3155',
'                   when ''TOKYO'' then 139.6503',
'                   when ''HIROSHIMA'' then 132.4553',
'                   when ''SOUTHLAKE'' then -97.1342',
'                   when ''SOUTH SAN FRANCISCO'' then -122.4077',
'                   when ''SOUTH BRUNSWICK'' then -74.5460',
'                   when ''SEATTLE'' then -122.3321',
'                   when ''TORONTO'' then -79.3832',
'                   when ''WHITEHORSE'' then -135.0568',
'                   when ''OXFORD'' then -1.2577',
'                   when ''STRETFORD'' then -2.3086',
'                   when ''MUNICH'' then 11.5820',
'                   when ''SINGAPORE'' then 103.8198',
'                   when ''LONDON'' then -0.1276',
'               end "LONGITUDE",',
'               ec."EMPLOYEE_COUNT",',
'               ''Employees: '' ||',
'               to_char(ec."EMPLOYEE_COUNT") "EMPLOYEE_SUMMARY"',
'          from employee_counts ec',
'          join "LOCATIONS" l',
'            on l."LOCATION_ID" = ec."LOCATION_ID"',
'          join "COUNTRIES" c',
'            on c."COUNTRY_ID" = l."COUNTRY_ID"',
'       ) location_data',
' where location_data."LATITUDE" is not null'))
,p_use_vector_tiles=>false
,p_has_spatial_index=>false
,p_pk_column=>'LOCATION_ID'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_tooltip_column=>'MAP_TOOLTIP'
,p_info_window_adv_formatting=>false
,p_info_window_title_column=>'LOCATION_NAME'
,p_info_window_body_column=>'EMPLOYEE_SUMMARY'
,p_legend_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5583902176565786)
,p_plug_name=>'Enterprise HR Management System'
,p_static_id=>'enterprise-hr-management-system'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'Comprehensive enterprise Human Resources management system for workforce administration, department structure, compensation, and organizational analytics.'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5582233536565762)
,p_plug_name=>'Employee Headcount by Job'
,p_static_id=>'salary-distribution'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5582638898565769)
,p_region_id=>wwv_flow_imp.id(5582233536565762)
,p_chart_type=>'pie'
,p_lazy_loading=>false
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5583151706565772)
,p_chart_id=>wwv_flow_imp.id(5582638898565769)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j."JOB_TITLE" "JOB_TITLE",',
'       count(e."EMPLOYEE_ID") value',
'  from "JOBS" j',
'  left join "EMPLOYEES" e',
'    on e."JOB_ID" = j."JOB_ID"',
' group by j."JOB_ID", j."JOB_TITLE"',
' order by 2 desc'))
,p_max_row_count=>20
,p_series_type=>'pie'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'JOB_TITLE'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6548286510448191)
,p_plug_name=>'Employees by Department'
,p_static_id=>'workforce-analytics'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(6548335234448192)
,p_region_id=>wwv_flow_imp.id(6548286510448191)
,p_chart_type=>'bar'
,p_height=>'400'
,p_lazy_loading=>false
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(6548473720448192)
,p_chart_id=>wwv_flow_imp.id(6548335234448192)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d."DEPARTMENT_NAME" "DEPARTMENT_NAME",',
'       count(e."EMPLOYEE_ID") value',
'  from "DEPARTMENTS" d',
'  left join "EMPLOYEES" e',
'    on e."DEPARTMENT_ID" = d."DEPARTMENT_ID"',
' group by d."DEPARTMENT_ID", d."DEPARTMENT_NAME"',
' order by 2 desc'))
,p_max_row_count=>40
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'DEPARTMENT_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6548562368448192)
,p_chart_id=>wwv_flow_imp.id(6548335234448192)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(6548669888448192)
,p_chart_id=>wwv_flow_imp.id(6548335234448192)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Employee Directory'
,p_alias=>'EMPLOYEE-DIRECTORY'
,p_step_title=>'Employee Directory'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2530071015796209513
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the filters to narrow the employee list by department or job, or enter a search term to find employees by name and contact details.</p>',
'<p>Select an employee name or the profile icon to view their details and office location. Use <strong>Reset</strong> to clear the filters.</p>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5604384100570131)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5565474150564112)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6337061007025851)
,p_plug_name=>'Button Bar'
,p_static_id=>'button-bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'<div id="active_facets"></div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5597739558569628)
,p_name=>'Employees'
,p_static_id=>'employee-directory'
,p_template=>4075786578761660127
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'EMPLOYEES'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6335978612025847)
,p_query_column_id=>9
,p_column_alias=>'COMMISSION_PCT'
,p_column_display_sequence=>9
,p_column_heading=>'Commission Percent'
,p_column_format=>'999990D00'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6336085820025848)
,p_query_column_id=>11
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>11
,p_column_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(5589880262566312)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6336110450025849)
,p_query_column_id=>4
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>4
,p_column_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6336235269025849)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>0
,p_column_heading=>'<span class="u-VisuallyHidden">View employee</span>'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13:P13_EMPLOYEE_ID:\#EMPLOYEE_ID#\'
,p_column_linktext=>'<span role="img" aria-label="View employee details" class="fa fa-id-card" title="View employee details"></span>'
,p_column_alignment=>'CENTER'
,p_report_column_required_role=>wwv_flow_imp.id(5571242071564741)
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6336346577025850)
,p_query_column_id=>2
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6336435265025850)
,p_query_column_id=>6
,p_column_alias=>'HIRE_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Hire Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6336557464025850)
,p_query_column_id=>7
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Job'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(5587871312566222)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6336629250025850)
,p_query_column_id=>3
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Last Name'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13:P13_EMPLOYEE_ID:\#EMPLOYEE_ID#\'
,p_column_linktext=>'#LAST_NAME#'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6336790608025850)
,p_query_column_id=>10
,p_column_alias=>'MANAGER_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Manager'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(5589258133566299)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6336882213025850)
,p_query_column_id=>5
,p_column_alias=>'PHONE_NUMBER'
,p_column_display_sequence=>5
,p_column_heading=>'Phone Number'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6336913804025850)
,p_query_column_id=>8
,p_column_alias=>'SALARY'
,p_column_display_sequence=>8
,p_column_heading=>'Salary'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>wwv_flow_imp.id(5571120301564741)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6337115469025852)
,p_plug_name=>'Search'
,p_static_id=>'search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(5597739558569628)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6337204576025852)
,p_name=>'P2_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6337115469025852)
,p_prompt=>'Department'
,p_source=>'DEPARTMENT_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'DEPARTMENTS.DEPARTMENT_NAME'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_fc_exclude_allowed=>true
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6337318660025862)
,p_name=>'P2_JOB_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6337115469025852)
,p_prompt=>'Job'
,p_source=>'JOB_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'JOBS.JOB_TITLE'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
,p_fc_exclude_allowed=>true
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6337440858025862)
,p_name=>'P2_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6337115469025852)
,p_prompt=>'Search'
,p_source=>'FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,JOB_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5603145891570090)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6337061007025851)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3'
,p_icon_css_classes=>'fa-user-plus'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6337591149025864)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6337061007025851)
,p_button_name=>'RESET'
,p_static_id=>'reset'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2,RR'
,p_icon_css_classes=>'fa-undo'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Employee'
,p_alias=>'EMPLOYEE'
,p_page_mode=>'MODAL'
,p_step_title=>'Employee'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(5571392122564741)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5593756933566377)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5585085115566107)
,p_plug_name=>'Employee'
,p_static_id=>'employee'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'EMPLOYEES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5594170945566383)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5593756933566377)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-times'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5594674955566391)
,p_button_id=>wwv_flow_imp.id(5594170945566383)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5595857614566416)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5593756933566377)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-user-plus'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5595032033566411)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5593756933566377)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--danger:t-Button--simple'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5595419905566414)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5593756933566377)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5588734305566295)
,p_name=>'P3_COMMISSION_PCT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_item_source_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_prompt=>'Commission Percent'
,p_source=>'COMMISSION_PCT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-percent'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_security_scheme=>wwv_flow_imp.id(5571120301564741)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5589776149566312)
,p_name=>'P3_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_item_source_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_prompt=>'Department'
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPARTMENTS.DEPARTMENT_NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-sitemap'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5586556937566180)
,p_name=>'P3_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_item_source_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_icon_css_classes=>'fa-envelope'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5585399423566111)
,p_name=>'P3_EMPLOYEE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_item_source_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_source=>'EMPLOYEE_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5585756951566166)
,p_name=>'P3_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_item_source_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5587317899566195)
,p_name=>'P3_HIRE_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_item_source_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_prompt=>'Hire Date'
,p_source=>'HIRE_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5587730073566202)
,p_name=>'P3_JOB_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_item_source_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_prompt=>'Job'
,p_source=>'JOB_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'JOBS.JOB_TITLE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_icon_css_classes=>'fa-briefcase'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5586199649566175)
,p_name=>'P3_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_item_source_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5589131439566299)
,p_name=>'P3_MANAGER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_item_source_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_prompt=>'Manager'
,p_source=>'MANAGER_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMPLOYEES.FIRST_NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5586939646566187)
,p_name=>'P3_PHONE_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_item_source_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5588379547566275)
,p_name=>'P3_SALARY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_item_source_plug_id=>wwv_flow_imp.id(5585085115566107)
,p_prompt=>'Salary'
,p_source=>'SALARY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_security_scheme=>wwv_flow_imp.id(5571120301564741)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5597070987566430)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5597070987566430
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5596284983566420)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5585085115566107)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Employee'
,p_static_id=>'initialize-form-employee'
,p_internal_uid=>5596284983566420
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5596671057566423)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5585085115566107)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Employee'
,p_static_id=>'process-form-employee'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5596671057566423
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Departments Overview'
,p_alias=>'DEPARTMENTS-OVERVIEW'
,p_step_title=>'Departments Overview'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.</p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5618398404570582)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5565474150564112)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5614106459570403)
,p_plug_name=>'Departments'
,p_static_id=>'departments-overview'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DEPARTMENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5614274405570403)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_DEPARTMENT_ID:\#DEPARTMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(5571392122564741)
,p_internal_uid=>5614274405570403
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5615442150570512)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Department ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5615885385570536)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5616683463570555)
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5608402359570297)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5616202578570546)
,p_db_column_name=>'MANAGER_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Manager'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5589258133566299)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5686507180574724)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPARTMENT_NAME:MANAGER_ID:LOCATION_ID'
,p_sort_column_1=>'DEPARTMENT_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6632597549865807)
,p_plug_name=>'Employee Management Hierarchy'
,p_static_id=>'employee-management-tree'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>15
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select case',
'            when connect_by_isleaf = 1 then 0',
'            when level = 1 then 1',
'            else -1',
'        end as status,',
'        level,',
'        e."FIRST_NAME" || '' '' || e."LAST_NAME" ||',
'        '' - '' || j."JOB_TITLE" as title,',
'        case',
'            when connect_by_isleaf = 1 then ''fa fa-user''',
'            else ''fa fa-users''',
'        end as icon,',
'        e."EMPLOYEE_ID" as employee_id,',
'        e."MANAGER_ID" as manager_id,',
'        e."EMPLOYEE_ID" as value,',
unistr('        e."EMAIL" || '' \00B7 '' || j."JOB_TITLE" as tooltip,'),
'        cast(null as varchar2(4000)) as link',
'   from "EMPLOYEES" e',
'   join "JOBS" j',
'     on j."JOB_ID" = e."JOB_ID"',
'  start with e."MANAGER_ID" is null',
'connect by nocycle prior e."EMPLOYEE_ID" = e."MANAGER_ID"',
'  order siblings by e."LAST_NAME", e."FIRST_NAME"',
' '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'activate_node_link_with', 'S',
  'node_id_column', 'EMPLOYEE_ID',
  'node_label_column', 'TITLE',
  'parent_key_column', 'MANAGER_ID',
  'start_tree_with', 'NULL',
  'tree_hierarchy', 'SQL',
  'tree_tooltip', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5617081973570566)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5614106459570403)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5617494425570568)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5614106459570403)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5617830933570574)
,p_event_id=>wwv_flow_imp.id(5617494425570568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5614106459570403)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Department'
,p_alias=>'DEPARTMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Department'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(5571392122564741)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5610124765570338)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5606733089570270)
,p_plug_name=>'Department'
,p_static_id=>'department'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'DEPARTMENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5610597235570350)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5610124765570338)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-times'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5611030273570356)
,p_button_id=>wwv_flow_imp.id(5610597235570350)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5612391345570375)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5610124765570338)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5611523514570365)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5610124765570338)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--danger:t-Button--simple'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5611966910570367)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5610124765570338)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_DEPARTMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5607156181570277)
,p_name=>'P5_DEPARTMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5606733089570270)
,p_item_source_plug_id=>wwv_flow_imp.id(5606733089570270)
,p_source=>'DEPARTMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5607562179570284)
,p_name=>'P5_DEPARTMENT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5606733089570270)
,p_item_source_plug_id=>wwv_flow_imp.id(5606733089570270)
,p_prompt=>'Department Name'
,p_source=>'DEPARTMENT_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_icon_css_classes=>'fa-sitemap'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5608385092570297)
,p_name=>'P5_LOCATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5606733089570270)
,p_item_source_plug_id=>wwv_flow_imp.id(5606733089570270)
,p_prompt=>'Location'
,p_source=>'LOCATION_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOCATIONS.STREET_ADDRESS'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-map-marker'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5607931728570289)
,p_name=>'P5_MANAGER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5606733089570270)
,p_item_source_plug_id=>wwv_flow_imp.id(5606733089570270)
,p_prompt=>'Manager'
,p_source=>'MANAGER_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMPLOYEES.FIRST_NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5613552786570390)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5613552786570390
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5612757036570382)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5606733089570270)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Department'
,p_static_id=>'initialize-form-department'
,p_internal_uid=>5612757036570382
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5613173633570385)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5606733089570270)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Department'
,p_static_id=>'process-form-department'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5613173633570385
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Job Roles'
,p_alias=>'JOB-ROLES'
,p_step_title=>'Job Roles'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.</p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5632165683570852)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5565474150564112)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5627916818570753)
,p_plug_name=>'Jobs'
,p_static_id=>'job-roles'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'JOBS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5628039151570753)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:P7_JOB_ID:\#JOB_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(5571392122564741)
,p_internal_uid=>5628039151570753
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5629376442570789)
,p_db_column_name=>'JOB_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Job ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5629691864570811)
,p_db_column_name=>'JOB_TITLE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Job Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5630432137570833)
,p_db_column_name=>'MAX_SALARY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Max Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5630073100570821)
,p_db_column_name=>'MIN_SALARY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Min Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5693462519574780)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JOB_ID:JOB_TITLE:MIN_SALARY:MAX_SALARY'
,p_sort_column_1=>'JOB_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5630841534570845)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5627916818570753)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5631244113570847)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5627916818570753)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5631611448570849)
,p_event_id=>wwv_flow_imp.id(5631244113570847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5627916818570753)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Job'
,p_alias=>'JOB'
,p_page_mode=>'MODAL'
,p_step_title=>'Job'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(5571392122564741)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5623856299570732)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5620786869570717)
,p_plug_name=>'Job'
,p_static_id=>'job'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'JOBS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5624283549570734)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5623856299570732)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-times'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5624734996570736)
,p_button_id=>wwv_flow_imp.id(5624283549570734)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5626043978570743)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5623856299570732)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_JOB_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5625210886570739)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5623856299570732)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--danger:t-Button--simple'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_JOB_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5625621191570742)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5623856299570732)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_JOB_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5621020639570718)
,p_name=>'P7_JOB_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5620786869570717)
,p_item_source_plug_id=>wwv_flow_imp.id(5620786869570717)
,p_source=>'JOB_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5621492257570720)
,p_name=>'P7_JOB_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5620786869570717)
,p_item_source_plug_id=>wwv_flow_imp.id(5620786869570717)
,p_prompt=>'Job Title'
,p_source=>'JOB_TITLE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>35
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_icon_css_classes=>'fa-briefcase'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5622246878570724)
,p_name=>'P7_MAX_SALARY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5620786869570717)
,p_item_source_plug_id=>wwv_flow_imp.id(5620786869570717)
,p_prompt=>'Max Salary'
,p_source=>'MAX_SALARY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5621822693570721)
,p_name=>'P7_MIN_SALARY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5620786869570717)
,p_item_source_plug_id=>wwv_flow_imp.id(5620786869570717)
,p_prompt=>'Min Salary'
,p_source=>'MIN_SALARY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-money'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5627219465570750)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5627219465570750
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5626484664570745)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5620786869570717)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Job'
,p_static_id=>'initialize-form-job'
,p_internal_uid=>5626484664570745
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5626877409570747)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5620786869570717)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Job'
,p_static_id=>'process-form-job'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5626877409570747
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Career History'
,p_alias=>'CAREER-HISTORY'
,p_step_title=>'Career History'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.</p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5638126556571058)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5565474150564112)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5634645994570876)
,p_plug_name=>'Job Histories'
,p_static_id=>'career-history'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'JOB_HISTORY'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5634781688570876)
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
,p_internal_uid=>5634781688570876
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5637407921571037)
,p_db_column_name=>'DEPARTMENT_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5589880262566312)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5635996000570947)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5636688821571011)
,p_db_column_name=>'END_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5637024762571024)
,p_db_column_name=>'JOB_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5587871312566222)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5636322066570983)
,p_db_column_name=>'START_DATE'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'B'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5700255896574860)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_DATE:END_DATE:JOB_ID:DEPARTMENT_ID'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'ASC'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Office Locations'
,p_alias=>'OFFICE-LOCATIONS'
,p_step_title=>'Office Locations'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.</p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5653751416571323)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5565474150564112)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5648754418571214)
,p_plug_name=>'Locations'
,p_static_id=>'office-locations'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'LOCATIONS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5648855072571214)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP:P10_LOCATION_ID:\#LOCATION_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(5571392122564741)
,p_internal_uid=>5648855072571214
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5651307171571285)
,p_db_column_name=>'CITY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5652075571571306)
,p_db_column_name=>'COUNTRY_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(5642236902571164)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5650140583571248)
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Location ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5650979050571275)
,p_db_column_name=>'POSTAL_CODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Postal Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5651756498571297)
,p_db_column_name=>'STATE_PROVINCE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'State Province'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5650512107571265)
,p_db_column_name=>'STREET_ADDRESS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Street Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5704500722574889)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STREET_ADDRESS:POSTAL_CODE:CITY:STATE_PROVINCE:COUNTRY_ID'
,p_sort_column_1=>'STREET_ADDRESS'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5652476415571317)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5648754418571214)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5652826888571319)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5648754418571214)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5653269375571321)
,p_event_id=>wwv_flow_imp.id(5652826888571319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5648754418571214)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Location'
,p_alias=>'LOCATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Location'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_role=>wwv_flow_imp.id(5571392122564741)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5644663765571178)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5639795925571152)
,p_plug_name=>'Location'
,p_static_id=>'location'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'LOCATIONS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5645056947571182)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5644663765571178)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-times'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5645509045571186)
,p_button_id=>wwv_flow_imp.id(5645056947571182)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5646807625571195)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5644663765571178)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_LOCATION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5646040286571191)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5644663765571178)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--danger:t-Button--simple'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10_LOCATION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_grid_new_row=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5646436343571193)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5644663765571178)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_LOCATION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5641346895571162)
,p_name=>'P10_CITY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5639795925571152)
,p_item_source_plug_id=>wwv_flow_imp.id(5639795925571152)
,p_prompt=>'City'
,p_source=>'CITY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_icon_css_classes=>'fa-map-marker'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5642140597571164)
,p_name=>'P10_COUNTRY_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5639795925571152)
,p_item_source_plug_id=>wwv_flow_imp.id(5639795925571152)
,p_prompt=>'Country'
,p_source=>'COUNTRY_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRIES.COUNTRY_NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-globe'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5640162787571155)
,p_name=>'P10_LOCATION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5639795925571152)
,p_item_source_plug_id=>wwv_flow_imp.id(5639795925571152)
,p_source=>'LOCATION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5640992058571160)
,p_name=>'P10_POSTAL_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5639795925571152)
,p_item_source_plug_id=>wwv_flow_imp.id(5639795925571152)
,p_prompt=>'Postal Code'
,p_source=>'POSTAL_CODE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>12
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-envelope-o'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5641735926571163)
,p_name=>'P10_STATE_PROVINCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5639795925571152)
,p_item_source_plug_id=>wwv_flow_imp.id(5639795925571152)
,p_prompt=>'State Province'
,p_source=>'STATE_PROVINCE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>25
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-map'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5640524104571157)
,p_name=>'P10_STREET_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5639795925571152)
,p_item_source_plug_id=>wwv_flow_imp.id(5639795925571152)
,p_prompt=>'Street Address'
,p_source=>'STREET_ADDRESS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549609962752680
,p_item_icon_css_classes=>'fa-home'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5648025925571203)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>5648025925571203
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5647270830571197)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(5639795925571152)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Location'
,p_static_id=>'initialize-form-location'
,p_internal_uid=>5647270830571197
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5647632656571201)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5639795925571152)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Location'
,p_static_id=>'process-form-location'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5647632656571201
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Department Teams'
,p_alias=>'DEPARTMENT-TEAMS'
,p_step_title=>'Department Teams'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select a department to browse its employees. Each employee card shows their role and available contact details.</p>',
'<p>Select a card to view the employee profile and office map.</p>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6560738157620782)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5565474150564112)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6561178944620785)
,p_plug_name=>'Team Members'
,p_static_id=>'department-employees'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e."EMPLOYEE_ID",',
'       trim(e."FIRST_NAME" || '' '' || e."LAST_NAME") "EMPLOYEE_NAME",',
'       j."JOB_TITLE",',
'       nvl(e."EMAIL", ''Email not provided'') "EMAIL",',
'       nvl(e."PHONE_NUMBER", ''Phone not provided'') "PHONE_NUMBER",',
'       substr(e."FIRST_NAME", 1, 1) || substr(e."LAST_NAME", 1, 1) "EMPLOYEE_INITIALS"',
'  from "EMPLOYEES" e',
'  left join "JOBS" j',
'    on j."JOB_ID" = e."JOB_ID"',
' where e."DEPARTMENT_ID" = :P11_DEPARTMENT_ID',
' order by e."LAST_NAME", e."FIRST_NAME"'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P11_DEPARTMENT_ID'
,p_plug_query_num_rows=>12
,p_plug_query_num_rows_type=>'SET'
,p_plug_query_no_data_found=>'No employees are currently assigned to this department.'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(6561282848620785)
,p_region_id=>wwv_flow_imp.id(6561178944620785)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'EMPLOYEE_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'JOB_TITLE'
,p_body_adv_formatting=>false
,p_body_column_name=>'EMAIL'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'PHONE_NUMBER'
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMPLOYEE_INITIALS'
,p_icon_position=>'TOP'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'EMPLOYEE_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(6586274941143302)
,p_card_id=>wwv_flow_imp.id(6561282848620785)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'View employee details'
,p_static_id=>'view-employee'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13:P13_EMPLOYEE_ID:&EMPLOYEE_ID.'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-id-card'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6603574456278869)
,p_plug_name=>'Department Office Location'
,p_static_id=>'department-office-map'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>21
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(6603619599278869)
,p_region_id=>wwv_flow_imp.id(6603574456278869)
,p_height=>200
,p_tilelayer_type=>'CUSTOM'
,p_tilelayer_name_default=>'osm-positron'
,p_navigation_bar_type=>'SMALL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_init_zoomlevel_static=>'12'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:MOUSEWHEEL_ZOOM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(6603765072279023)
,p_map_region_id=>wwv_flow_imp.id(6603619599278869)
,p_name=>'Department Office'
,p_static_id=>'department-office'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d."LOCATION_ID",',
'       d."DEPARTMENT_NAME",',
'       l."CITY" ||',
'       case',
'           when l."STATE_PROVINCE" is not null',
'           then '', '' || l."STATE_PROVINCE"',
'           else ''''',
'       end || '', '' || c."COUNTRY_NAME" "OFFICE_LOCATION",',
'       case upper(trim(l."CITY"))',
'           when ''ROMA'' then 41.9028',
'           when ''VENICE'' then 45.4408',
'           when ''TOKYO'' then 35.6762',
'           when ''HIROSHIMA'' then 34.3853',
'           when ''SOUTHLAKE'' then 32.9412',
'           when ''SOUTH SAN FRANCISCO'' then 37.6547',
'           when ''SOUTH BRUNSWICK'' then 40.3807',
'           when ''SEATTLE'' then 47.6062',
'           when ''TORONTO'' then 43.6532',
'           when ''WHITEHORSE'' then 60.7212',
'           when ''OXFORD'' then 51.7520',
'           when ''STRETFORD'' then 53.4466',
'           when ''MUNICH'' then 48.1351',
'           when ''SINGAPORE'' then 1.3521',
'           when ''LONDON'' then 51.5072',
'       end "LATITUDE",',
'       case upper(trim(l."CITY"))',
'           when ''ROMA'' then 12.4964',
'           when ''VENICE'' then 12.3155',
'           when ''TOKYO'' then 139.6503',
'           when ''HIROSHIMA'' then 132.4553',
'           when ''SOUTHLAKE'' then -97.1342',
'           when ''SOUTH SAN FRANCISCO'' then -122.4077',
'           when ''SOUTH BRUNSWICK'' then -74.5460',
'           when ''SEATTLE'' then -122.3321',
'           when ''TORONTO'' then -79.3832',
'           when ''WHITEHORSE'' then -135.0568',
'           when ''OXFORD'' then -1.2577',
'           when ''STRETFORD'' then -2.3086',
'           when ''MUNICH'' then 11.5820',
'           when ''SINGAPORE'' then 103.8198',
'           when ''LONDON'' then -0.1276',
'       end "LONGITUDE",',
'       d."DEPARTMENT_NAME" || '' office - '' || l."CITY" "MAP_TOOLTIP"',
'  from "DEPARTMENTS" d',
'  join "LOCATIONS" l',
'    on l."LOCATION_ID" = d."LOCATION_ID"',
'  join "COUNTRIES" c',
'    on c."COUNTRY_ID" = l."COUNTRY_ID"',
' where d."DEPARTMENT_ID" = :P11_DEPARTMENT_ID',
'   and case upper(trim(l."CITY"))',
'           when ''ROMA'' then 1',
'           when ''VENICE'' then 1',
'           when ''TOKYO'' then 1',
'           when ''HIROSHIMA'' then 1',
'           when ''SOUTHLAKE'' then 1',
'           when ''SOUTH SAN FRANCISCO'' then 1',
'           when ''SOUTH BRUNSWICK'' then 1',
'           when ''SEATTLE'' then 1',
'           when ''TORONTO'' then 1',
'           when ''WHITEHORSE'' then 1',
'           when ''OXFORD'' then 1',
'           when ''STRETFORD'' then 1',
'           when ''MUNICH'' then 1',
'           when ''SINGAPORE'' then 1',
'           when ''LONDON'' then 1',
'       end = 1'))
,p_items_to_submit=>'P11_DEPARTMENT_ID'
,p_use_vector_tiles=>false
,p_has_spatial_index=>false
,p_pk_column=>'LOCATION_ID'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_tooltip_column=>'MAP_TOOLTIP'
,p_info_window_adv_formatting=>false
,p_info_window_title_column=>'OFFICE_LOCATION'
,p_info_window_body_column=>'MAP_TOOLTIP'
,p_legend_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6560927183620782)
,p_plug_name=>'Department Overview'
,p_static_id=>'department-overview'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d."DEPARTMENT_ID",',
'       d."DEPARTMENT_NAME",',
'       l."CITY" "OFFICE_CITY",',
'       case',
'           when m."EMPLOYEE_ID" is not null',
'           then trim(m."FIRST_NAME" || '' '' || m."LAST_NAME")',
'           else ''No department manager assigned''',
'       end "DEPARTMENT_MANAGER",',
'       ''Team size: '' || to_char(count(e."EMPLOYEE_ID")) "TEAM_SIZE"',
'  from "DEPARTMENTS" d',
'  left join "LOCATIONS" l',
'    on l."LOCATION_ID" = d."LOCATION_ID"',
'  left join "EMPLOYEES" m',
'    on m."EMPLOYEE_ID" = d."MANAGER_ID"',
'  left join "EMPLOYEES" e',
'    on e."DEPARTMENT_ID" = d."DEPARTMENT_ID"',
' where d."DEPARTMENT_ID" = :P11_DEPARTMENT_ID',
' group by d."DEPARTMENT_ID", d."DEPARTMENT_NAME", l."CITY",',
'          m."EMPLOYEE_ID", m."FIRST_NAME", m."LAST_NAME"'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P11_DEPARTMENT_ID'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'Select a department to view its overview.'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(6561045422620783)
,p_region_id=>wwv_flow_imp.id(6560927183620782)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'DEPARTMENT_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'OFFICE_CITY'
,p_body_adv_formatting=>false
,p_body_column_name=>'DEPARTMENT_MANAGER'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'TEAM_SIZE'
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'DEPARTMENT_NAME'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'DEPARTMENT_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6560897240620782)
,p_plug_name=>'Choose a Department'
,p_static_id=>'department-selector'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6561336740620785)
,p_name=>'P11_DEPARTMENT_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6560897240620782)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select min("DEPARTMENT_ID")',
'  from "DEPARTMENTS"'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Department'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEPARTMENTS.DEPARTMENT_NAME'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_icon_css_classes=>'fa-sitemap'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6561428747620787)
,p_name=>'Refresh Team Cards'
,p_static_id=>'refresh-team'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_DEPARTMENT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6561584477620788)
,p_event_id=>wwv_flow_imp.id(6561428747620787)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_static_id=>'refresh-department-overview'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6560927183620782)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6561677796620788)
,p_event_id=>wwv_flow_imp.id(6561428747620787)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'refresh-team-members'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6561178944620785)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6627038263532993)
,p_event_id=>wwv_flow_imp.id(6561428747620787)
,p_event_result=>'TRUE'
,p_action_sequence=>15
,p_execute_on_page_init=>'N'
,p_name=>'Reset department office map'
,p_static_id=>'reset-department-office-map'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6603574456278869)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'var officeMapElement = this.affectedElements[0];',
    'var officeMap = apex.region(officeMapElement.id);',
    'officeMap.reset();')))).to_clob
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Centralized Directory'
,p_alias=>'CENTRALIZED-DIRECTORY'
,p_step_title=>'Centralized Directory'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2530071015796209513
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5669739871574365)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5565474150564112)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5662154610574115)
,p_plug_name=>'Button Bar'
,p_static_id=>'button-bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'<div id="active_facets"></div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5661458202574095)
,p_plug_name=>'Search'
,p_static_id=>'search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(5661345518574095)
,p_landmark_label=>'Filters'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5661929826574112)
,p_name=>'P12_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5661458202574095)
,p_prompt=>'Search'
,p_source=>'JOB_ID,COUNTRY_ID,FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,JOB_TITLE,CITY,STATE_PROVINCE,COUNTRY_NAME,REGION_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5661345518574095)
,p_name=>'Emp Details View'
,p_static_id=>'search-results'
,p_template=>4075786578761660127
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'EMP_DETAILS_VIEW'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5668164485574321)
,p_query_column_id=>13
,p_column_alias=>'CITY'
,p_column_display_sequence=>13
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5667036873574281)
,p_query_column_id=>10
,p_column_alias=>'COMMISSION_PCT'
,p_column_display_sequence=>10
,p_column_heading=>'Commission Percent'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5665448288574237)
,p_query_column_id=>6
,p_column_alias=>'COUNTRY_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Country ID'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5668926114574343)
,p_query_column_id=>15
,p_column_alias=>'COUNTRY_NAME'
,p_column_display_sequence=>15
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5664643815574214)
,p_query_column_id=>4
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5667466251574299)
,p_query_column_id=>11
,p_column_alias=>'DEPARTMENT_NAME'
,p_column_display_sequence=>11
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5663512824574153)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5665873833574246)
,p_query_column_id=>7
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5663944777574189)
,p_query_column_id=>2
,p_column_alias=>'JOB_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Job ID'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5667757272574309)
,p_query_column_id=>12
,p_column_alias=>'JOB_TITLE'
,p_column_display_sequence=>12
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5666219295574252)
,p_query_column_id=>8
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>8
,p_column_heading=>'Last Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5665024098574224)
,p_query_column_id=>5
,p_column_alias=>'LOCATION_ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5664300523574202)
,p_query_column_id=>3
,p_column_alias=>'MANAGER_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5669339733574355)
,p_query_column_id=>16
,p_column_alias=>'REGION_NAME'
,p_column_display_sequence=>16
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5666695247574264)
,p_query_column_id=>9
,p_column_alias=>'SALARY'
,p_column_display_sequence=>9
,p_column_heading=>'Salary'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>wwv_flow_imp.id(5571120301564741)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5668502631574329)
,p_query_column_id=>14
,p_column_alias=>'STATE_PROVINCE'
,p_column_display_sequence=>14
,p_default_sort_column_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5662576871574118)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5662154610574115)
,p_button_name=>'RESET'
,p_static_id=>'reset'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12,RR'
,p_icon_css_classes=>'fa-undo'
,p_grid_new_row=>'Y'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Employee Details'
,p_alias=>'EMPLOYEE-DETAILS'
,p_step_title=>'Employee Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'<p>Review an employee''s profile, contact information, department, manager, and office location. Employee details are read-only on this page.</p>'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6579436208093529)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5565474150564112)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6579674711093530)
,p_plug_name=>'Button Bar'
,p_static_id=>'button-bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>6
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6580360163093536)
,p_plug_name=>'Compensation'
,p_static_id=>'compensation'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e."EMPLOYEE_ID",',
'       ''Salary: '' || to_char(e."SALARY", ''FM999G999G990D00'') "SALARY_DISPLAY",',
'       case',
'           when e."COMMISSION_PCT" is not null',
'           then ''Commission: '' || to_char(e."COMMISSION_PCT" * 100, ''FM990D00'') || ''%''',
'           else ''Commission: None''',
'       end "COMMISSION_DISPLAY"',
'  from "EMPLOYEES" e',
' where e."EMPLOYEE_ID" = :P13_EMPLOYEE_ID'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_required_role=>wwv_flow_imp.id(5571120301564741)
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(6580482237093537)
,p_region_id=>wwv_flow_imp.id(6580360163093536)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'SALARY_DISPLAY'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'COMMISSION_DISPLAY'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-money'
,p_icon_position=>'START'
,p_icon_description=>'Compensation'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'EMPLOYEE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6579561384093530)
,p_plug_name=>'Employee Context'
,p_static_id=>'employee-context'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>5
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6579934002093532)
,p_plug_name=>'Office Location'
,p_static_id=>'employee-office-map'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(6580022687093532)
,p_region_id=>wwv_flow_imp.id(6579934002093532)
,p_height=>440
,p_tilelayer_type=>'CUSTOM'
,p_tilelayer_name_default=>'osm-positron'
,p_navigation_bar_type=>'SMALL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_init_zoomlevel_static=>'11'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:MOUSEWHEEL_ZOOM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(6580189422093532)
,p_map_region_id=>wwv_flow_imp.id(6580022687093532)
,p_name=>'Employee Office'
,p_static_id=>'employee-office'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e."EMPLOYEE_ID",',
'       l."CITY" ||',
'       case',
'           when l."STATE_PROVINCE" is not null',
'           then '', '' || l."STATE_PROVINCE"',
'           else ''''',
'       end || '', '' || c."COUNTRY_NAME" "OFFICE_NAME",',
'       case upper(trim(l."CITY"))',
'           when ''ROMA'' then 41.9028',
'           when ''VENICE'' then 45.4408',
'           when ''TOKYO'' then 35.6762',
'           when ''HIROSHIMA'' then 34.3853',
'           when ''SOUTHLAKE'' then 32.9412',
'           when ''SOUTH SAN FRANCISCO'' then 37.6547',
'           when ''SOUTH BRUNSWICK'' then 40.3807',
'           when ''SEATTLE'' then 47.6062',
'           when ''TORONTO'' then 43.6532',
'           when ''WHITEHORSE'' then 60.7212',
'           when ''OXFORD'' then 51.7520',
'           when ''STRETFORD'' then 53.4466',
'           when ''MUNICH'' then 48.1351',
'           when ''SINGAPORE'' then 1.3521',
'           when ''LONDON'' then 51.5072',
'       end "LATITUDE",',
'       case upper(trim(l."CITY"))',
'           when ''ROMA'' then 12.4964',
'           when ''VENICE'' then 12.3155',
'           when ''TOKYO'' then 139.6503',
'           when ''HIROSHIMA'' then 132.4553',
'           when ''SOUTHLAKE'' then -97.1342',
'           when ''SOUTH SAN FRANCISCO'' then -122.4077',
'           when ''SOUTH BRUNSWICK'' then -74.5460',
'           when ''SEATTLE'' then -122.3321',
'           when ''TORONTO'' then -79.3832',
'           when ''WHITEHORSE'' then -135.0568',
'           when ''OXFORD'' then -1.2577',
'           when ''STRETFORD'' then -2.3086',
'           when ''MUNICH'' then 11.5820',
'           when ''SINGAPORE'' then 103.8198',
'           when ''LONDON'' then -0.1276',
'       end "LONGITUDE",',
'       trim(e."FIRST_NAME" || '' '' || e."LAST_NAME") ||',
unistr('       ''  \00B7  '' || nvl(j."JOB_TITLE", ''Role not specified'') ||'),
unistr('       ''  \00B7  '' || l."CITY" "MAP_TOOLTIP"'),
'  from "EMPLOYEES" e',
'  join "DEPARTMENTS" d',
'    on d."DEPARTMENT_ID" = e."DEPARTMENT_ID"',
'  join "LOCATIONS" l',
'    on l."LOCATION_ID" = d."LOCATION_ID"',
'  join "COUNTRIES" c',
'    on c."COUNTRY_ID" = l."COUNTRY_ID"',
'  left join "JOBS" j',
'    on j."JOB_ID" = e."JOB_ID"',
' where e."EMPLOYEE_ID" = :P13_EMPLOYEE_ID',
'   and case upper(trim(l."CITY"))',
'           when ''ROMA'' then 1',
'           when ''VENICE'' then 1',
'           when ''TOKYO'' then 1',
'           when ''HIROSHIMA'' then 1',
'           when ''SOUTHLAKE'' then 1',
'           when ''SOUTH SAN FRANCISCO'' then 1',
'           when ''SOUTH BRUNSWICK'' then 1',
'           when ''SEATTLE'' then 1',
'           when ''TORONTO'' then 1',
'           when ''WHITEHORSE'' then 1',
'           when ''OXFORD'' then 1',
'           when ''STRETFORD'' then 1',
'           when ''MUNICH'' then 1',
'           when ''SINGAPORE'' then 1',
'           when ''LONDON'' then 1',
'       end = 1'))
,p_items_to_submit=>'P13_EMPLOYEE_ID'
,p_use_vector_tiles=>false
,p_has_spatial_index=>false
,p_pk_column=>'EMPLOYEE_ID'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LONGITUDE'
,p_latitude_column=>'LATITUDE'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Default'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_tooltip_column=>'MAP_TOOLTIP'
,p_info_window_adv_formatting=>false
,p_info_window_title_column=>'OFFICE_NAME'
,p_info_window_body_column=>'MAP_TOOLTIP'
,p_legend_adv_formatting=>false
,p_allow_hide=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6579770544093531)
,p_plug_name=>'Employee Profile'
,p_static_id=>'employee-profile'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e."EMPLOYEE_ID",',
'       trim(e."FIRST_NAME" || '' '' || e."LAST_NAME") "EMPLOYEE_NAME",',
'       j."JOB_TITLE",',
'       ''Department: '' || nvl(d."DEPARTMENT_NAME", ''Unassigned'') ||',
unistr('       ''  \00B7  Manager: '' ||'),
'       case',
'           when m."EMPLOYEE_ID" is not null',
'           then trim(m."FIRST_NAME" || '' '' || m."LAST_NAME")',
'           else ''Not assigned''',
unistr('       end || ''  \00B7  Office: '' ||'),
'       nvl(l."CITY" ||',
'           case',
'               when l."STATE_PROVINCE" is not null',
'               then '', '' || l."STATE_PROVINCE"',
'               else ''''',
'           end || '', '' || c."COUNTRY_NAME", ''No office assigned'') "ORGANIZATION_DETAILS",',
'       ''Email: '' || nvl(e."EMAIL", ''Not provided'') ||',
unistr('       ''  \00B7  Phone: '' || nvl(e."PHONE_NUMBER", ''Not provided'') ||'),
unistr('       ''  \00B7  Hired: '' || to_char(e."HIRE_DATE", ''DD Mon YYYY'') "CONTACT_DETAILS"'),
'  from "EMPLOYEES" e',
'  left join "JOBS" j',
'    on j."JOB_ID" = e."JOB_ID"',
'  left join "DEPARTMENTS" d',
'    on d."DEPARTMENT_ID" = e."DEPARTMENT_ID"',
'  left join "EMPLOYEES" m',
'    on m."EMPLOYEE_ID" = e."MANAGER_ID"',
'  left join "LOCATIONS" l',
'    on l."LOCATION_ID" = d."LOCATION_ID"',
'  left join "COUNTRIES" c',
'    on c."COUNTRY_ID" = l."COUNTRY_ID"',
' where e."EMPLOYEE_ID" = :P13_EMPLOYEE_ID'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_no_data_found=>'Employee not found. Return to the Employee Directory and select a valid record.'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(6579877913093531)
,p_region_id=>wwv_flow_imp.id(6579770544093531)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'EMPLOYEE_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'JOB_TITLE'
,p_body_adv_formatting=>false
,p_body_column_name=>'ORGANIZATION_DETAILS'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'CONTACT_DETAILS'
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMPLOYEE_NAME'
,p_icon_position=>'START'
,p_icon_description=>'Employee initials'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'EMPLOYEE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6580226479093536)
,p_plug_name=>'Map Coverage'
,p_static_id=>'office-map-note'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2044111091335791563
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'Office markers are available for the cities configured on the Workforce Overview map. The employee profile above always shows the office city and country.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6580665276093538)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6579674711093530)
,p_button_name=>'BACK_TO_DIRECTORY'
,p_static_id=>'back-to-directory'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--noUI'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Employee Directory'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.'
,p_icon_css_classes=>'fa-arrow-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6580705906093538)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6579674711093530)
,p_button_name=>'EDIT_EMPLOYEE'
,p_static_id=>'edit-employee'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Employee'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:P3_EMPLOYEE_ID:&P13_EMPLOYEE_ID.'
,p_icon_css_classes=>'fa-edit'
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_imp.id(5571392122564741)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6580587895093538)
,p_name=>'P13_EMPLOYEE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6579561384093530)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Office Map'
,p_alias=>'OFFICE-MAP'
,p_step_title=>'Office Map'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6369596554209357)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5565474150564112)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6370200260209836)
,p_plug_name=>'Map'
,p_static_id=>'map'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(6372201987210352)
,p_region_id=>wwv_flow_imp.id(6370200260209836)
,p_height=>520
,p_tilelayer_type=>'CUSTOM'
,p_tilelayer_name_default=>'osm-positron'
,p_navigation_bar_type=>'SMALL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'STATIC'
,p_init_position_lon_static=>'-55'
,p_init_position_lat_static=>'42'
,p_init_zoomlevel_static=>'2'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:MOUSEWHEEL_ZOOM'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(6372380156210352)
,p_map_region_id=>wwv_flow_imp.id(6372201987210352)
,p_name=>'Office Map'
,p_static_id=>'office-map'
,p_layer_type=>'POLYGON'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with employee_counts as (',
'    select l."COUNTRY_ID",',
'           count(e."EMPLOYEE_ID") "EMPLOYEE_COUNT"',
'      from "DEPARTMENTS" d',
'      join "LOCATIONS" l',
'        on l."LOCATION_ID" = d."LOCATION_ID"',
'      left join "EMPLOYEES" e',
'        on e."DEPARTMENT_ID" = d."DEPARTMENT_ID"',
'     group by l."COUNTRY_ID"',
'),',
'country_polygons as (',
'    -- Natural Earth 1:110m country boundaries for HR countries with employees.',
'    select ''US'' "COUNTRY_ID", to_clob(q''~{"type":"MultiPolygon","coordinates":[[[[-122.84,49],[-95.159,49],[-94.818,49.389],[-94.329,48.671],[-91.64,48.14],[-88.378,48.303],[-84.876,46.9],[-82.551,45.348],[-82.138,43.571],[-83.12,42.08],[-82.69,41.67'
||'5],[-78.939,42.864],[-79.172,43.466],[-78.72,43.625],[-76.82,43.629],[-74.867,45.0],[-71.505,45.008],[-70.66,45.46],[-69.237,47.448],[-67.79,47.066],[-67.791,45.703],[-66.965,44.81],[-70.116,43.684],[-70.825,42.335],[-69.965,41.637],[-73.71,40.931],['
||'-71.945,40.93],[-73.952,40.751],[-74.906,38.94],[-75.528,39.498],[-75.057,38.404],[-75.94,37.217],[-75.722,37.937],[-76.35,39.15],[-76.329,38.083],[-76.99,38.24],[-76.302,37.918],[-75.727,35.551],[-79.061,33.494],[-81.336,31.44],[-81.314,30.036],[-80'
||'.057,26.88],[-80.381,25.206],[-81.172,25.201],[-81.71,25.87],[-82.855,27.886],[-82.65,28.55],[-83.71,29.937],[-85.109,29.636],[-86.4,30.4],[-89.594,30.16],[-89.408,29.16],[-93.226,29.784],[-94.69,29.48],[-97.14,27.83],[-97.14,25.87],[-97.53,25.84],[-'
||'99.02,26.37],[-100.958,29.381],[-102.48,29.76],[-103.11,28.97],[-103.94,29.27],[-106.508,31.755],[-111.024,31.335],[-114.721,32.721],[-117.128,32.535],[-118.52,34.028],[-120.623,34.609],[-124.398,40.313],[-124.533,42.766],[-123.899,45.523],[-124.687,'
||'48.184],[-123.12,48.04],[-122.587,47.096],[-122.84,49]]],[[[-155.402,20.08],[-154.807,19.509],[-155.688,18.916],[-156.073,19.703],[-155.861,20.267],[-155.402,20.08]]],[[[-155.99566,20.76404],[-156.07926,20.64397],[-156.41445,20.57241],[-156.58673,20.'
||'783],[-156.70167,20.8643],[-156.71055,20.92676],[-156.61258,21.01249],[-156.25711,20.91745],[-155.99566,20.76404]]],[[[-156.75824,21.17684],[-156.78933,21.06873],[-157.32521,21.09777],[-157.25027,21.21958],[-156.75824,21.17684]]],[[[-158.025,21.717],'
||'[-157.707,21.264],[-158.127,21.312],[-158.025,21.717]]],[[[-159.36569,22.21494],[-159.34512,21.982],[-159.46372,21.88299],[-159.80051,22.06533],[-159.74877,22.1382],[-159.5962,22.23618],[-159.36569,22.21494]]],[[[-166.468,60.384],[-165.579,59.91],[-1'
||'67.455,60.213],[-166.468,60.384]]],[[[-153.229,57.969],[-152.141,57.591],[-154.005,56.735],[-154.516,56.993],[-154.671,57.461],[-153.229,57.969]]],[[[-140.986,69.712],[-140.998,60.306],[-139.039,60],[-137.452,58.905],[-135.476,59.788],[-133.356,58.41'
||'],[-131.708,56.552],[-130.008,55.916],[-130.536,54.803],[-131.967,55.498],[-132.25,56.37],[-133.539,57.179],[-134.078,58.123],[-136.628,58.212],[-139.868,59.538],[-147.114,60.885],[-148.224,60.673],[-148.018,59.978],[-151.716,59.156],[-151.41,60.726]'
||',[-150.347,61.034],[-150.621,61.284],[-154.019,59.35],[-153.288,58.865],[-154.232,58.146],[-156.308,57.423],[-158.433,55.994],[-164.942,54.572],[-158.684,57.017],[-157.723,57.57],[-157.042,58.919],[-159.059,58.424],[-160.355,59.071],[-161.969,58.672]'
||',[-161.874,59.634],[-162.518,59.99],[-163.818,59.798],[-165.346,60.507],[-165.351,61.074],[-166.121,61.5],[-165.734,62.075],[-164.563,63.146],[-163.067,63.059],[-160.773,63.766],[-161.518,64.403],[-160.778,64.789],[-164.961,64.447],[-166.425,64.687],'
||'[-168.111,65.67],[-164.475,66.577],[-163.653,66.577],[-163.789,66.077],[-161.678,66.116],[-166.764,68.359],[-166.205,68.883],[-164.431,68.916],[-161.909,70.333],[-156.581,71.358],[-154.344,70.696],[-140.986,69.712]]],[[[-171.732,63.783],[-168.689,63.'
||'298],[-169.529,62.977],[-171.553,63.318],[-171.732,63.783]]]]}~'') "GEOJSON" from dual',
'    union all',
'    select ''CA'' "COUNTRY_ID", to_clob(q''~{"type":"MultiPolygon","coordinates":[[[[-122.84,49],[-127.436,50.831],[-130.515,54.288],[-130.008,55.916],[-135.476,59.788],[-137.452,58.905],[-140.998,60.306],[-140.986,69.712],[-136.504,68.898],[-128.138,70'
||'.484],[-113.497,67.688],[-106.15,68.8],[-101.454,67.647],[-97.669,68.579],[-96.126,67.293],[-94.233,69.069],[-96.471,70.09],[-95.209,71.921],[-87.35,67.199],[-85.522,69.882],[-82.623,69.658],[-81.387,67.111],[-85.769,66.558],[-90.704,63.61],[-94.685,'
||'58.949],[-92.297,57.087],[-82.273,55.148],[-79.913,51.208],[-78.602,52.562],[-79.83,54.668],[-76.541,56.534],[-78.517,58.805],[-77.337,59.853],[-78.107,62.32],[-73.84,62.444],[-69.59,61.061],[-67.65,58.212],[-64.584,60.336],[-61.799,56.339],[-57.333,'
||'54.627],[-55.683,52.147],[-60.033,50.243],[-66.399,50.229],[-71.105,46.822],[-65.056,49.233],[-64.472,46.238],[-60.518,47.008],[-59.803,45.92],[-65.364,43.545],[-66.162,44.465],[-64.425,45.292],[-67.137,45.138],[-69.237,47.448],[-71.505,45.008],[-82.'
||'439,41.675],[-82.551,45.348],[-88.378,48.303],[-122.84,49]]],[[[-88.15,74.392],[-97.121,76.751],[-79.834,74.923],[-88.15,74.392]]],[[[-55.6,51.317],[-56.796,49.812],[-53.477,49.249],[-53.069,46.655],[-59.266,47.603],[-55.6,51.317]]],[[[-83.883,65.11]'
||',[-80.103,63.726],[-87.222,63.541],[-85.884,65.739],[-83.883,65.11]]],[[[-78.771,72.352],[-68.786,70.525],[-66.969,69.186],[-68.805,68.72],[-61.852,66.862],[-63.918,64.999],[-68.015,66.263],[-64.669,63.393],[-68.783,63.746],[-66.166,61.931],[-68.877,'
||'62.33],[-78.556,64.573],[-73.96,65.455],[-73.312,68.069],[-78.957,70.167],[-88.682,70.411],[-90.205,72.235],[-85.826,73.804],[-85.774,72.534],[-82.316,73.751],[-78.771,72.352]]],[[[-94.504,74.135],[-90.51,73.857],[-95.41,72.062],[-96.018,73.437],[-94'
||'.504,74.135]]],[[[-122.854924,76.116543],[-122.854925,76.116543],[-121.157535,76.864508],[-119.103939,77.51222],[-117.570131,77.498319],[-116.198587,77.645287],[-116.335813,76.876962],[-117.106051,76.530032],[-118.040412,76.481172],[-119.899318,76.05'
||'3213],[-121.499995,75.900019],[-122.854924,76.116543]]],[[[-121.538,74.449],[-115.511,73.475],[-123.092,70.902],[-125.929,71.869],[-123.94,73.68],[-124.918,74.293],[-121.538,74.449]]],[[[-107.819,75.846],[-105.705,75.48],[-117.71,75.222],[-115.405,76'
||'.479],[-107.819,75.846]]],[[[-106.523,73.076],[-101.089,69.584],[-113.313,68.536],[-117.34,69.96],[-112.416,70.366],[-119.402,71.559],[-115.189,73.315],[-108.188,71.651],[-108.396,73.09],[-106.523,73.076]]],[[[-100.438,72.706],[-101.54,73.36],[-97.38'
||',73.76],[-96.54,72.56],[-98.36,71.273],[-102.5,72.51],[-100.438,72.706]]],[[[-98.5,76.72],[-98.16,75],[-102.502,75.564],[-98.5,76.72]]],[[[-96.016,80.602],[-92.41,81.257],[-85.814,79.337],[-92.877,78.343],[-96.016,80.602]]],[[[-91.587,81.894],[-61.85'
||',82.629],[-76.908,79.323],[-75.393,78.526],[-80.561,76.178],[-89.491,76.472],[-88.26,77.9],[-84.976,77.539],[-87.962,78.372],[-85.095,79.345],[-86.932,80.251],[-81.848,80.464],[-91.587,81.894]]]]}~'') "GEOJSON" from dual',
'    union all',
'    select ''UK'' "COUNTRY_ID", to_clob(q''~{"type":"MultiPolygon","coordinates":[[[[-6.198,53.868],[-7.572,54.06],[-7.572,55.132],[-5.662,54.555],[-6.198,53.868]]],[[[-3.094,53.405],[-2.945,53.985],[-3.63,54.615],[-5.083,55.062],[-4.719,55.508],[-5.048'
||',55.784],[-5.586,55.311],[-6.15,56.785],[-5.01,58.63],[-3.005,58.635],[-4.074,57.553],[-1.959,57.685],[-3.119,55.974],[-2.085,55.91],[-1.115,54.625],[-0.43,54.464],[0.47,52.93],[1.682,52.74],[1.051,51.807],[1.45,51.289],[0.55,50.766],[-5.777,50.16],['
||'-3.415,51.426],[-5.267,51.991],[-4.222,52.301],[-4.77,52.84],[-4.58,53.495],[-3.094,53.405]]]]}~'') "GEOJSON" from dual',
'    union all',
'    select ''DE'' "COUNTRY_ID", to_clob(q''~{"type":"MultiPolygon","coordinates":[[[[14.12,53.757],[15.017,51.107],[12.24,50.266],[12.521,49.547],[13.596,48.877],[12.884,48.289],[12.933,47.468],[7.467,47.621],[8.099,49.018],[6.658,49.202],[6.043,50.128]'
||',[5.989,51.852],[6.843,52.228],[7.1,53.694],[8.122,53.528],[8.801,54.021],[8.526,54.963],[9.922,54.983],[10.939,54.009],[12.518,54.47],[14.12,53.757]]]]}~'') "GEOJSON" from dual',
')',
'select c."COUNTRY_ID",',
'       c."COUNTRY_NAME",',
'       ec."EMPLOYEE_COUNT",',
'       cp."GEOJSON",',
'       c."COUNTRY_NAME" || '' - Employees: '' ||',
'       to_char(ec."EMPLOYEE_COUNT") "MAP_TOOLTIP"',
'  from country_polygons cp',
'  join "COUNTRIES" c',
'    on c."COUNTRY_ID" = cp."COUNTRY_ID"',
'  join employee_counts ec',
'    on ec."COUNTRY_ID" = c."COUNTRY_ID"',
' where ec."EMPLOYEE_COUNT" > 0'))
,p_use_vector_tiles=>false
,p_has_spatial_index=>false
,p_pk_column=>'COUNTRY_ID'
,p_geometry_column_data_type=>'GEOJSON'
,p_geometry_column=>'GEOJSON'
,p_stroke_color=>'#FFFFFF'
,p_stroke_width_subst=>'1'
,p_fill_color_is_spectrum=>true
,p_fill_color_spectr_name=>'BurgYl'
,p_fill_color_spectr_type=>'SEQUENTIAL'
,p_fill_value_column=>'EMPLOYEE_COUNT'
,p_fill_opacity_subst=>'0.8'
,p_tooltip_adv_formatting=>false
,p_tooltip_column=>'MAP_TOOLTIP'
,p_info_window_adv_formatting=>false
,p_legend_adv_formatting=>false
,p_allow_hide=>true
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Enterprise HR Management System - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2104585595298951431
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5572895292564981)
,p_plug_name=>'Enterprise HR Management System'
,p_static_id=>'enterprise-hr-management-system'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677585639786677191
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5574727237565356)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5572895292564981)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5573620216565339)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5572895292564981)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5574414371565350)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5572895292564981)
,p_prompt=>'Remember me'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5574028702565349)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5572895292564981)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5573233005565335)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5572895292564981)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5578817308565400)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5578817308565400
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5578489723565399)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>5578489723565399
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5575144545565366)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5575144545565366
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5576117883565388)
,p_page_process_id=>wwv_flow_imp.id(5575144545565366)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5576610603565389)
,p_page_process_id=>wwv_flow_imp.id(5575144545565366)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5575633877565379)
,p_page_process_id=>wwv_flow_imp.id(5575144545565366)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5577023093565390)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5577023093565390
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5578013392565395)
,p_page_process_id=>wwv_flow_imp.id(5577023093565390)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(5577547105565394)
,p_page_process_id=>wwv_flow_imp.id(5577023093565390)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5571120301564741)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5845138745578708)
,p_plug_name=>'Access Control'
,p_static_id=>'access-control'
,p_parent_plug_id=>wwv_flow_imp.id(5844820976578702)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>70
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_required_patch=>wwv_flow_imp.id(5569099372564563)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5849314105578820)
,p_plug_name=>'Access Control Actions'
,p_static_id=>'access-control-actions'
,p_parent_plug_id=>wwv_flow_imp.id(5845138745578708)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(5842752223578671)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5845999770578725)
,p_plug_name=>'ACL Information'
,p_static_id=>'acl-information'
,p_parent_plug_id=>wwv_flow_imp.id(5845138745578708)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_plug_template=>2044111091335791563
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
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
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5844492393578695)
,p_plug_name=>'Activity Reports'
,p_static_id=>'activity-reports'
,p_parent_plug_id=>wwv_flow_imp.id(5844050102578686)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>60
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(5839544715578592)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
,p_required_patch=>wwv_flow_imp.id(5569188090564563)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5838752883578567)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(5565474150564112)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5844050102578686)
,p_plug_name=>'Column 1'
,p_static_id=>'column-1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3374665444246510938
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5844820976578702)
,p_plug_name=>'Column 2'
,p_static_id=>'column-2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3374665444246510938
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5846380319578734)
,p_name=>'User Counts Report'
,p_static_id=>'user-counts-report'
,p_parent_plug_id=>wwv_flow_imp.id(5845138745578708)
,p_template=>4075786578761660127
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name,',
'       (select count(*)',
'          from apex_appl_acl_user_roles ur',
'         where r.role_id = ur.role_id) user_count,',
'       r.role_id',
'  from apex_appl_acl_roles r',
' where r.application_id = :APP_ID',
' group by r.role_name, r.role_id',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2103942766914282568
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5847869886578802)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5847027420578789)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5847462749578796)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5845551901578718)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5845138745578708)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&SESSION.::&DEBUG.:10022,RP'
,p_icon_css_classes=>'fa-user-plus'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5848414860578811)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(5845551901578718)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5848808063578815)
,p_event_id=>wwv_flow_imp.id(5848414860578811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5846380319578734)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(5571120301564741)
,p_required_patch=>wwv_flow_imp.id(5569188090564563)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5721723432575165)
,p_plug_name=>'Filters'
,p_static_id=>'filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5720910778575163)
,p_plug_name=>'Hourly Page Events'
,p_static_id=>'hourly-page-events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5721020810575163)
,p_region_id=>wwv_flow_imp.id(5720910778575163)
,p_chart_type=>'bar'
,p_lazy_loading=>true
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5723013264575181)
,p_chart_id=>wwv_flow_imp.id(5721020810575163)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from sys.dual',
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
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5724279917575188)
,p_chart_id=>wwv_flow_imp.id(5721020810575163)
,p_static_id=>'x'
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
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5723603223575186)
,p_chart_id=>wwv_flow_imp.id(5721020810575163)
,p_static_id=>'y'
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
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5721694587575164)
,p_name=>'Latest Activity'
,p_static_id=>'latest-activity'
,p_template=>4075786578761660127
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
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5732971531575430)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5732598121575416)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5721137323575164)
,p_plug_name=>'Most Active Pages'
,p_static_id=>'most-active-pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5721257125575164)
,p_region_id=>wwv_flow_imp.id(5721137323575164)
,p_chart_type=>'bar'
,p_lazy_loading=>true
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_overview_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5728008850575215)
,p_chart_id=>wwv_flow_imp.id(5721257125575164)
,p_static_id=>'series-1'
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
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5728698739575219)
,p_chart_id=>wwv_flow_imp.id(5721257125575164)
,p_static_id=>'x'
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
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5729203099575222)
,p_chart_id=>wwv_flow_imp.id(5721257125575164)
,p_static_id=>'y'
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
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5721548945575164)
,p_name=>'Recent Errors'
,p_static_id=>'recent-errors'
,p_template=>4075786578761660127
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
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5730363779575313)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5730778518575326)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5721398885575164)
,p_plug_name=>'Top Users'
,p_static_id=>'top-users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5721446071575164)
,p_region_id=>wwv_flow_imp.id(5721398885575164)
,p_chart_type=>'bar'
,p_lazy_loading=>true
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_overview_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5725590932575200)
,p_chart_id=>wwv_flow_imp.id(5721446071575164)
,p_static_id=>'series-1'
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
,p_series_type=>'bar'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5726103396575204)
,p_chart_id=>wwv_flow_imp.id(5721446071575164)
,p_static_id=>'x'
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
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(5726799966575206)
,p_chart_id=>wwv_flow_imp.id(5721446071575164)
,p_static_id=>'y'
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5734210406575481)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5720910778575163)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_static_id=>'view-activity-by-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10011:&SESSION.::&DEBUG.:10011,RP'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5735099124575491)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5721398885575164)
,p_button_name=>'VIEW_ACTIVITY_BY_USER2'
,p_static_id=>'view-activity-by-user2'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10011:&SESSION.::&DEBUG.:10011,RP'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5734691013575488)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5721137323575164)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_static_id=>'view-activity-details'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10014:&SESSION.::&DEBUG.:10014,RP'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5735483368575493)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5721548945575164)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_static_id=>'view-recent-errors'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10012:&SESSION.::&DEBUG.:10012,RP'
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5721818057575165)
,p_name=>'P10010_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5721723432575165)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5721909442575165)
,p_name=>'Change Filters'
,p_static_id=>'change-filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10010_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5736975024575532)
,p_event_id=>wwv_flow_imp.id(5721909442575165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5720910778575163)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5737484223575535)
,p_event_id=>wwv_flow_imp.id(5721909442575165)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5721398885575164)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5737989747575538)
,p_event_id=>wwv_flow_imp.id(5721909442575165)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-3'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5721137323575164)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5738463390575544)
,p_event_id=>wwv_flow_imp.id(5721909442575165)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-4'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5721548945575164)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5738933059575551)
,p_event_id=>wwv_flow_imp.id(5721909442575165)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-5'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5721694587575164)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5571120301564741)
,p_required_patch=>wwv_flow_imp.id(5569188090564563)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5771451258576732)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5771331835576732)
,p_plug_name=>'Top Users'
,p_static_id=>'top-users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
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
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5772491654576734)
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
,p_internal_uid=>5772491654576734
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5775815273577036)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5773936654576921)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5775491222577014)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5774789531576976)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5776257115577056)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5774300559576955)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5775127671576993)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5773640149576877)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5779301049577122)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5771671882576732)
,p_plug_name=>'Top Users Chart'
,p_static_id=>'top-users-chart'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10011_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(5771743263576732)
,p_region_id=>wwv_flow_imp.id(5771671882576732)
,p_chart_type=>'donut'
,p_height=>'600'
,p_lazy_loading=>true
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
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
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(5782310632577180)
,p_chart_id=>wwv_flow_imp.id(5771743263576732)
,p_static_id=>'series-1'
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
,p_series_type=>'donut'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5772016837576732)
,p_name=>'P10011_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5771451258576732)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2322028657308407345
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5771831862576732)
,p_name=>'P10011_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5771451258576732)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5771558854576732)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10011_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5780905087577151)
,p_event_id=>wwv_flow_imp.id(5771558854576732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5771331835576732)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5784259049577253)
,p_event_id=>wwv_flow_imp.id(5771558854576732)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh-2'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5771331835576732)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5571120301564741)
,p_required_patch=>wwv_flow_imp.id(5569188090564563)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5764582859576503)
,p_plug_name=>'Application Error Log'
,p_static_id=>'application-error-log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
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
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5765045252576504)
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
,p_internal_uid=>5765045252576504
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5767035007576657)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5767435255576674)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5768267132576704)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5767854932576687)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5766358046576601)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5766602526576640)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5770672278576729)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5571120301564741)
,p_required_patch=>wwv_flow_imp.id(5569188090564563)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5750760292575982)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5750647837575982)
,p_plug_name=>'Page Performance'
,p_static_id=>'page-performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
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
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5751233801575984)
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
,p_internal_uid=>5751233801575984
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5754835427576261)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5757476045576407)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5754456249576249)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5754046895576236)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5756710511576369)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5755665454576295)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5753231749576205)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5757180473576390)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5752480283576158)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5752822011576185)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5755296254576277)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5756326331576340)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5755930260576318)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5753618572576220)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5762320008576469)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5750595448575982)
,p_name=>'P10013_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5750760292575982)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2322028657308407345
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5750897132575982)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10013_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5763936444576499)
,p_event_id=>wwv_flow_imp.id(5750897132575982)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5750647837575982)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5571120301564741)
,p_required_patch=>wwv_flow_imp.id(5569188090564563)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5739609083575563)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5739505938575563)
,p_plug_name=>'Page Views'
,p_static_id=>'page-views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
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
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5740117243575570)
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
,p_internal_uid=>5740117243575570
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5743667836575835)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5742563347575803)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5744846381575870)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5744429350575859)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5744006916575847)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5742856786575815)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5743250582575824)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5741371221575762)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5742148425575793)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5741748443575781)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5748456867575943)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5739497568575563)
,p_name=>'P10014_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5739609083575563)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_cHeight=>1
,p_field_template=>2322028657308407345
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5739786674575563)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10014_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5750022114575979)
,p_event_id=>wwv_flow_imp.id(5739786674575563)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5739505938575563)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5571120301564741)
,p_required_patch=>wwv_flow_imp.id(5569188090564563)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5784864639577262)
,p_plug_name=>'Automations Log'
,p_static_id=>'automations-log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
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
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5785489453577265)
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
,p_internal_uid=>5785489453577265
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5787438077577581)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5789791681577686)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5788563997577629)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5786682404577538)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5789312296577672)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5788938354577649)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10016:&SESSION.::&DEBUG.:10016,RP:P10016_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5787007901577569)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5787856042577595)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5788167241577610)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5793067312577741)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5571120301564741)
,p_required_patch=>wwv_flow_imp.id(5569188090564563)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5794061539577755)
,p_plug_name=>'Automation Execution'
,p_static_id=>'automation-execution'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5796404216577772)
,p_name=>'Messages'
,p_static_id=>'messages'
,p_template=>2103954283454391425
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
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5797332163577904)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5797073536577889)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5797774619577916)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5798109667577924)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5794873200577763)
,p_name=>'P10016_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5794061539577755)
,p_prompt=>'Automation'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1612549609962752680
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5794465408577760)
,p_name=>'P10016_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5794061539577755)
,p_use_cache_before_default=>'NO'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5795276353577765)
,p_name=>'P10016_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5794061539577755)
,p_prompt=>'Started'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1612549609962752680
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5795624770577767)
,p_name=>'P10016_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5794061539577755)
,p_prompt=>'Status'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1612549609962752680
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5796054967577770)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_static_id=>'get-log-detail'
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
,p_internal_uid=>5796054967577770
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5571120301564741)
,p_required_patch=>wwv_flow_imp.id(5569099372564563)
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
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5800072789577947)
,p_plug_name=>'Access Control Configuration'
,p_static_id=>'access-control-configuration'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5800169761577947)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5801293036577957)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5800169761577947)
,p_button_name=>'APPLY_CHANGES'
,p_static_id=>'apply-changes'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5801615838577960)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5800169761577947)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5802133723577965)
,p_button_id=>wwv_flow_imp.id(5801615838577960)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6634631425865938)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5803043375577974)
,p_name=>'P10020_ALLOW_OTHER_USERS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5800072789577947)
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
,p_grid_label_column_span=>3
,p_field_template=>2322028657308407345
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5803403681577983)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_static_id=>'set-access-control'
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
,p_internal_uid=>5803403681577983
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(5571120301564741)
,p_required_patch=>wwv_flow_imp.id(5569099372564563)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5803878384577986)
,p_plug_name=>'Manage User Access'
,p_static_id=>'manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5804685820577989)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10022:&SESSION.::&DEBUG.:RP:P10022_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>5804685820577989
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5806658525578084)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5805886237578048)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(5806269615578070)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5808149350578117)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5808884077578124)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5803878384577986)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_static_id=>'add-multiple-users'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Add Multiple Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10023:&SESSION.::&DEBUG.:10023'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5809235630578135)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5803878384577986)
,p_button_name=>'ADD_USER'
,p_static_id=>'add-user'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10022:&SESSION.::&DEBUG.:10022'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5803997517577986)
,p_name=>'Refresh Report'
,p_static_id=>'refresh-report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5803878384577986)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5809950000578156)
,p_event_id=>wwv_flow_imp.id(5803997517577986)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5803878384577986)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5571120301564741)
,p_required_patch=>wwv_flow_imp.id(5569099372564563)
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
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5810506234578161)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5810472995578161)
,p_plug_name=>'Form on Manage User Access'
,p_static_id=>'form-on-manage-user-access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5811554682578187)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5810506234578161)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5812071730578195)
,p_button_id=>wwv_flow_imp.id(5811554682578187)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5813280920578207)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5810506234578161)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5812542950578203)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5810506234578161)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5812802785578205)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5810506234578161)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10022_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5814024841578212)
,p_name=>'P10022_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5810472995578161)
,p_item_source_plug_id=>wwv_flow_imp.id(5810472995578161)
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5813602387578209)
,p_name=>'P10022_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5810472995578161)
,p_item_source_plug_id=>wwv_flow_imp.id(5810472995578161)
,p_source=>'ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5814847601578216)
,p_name=>'P10022_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5810472995578161)
,p_item_source_plug_id=>wwv_flow_imp.id(5810472995578161)
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1612549789555753698
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5814465175578215)
,p_name=>'P10022_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5810472995578161)
,p_item_source_plug_id=>wwv_flow_imp.id(5810472995578161)
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10022_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1612549789555753698
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(5816044923578276)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_static_id=>'cannot-remove-yourself-from-administrator'
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
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5817288946578290)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5817288946578290
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5816479479578285)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(5810472995578161)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_static_id=>'initialize-form-manage-user-access'
,p_internal_uid=>5816479479578285
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5816808338578288)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5810472995578161)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_static_id=>'process-form-manage-user-access'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'N',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'N',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5816808338578288
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5571120301564741)
,p_required_patch=>wwv_flow_imp.id(5569099372564563)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5817670400578291)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5817724114578291)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5819808670578312)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5817670400578291)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5820382230578318)
,p_button_id=>wwv_flow_imp.id(5819808670578312)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5817857522578291)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5817670400578291)
,p_button_name=>'NEXT'
,p_static_id=>'next'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2086257187394300437
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6635141482865948)
,p_branch_action=>'f?p=&APP_ID.:10024:&SESSION.::&DEBUG.:10024,RP&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(5817857522578291)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5821645895578333)
,p_name=>'P10023_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5817724114578291)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5821292283578327)
,p_name=>'P10023_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5817724114578291)
,p_prompt=>'Roles'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5822009781578338)
,p_name=>'P10023_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5817724114578291)
,p_prompt=>'Username Format'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5823175156578351)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_static_id=>'create-collections'
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
,p_process_when_button_id=>wwv_flow_imp.id(5817857522578291)
,p_internal_uid=>5823175156578351
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(5571120301564741)
,p_required_patch=>wwv_flow_imp.id(5569099372564563)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_deep_linking=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5817915227578291)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2129856781885180476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5818291481578291)
,p_name=>'Exceptions'
,p_static_id=>'exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(5818047687578291)
,p_template=>2667762537863948531
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
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
,p_query_row_template=>2542081983073888486
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5825319761578441)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(5824910211578435)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5818423945578291)
,p_plug_name=>'Hidden Items'
,p_static_id=>'hidden-items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5828268836578480)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_static_id=>'no-valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5818306160578291)
,p_plug_name=>'&P10024_VALID_COUNT. Users to Add'
,p_static_id=>'p10024-valid-count-users-to-add'
,p_parent_plug_id=>wwv_flow_imp.id(5818047687578291)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>50
,p_plug_item_display_point=>'ABOVE'
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
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5827580817578472)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_static_id=>'valid-users-exist-page-info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10024_VALID_COUNT),',
'           apex_escape.html(:P10024_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5818047687578291)
,p_plug_name=>'Wizard Container'
,p_static_id=>'wizard-container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5829372574578489)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5817915227578291)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(5829858842578491)
,p_button_id=>wwv_flow_imp.id(5829372574578489)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_stop_execution_on_error=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5828958757578487)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5817915227578291)
,p_button_name=>'PREVIOUS'
,p_static_id=>'previous'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2352535364915922073
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5818585792578291)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5817915227578291)
,p_button_name=>'SUBMIT'
,p_static_id=>'submit'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5831186012578502)
,p_name=>'P10024_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5818423945578291)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5830355689578493)
,p_name=>'P10024_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5818423945578291)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10023_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5830778823578501)
,p_name=>'P10024_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5818423945578291)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5831432593578504)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_static_id=>'add-users-to-access-control-list'
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
,p_process_when_button_id=>wwv_flow_imp.id(5818585792578291)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>5831432593578504
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5831836343578505)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_success_messages', 'Y')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5831836343578505
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
,p_group_id=>wwv_flow_imp.id(5572253921564948)
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(5569706651564564)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5832757613578511)
,p_plug_name=>'About Page'
,p_static_id=>'about-page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_plug_template=>2325543309974442989
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'<h2>Enterprise HR Management System</h2><p>Manage employee and organizational records, review workforce reports, and maintain office information. Access to employee compensation is restricted to Administrators.</p><p>For access or data corrections, c'
||'ontact your HR system administrator.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
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
,p_step_template=>2103835248774687739
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(5569706651564564)
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5833469197578514)
,p_plug_name=>'Search Dialog'
,p_static_id=>'search-dialog'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
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
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5833885967578516)
,p_name=>'P10031_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5833469197578514)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5849799122578826)
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(5850237015578831)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5854938061578960)
,p_plug_name=>'&APP_USER.'
,p_static_id=>'app-user'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5855359785578990)
,p_plug_name=>'&APP_USER.'
,p_static_id=>'app-user-2'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_plug_template=>2076152157930740558
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER and workspace_id = :WORKSPACE_ID'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(5855742999579021)
,p_region_id=>wwv_flow_imp.id(5855359785578990)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5856227449579035)
,p_plug_name=>'Settings'
,p_static_id=>'settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4504868307683981366
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(5853847345578921)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2071422514019082236
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(5849799122578826)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1664614232864994871
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(5849918703578828)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5851686507578868)
,p_plug_name=>'Push Notifications'
,p_static_id=>'push-notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2044111091335791563
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5851207267578844)
,p_plug_name=>'Push Notifications Not Supported'
,p_static_id=>'push-notifications-not-supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported u-DisplayNone'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2044111091335791563
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_location=>null
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(5850849822578839)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_static_id=>'back'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2086257187394300437
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&SESSION.::&DEBUG.'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5852173877578891)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5851686507578868)
,p_prompt=>'Enable push notifications on this device'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(5852474941578895)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_static_id=>'change-p20010-enable-push'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5852804956578899)
,p_event_id=>wwv_flow_imp.id(5852474941578895)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_static_id=>'subscribe-to-push-notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.pwa.subscribePushNotifications();')).to_clob
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(5853349761578904)
,p_event_id=>wwv_flow_imp.id(5852474941578895)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_static_id=>'unsubscribe-from-push-notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'js_code', 'apex.pwa.unsubscribePushNotifications();')).to_clob
);
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
