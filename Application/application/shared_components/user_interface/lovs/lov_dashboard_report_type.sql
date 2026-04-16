prompt --application/shared_components/user_interface/lovs/lov_dashboard_report_type
begin
--   Manifest
--     LOV_DASHBOARD_REPORT_TYPE
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
 p_id=>wwv_flow_imp.id(28884258593514412736)
,p_lov_name=>'LOV_DASHBOARD_REPORT_TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rm_name d,rm_no r',
'from V_REPORT_MASTER',
'where rm_type = ''DASHBOARD''',
'and nvl(rm_active,''N'') = ''Y''',
'order by 1;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
