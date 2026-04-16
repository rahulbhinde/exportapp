prompt --application/shared_components/navigation/lists/questions_for_output
begin
--   Manifest
--     LIST: Questions For Output
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(100369846675273059)
,p_name=>'Questions For Output'
,p_list_status=>'PUBLIC'
,p_version_scn=>430691043
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(100369670962272997)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Questions'
,p_list_item_link_target=>'f?p=&APP_ID.:97:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
