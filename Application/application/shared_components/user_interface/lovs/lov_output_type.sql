prompt --application/shared_components/user_interface/lovs/lov_output_type
begin
--   Manifest
--     LOV_OUTPUT_TYPE
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
 p_id=>wwv_flow_imp.id(125267703869650112)
,p_lov_name=>'LOV_OUTPUT_TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''OUTPUT_TYPE''',
' and st_extra2 = :P10_CALLING_FROM',
' --and st_code <> ''PO''  Commented by Rahul on 28-Feb to drive the logic from Extra2 settings of master setup',
' --PO is excluded as PO output are generated based on POM_ID and not ENQ_ID like other outputs',
' --We will use Static LOV on page where ever PO output to be displayed',
' order by st_display_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
