prompt --application/shared_components/navigation/lists/data_load_proforma
begin
--   Manifest
--     LIST: Data Load - Proforma
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
 p_id=>wwv_flow_imp.id(109468004091271328)
,p_name=>'Data Load - Proforma'
,p_list_status=>'PUBLIC'
,p_version_scn=>554708788
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109468481555271329)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Copy Proforma Data from Costing Sheet'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109468884298271329)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Proforma Data / Table Mapping'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109469238864271330)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Proforma Data Validation'
,p_list_item_link_target=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109469645981271330)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Proforma Data Load Results'
,p_list_item_link_target=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
