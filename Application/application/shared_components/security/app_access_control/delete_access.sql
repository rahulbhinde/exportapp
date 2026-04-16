prompt --application/shared_components/security/app_access_control/delete_access
begin
--   Manifest
--     ACL ROLE: DELETE_ACCESS
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
 p_id=>wwv_flow_imp.id(69920797681089605)
,p_static_id=>'DELETE_ACCESS'
,p_name=>'DELETE_ACCESS'
,p_description=>'This role users will have access to delete a record from application'
,p_version_scn=>350683219
);
wwv_flow_imp.component_end;
end;
/
