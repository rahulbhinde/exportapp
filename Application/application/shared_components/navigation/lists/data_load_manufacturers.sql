prompt --application/shared_components/navigation/lists/data_load_manufacturers
begin
--   Manifest
--     LIST: Data Load - Manufacturers
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
 p_id=>wwv_flow_imp.id(125240526330012601)
,p_name=>'Data Load - Manufacturers'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(125240866901012620)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Data Load Source Supplier'
,p_list_item_link_target=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(125241292669012632)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Data / Table Mapping Supplier'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(125241645559012634)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Data Validation Supplier'
,p_list_item_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(125242086813012634)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Data Load Results Supplier'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
