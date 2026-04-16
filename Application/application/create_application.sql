prompt --application/create_application
begin
--   Manifest
--     FLOW: 104
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'SAARTHIDEV')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'SaarthiDev (Working Copy: StowageChangesJanuz)')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'A200200')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'0035650746B5FB83BC1224C490E7CA877E35158AE7357FA32E46DF845A8823E6'
,p_checksum_salt_last_reset=>'20160531171753'
,p_bookmark_checksum_function=>'SH1'
,p_accept_old_checksums=>false
,p_on_max_session_timeout_url=>'#LOGOUT_URL#'
,p_compatibility_mode=>'24.2'
,p_accessible_read_only=>'N'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(31949274725758531032)
,p_populate_roles=>'A'
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Saarthi-Your Guide'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_referrer_policy=>'strict-origin-when-cross-origin'
,p_runtime_api_usage=>'W'
,p_pass_ecid=>'N'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_tokenize_row_search=>'N'
,p_substitution_string_01=>'DEFAULT_CURRENCY_ICON'
,p_substitution_value_01=>'fa-inr'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>256
,p_version_scn=>46735073520165
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'fullscreen'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'N'
,p_working_copy_created_on=>to_date('20260413122738','YYYYMMDDHH24MISS')
,p_working_copy_created_by=>'RAHUL'
,p_working_copy_name=>'StowageChangesJanuz'
,p_working_copy_description=>'StowageChangesJanuz'
);
wwv_flow_imp.component_end;
end;
/
