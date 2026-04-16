prompt --application/shared_components/user_interface/lovs/lov_output_display_attr
begin
--   Manifest
--     LOV_OUTPUT_DISPLAY_ATTR
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
 p_id=>wwv_flow_imp.id(30863123969239354)
,p_lov_name=>'LOV_OUTPUT_DISPLAY_ATTR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ST_NAME d, ST_CODE r ',
'FROM V_SETUP_TABLE',
'WHERE ST_TYPE = ''OUTPUT_DISPLAY_ATTR''',
'and st_parent_id = :P10_OUTPUT_TYPE',
'and nvl(st_display,''Y'') = ''Y''',
'ORDER BY ST_DISPLAY_ORDER'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
