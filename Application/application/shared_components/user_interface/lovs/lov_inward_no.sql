prompt --application/shared_components/user_interface/lovs/lov_inward_no
begin
--   Manifest
--     LOV_INWARD_NO
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
 p_id=>wwv_flow_imp.id(12654430816033072053)
,p_lov_name=>'LOV_INWARD_NO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IM_INWARD_NO || '', '' || to_char(IM_DELIVERY_DATE,''DD-MON-RR'') d,ID_ID r ',
'from V_INWARD_MASTER, V_INWARD_DETAILS',
'where im_id = id_im_id'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
