prompt --application/shared_components/logic/application_items/app_quote_in_symbol
begin
--   Manifest
--     APPLICATION ITEM: APP_QUOTE_IN_SYMBOL
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
 p_id=>wwv_flow_imp.id(29829435825400178)
,p_name=>'APP_QUOTE_IN_SYMBOL'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>350683224
);
wwv_flow_imp.component_end;
end;
/
