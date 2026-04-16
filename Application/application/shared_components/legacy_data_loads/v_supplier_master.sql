prompt --application/shared_components/legacy_data_loads/v_supplier_master
begin
--   Manifest
--     V_SUPPLIER_MASTER
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
 p_id=>wwv_flow_imp.id(125239114018012363)
,p_name=>'Manufacturers Data Load'
,p_owner=>'#OWNER#'
,p_table_name=>'V_SUPPLIER_MASTER'
,p_unique_column_1=>'SUPM_ID'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_imp_shared.create_load_table_rule(
 p_id=>wwv_flow_imp.id(125239857249012552)
,p_load_table_id=>wwv_flow_imp.id(125239114018012363)
,p_load_column_name=>'SUPM_COUNTRY'
,p_rule_name=>'Country Code'
,p_rule_type=>'SQL_QUERY_SINGLE_VALUE'
,p_rule_sequence=>20
,p_rule_expression1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_id ',
'from V_SETUP_TABLE',
'where st_type = ''COUNTRY''',
'and upper(st_name) = upper(:SUPM_COUNTRY)'))
,p_rule_expression2=>':SUPM_COUNTRY'
);
wwv_flow_imp_shared.create_load_table_rule(
 p_id=>wwv_flow_imp.id(125239466999012549)
,p_load_table_id=>wwv_flow_imp.id(125239114018012363)
,p_load_column_name=>'SUPM_ID'
,p_rule_name=>'Supplier_Master_PK'
,p_rule_type=>'SQL_QUERY_SINGLE_VALUE'
,p_rule_sequence=>10
,p_rule_expression1=>'select SEQ_SUPM_ID.nextval from dual'
);
wwv_flow_imp_shared.create_load_table_rule(
 p_id=>wwv_flow_imp.id(125240246993012552)
,p_load_table_id=>wwv_flow_imp.id(125239114018012363)
,p_load_column_name=>'SUPM_STATE'
,p_rule_name=>'State Code'
,p_rule_type=>'SQL_QUERY_SINGLE_VALUE'
,p_rule_sequence=>30
,p_rule_expression1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_id ',
'from V_SETUP_TABLE',
'where st_type = ''STATE''',
'and upper(st_name) = upper(:SUPM_STATE)'))
,p_rule_expression2=>':SUPM_STATE'
);
wwv_flow_imp.component_end;
end;
/
