prompt --application/shared_components/user_interface/lovs/lov_bank
begin
--   Manifest
--     LOV_BANK
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
 p_id=>wwv_flow_imp.id(164156845061866453)
,p_lov_name=>'LOV_BANK'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BM_NAME  d, BM_ID r',
'from V_BANK_MASTER',
'where nvl(BM_ACTIVE_YN,''Y'') = ''Y'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
,p_version_scn=>485431964
);
wwv_flow_imp.component_end;
end;
/
