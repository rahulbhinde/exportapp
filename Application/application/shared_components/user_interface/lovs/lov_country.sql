prompt --application/shared_components/user_interface/lovs/lov_country
begin
--   Manifest
--     LOV_COUNTRY
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
 p_id=>wwv_flow_imp.id(32815506148124471498)
,p_lov_name=>'LOV_COUNTRY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_id as r,',
'       ''fa-flag-'' || LOWER(nvl(ST_EXTRA1,''CA'')) AS icon_column',
'  from SETUP_TABLE',
' where st_type = ''COUNTRY''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_icon_column_name=>'ICON_COLUMN'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45955781577644
);
wwv_flow_imp.component_end;
end;
/
