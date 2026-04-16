prompt --application/shared_components/reports/report_queries/enquiry
begin
--   Manifest
--     REPORT QUERY: Enquiry
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
 p_id=>wwv_flow_imp.id(163713487219628908)
,p_name=>'Enquiry'
,p_static_id=>'ENQUIRY_243764330606264634'
,p_include_session_state=>'N'
,p_report_layout_id=>wwv_flow_imp.id(163749126739458001)
,p_format=>'PDF'
,p_output_file_name=>'Enquiry'
,p_content_disposition=>'ATTACHMENT'
);
wwv_flow_imp_shared.create_shared_query_stmnt(
 p_id=>wwv_flow_imp.id(163788312690810537)
,p_shared_query_id=>wwv_flow_imp.id(163713487219628908)
,p_name=>'Enquiry7'
,p_display_sequence=>7
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_sql_statement=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum sr_no, eod_quantity,pm_uom,PM_PACKAGE_1 || PM_PRODUCT_UNIT || ''X'' || PM_PACKAGE_2 || '' '' || PM_PACKAGE_UNIT packing',
',pm_name,EOD_FOB_DOLL_RND || '' ''|| PM_UOM unit_fob, eod_quantity * EOD_FOB_DOLL_RND total_fob',
'from V_ENQUIRIES_ORDERS_DETAILS,V_PRODUCT_MASTER',
'where eod_product_id = pm_id',
'and eod_enq_id = ''60'';'))
);
wwv_flow_imp_shared.create_shared_query_stmnt(
 p_id=>wwv_flow_imp.id(163788411070810537)
,p_shared_query_id=>wwv_flow_imp.id(163713487219628908)
,p_name=>'Enquiry8'
,p_display_sequence=>8
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_sql_statement=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cm_name,cm_address1,cm_address2,country.st_name ct_name,state.st_name,cm_city,cm_zip',
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
