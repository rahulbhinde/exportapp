prompt --application/shared_components/user_interface/lovs/lov_quote_in
begin
--   Manifest
--     LOV_QUOTE_IN
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
 p_id=>wwv_flow_imp.id(137341092768323284)
,p_lov_name=>'LOV_QUOTE_IN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r,',
'       st_extra2  as icon_column',
'  from V_SETUP_TABLE',
' where st_type = ''QUOTE_IN''',
' order by st_display_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_icon_column_name=>'ICON_COLUMN'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45961518018564
);
wwv_flow_imp.component_end;
end;
/
