prompt --application/shared_components/user_interface/lovs/lov_finance_orders
begin
--   Manifest
--     LOV_FINANCE_ORDERS
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
 p_id=>wwv_flow_imp.id(163769598782516924)
,p_lov_name=>'LOV_FINANCE_ORDERS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select eom_invoice_no || '' - '' ||  eom_enq_no, eom_ord_id',
'from V_ENQUIRIES_ORDERS_MST',
'where eom_order_status not in (''RJ'')',
'AND NOT EXISTS (SELECT OLD_ID',
'              FROM V_ORDER_LOAN_DETAILS',
'              WHERE OLD_ENQ_ID = eom_enq_id and OLD_ORDER_ID = eom_ord_id)',
'AND NOT EXISTS (SELECT OPD_ID',
'              FROM V_ORDER_PAYMENT_DETAILS',
'              WHERE OPD_ENQ_ID = eom_enq_id and OPD_ORDER_ID = eom_ord_id)',
'and eom_type = ''ORDER''',
'UNION ',
'select eom_invoice_no, eom_ord_id',
'from V_ENQUIRIES_ORDERS_MST',
'where eom_ord_id = :P102_ORDER_ID'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'EOM_ORD_ID'
,p_display_column_name=>'EOM_INVOICE_NO||''-''||EOM_ENQ_NO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>485389021
);
wwv_flow_imp.component_end;
end;
/
