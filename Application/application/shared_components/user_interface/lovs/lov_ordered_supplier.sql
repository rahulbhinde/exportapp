prompt --application/shared_components/user_interface/lovs/lov_ordered_supplier
begin
--   Manifest
--     LOV_ORDERED_SUPPLIER
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
 p_id=>wwv_flow_imp.id(27457637726582088)
,p_lov_name=>'LOV_ORDERED_SUPPLIER'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supm_name as d,',
'       supm_id as r',
'  from V_SUPPLIER_MASTER',
' where nvl(supm_active,''Y'') = ''Y''',
' and exists (select 1 from V_PURCHASE_ORDER_MASTER where POM_SUPPLIER_ID = supm_id and POM_STATUS in (''OR'',''PDL''))',
' order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
