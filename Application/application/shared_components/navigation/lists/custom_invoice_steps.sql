prompt --application/shared_components/navigation/lists/custom_invoice_steps
begin
--   Manifest
--     LIST: Custom Invoice Steps
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
 p_id=>wwv_flow_imp.id(124817506615634011)
,p_name=>'Custom Invoice Steps'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(124818661852634026)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Step 1'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(76970866681180464)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Step 2 - Update HSN Details'
,p_list_item_link_target=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(100544087040051505)
,p_list_item_display_sequence=>16
,p_list_item_link_text=>'Step 2 - Update HSN Details & Split Groups'
,p_list_item_link_target=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:RP:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(124823406181634066)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Step 3 - Group/ Rename Products'
,p_list_item_link_target=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3107202648476683495)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Step 5 - Manual Group'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3143089885309371417)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Step 4 - Reorder Products'
,p_list_item_link_target=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(124828290164639102)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Step 5 - Review'
,p_list_item_link_target=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
