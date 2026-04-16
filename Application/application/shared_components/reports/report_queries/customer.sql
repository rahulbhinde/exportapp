prompt --application/shared_components/reports/report_queries/customer
begin
--   Manifest
--     REPORT QUERY: Customer
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_shared.create_shared_query(
 p_id=>wwv_flow_imp.id(163734581068369192)
,p_name=>'Customer'
,p_static_id=>'CUSTOMER_243785424455004918'
,p_include_session_state=>'N'
,p_format=>'PDF'
,p_output_file_name=>'Customer'
);
wwv_flow_imp_shared.create_shared_query_stmnt(
 p_id=>wwv_flow_imp.id(100968278216667160)
,p_shared_query_id=>wwv_flow_imp.id(163734581068369192)
,p_name=>'Customer'
,p_display_sequence=>1
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_sql_statement=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cm_name,cm_address1,cm_address2,country.st_name,state.st_name,cm_city,cm_zip',
'from V_CUSTOMER_MASTER,V_ENQUIRIES_ORDERS_MST,V_SETUP_TABLE country, V_SETUP_TABLE state',
'where eom_enq_id = 60',
'and cm_country = country.st_id',
'and country.st_type = ''COUNTRY''',
'and cm_state = state.st_id',
'and state.st_type = ''STATE''',
'and eom_customer_id = cm_id;'))
);
wwv_flow_imp.component_end;
end;
/
