prompt --application/shared_components/security/app_access_control/hide_sensitive_info
begin
--   Manifest
--     ACL ROLE: HIDE_SENSITIVE_INFO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(102146346603688603)
,p_static_id=>'HIDE_SENSITIVE_INFO'
,p_name=>'HIDE_SENSITIVE_INFO'
,p_description=>'To hide sensitive information for users to give them limited access. This will be used to hid product costing grid'
,p_version_scn=>479609818
);
wwv_flow_imp.component_end;
end;
/
