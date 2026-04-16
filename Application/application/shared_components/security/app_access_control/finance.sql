prompt --application/shared_components/security/app_access_control/finance
begin
--   Manifest
--     ACL ROLE: FINANCE
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
 p_id=>wwv_flow_imp.id(97168533152215319)
,p_static_id=>'FINANCE'
,p_name=>'FINANCE'
,p_description=>'This is role will have access to the Finance Module of the application'
,p_version_scn=>482597737
);
wwv_flow_imp.component_end;
end;
/
