prompt --application/shared_components/user_interface/lovs/lov_packing_material_stock_ig
begin
--   Manifest
--     LOV_PACKING_MATERIAL_STOCK_IG
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(101152454686709296)
,p_lov_name=>'LOV_PACKING_MATERIAL_STOCK_IG'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pmm_name name,  pmm_id r',
'from V_PACKING_MATERIAL_MASTER',
'where :SD_TYPE = ''IN''',
'UNION',
'select pmm_name || '' - ''|| :APP_LOCAL_CURR_SYMBOL || '' ''|| sd_rate Name , sd_id r',
'from V_STOCK_DETAILS,V_PACKING_MATERIAL_MASTER',
'where sd_packing_material_id is not null',
'and sd_type = ''IN''',
'and FN_STOCK_BALANCE(sd_id) > 0',
'and :SD_TYPE = ''OUT''',
'and SD_PACKING_MATERIAL_ID = pmm_id'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(101147738963606458)
,p_query_column_name=>'NAME'
,p_heading=>'Name'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(101151918782701810)
,p_query_column_name=>'R'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
