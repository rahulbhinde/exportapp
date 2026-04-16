prompt --application/shared_components/legacy_data_loads/v_temp_proforma
begin
--   Manifest
--     V_TEMP_PROFORMA
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(109467069992271316)
,p_name=>'Proforma Data Load'
,p_owner=>'#OWNER#'
,p_table_name=>'V_TEMP_PROFORMA'
,p_unique_column_1=>'EOD_ID'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_imp_shared.create_load_table_rule(
 p_id=>wwv_flow_imp.id(109587274163783055)
,p_load_table_id=>wwv_flow_imp.id(109467069992271316)
,p_load_column_name=>'EOD_PRODUCT_ID'
,p_rule_name=>'Get Product'
,p_rule_type=>'SQL_QUERY_SINGLE_VALUE'
,p_rule_sequence=>10
,p_rule_expression1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pm_id from V_PRODUCT_MASTER ',
'where lower(replace(replace(replace(replace(trim(PM_NAME)|| ''~'' ||PM_PACKAGE || '''' || pm_baby_box_unit ||nvl2(PM_PACKAGE,''~'' ,'''')  ||   PM_PACKAGE_1',
'  ||'''' || PM_PRODUCT_UNIT  || ''~'' ||   PM_PACKAGE_2 || '''' ',
'  ||  PM_PACKAGE_UNIT,'' '',''''),''~~'',''x''),''~~'',''x''),''~'',''x''))  = replace(trim(lower(replace(:EOD_PRODUCT_NAME,'' '',''''))),''(localpack)'','''')'))
,p_rule_expression2=>':EOD_PRODUCT_NAME'
);
wwv_flow_imp.component_end;
end;
/
