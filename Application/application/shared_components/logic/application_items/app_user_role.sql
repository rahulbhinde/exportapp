prompt --application/shared_components/logic/application_items/app_user_role
begin
--   Manifest
--     APPLICATION ITEM: APP_USER_ROLE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(358149716990373464)
,p_name=>'APP_USER_ROLE'
,p_protection_level=>'I'
,p_version_scn=>576861938
);
wwv_flow_imp.component_end;
end;
/
