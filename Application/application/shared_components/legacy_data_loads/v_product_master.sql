prompt --application/shared_components/legacy_data_loads/v_product_master
begin
--   Manifest
--     V_PRODUCT_MASTER
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
 p_id=>wwv_flow_imp.id(137147984734504061)
,p_name=>'Products Data Load'
,p_owner=>'#OWNER#'
,p_table_name=>'V_PRODUCT_MASTER'
,p_unique_column_1=>'PM_ID'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
,p_comments=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Removed these as we are passing direct values',
'Add UOM - PM_UOM - select st_code from V_SETUP_TABLE where st_type = ''PRODUCT_UOM'' and st_name = :PM_UOM;',
'Add Product Unit - PM_PRODUCT_UNIT - select st_code from V_SETUP_TABLE where st_type = ''PRODUCT_UNIT'' and st_name = :PM_PRODUCT_UNIT;'))
);
wwv_flow_imp_shared.create_load_table_rule(
 p_id=>wwv_flow_imp.id(137149027090504067)
,p_load_table_id=>wwv_flow_imp.id(137147984734504061)
,p_load_column_name=>'PM_CATEGORY'
,p_rule_name=>'Category'
,p_rule_type=>'SQL_QUERY_SINGLE_VALUE'
,p_rule_sequence=>30
,p_rule_expression1=>'select PC_ID from V_PRODUCT_CATEGORY where upper(PC_NAME) = upper(nvl(:PM_CATEGORY,''MEIS_SB''))'
,p_rule_expression2=>':PM_CATEGORY'
);
wwv_flow_imp_shared.create_load_table_rule(
 p_id=>wwv_flow_imp.id(137148229898504065)
,p_load_table_id=>wwv_flow_imp.id(137147984734504061)
,p_load_column_name=>'PM_ID'
,p_rule_name=>'Add Sequence'
,p_rule_type=>'SQL_QUERY_SINGLE_VALUE'
,p_rule_sequence=>10
,p_rule_expression1=>'select seq_pm_id.nextval from dual'
);
wwv_flow_imp_shared.create_load_table_rule(
 p_id=>wwv_flow_imp.id(137148600832504067)
,p_load_table_id=>wwv_flow_imp.id(137147984734504061)
,p_load_column_name=>'PM_MANUFAC_ID'
,p_rule_name=>'Manufacturer'
,p_rule_type=>'SQL_QUERY_SINGLE_VALUE'
,p_rule_sequence=>20
,p_rule_expression1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SUPM_ID',
' from V_SUPPLIER_MASTER',
'where upper(SUPM_NAME)= upper(nvl(:PM_MANUFAC_ID,''Dummy Manufacturer''))',
'and SUPM_SUPPLIER_TYPE = ''MANUFACTURER'''))
,p_rule_expression2=>':PM_MANUFAC_ID'
);
wwv_flow_imp.component_end;
end;
/
