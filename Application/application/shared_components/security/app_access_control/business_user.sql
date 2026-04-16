prompt --application/shared_components/security/app_access_control/business_user
begin
--   Manifest
--     ACL ROLE: BUSINESS_USER
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
 p_id=>wwv_flow_imp.id(69910446616222108)
,p_static_id=>'BUSINESS_USER'
,p_name=>'BUSINESS_USER'
,p_description=>wwv_flow_string.join(wwv_flow_t_varchar2(
'"This role users are the operational users of the company who like create documents related to Pre and Post shipments.',
'Kindly note this role users will have not access to master setup data."'))
,p_version_scn=>350683219
);
wwv_flow_imp.component_end;
end;
/
