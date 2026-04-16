prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>100
,p_name=>'Loan & Payment Details'
,p_alias=>'LOAN-PAYMENT-DETAILS'
,p_step_title=>'Loan & Payment Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(915876246720061697)
,p_plug_name=>'Loan & Payment Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    eom_enq_id,',
'    eom_ord_id,',
'    eom_invoice_no,',
'    cm_name,',
'    (eom_quote_in || '' ''|| to_char(eom_total_container_amt,''99,99,99,990.00'')) invoice_amt,',
'    (',
'        SELECT',
'            :APP_LOCAL_CURR_SYMBOL || '' ''|| to_char(nvl(SUM(nvl(old_loan_amt,0)),0),''99,99,99,990.00'')',
'        FROM',
'            V_ORDER_LOAN_DETAILS',
'        WHERE',
'                old_enq_id = eom_enq_id',
'            AND old_order_id = eom_ord_id',
'    ) loan,',
'    (',
'        SELECT',
'            eom_quote_in || '' ''|| to_char(nvl(SUM(nvl(opd_payment_amount,0)),0),''99,99,99,990.00'')',
'        FROM',
'            V_ORDER_PAYMENT_DETAILS',
'        WHERE',
'                opd_enq_id = eom_enq_id',
'            AND opd_order_id = eom_ord_id',
'    ) payment',
'FROM',
'    V_ENQUIRIES_ORDERS_MST,',
'    V_CUSTOMER_MASTER',
'WHERE',
'    ( EXISTS (',
'        SELECT',
'            *',
'        FROM',
'            V_ORDER_LOAN_DETAILS',
'        WHERE',
'                old_enq_id = eom_enq_id',
'            AND old_order_id = eom_ord_id',
'    )',
'      OR EXISTS (',
'        SELECT',
'            *',
'        FROM',
'            V_ORDER_PAYMENT_DETAILS',
'        WHERE',
'                opd_enq_id = eom_enq_id',
'            AND opd_order_id = eom_ord_id',
'    ) )',
'    AND eom_order_status NOT IN ( ''RJ'' )',
'    AND eom_type = ''ORDER''',
'    AND eom_customer_id = cm_id;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(801671609955535906)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:102:P102_ORDER_ID,P102_ENQ_ID:#EOM_ORD_ID#,#EOM_ENQ_ID##OLD_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'RANU'
,p_internal_uid=>881722453342171632
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(793663998086515174)
,p_db_column_name=>'EOM_ENQ_ID'
,p_display_order=>10
,p_column_identifier=>'M'
,p_column_label=>'Eom Enq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(793664027674515175)
,p_db_column_name=>'EOM_ORD_ID'
,p_display_order=>20
,p_column_identifier=>'N'
,p_column_label=>'Eom Ord Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(793664180146515176)
,p_db_column_name=>'EOM_INVOICE_NO'
,p_display_order=>30
,p_column_identifier=>'O'
,p_column_label=>'Invoice#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(794465639517323947)
,p_db_column_name=>'CM_NAME'
,p_display_order=>40
,p_column_identifier=>'U'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(619930601160703510)
,p_db_column_name=>'LOAN'
,p_display_order=>80
,p_column_identifier=>'W'
,p_column_label=>'Total Loan'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(619930671293703511)
,p_db_column_name=>'PAYMENT'
,p_display_order=>90
,p_column_identifier=>'X'
,p_column_label=>'Total Payment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(619930886559703513)
,p_db_column_name=>'INVOICE_AMT'
,p_display_order=>100
,p_column_identifier=>'Y'
,p_column_label=>'Total Invoice Amt'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(927485772284738368)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1344230'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CM_NAME:EOM_INVOICE_NO:INVOICE_AMT:LOAN:PAYMENT:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(373154065407605580)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(915876246720061697)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&APP_SESSION.::&DEBUG.:102::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(373154961407605589)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(915876246720061697)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(373155480143605592)
,p_event_id=>wwv_flow_imp.id(373154961407605589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(915876246720061697)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
