prompt --application/shared_components/security/app_access_control/administrator
begin
--   Manifest
--     ACL ROLE: ADMINISTRATOR
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
 p_id=>wwv_flow_imp.id(69910305492219531)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'ADMINISTRATOR'
,p_description=>'This is role will have full access to application and owner of the company will be assigned this role.'
,p_version_scn=>350683219
);
wwv_flow_imp.component_end;
end;
/
