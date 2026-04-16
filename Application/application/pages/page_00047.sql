prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_name=>'PO_Add_Products'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Products'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-table tr.selected td {',
'    background-color: #2d7bbb;',
'    color: #fff;',
'}',
'.a-IRR-table tr.selected:hover td {',
'    background-color: #399bea;',
'    color: #fff;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142814015834391104)
,p_plug_name=>'items'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142815538826487149)
,p_plug_name=>'Products to be added to PO'
,p_region_name=>'myreport'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'SEQ_ID,',
'c001 product,',
'c002 product_id,',
'c003 quantity,',
'c004 rate,',
'c005 brand,',
'c006 ord_qty,',
'c007 rem_qty,',
'c017 eod_id,',
'c018 stock_qty,',
'c019 vendor',
'from APEX_COLLECTIONS col',
'WHERE COLLECTION_NAME=''PO_PRODUCTS'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P47_CALLING_FROM'
,p_plug_display_when_cond2=>'PO'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Products to be added to PO'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(142815650153487150)
,p_name=>'Products'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_download=>'N'
,p_show_help=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'RAHUL'
,p_internal_uid=>6104620385052452
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142816010461487218)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142816308951487251)
,p_db_column_name=>'PRODUCT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142816685241487256)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Product ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142817043270487259)
,p_db_column_name=>'QUANTITY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Qty'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142817464047487259)
,p_db_column_name=>'RATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rate'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48132650749567450)
,p_db_column_name=>'BRAND'
,p_display_order=>15
,p_column_identifier=>'F'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48132800372567451)
,p_db_column_name=>'ORD_QTY'
,p_display_order=>25
,p_column_identifier=>'G'
,p_column_label=>'Ordered Qty'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48132830447567452)
,p_db_column_name=>'REM_QTY'
,p_display_order=>35
,p_column_identifier=>'H'
,p_column_label=>'Balance Qty'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12796070251472358536)
,p_db_column_name=>'EOD_ID'
,p_display_order=>75
,p_column_identifier=>'L'
,p_column_label=>'<input type="checkbox" value="all">'
,p_column_html_expression=>'<input type="checkbox" #SELECTED# value="#EOD_ID#">'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12657424482659423632)
,p_db_column_name=>'STOCK_QTY'
,p_display_order=>85
,p_column_identifier=>'M'
,p_column_label=>'Stock Qty'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28841509351640874469)
,p_db_column_name=>'VENDOR'
,p_display_order=>95
,p_column_identifier=>'N'
,p_column_label=>'Vendor'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(32895962227233049206)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(142817972532488908)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'61070'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EOD_ID:BRAND:VENDOR:PRODUCT:RATE:QUANTITY:ORD_QTY:STOCK_QTY:REM_QTY:'
,p_sort_column_1=>'VENDOR'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'PRODUCT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12657424447066423631)
,p_plug_name=>'Products to be added to Inward'
,p_region_name=>'myreport'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'SEQ_ID,',
'c001 product,',
'c002 product_id,',
'c003 quantity,',
'c004 rate,',
'c005 brand,',
'c006 rec_qty,',
'c007 rem_qty,',
'c014 pom_id,',
'c016 pod_id',
'from APEX_COLLECTIONS col',
'WHERE COLLECTION_NAME=''PO_PRODUCTS'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P47_CALLING_FROM'
,p_plug_display_when_cond2=>'IW'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12657424125597423628)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV'
,p_enable_mail_download=>'N'
,p_owner=>'RANU'
,p_internal_uid=>1032559952966890238
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12657423983835423627)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12657423963130423626)
,p_db_column_name=>'PRODUCT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12657423876143423625)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Product ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12657423749173423624)
,p_db_column_name=>'QUANTITY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Qty'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12657423650668423623)
,p_db_column_name=>'RATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Rate'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12657423559034423622)
,p_db_column_name=>'BRAND'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12657423338082423620)
,p_db_column_name=>'REM_QTY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Balance Qty'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12657423211779423619)
,p_db_column_name=>'POM_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'PO#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12657423111889423618)
,p_db_column_name=>'REC_QTY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Received Qty'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12657423062035423617)
,p_db_column_name=>'POD_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'<input type="checkbox" value="all">'
,p_column_html_expression=>'<input type="checkbox" #SELECTED# value="#POD_ID#">'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12649330192468797241)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10406539'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'POD_ID:POM_ID:BRAND:PRODUCT:RATE:QUANTITY:REC_QTY:REM_QTY:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13100459930075459435)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12657424447066423631)
,p_button_name=>'SAVE_IW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P47_CALLING_FROM'
,p_button_condition2=>'IW'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142841772716954783)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(142815538826487149)
,p_button_name=>'SAVE_PO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P47_CALLING_FROM'
,p_button_condition2=>'PO'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(142845750581883147)
,p_branch_name=>'after_save_po'
,p_branch_action=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::P72_POM_ID:&P47_POM_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(142841772716954783)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(13100459420901459430)
,p_branch_name=>'after_save_iw'
,p_branch_action=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.::P82_IM_ID:&P47_IM_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(13100459930075459435)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142814528610394579)
,p_name=>'P47_ORDER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(142814015834391104)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142814829018394589)
,p_name=>'P47_SUPPLIER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(142814015834391104)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142835745384588793)
,p_name=>'P47_SELECTED_PRODUCTS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(142814015834391104)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142842381601081474)
,p_name=>'P47_POM_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(142814015834391104)
,p_prompt=>'Pom Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12727449930315822643)
,p_name=>'P47_FILTER_DATA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(142814015834391104)
,p_item_default=>'NOTADDED'
,p_prompt=>'Filter'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Products not added in current Inward;NOTADDED,Products already added in current Inward;ADDED'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when=>'P47_CALLING_FROM'
,p_display_when2=>'IW'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12796069227511358526)
,p_name=>'P47_SUPPLIER_IW'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(142814015834391104)
,p_prompt=>'Supplier'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_SUPPLIER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supm_name as d,',
'       supm_id as r',
'  from V_SUPPLIER_MASTER',
' where nvl(supm_active,''Y'') = ''Y''',
' order by 1'))
,p_cSize=>30
,p_display_when=>'P47_CALLING_FROM'
,p_display_when2=>'IW'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12796072101141358555)
,p_name=>'P47_POM_ID_IW'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(142814015834391104)
,p_prompt=>'PO#'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  cm_name  || '' - ''|| nvl(eom_invoice_no,eom_enq_no)||'' - ''||''PO#''||pom_id ||'' - ''|| pom_delivery_date disp_val, pom_id ret_val',
'from V_PURCHASE_ORDER_MASTER, V_ENQUIRIES_ORDERS_MST ',
'--added below table by Ranu on 26-11-2024 for JD changes',
', V_CUSTOMER_MASTER',
'where eom_customer_id = cm_id ',
'and POM_STATUS in (''OR'',''PDL'')',
'--and POM_SUPPLIER_ID = nvl(:P47_SUPPLIER_IW,POM_SUPPLIER_ID)',
'AND instr('':'' || nvl(:P47_SUPPLIER_IW,POM_SUPPLIER_ID) || '':'', '':'' || POM_SUPPLIER_ID || '':'') > 0',
'AND pom_ord_id = eom_ord_id  ',
'order by pom_id desc'))
,p_lov_cascade_parent_items=>'P47_SUPPLIER_IW'
,p_ajax_items_to_submit=>'P47_SUPPLIER_IW'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>'P47_CALLING_FROM'
,p_display_when2=>'IW'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12796072835047358562)
,p_name=>'P47_CALLING_FROM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(142814015834391104)
,p_item_default=>'PO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13100459539135459431)
,p_name=>'P47_IM_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(142814015834391104)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P47_CALLING_FROM'
,p_display_when2=>'IW'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12796069902609358533)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'(replace(:P47_SELECTED_PRODUCTS,''|'','''') is not null)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Before clicking on Save, at least select one or more product(s) to be added to Inward entry.'
,p_validation_condition=>'SAVE_IW,SAVE_PO'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142836006621598300)
,p_name=>'select_products'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(142815538826487149)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142836396131598316)
,p_event_id=>wwv_flow_imp.id(142836006621598300)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var cb$, checked, allRows$,',
'    sel$ = $("#P47_SELECTED_PRODUCTS"),',
'    event = this.browserEvent,',
'    target$ = $(event.target),',
'    th$ = target$.closest("th"),',
'    tr$ = target$.closest("tr");',
'if (th$.length) {',
'    // the click was on the "select all"',
'    // checkbox or checkbox cell',
'    cb$ = th$.find("input");',
'    if (cb$.length && cb$.val() === "all") {',
'        checked = cb$[0].checked;',
'        if (target$[0].nodeName !== ''INPUT'') {',
'            // only do this if the click was not on the checkbox',
'            // because the checkbox will check itself',
'            checked = cb$[0].checked = !checked;',
'        }',
'        if (sel$.val() === "") {',
'            sel$.val("|");',
'        }',
'        $("#myreport").find("td input").each(function() {',
'            this.checked = checked;',
'            // give a visual style to the [un]selected row',
'            $(this).closest("tr").toggleClass("selected", checked);',
'            // update the hidden selected item',
'            sel$.val(sel$.val().replace("|" + this.value + "|", "|"));',
'            if (checked) {',
'                sel$.val(sel$.val() + this.value + "|");',
'            }',
'        });',
'    }',
'			if (sel$.val() == "|") {',
'            sel$.val("");',
'        }					 ',
'} else if (tr$.length) {',
'    // the click was on some other data row',
'    cb$ = tr$.find("td").first().find("input");',
'    checked = cb$[0].checked;',
'    if (target$[0].nodeName !== ''INPUT'') {',
'        // only do this if the click was not on the checkbox',
'        // because the checkbox will check itself',
'        checked = cb$[0].checked = !checked;',
'    }',
'    // give a visual style to the [un]selected row',
'    tr$.toggleClass("selected", checked);',
'    // update the hidden selected item',
'    if (checked) {',
'        if (sel$.val() === "") {',
'            sel$.val("|");',
'        }',
'        sel$.val(sel$.val() + cb$.val() + "|");',
'        ',
'    } else {',
'        sel$.val(sel$.val().replace("|" + cb$.val() + "|", "|"));  ',
'               ',
'    }',
'    // update the select all checkbox state',
'    allRows$ = $("#myreport").find("td input");',
'    checked = (allRows$.length === allRows$.filter(":checked").length);',
'    if (allRows$.length){',
'    $("#myreport").find("th input")[0].checked = checked;',
'	if (sel$.val() == "|") {',
'            sel$.val("");',
'        }						 ',
'}',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12796071985935358554)
,p_name=>'onchangeofPOSelectList'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P47_POM_ID_IW,P47_FILTER_DATA'
,p_condition_element=>'P47_CALLING_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'IW'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12796071926058358553)
,p_event_id=>wwv_flow_imp.id(12796071985935358554)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(142843534610445150)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save_products'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_lst_to_del varchar2(4000);',
'    v_count number;',
'    v_insert_flag number := 0;',
'	v_product_lst varchar2(4000);',
'    v_error_msg varchar2(4000);',
'    v_collection_count number;',
'	err exception;',
'    v_success_failure varchar2(4000);   ',
'    ',
'cursor cur_product_lst is ',
'select eod_product_id  , c007 rem_qty, c004 rate,c016 pod_id,c017 eod_id, nvl(eod_costing_unit,''CTN'') eod_costing_unit',
'from V_ENQUIRIES_ORDERS_MST,V_ENQUIRIES_ORDERS_DETAILS,APEX_COLLECTIONS',
'where  eom_enq_id = eod_enq_id',
'and eom_ord_id = :P47_ORDER_ID',
'/*  Commented by Rahul on 15-Mar-2024 to remove the link of manufac/supplier with order start',
'and (eod_manufac_id in (',
'                        select sml_manufac_id ',
'                        from V_SUPPLIER_MANUFAC_LINK',
'                        where sml_sup_id = :P47_SUPPLIER_ID',
'                      )',
'     OR eod_manufac_id= :P47_supplier_id)',
'  Commented by Rahul on 15-Mar-2024 to remove the link of manufac/supplier with order end */',
'and collection_name = ''PO_PRODUCTS''',
'and c002 = eod_product_id;',
'',
' ',
'BEGIN',
'	v_product_lst := :P47_SELECTED_PRODUCTS;',
'    ',
'    --insert into error_log (el_text) values (''rahul before loop ''); ',
'   -- insert into error_log (el_text) values (''rahul before loop '' || v_product_lst ||'',''|| :P47_supplier_id || '',''|| :P47_ORDER_ID); commit;       ',
'	for i in cur_product_lst loop',
'		--insert into error_log (el_text) values (''rahul inside for loop '' || i.eod_product_id);commit;       ',
'     --  v_collection_count :=  cur_product_lst%rowcount;',
'     --  insert into error_log (el_text) values (''rahul collection record count  '' || v_collection_count); ',
'	if instr(v_product_lst,''|''||i.eod_id||''|'') > 0 then',
'       -- insert into error_log (el_text) values (''rahul inside if block of ''  || i.eod_product_id);commit;       ',
'			select count (1)',
'			into	v_count',
'			  from V_PURCHASE_ORDER_DETAILS',
'				where pod_pom_id  = :P47_POM_ID',
'				 and POD_PRODUCT_ID = i.eod_product_id;',
'          --   insert into error_log (el_text) values (''rahul count '' ||  v_count);  ',
'			if v_count = 0 then',
'          --  insert into error_log (el_text) values (''rahul before insert'' || i.eod_product_id ||''--''|| i.rem_qty || ''--'' ||i.rate);',
'              v_insert_flag := 1;',
'				insert into V_PURCHASE_ORDER_DETAILS',
'					 (',
'						POD_ID,',
'						POD_POM_ID,',
'						POD_PRODUCT_ID,',
'				    	POD_ORDERED_QUANTITY,',
'						POD_RATE',
'                        /*Added by Rahul on 26-Nov-24 to populate PO unitwise rate amt start*/	',
'                        ,POD_RATE_UNIT',
'                        ,POD_CALC_UNIT_RATE',
'                        ,POD_CALC_UNIT_RATE_RND                        ',
'                        /*Added by Rahul on 26-Nov-24 to populate PO unitwise rate amt end*/		',
'					 )	',
'                   values',
'					 (',
'					  seq_pod_id.nextval,',
'					 :P47_POM_ID,     ',
'					 i.eod_product_id,',
'					 i.rem_qty,',
'					 i.rate',
'                     /*Added by Rahul on 26-Nov-24 to populate PO unitwise rate amt start*/',
'                     ,decode(i.eod_costing_unit,''PMT'',''PKG'',''PKG'',''PKG'',null)',
'                     ,FN_Convert_PO_AMT(i.eod_id,i.rate,''UNIT_PRICE'',decode(i.eod_costing_unit,''PMT'',''PKG'',''PKG'',''PKG'',null))',
'                     ,FN_Convert_PO_AMT(i.eod_id,i.rate,''UNIT_PRICE'',decode(i.eod_costing_unit,''PMT'',''PKG'',''PKG'',''PKG'',null))',
'                     /*Added by Rahul on 26-Nov-24 to populate PO unitwise rate amt end*/',
'				   );',
'				--insert into error_log (el_text) values (''rahul after insert'' || i.eod_product_id);',
'			ELSE',
'				--commented out raising error as Partial Ordered qty can be ordered again in same PO',
'				--raise err;',
'				update V_PURCHASE_ORDER_DETAILS',
'				set POD_ORDERED_QUANTITY = nvl(POD_ORDERED_QUANTITY,0) + i.rem_qty',
'				where pod_pom_id  = :P47_POM_ID',
'				  and POD_PRODUCT_ID = i.eod_product_id;',
'			end if;	',
'			',
'		',
'	end if;',
'		',
'',
'	end loop;',
'    --insert into error_log (el_text) values (''rahul v_insert_flag'' || v_insert_flag);',
'    --Following update stmt to change the status of PO to In Progress if Ordered PO are modified',
'	IF v_insert_flag = 1 then',
'    --     pkg_status.update_status(''PO'',:P47_POM_ID,''IP'',v_success_failure,v_error_msg,:P47_ORDER_ID);',
'           pkg_status.update_status(''PO'',:P47_POM_ID,null,v_error_msg,v_success_failure,:P47_ORDER_ID); --Added new logic in pkg_status to update the PO status to its current status hence sending status as null Rahul 19-Apr-25',
'',
'    END IF;  ',
'    ',
' commit;    ',
' -- insert into error_log (el_text) values (''rahul list to del -- '' || v_del_stmt || ''--'' ||v_lst_to_del);',
'   ',
' EXCEPTION ',
'/*when err then',
'	v_error_msg := ''Duplicate product(s) cannot be added to the Purchase Order'';',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );  */',
'when  DUP_VAL_ON_INDEX then',
'    v_error_msg := ''Duplicate product(s) cannot be added to the Purchase Order'';',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );  ',
'          ',
'when others then',
'    v_error_msg := ''Error: Processing Purchase Order'' || sqlerrm;',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );',
'    v_error_msg := sqlerrm;',
'    insert into error_log (el_text) values (''Error: Page:47 insert_products - '' || v_error_msg);',
'     commit;           ',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error: Saving products in Purchase Order'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(142841772716954783)
,p_internal_uid=>142894684241273646
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13100459587234459432)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save_products_IW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_lst_to_del varchar2(4000);',
'    v_count number;',
'	v_product_lst varchar2(4000);',
'    v_error_msg varchar2(4000);',
'    v_collection_count number;',
'	err exception;',
'    v_success_failure varchar2(4000);   ',
'    ',
'cursor cur_product_lst is ',
'select --c002 product_id  , c007 rem_qty, c004 rate',
'					--c001 product,',
'					c002 product_id,',
'					c003 quantity,--order quantity',
'					c004 rate,',
'					c005 brand,',
'					c006 rec_qty,',
'					c007 rem_qty,',
'					c008 length,',
'					c009 breadth,',
'					c010 height,',
'					c011 cubic_space,',
'					c012 gross_weight,',
'					c013 pom_ord_id,',
'					c014 pom_id,',
'					c015 pom_supplier_id,',
'                    c016 pod_id,',
'                    c018 barcode --Added by Rahul to insert barcode in inward details on 20-Jan-24',
'from APEX_COLLECTIONS',
'where  collection_name = ''PO_PRODUCTS'';',
'',
' ',
'BEGIN',
'	v_product_lst := :P47_SELECTED_PRODUCTS;',
'    ',
'    insert into error_log (el_text) values (''rahul before loop '' || v_product_lst ); commit;       ',
'	for i in cur_product_lst loop',
'		insert into error_log (el_text) values (''rahul inside for loop '' || i.product_id);commit;       ',
'		if instr(v_product_lst,''|''||i.pod_id||''|'') > 0 then',
'        insert into error_log (el_text) values (''rahul inside if block of ''  || i.product_id);commit;       ',
'		/*	select count (1)',
'			into	v_count',
'			from V_INWARD_DETAILS',
'			where ID_PO_ID  = :P47_POM_ID_IW',
'			and ID_PRODUCT_ID = i.product_id;*/',
'			',
'             insert into error_log (el_text) values (''rahul count '' ||  v_count);  ',
'            insert into error_log (el_text) values (''rahul before insert'' || i.product_id ||''--''|| i.rem_qty || ''--'' ||i.rate);',
'				insert into V_INWARD_DETAILS',
'					 (',
'						ID_ID,',
'						ID_IM_ID,',
'						ID_PRODUCT_ID,',
'						ID_PO_ID,',
'						ID_ORD_ID,',
'				    	ID_QTY_ORDERED,',
'						ID_LENGTH,',
'						ID_BREADTH,',
'						ID_HEIGHT,',
'						ID_CUBIC_SPACE,',
'						ID_GROSS_WEIGHT,',
'						ID_SUPM_ID,',
'                        ID_BARCODE --Added by Rahul to insert barcode in inward details on 20-Jan-24',
'					 )	',
'                   values',
'					 (',
'					  seq_id_id.nextval,',
'					 :P47_IM_ID,--need to change it',
'					 i.product_id,',
'					 i.pom_id,',
'					 i.pom_ord_id,',
'					 i.quantity,',
'					 i.length,',
'					 i.breadth,',
'					 i.height,',
'					 i.cubic_space,',
'					 i.gross_weight,',
'					 i.pom_supplier_id,',
'                     i.barcode  --Added by Rahul to insert barcode in inward details on 20-Jan-24    ',
'                         ',
'					 ',
'				   );',
'			end if;',
'		',
'',
'	end loop;',
'   ',
' EXCEPTION ',
'/*when err then',
'	v_error_msg := ''Duplicate product(s) cannot be added to the Purchase Order'';',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );  */',
'when  DUP_VAL_ON_INDEX then',
'    v_error_msg := ''Duplicate product(s) cannot be added to the Inward'';',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );  ',
'          ',
'when others then',
'    v_error_msg := ''Error: Processing Inward'' || sqlerrm;',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );',
'    v_error_msg := sqlerrm;',
'    insert into error_log (el_text) values (''Error: Page:47 insert_products - '' || v_error_msg);',
'     commit;           ',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error: Saving products in Purchase Order'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(13100459930075459435)
,p_internal_uid=>13100510736865287928
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(142815234573470078)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load_collection_details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--insert into error_log (el_text) values (''Inside begin of dynamic plsql'');',
'	IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''PO_PRODUCTS'' ) ',
'	THEN',
'	APEX_COLLECTION.TRUNCATE_COLLECTION (p_collection_name => ''PO_PRODUCTS'');',
'  -- insert into error_log (el_text) values (''Inside if of dynamic plsql'');',
'	END IF;',
'END;',
'',
'BEGIN',
'	if :P47_CALLING_FROM = ''PO'' then',
'		for i in ( ',
'							SELECT  PM_BRAND  brand',
'                                    ,PM_NAME || '' '' ||PM_PACKAGE|| '' '' ||PM_BABY_BOX_UNIT || '' x '' || PM_PACKAGE_1 ',
'                                        ||'' '' || PM_PRODUCT_UNIT  || '' x '' ||   PM_PACKAGE_2 || '' '' ||  PM_PACKAGE_UNIT product',
'                                    ,nvl(EOD_PURCHASE_AMT,0) + nvl(EOD_SCHEME_AMT,0) + nvl(EOD_DISCOUNT_AMT,0) rate   --Modified by Rahul on 8-Aug-24 to include scheme and discount amt',
'                                    ,eod_product_id product_id',
'                                    --,po.POD_ID commented by Ranu on 25-Aug-21 out as multiple records fetched if product ordered in multiple POs',
'                                    ,nvl(eod_quantity,0) quantity',
'                                    ,nvl(po.ord_qty,0) ord_qty',
'                                    ,nvl(eod_quantity,0)  - nvl(po.ord_qty,0) - nvl(sd.sd_quantity,0) rem_qty',
'                                    ,eod_id',
'                                    ,nvl(sd.sd_quantity,0) stock_qty',
'                                    ,eod_manufac_id vendor --Added by Rahul on 20-Mar-24',
'                                    FROM V_ENQUIRIES_ORDERS_MST',
'                                        ,V_ENQUIRIES_ORDERS_DETAILS',
'                                        ,V_PRODUCT_MASTER',
'                                        ,(SELECT pom_ord_id,POD_PRODUCT_ID,sum(POD_ORDERED_QUANTITY) ord_qty',
'                                          --,POD_ID commented by Ranu on 25-Aug-21 out as multiple records fetched if product ordered in multiple POs',
'                                            FROM V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS ',
'                                                    WHERE pom_id = pod_pom_id',
'                                                    AND pom_ord_id = :P47_order_id',
'                                                    --AND pod_product_id = eod_product_id',
'                                                     AND pom_status != ''RJ''',
'                                                   group by pom_ord_id,POD_PRODUCT_ID ',
'                                          -- ,POD_ID commented by Ranu on 25-Aug-21 out as multiple records fetched if product ordered in multiple POs',
'                                        ) po',
'            --Added by Ranu on 11-Sep-21 to handle qty allocated to Order directly from stock so that correct remaining balance to raise PO is fetched',
'                                        ,( select sd_enq_id,sd_product_id,nvl(sum(nvl(sd_quantity,0)),0)*-1  sd_quantity',
'                                            from V_STOCK_DETAILS',
'                                           where sd_ord_id =  :P47_order_id',
'                                            and  sd_type = ''OUT''',
'                                        group by sd_enq_id,sd_product_id',
'                                        ) sd',
'            --End by Ranu on 11-Sep-21',
'                            WHERE eom_enq_id    = eod_enq_id',
'                              AND eom_ord_id    = :P47_order_id',
'                          --  AND pm_manufac_id = eod_manufac_id Commented by Rahul on 18-Mar-2024 as vendor can be different than manufac in product master',
'                            --  AND eod_manufac_id  = :P47_SUPPLIER_ID   --Added by Rahul on 18-Mar-2024 to display products of the selected vendor only',
'                              AND pm_id         = eod_product_id',
'                              AND eom_enq_id 	= sd_enq_id (+)',
'                              and eod_product_id = sd_product_id(+)',
'                          /*Commented by Rahul on 15-Mar-2024 to remove the link of manufac/supplier with order start',
'                             AND (eod_manufac_id IN',
'                                                  (SELECT sml_manufac_id',
'                                                  FROM V_SUPPLIER_MANUFAC_LINK',
'                                                  WHERE sml_sup_id = :P47_supplier_id',
'                                                  )',
'                                    OR eod_manufac_id= :P47_supplier_id)',
'             Commented by Rahul on 15-Mar-2024 to remove the link of manufac/supplier with order end */',
'            ',
'                                    /*AND NOT EXISTS (SELECT 1 FROM V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS ',
'                                            WHERE pom_id = pod_pom_id',
'                                            AND pom_ord_id = :P47_order_id',
'                                            AND pod_product_id = eod_product_id',
'                                            AND pom_status != ''RJ''',
'                                            ) */',
'                                AND (nvl(po.ord_qty,0) + nvl(sd.sd_quantity,0)) <> eod_quantity',
'                                AND eod_product_id = po.POD_PRODUCT_ID (+)) loop',
'	',
'',
'			IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''PO_PRODUCTS'' ) THEN',
'			--DEBUG_LOG_PROC (:P141_TRANS_ID || '':P141_TRANS_ID'');',
'					APEX_COLLECTION.ADD_MEMBER(',
'					p_collection_name =>''PO_PRODUCTS'',',
'					p_c001 =>i.product,',
'					p_c002 =>i.product_id,',
'					p_c003 =>i.quantity,',
'					p_c004 =>i.rate,',
'					p_c005 =>i.brand,',
'					p_c006 =>i.ord_qty,',
'					p_c007 =>i.rem_qty,',
'					--p_c016 =>i.pod_id, commented by Ranu on 25-Aug-21 out as multiple records fetched if product ordered in multiple POs',
'                    p_c017 =>i.eod_id,',
'                    p_c018 =>i.stock_qty,',
'                    p_c019 => i.vendor     --Added by Rahul on 20-Mar-24',
'					);',
'',
'			ELSE       ',
'					APEX_COLLECTION.CREATE_COLLECTION(p_collection_name =>''PO_PRODUCTS'');',
'					APEX_COLLECTION.ADD_MEMBER(',
'					p_collection_name =>''PO_PRODUCTS'',				',
'					p_c001 =>i.product,',
'					p_c002 =>i.product_id,',
'					p_c003 =>i.quantity,',
'					p_c004 =>i.rate,',
'					p_c005 =>i.brand,',
'					p_c006 =>i.ord_qty,',
'					p_c007 =>i.rem_qty,',
'					--p_c016 =>i.pod_id, commented by Ranu on 25-Aug-21 out as multiple records fetched if product ordered in multiple POs',
'                    p_c017 =>i.eod_id,',
'                    p_c018 =>i.stock_qty,',
'                    p_c019 => i.vendor     --Added by Rahul on 20-Mar-24',
'					);',
'			END IF;',
'		END LOOP;	',
'',
'	elsif :P47_CALLING_FROM = ''IW'' then ',
'		for i in ( SELECT  PM_BRAND  brand',
'							,PM_NAME || '' '' ||PM_PACKAGE|| '' '' ||PM_BABY_BOX_UNIT || '' x '' || PM_PACKAGE_1 ',
'								||'' '' || PM_PRODUCT_UNIT  || '' x '' ||   PM_PACKAGE_2 || '' '' ||  PM_PACKAGE_UNIT product',
'							,nvl(EOD_PURCHASE_AMT,0) + nvl(EOD_SCHEME_AMT,0) + nvl(EOD_DISCOUNT_AMT,0) rate  --Modified by Rahul on 8-Aug-24 to include scheme and discount amt',
'							,eod_product_id product_id',
'							--,nvl(eod_quantity,0) quantity',
'							,po.POD_ID',
'							,nvl(po.ord_qty,0) quantity',
'                            , nvl(po.rec_qty,0) rec_qty',
'							,nvl(po.ord_qty,0)  - nvl(po.rec_qty,0) rem_qty',
'							,eod_length length ',
'							,eod_breadth breadth',
'							,eod_height height',
'							,eod_cubic_space cubic_space',
'							,pm_gross_weight gross_weight',
'							,po.pom_ord_id',
'							,po.pom_id',
'							,po.POM_SUPPLIER_ID',
'                            ,eod_id',
'                            ,pm_barcode --Added by Rahul on 19-Jan-24',
'							FROM V_ENQUIRIES_ORDERS_MST',
'								,V_ENQUIRIES_ORDERS_DETAILS',
'								,V_PRODUCT_MASTER',
'								,(SELECT POD_ID,pom_id,pom_ord_id,POD_PRODUCT_ID,POM_SUPPLIER_ID,sum(POD_ORDERED_QUANTITY) ord_qty,sum(POD_DELIVERED_QUANTITY) rec_qty ',
'									FROM V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS ',
'											WHERE pom_id = pod_pom_id',
'											--AND pom_id in apex_util.string_to_table(p_string=>:P47_POM_ID_IW, p_separator=>'':'') ',
'                                            AND instr('':'' || :P47_POM_ID_IW || '':'', '':'' || pom_id || '':'') > 0',
'										   group by POD_ID,pom_id,pom_ord_id,POD_PRODUCT_ID,POM_SUPPLIER_ID',
'								) po',
'                             --   ,V_INWARD_DETAILS',
'								',
'							WHERE eom_enq_id    = eod_enq_id',
'							  AND eom_ord_id    = po.pom_ord_id',
'							 -- AND pm_manufac_id = eod_manufac_id Commented by Rahul on 21-Mar-2024 as pm_manufac and eod_manufac can be different',
'							    AND pm_id         = eod_product_id',
'								AND nvl(po.ord_qty,0) <> nvl(po.rec_qty,0)',
'								AND eod_product_id = po.POD_PRODUCT_ID',
'                                  AND     (   (    :P47_FILTER_DATA = ''ADDED''',
'                                            AND  (eod_product_id,po.pom_id)    IN (select ID_PRODUCT_ID,ID_PO_ID from V_INWARD_DETAILS where ID_IM_ID = :P47_IM_ID)',
'                                            )',
'                                        OR  (    :P47_FILTER_DATA = ''NOTADDED''',
'                                            AND  (eod_product_id,po.pom_id)   NOT IN (select ID_PRODUCT_ID,ID_PO_ID from V_INWARD_DETAILS where ID_IM_ID = :P47_IM_ID)',
'                                            )',
'                                        )',
'							) loop',
'	',
'',
'			IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''PO_PRODUCTS'' ) THEN',
'			--DEBUG_LOG_PROC (:P141_TRANS_ID || '':P141_TRANS_ID'');',
'					APEX_COLLECTION.ADD_MEMBER(',
'					p_collection_name =>''PO_PRODUCTS'',',
'					p_c001 =>i.product,',
'					p_c002 =>i.product_id,',
'					p_c003 =>i.quantity,--order quantity',
'					p_c004 =>i.rate,',
'					p_c005 =>i.brand,',
'					p_c006 =>i.rec_qty,',
'					p_c007 =>i.rem_qty,',
'					p_c008 =>i.length,',
'					p_c009 =>i.breadth,',
'					p_c010 =>i.height,',
'					p_c011 =>i.cubic_space,',
'					p_c012 =>i.gross_weight,',
'					p_c013 =>i.pom_ord_id,',
'					p_c014 =>i.pom_id,',
'					p_c015 =>i.pom_supplier_id,',
'					p_c016 =>i.pod_id,',
'					p_c017 =>i.eod_id,',
'                    p_c018 =>i.pm_barcode --Added by Rahul on 19-Jan-24',
'					);',
'',
'			ELSE       ',
'					APEX_COLLECTION.CREATE_COLLECTION(p_collection_name =>''PO_PRODUCTS'');',
'					APEX_COLLECTION.ADD_MEMBER(',
'					p_collection_name =>''PO_PRODUCTS'',				',
'					p_c001 =>i.product,',
'					p_c002 =>i.product_id,',
'					p_c003 =>i.quantity,',
'					p_c004 =>i.rate,',
'					p_c005 =>i.brand,',
'					p_c006 =>i.rec_qty,',
'					p_c007 =>i.rem_qty,',
'					p_c008 =>i.length,',
'					p_c009 =>i.breadth,',
'					p_c010 =>i.height,',
'					p_c011 =>i.cubic_space,',
'					p_c012 =>i.gross_weight,',
'					p_c013 =>i.pom_ord_id,',
'					p_c014 =>i.pom_id,',
'					p_c015 =>i.pom_supplier_id,',
'					p_c016 =>i.pod_id,',
'                    p_c017 =>i.eod_id,',
'                    p_c018 =>i.pm_barcode --Added by Rahul on 19-Jan-24',
'					);',
'			END IF;',
'		END LOOP;	',
'',
'',
'	END IF;',
'    ',
'    	select count(1)',
'		into :P36_PRODUCT_COUNT',
'		from APEX_COLLECTIONS',
'		where collection_name = ''PO_PRODUCTS'';',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error:Fetching Product Details for PO'
,p_internal_uid=>142866384204298574
);
wwv_flow_imp.component_end;
end;
/
