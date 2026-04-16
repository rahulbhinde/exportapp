prompt --application/shared_components/user_interface/lovs/lov_po_costing_unit
begin
--   Manifest
--     LOV_PO_COSTING_UNIT
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
 p_id=>wwv_flow_imp.id(82766796451579644)
,p_lov_name=>'LOV_PO_COSTING_UNIT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ST_NAME d, ST_CODE r ',
'FROM V_SETUP_TABLE',
'WHERE ST_TYPE = ''PO_RATE_DISP_UNIT''',
'and nvl(st_display,''Y'') = ''Y''',
'ORDER BY ST_DISPLAY_ORDER'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>405656521
);
wwv_flow_imp.component_end;
end;
/
