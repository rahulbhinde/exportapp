prompt --application/shared_components/security/authorizations/sb_hide_sensitive_info
begin
--   Manifest
--     SECURITY SCHEME: SB Hide Sensitive Info
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(102149068872733649)
,p_name=>'SB Hide Sensitive Info'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return fn_access_control(''HIDE_SENSITIVE_INFO'');'
,p_error_message=>'Insufficient privileges, user is not authorized to delete'
,p_version_scn=>479595680
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
