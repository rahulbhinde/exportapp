prompt --application/shared_components/security/app_access_control/account_user
begin
--   Manifest
--     ACL ROLE: ACCOUNT_USER
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
 p_id=>wwv_flow_imp.id(69910432510221010)
,p_static_id=>'ACCOUNT_USER'
,p_name=>'ACCOUNT_USER'
,p_description=>'This role users look after accounts of the company like GST Filing, etc.'
,p_version_scn=>350683219
);
wwv_flow_imp.component_end;
end;
/
