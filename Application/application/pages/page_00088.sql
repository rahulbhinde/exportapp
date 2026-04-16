prompt --application/pages/page_00088
begin
--   Manifest
--     PAGE: 00088
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
 p_id=>88
,p_name=>'Update Marks and Nos'
,p_alias=>'UPDATE-MARKS-AND-NOS'
,p_step_title=>'Update Marks and Nos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8155126908174561630)
,p_plug_name=>'Update Marks and Nos - Enquiry'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       EOD_ID,',
'       EOD_ENQ_ID,',
'       EOD_MANUFAC_ID,',
'       EOD_PRODUCT_ID,',
'       EOD_QUANTITY,',
'       EOD_UPDATED_BY,',
'       EOD_UPDATED_ON,',
'       /*EOD_MRP,',
'       EOD_TRADE_PRICE,',
'       EOD_PURCHASE_AMT,',
'       EOD_SCHEME_PERC,',
'       EOD_SCHEME_AMT,',
'       EOD_DISCOUNT_PERC,',
'       EOD_DISCOUNT_AMT,',
'       EOD_GST_PERC,',
'       EOD_GST_AMT,',
'       EOD_TRANS_CHARGES,',
'       EOD_BAGS_CTNS,',
'       EOD_RECOV_ON_FRT,',
'       EOD_REPACKING,',
'       EOD_EXTRA,',
'       EOD_NET_PURCHASE_VAL,',
'       EOD_VOL_FOB_AMT,',
'       EOD_VOL_FOB_EXP,',
'       EOD_PROFIT_PERC,',
'       EOD_PROFIT_AMT,',
'       EOD_INCOME_TAX,',
'       EOD_DUTY_PERC,',
'       EOD_DUTY_AMT,',
'       EOD_ECGC,',
'       EOD_BANK_COMM,',
'       EOD_INTEREST_PERC,',
'       EOD_INTEREST_AMT,',
'       EOD_EXCHANGE_RATE,',
'       EOD_FOB_RS,',
'       EOD_FOB_DOLL,',
'       EOD_COMMISSION_PERC,',
'       EOD_FOBC_AMT,',
'       EOD_FOB_DOLL_RND,',
'       EOD_OCEAN_FRT,',
'       EOD_FRT_PER_CTN,',
'       EOD_CANDF_AMT,',
'       EOD_CANDFC_AMT,',
'       EOD_CANDF_AMT_RND,',
'       EOD_INSURANCE_AMT,',
'       EOD_CIF_AMT,',
'       EOD_CIFC_AMT,',
'       EOD_CIF_AMT_RND,',
'       EOD_CNI_AMT,',
'       EOD_CNIC_AMT,',
'       EOD_CNI_AMT_RND,',
'       EOD_COSTING_TYPE,',
'       EOD_INCOME_TAX_PERC,',
'       EOD_BANK_COMM_PERC,',
'       EOD_ECGC_PERC,',
'       EOD_SGST_PERC,',
'       EOD_CGST_PERC,',
'       EOD_TOTAL_GST_PERC,',
'       EOD_INSURANCE_PERC,',
'       EOD_CREATED_BY,',
'       EOD_CREATED_ON,',
'       ',
'       EOD_GROUP_ID,',
'       EOD_STW_RND_20,',
'       EOD_HSN_CODE,',
'       EOD_COSTING_REMARKS,',
'       EOD_PRODUCT_STATUS,',
'       EOD_CIR_DISPLAY_NAME,',
'       EOD_FOC_FLAG,',
'       EOD_GROSS_WT,',
'       EOD_NET_WT,',
'       EOD_LENGTH,',
'       EOD_BREADTH,',
'       EOD_HEIGHT,',
'       EOD_CUBIC_SPACE,',
'       EOD_VERIFIED,',
'       EOD_EXTRA1,*/',
'       EOD_MARKS_NOS',
'  from V_ENQUIRIES_ORDERS_DETAILS',
'  where EOD_ENQ_ID = :P88_INVOICE_NO'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P88_INVOICE_NO'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Update Marks and Nos - Enquiry'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8155078400019561562)
,p_name=>'EOD_MARKS_NOS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_MARKS_NOS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Marks & Nos.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>800
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>250
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8155088063387561566)
,p_name=>'EOD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>640
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8155088601122561567)
,p_name=>'EOD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>630
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8155121671509561583)
,p_name=>'EOD_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Quantity'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8155122218232561583)
,p_name=>'EOD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(11504197761410516)
,p_lov_display_extra=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8155122813730561583)
,p_name=>'EOD_MANUFAC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_MANUFAC_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8155123410570561583)
,p_name=>'EOD_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8155124012522561584)
,p_name=>'EOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8155124624338561616)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8155125247326561618)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8155125709477561619)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(8155126434758561626)
,p_internal_uid=>8155177584389390122
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'To fetch the products details for updating the Marks & Nos., kindly select appropriate "Invoice No. - Date" i.e. an invoice whose all the the products are received.'
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(8155126044187561624)
,p_interactive_grid_id=>wwv_flow_imp.id(8155126434758561626)
,p_static_id=>'793285'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(8155125962533561624)
,p_report_id=>wwv_flow_imp.id(8155126044187561624)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8155078081773561562)
,p_view_id=>wwv_flow_imp.id(8155125962533561624)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(8155078400019561562)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8155087644334561566)
,p_view_id=>wwv_flow_imp.id(8155125962533561624)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(8155088063387561566)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8155088237325561566)
,p_view_id=>wwv_flow_imp.id(8155125962533561624)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(8155088601122561567)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8155121221306561583)
,p_view_id=>wwv_flow_imp.id(8155125962533561624)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(8155121671509561583)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8155121859655561583)
,p_view_id=>wwv_flow_imp.id(8155125962533561624)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(8155122218232561583)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>459
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8155122403329561583)
,p_view_id=>wwv_flow_imp.id(8155125962533561624)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(8155122813730561583)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8155123095864561583)
,p_view_id=>wwv_flow_imp.id(8155125962533561624)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(8155123410570561583)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8155123664785561584)
,p_view_id=>wwv_flow_imp.id(8155125962533561624)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(8155124012522561584)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8155124257961561616)
,p_view_id=>wwv_flow_imp.id(8155125962533561624)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(8155124624338561616)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8155124829987561617)
,p_view_id=>wwv_flow_imp.id(8155125962533561624)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(8155125247326561618)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24538387476909587018)
,p_plug_name=>'Update Marks & No - Custom Invoice'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cir_id,cir_display_name, cir_description, cir_marks_nos,cir_hsn_group_order,cir_hsn_group_order ||'') ''|| cir_group cir_group,cir_qty',
'from V_CUSTOM_INVOICE_REPORT ',
'where cir_enq_id = :P88_INVOICE_NO and cir_category = ''GDH'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P88_INVOICE_NO'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Update Marks & No - Custom Invoice'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24538385780381587001)
,p_name=>'CIR_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Qty.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24538386476578587008)
,p_name=>'CIR_GROUP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_GROUP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Group'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24538386547448587009)
,p_name=>'CIR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24538386756741587011)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24538386822541587012)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24538386989261587013)
,p_name=>'CIR_HSN_GROUP_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_HSN_GROUP_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'HSN Group Order'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24538387028490587014)
,p_name=>'CIR_MARKS_NOS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_MARKS_NOS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Marks & No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>250
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24538387133523587015)
,p_name=>'CIR_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Packing'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(24538387233990587016)
,p_name=>'CIR_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(24538387338215587017)
,p_internal_uid=>24538438487846415513
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(24538373473806354704)
,p_interactive_grid_id=>wwv_flow_imp.id(24538387338215587017)
,p_static_id=>'793284'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(24538373325453354703)
,p_report_id=>wwv_flow_imp.id(24538373473806354704)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24538358321512243367)
,p_view_id=>wwv_flow_imp.id(24538373325453354703)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(24538385780381587001)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24538367561894339566)
,p_view_id=>wwv_flow_imp.id(24538373325453354703)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(24538386476578587008)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24538369014249349971)
,p_view_id=>wwv_flow_imp.id(24538373325453354703)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(24538386547448587009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24538370818339354688)
,p_view_id=>wwv_flow_imp.id(24538373325453354703)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(24538386822541587012)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24538371358207354690)
,p_view_id=>wwv_flow_imp.id(24538373325453354703)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(24538386989261587013)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24538371846285354691)
,p_view_id=>wwv_flow_imp.id(24538373325453354703)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(24538387028490587014)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24538372317961354694)
,p_view_id=>wwv_flow_imp.id(24538373325453354703)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(24538387133523587015)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>268
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(24538372889776354698)
,p_view_id=>wwv_flow_imp.id(24538373325453354703)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(24538387233990587016)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>438
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24538387649994587020)
,p_plug_name=>'Items'
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(79293695471554850)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(24538387649994587020)
,p_button_name=>'PopulateMarksAndNos'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Populate Marks & Nos'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40300279717580393774)
,p_name=>'P88_INVOICE_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24538387649994587020)
,p_prompt=>'Invoice No. - Date'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct EOM_ENQ_NO ||'' - ''||EOM_INVOICE_NO || '' - '' || eom_invoice_date,EOM_ENQ_ID  ',
'from V_ENQUIRIES_ORDERS_MST, V_ENQUIRIES_ORDERS_DETAILS',
'where EOM_ENQ_ID = eod_enq_id',
'and nvl(EOM_ORDER_STATUS,''CD'') not in  (''IP'',''CD'',''RJ'',''PPO'',''SHP'') --Modified this condition by Rahul to list all orders for which PO is issued. Earler contd was only for ''RC'' 17-May-24',
'order by EOM_ENQ_ID desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Invoice No. -'
,p_cSize=>30
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(40300280121560393777)
,p_name=>'P88_ENQ_CI_OPT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24538387649994587020)
,p_item_default=>'ENQ'
,p_prompt=>'Update Marks & No.'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Individual Products;ENQ,Custom Invoice Groups;CI'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79305917755554888)
,p_name=>'ValidateInvoiceNoNotNull'
,p_event_sequence=>5
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79293695471554850)
,p_condition_element=>'P88_INVOICE_NO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79306378089554889)
,p_event_id=>wwv_flow_imp.id(79305917755554888)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Please select value for field Invoice No. - Date.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79306771329554890)
,p_name=>'onChangeRefreshIG'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P88_INVOICE_NO,P88_ENQ_CI_OPT'
,p_condition_element=>'P88_ENQ_CI_OPT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'ENQ'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79307349798554891)
,p_event_id=>wwv_flow_imp.id(79306771329554890)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24538387476909587018)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79307809824554891)
,p_event_id=>wwv_flow_imp.id(79306771329554890)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24538387476909587018)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79308261205554892)
,p_event_id=>wwv_flow_imp.id(79306771329554890)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8155126908174561630)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79308764618554892)
,p_event_id=>wwv_flow_imp.id(79306771329554890)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8155126908174561630)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79309330956554892)
,p_event_id=>wwv_flow_imp.id(79306771329554890)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8155126908174561630)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79309802613554892)
,p_event_id=>wwv_flow_imp.id(79306771329554890)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24538387476909587018)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79310233184554892)
,p_name=>'PopulateMarksAndNos-CI'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79293695471554850)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P88_ENQ_CI_OPT'') == ''CI'' && $v(''P88_INVOICE_NO'') != '''''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79310691941554893)
,p_event_id=>wwv_flow_imp.id(79310233184554892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Do you really want to overwrite the existing Marks &amp; Nos. ?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79311154796554893)
,p_event_id=>wwv_flow_imp.id(79310233184554892)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_start number := 1;',
'v_end   number := 0;',
'cursor c_product_lst is',
'select * ',
'from V_CUSTOM_INVOICE_REPORT ',
'where cir_enq_id = :P88_INVOICE_NO',
'and cir_category = ''GDH''',
'order by cir_hsn_group_order;',
'BEGIN',
'for c_product in c_product_lst loop',
'    v_end := v_end + c_product.cir_qty;',
'    ',
'    update V_CUSTOM_INVOICE_REPORT',
'    set cir_marks_nos = v_start || '' to '' || v_end',
'    where cir_enq_id = :P88_INVOICE_NO ',
'    and cir_id = c_product.cir_id;',
'     ',
'     v_start := v_end + 1;',
'end loop;',
'',
'END;'))
,p_attribute_02=>'P88_INVOICE_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79311659937554894)
,p_event_id=>wwv_flow_imp.id(79310233184554892)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24538387476909587018)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(79312071715554894)
,p_name=>'PopulateMarksAndNos-ENQ'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(79293695471554850)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P88_ENQ_CI_OPT'') == ''ENQ'' && $v(''P88_INVOICE_NO'') != '''''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79312643218554894)
,p_event_id=>wwv_flow_imp.id(79312071715554894)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Do you really want to overwrite the existing Marks &amp; Nos. ?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79313080304554894)
,p_event_id=>wwv_flow_imp.id(79312071715554894)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_start number := 1;',
'v_end   number := 0;',
'cursor c_product_lst is',
'select pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT pm_name, a.* ',
'from V_ENQUIRIES_ORDERS_DETAILS a,V_PRODUCT_MASTER ',
'where eod_product_id = pm_id and eod_enq_id = :P88_INVOICE_NO',
'and EOD_QUANTITY is not null',
'order by 1,EOD_ID;',
'BEGIN',
'for c_product in c_product_lst loop',
'    v_end := v_end + c_product.EOD_QUANTITY;',
'    ',
'    update V_ENQUIRIES_ORDERS_DETAILS',
'    set EOD_MARKS_NOS = v_start || '' to '' || v_end',
'    where eod_enq_id = :P88_INVOICE_NO ',
'    and eod_id = c_product.eod_id;',
'     ',
'     v_start := v_end + 1;',
'end loop;',
'',
'END;'))
,p_attribute_02=>'P88_INVOICE_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(79313563658554894)
,p_event_id=>wwv_flow_imp.id(79312071715554894)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8155126908174561630)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79305393108554877)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8155126908174561630)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Update Marks and Nos - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>79356542739383373
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(79299522287554872)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(24538387476909587018)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Update Marks & No - Custom Invoice - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>79350671918383368
);
wwv_flow_imp.component_end;
end;
/
