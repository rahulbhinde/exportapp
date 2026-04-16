prompt --application/pages/page_00102
begin
--   Manifest
--     PAGE: 00102
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
 p_id=>102
,p_name=>'Order Loan/Payment Details'
,p_alias=>'ORDER-LOAN-PAYMENT-DETAILS'
,p_step_title=>'Order Loan/Payment Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(793663917212512482)
,p_plug_name=>'Order Payment Details'
,p_title=>'Payment Details'
,p_icon_css_classes=>'fa-money-bag'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OPD_ID,',
'       OPD_ENQ_ID,',
'       OPD_ORDER_ID,',
'       OPD_PAYMENT_AMOUNT,',
'       OPD_PAYMENT_DATE,',
'       OPD_REMARKS,',
'       OPD_CREATED_ON,',
'       OPD_CREATED_BY,',
'       OPD_UPDATED_ON,',
'       OPD_UPDATED_BY,',
'       OPD_PAYMENT_TYPE,',
'       OPD_EXCHANGE_RATE,',
'       OPD_REFERENCE_NO,',
'       OPD_TENANT_ID,',
'       OPD_PAYMENT_AMOUNT * OPD_EXCHANGE_RATE LOCAL_CURR_VALUE,',
'       OPD_FB_ID,',
'       OPD_NOTIONAL_EXCH_RATE',
'  from V_ORDER_PAYMENT_DETAILS',
' where OPD_ORDER_ID = :P102_ORDER_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P102_ORDER_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Payment Details'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1591388082225001)
,p_name=>'OPD_REFERENCE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_REFERENCE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Reference No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(1591479540225002)
,p_name=>'OPD_TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_TENANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1591602584225003)
,p_name=>'LOCAL_CURR_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCAL_CURR_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'&APP_LOCAL_CURR_SYMBOL. Value'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'99G99G99G99G990D00'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1591680763225004)
,p_name=>'OPD_FB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_FB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Fwd. Booking'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select FB_BOOKING_REF_NO ||'' - ''|| FB_CURRENCY || FB_AMOUNT d, FB_ID r',
'From v_forward_bookings',
'Where (',
'        (    nvl(FB_AMOUNT,0) > nvl(FB_UTILIZED_AMOUNT,0)',
'         AND :OPD_PAYMENT_DATE between FB_FROM_DATE and FB_TO_DATE',
'        )',
'        OR FB_ID = :OPD_FB_ID',
'      )'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Fwd. Booking -'
,p_lov_cascade_parent_items=>'OPD_PAYMENT_DATE'
,p_ajax_items_to_submit=>'OPD_PAYMENT_DATE,OPD_FB_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1591775674225005)
,p_name=>'OPD_NOTIONAL_EXCH_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_NOTIONAL_EXCH_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Notional<br>Exch. Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(619733749296669026)
,p_name=>'OPD_EXCHANGE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_EXCHANGE_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Exch. Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'99G99G99G99G990D00'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(793664176545512484)
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
 p_id=>wwv_flow_imp.id(793664228989512485)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793665473437512497)
,p_name=>'OPD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_OPD_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793665513398512498)
,p_name=>'OPD_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P102_ENQ_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793665613214512499)
,p_name=>'OPD_ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_ORDER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P102_ORDER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793665783276512500)
,p_name=>'OPD_PAYMENT_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_PAYMENT_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'99G99G99G99G990D00'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(793665799251512501)
,p_name=>'OPD_PAYMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_PAYMENT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793665930667512502)
,p_name=>'OPD_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(793666010719512503)
,p_name=>'OPD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'sysdate'
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793666149134512504)
,p_name=>'OPD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_USER'
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793666228051512505)
,p_name=>'OPD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'sysdate'
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793666324114512506)
,p_name=>'OPD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_USER'
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793666480271512507)
,p_name=>'OPD_PAYMENT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPD_PAYMENT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(163770225261516940)
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(793664039929512483)
,p_internal_uid=>873714883316148209
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(793707094738723017)
,p_interactive_grid_id=>wwv_flow_imp.id(793664039929512483)
,p_static_id=>'1366451'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(793707234984723018)
,p_report_id=>wwv_flow_imp.id(793707094738723017)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2518896064325668)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1591388082225001)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2519713534325678)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1591479540225002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2520601562325684)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1591602584225003)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2521564372325690)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1591680763225004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2522421623325696)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1591775674225005)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(620064702851649605)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(619733749296669026)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793708154592723025)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(793664228989512485)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793709067931723029)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(793665473437512497)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793709990132723033)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(793665513398512498)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793710832817723037)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(793665613214512499)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793711774144723041)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(793665783276512500)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793712555162723044)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(793665799251512501)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793713402210723049)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(793665930667512502)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793714334453723053)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(793666010719512503)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793715289004723057)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(793666149134512504)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793716118619723061)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(793666228051512505)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793717051225723065)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(793666324114512506)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793717952104723069)
,p_view_id=>wwv_flow_imp.id(793707234984723018)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(793666480271512507)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(794467194845321270)
,p_plug_name=>'Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(915866011820058955)
,p_plug_name=>'Order Loan Details'
,p_title=>'Loan Details'
,p_icon_css_classes=>'fa-money-withdrawal'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OLD_ID,',
'       OLD_ENQ_ID,',
'       OLD_ORDER_ID,',
'       OLD_LOAN_AMT,',
'       OLD_BL_ID,',
'       OLD_DATE,',
'       OLD_REMARKS,',
'       OLD_CREATED_ON,',
'       OLD_CREATED_BY,',
'       OLD_UPDATED_ON,',
'       OLD_UPDATED_BY',
'  from V_ORDER_LOAN_DETAILS',
'where OLD_ORDER_ID= :P102_ORDER_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P102_ORDER_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Loan Details'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793662382980512466)
,p_name=>'OLD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_OLD_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793662482283512467)
,p_name=>'OLD_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P102_ENQ_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793662522698512468)
,p_name=>'OLD_ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_ORDER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P102_ORDER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793662652128512469)
,p_name=>'OLD_LOAN_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_LOAN_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Loan Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_format_mask=>'99G99G99G99G990D00'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(793662709234512470)
,p_name=>'OLD_BL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_BL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Bank'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BM_NAME || '' - '' || BL_LIMIT, BL_ID',
'from V_BANK_MASTER,V_BANK_LIMIT',
'where BM_ID = BL_BM_ID',
'and trunc(to_date(:OLD_DATE,''DD-MON-RR'')) between trunc(BL_EFFECTIVE_DATE) and trunc(BL_EXPIRY_DATE)'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'OLD_DATE'
,p_ajax_items_to_submit=>'OLD_DATE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793662849964512471)
,p_name=>'OLD_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793662988538512472)
,p_name=>'OLD_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793663033814512473)
,p_name=>'OLD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_USER'
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793663133501512474)
,p_name=>'OLD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'sysdate'
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793663214784512475)
,p_name=>'OLD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_USER'
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793663329960512476)
,p_name=>'OLD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OLD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'sysdate'
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793663603309512479)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(793663790987512480)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(793662212952512465)
,p_internal_uid=>873713056339148191
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(793669784859519306)
,p_interactive_grid_id=>wwv_flow_imp.id(793662212952512465)
,p_static_id=>'1366078'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(793669929111519308)
,p_report_id=>wwv_flow_imp.id(793669784859519306)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793670474939519320)
,p_view_id=>wwv_flow_imp.id(793669929111519308)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(793662382980512466)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793671352705519329)
,p_view_id=>wwv_flow_imp.id(793669929111519308)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(793662482283512467)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793672225181519335)
,p_view_id=>wwv_flow_imp.id(793669929111519308)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(793662522698512468)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793673192199519340)
,p_view_id=>wwv_flow_imp.id(793669929111519308)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(793662652128512469)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793673995844519345)
,p_view_id=>wwv_flow_imp.id(793669929111519308)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(793662709234512470)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>196
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793674830686519350)
,p_view_id=>wwv_flow_imp.id(793669929111519308)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(793662849964512471)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793675783412519354)
,p_view_id=>wwv_flow_imp.id(793669929111519308)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(793662988538512472)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>212
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793676635773519358)
,p_view_id=>wwv_flow_imp.id(793669929111519308)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(793663033814512473)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793677585709519362)
,p_view_id=>wwv_flow_imp.id(793669929111519308)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(793663133501512474)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793678496998519366)
,p_view_id=>wwv_flow_imp.id(793669929111519308)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(793663214784512475)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793679328240519369)
,p_view_id=>wwv_flow_imp.id(793669929111519308)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(793663329960512476)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(793701154782712366)
,p_view_id=>wwv_flow_imp.id(793669929111519308)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(793663603309512479)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>59.18799999999999
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(915874044578058996)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_06'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1294140935320024145)
,p_plug_name=>'Sales Register'
,p_title=>'Sales Details'
,p_icon_css_classes=>'fa-target-arrow'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EOM_ENQ_ID,',
'       EOM_ENQ_NO,',
'       EOM_INVOICE_NO,',
'       EOM_INVOICE_DATE,',
'       EOM_CUSTOMER_ID,',
'       CM_NAME,',
'       EOM_TOTAL_CONTAINER_AMT,',
'       EOM_BANK_DUE_DATE,',
'       EOM_AVG_EXCH_RATE_FOB,',
'       REALISED_EXCH_RATE,',
'       AMT_REC,',
'       AMTINR_REXCH_RATE,',
'       GAIN_LOSS,',
'       EXCESS_SHORT,',
'       MAX_REC_DATE,',
'       LATE_EARLY_DAYS,',
'       EOM_ORD_ACC_YEAR,',
'       EOM_QUOTE_IN',
'  from V_SALES_REGISTER',
' where eom_enq_id = :P102_ENQ_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P102_ENQ_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Sales Details'
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
 p_id=>wwv_flow_imp.id(1294143395716024170)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>1374194239102659896
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1294143547853024171)
,p_db_column_name=>'EOM_ENQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Eom Enq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1294143672763024172)
,p_db_column_name=>'EOM_ENQ_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Order#'
,p_column_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_EOM_ENQ_ID:#EOM_ENQ_ID#'
,p_column_linktext=>'#EOM_ENQ_NO#'
,p_column_link_attr=>'title="Click to view Enquiry details" target="_blank"  style="color:blue;font-weight:bold;"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1294143752922024173)
,p_db_column_name=>'EOM_INVOICE_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Invoice#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1294143802915024174)
,p_db_column_name=>'EOM_INVOICE_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Inv. Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1294143943726024175)
,p_db_column_name=>'EOM_CUSTOMER_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Eom Customer Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1294144078896024176)
,p_db_column_name=>'CM_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1294144128931024177)
,p_db_column_name=>'EOM_TOTAL_CONTAINER_AMT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Inv. Amt.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1314163133433108328)
,p_db_column_name=>'EOM_BANK_DUE_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Bank Due Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1314163240257108329)
,p_db_column_name=>'EOM_AVG_EXCH_RATE_FOB'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Costing Ex. Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1314163351076108330)
,p_db_column_name=>'REALISED_EXCH_RATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Realised Exch. Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1314163397252108331)
,p_db_column_name=>'AMT_REC'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Amount<br>Received'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1314163575157108332)
,p_db_column_name=>'AMTINR_REXCH_RATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Amt. (&APP_LOCAL_CURR_SYMBOL.) @<br>R. Exch. Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1314163670385108333)
,p_db_column_name=>'GAIN_LOSS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Gain/<br>Loss (&APP_LOCAL_CURR_SYMBOL.)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1314163777191108334)
,p_db_column_name=>'EXCESS_SHORT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Excess/<br>Short'
,p_column_html_expression=>'<span style="font-weight:bold;">#EXCESS_SHORT#</span>'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1314163877035108335)
,p_db_column_name=>'MAX_REC_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Rec. Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1314163887856108336)
,p_db_column_name=>'LATE_EARLY_DAYS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Age<br>(Days)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1314164002613108337)
,p_db_column_name=>'EOM_ORD_ACC_YEAR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Eom Ord Acc Year'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1314164137400108338)
,p_db_column_name=>'EOM_QUOTE_IN'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Quote In'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1314188233642109337)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'4342511'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EOM_ENQ_NO:EOM_INVOICE_NO:EOM_INVOICE_DATE:CM_NAME:EOM_TOTAL_CONTAINER_AMT:EOM_BANK_DUE_DATE:EOM_QUOTE_IN:EOM_AVG_EXCH_RATE_FOB:REALISED_EXCH_RATE:AMT_REC:AMTINR_REXCH_RATE:GAIN_LOSS:EXCESS_SHORT:MAX_REC_DATE:LATE_EARLY_DAYS:'
,p_sort_column_1=>'EOM_INVOICE_DATE'
,p_sort_direction_1=>'DESC NULLS LAST'
,p_sort_column_2=>'0'
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
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(372978103202571154)
,p_report_id=>wwv_flow_imp.id(1314188233642109337)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'EXCESS_SHORT'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("EXCESS_SHORT" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#ffffff'
,p_column_font_color=>'#f44336'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(372978527185571156)
,p_report_id=>wwv_flow_imp.id(1314188233642109337)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'EXCESS_SHORT'
,p_operator=>'>='
,p_expr=>'0'
,p_condition_sql=>' (case when ("EXCESS_SHORT" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#ffffff'
,p_column_font_color=>'#348e28'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(372978921848571156)
,p_report_id=>wwv_flow_imp.id(1314188233642109337)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'GAIN_LOSS'
,p_operator=>'<'
,p_expr=>'0'
,p_condition_sql=>' (case when ("GAIN_LOSS" < to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# < #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#ffffff'
,p_column_font_color=>'#f44336'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(372979309808571157)
,p_report_id=>wwv_flow_imp.id(1314188233642109337)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'GAIN_LOSS'
,p_operator=>'>='
,p_expr=>'0'
,p_condition_sql=>' (case when ("GAIN_LOSS" >= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# >= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#ffffff'
,p_column_font_color=>'#348e28'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(372970064316571132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(915874044578058996)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:RP,::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(372970514128571133)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(915874044578058996)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(372970915788571134)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(915874044578058996)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P102_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(372971327574571134)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(915874044578058996)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P102_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(372981801634571170)
,p_branch_name=>'Submit Page'
,p_branch_action=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.::P102_ENQ_ID,P102_ORDER_ID:&P102_ENQ_ID.,&P102_ORDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'P102_ORDER_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(793683421057512645)
,p_name=>'P102_ENQ_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(915866011820058955)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'U'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(793683483082512646)
,p_name=>'P102_ORDER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(915866011820058955)
,p_prompt=>'Invoice#'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_FINANCE_ORDERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM V_ORDER_LOAN_DETAILS',
'WHERE OLD_ORDER_ID = :P102_ORDER_ID',
'union',
'SELECT 1',
'FROM V_ORDER_PAYMENT_DETAILS',
'WHERE opd_order_id = :P102_ORDER_ID'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_ai_enabled=>false
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from V_ENQUIRIES_ORDERS_MST',
'where eom_order_status not in (''RJ'')',
'AND NOT EXISTS (SELECT OLD_ID',
'              FROM V_ORDER_LOAN_DETAILS',
'              WHERE OLD_ENQ_ID = eom_enq_id and OLD_ORDER_ID = eom_ord_id)',
'AND NOT EXISTS (SELECT OPD_ID',
'              FROM V_ORDER_PAYMENT_DETAILS',
'              WHERE OPD_ENQ_ID = eom_enq_id and OPD_ORDER_ID = eom_ord_id)',
'and eom_type = ''ORDER''',
'AND eom_ord_id = :P102_ORDER_ID'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(794487276569321440)
,p_name=>'P102_CUSTOMER_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(915866011820058955)
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(794487477695321442)
,p_name=>'P102_AVG_EXCH_RATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(915866011820058955)
,p_prompt=>'Avg. Exchange Rate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(794487595489321443)
,p_name=>'P102_TOTAL_CONTAINER_AMT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(915866011820058955)
,p_prompt=>'Total Invoice Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1592947331225016)
,p_tabular_form_region_id=>wwv_flow_imp.id(793663917212512482)
,p_validation_name=>'ValidatePaymentBalance'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_balance   	    NUMBER := 0;',
'    v_current   	    NUMBER := 0;  -- existing amount on THIS row (for edits)',
'	v_available 	    NUMBER := 0;',
'    v_payment_amount    NUMBER := 0;',
'BEGIN',
'    -- Skip validation if no forward booking selected',
'    IF :OPD_FB_ID IS NULL THEN',
'        RETURN null;',
'    END IF;',
'',
'    -- Get the available balance on the forward booking',
'    SELECT NVL(FB_AMOUNT, 0) - NVL(FB_UTILIZED_AMOUNT, 0)',
'    INTO   v_balance',
'    FROM   v_forward_bookings',
'    WHERE  FB_ID = :OPD_FB_ID;',
'',
'    -- For an existing row being edited, add back its own current saved amount',
'    -- so it doesn''t count against itself',
'    IF :OPD_ID IS NOT NULL THEN',
'       begin',
'        SELECT NVL(OPD_PAYMENT_AMOUNT, 0)',
'        INTO   v_current',
'        FROM   order_payment_details',
'        WHERE  opd_id = :OPD_ID',
'          AND  opd_fb_id = :OPD_FB_ID;  -- only if same FB not changed',
'       exception when no_data_found then',
'            v_current := 0;',
'       end;',
'    END IF;',
'	',
'	v_available := v_balance + v_current;',
'',
'    v_payment_amount := NVL(REPLACE(:OPD_PAYMENT_AMOUNT, '','', ''''), 0);',
'    IF v_payment_amount <= v_available THEN',
'        RETURN null;',
'    ELSE',
'        RETURN ''Payment Amount '' || v_payment_amount ||',
'               '' exceeds available Forward Booking balance of '' ||',
'               v_available || ''.'';  -- fails with dynamic message',
'',
'    END IF;',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        RETURN null;  -- row is new or FB changed; base check is sufficient',
'',
'    WHEN OTHERS THEN',
'         RETURN ''Payment Amount '' || v_payment_amount ||',
'               '' exceeds available Forward Booking balance of '' ||',
'               v_available || ''.'';  -- fails with dynamic message',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_column=>'OPD_PAYMENT_AMOUNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(372980257695571166)
,p_name=>'Set Enq Id'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P102_ORDER_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(372980797910571168)
,p_event_id=>wwv_flow_imp.id(372980257695571166)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set Readonly fields'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select eom_enq_id,  EOM_AVG_EXCH_RATE , EOM_QUOTE_IN||'' ''||EOM_TOTAL_CONTAINER_AMT, CM_NAME',
'into :P102_ENQ_ID,  :P102_AVG_EXCH_RATE, :P102_TOTAL_CONTAINER_AMT,:P102_CUSTOMER_NAME',
'from V_ENQUIRIES_ORDERS_MST, V_CUSTOMER_MASTER',
'where eom_ord_id = :P102_ORDER_ID',
'AND EOM_CUSTOMER_ID = CM_ID;',
'END;'))
,p_attribute_02=>'P102_ORDER_ID'
,p_attribute_03=>'P102_ENQ_ID,P102_AVG_EXCH_RATE,P102_TOTAL_CONTAINER_AMT,P102_CUSTOMER_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(372981356531571169)
,p_event_id=>wwv_flow_imp.id(372980257695571166)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Submit Enq Id'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'P102_ORDER_ID'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1591877566225006)
,p_name=>'AssignExchRate'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(793663917212512482)
,p_triggering_element=>'OPD_FB_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'OPD_FB_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1592050801225007)
,p_event_id=>wwv_flow_imp.id(1591877566225006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'OPD_EXCHANGE_RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FB_EXCHANGE_RATE',
'from v_forward_bookings',
'where fb_id = :opd_fb_id'))
,p_attribute_07=>'OPD_FB_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1592556425225012)
,p_event_id=>wwv_flow_imp.id(1591877566225006)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'OPD_EXCHANGE_RATE,OPD_NOTIONAL_EXCH_RATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1592083965225008)
,p_event_id=>wwv_flow_imp.id(1591877566225006)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'OPD_EXCHANGE_RATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1592383158225011)
,p_event_id=>wwv_flow_imp.id(1591877566225006)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'OPD_NOTIONAL_EXCH_RATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1592186722225009)
,p_event_id=>wwv_flow_imp.id(1591877566225006)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'OPD_EXCHANGE_RATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1592350661225010)
,p_event_id=>wwv_flow_imp.id(1591877566225006)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'OPD_NOTIONAL_EXCH_RATE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(372962017761571120)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(915866011820058955)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Order Loan Details - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>453012861148206846
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(372969048309571131)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(793663917212512482)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Order Payment Details - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>453019891696206857
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1593000151225017)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(793663917212512482)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'OPD - Over utilized amount check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_overutilized IS',
'        SELECT fb.fb_id,',
'               fb.fb_booking_ref_no,',
'               fb.fb_amount,',
'               fb.fb_utilized_amount',
'        FROM   v_forward_bookings fb',
'        WHERE  fb.fb_id IN (',
'                   SELECT DISTINCT opd_fb_id',
'                   FROM   v_order_payment_details',
'                   WHERE  opd_order_id  = :P102_ORDER_ID',
'                     AND  opd_fb_id     IS NOT NULL',
'                    -- AND  opd_tenant_id = :APP_TENANT_ID',
'               )',
'          AND  NVL(fb.fb_utilized_amount, 0) > NVL(fb.fb_amount, 0);',
'',
'    v_error VARCHAR2(4000);',
'BEGIN',
'    FOR r IN c_overutilized LOOP',
'        v_error := v_error ||',
'                   ''Forward Booking '' || r.fb_booking_ref_no ||',
'                   '': Total payments '' || r.fb_utilized_amount ||',
'                   '' exceed booking amount '' || r.fb_amount || ''. '';',
'    END LOOP;',
'',
'    IF v_error IS NOT NULL THEN',
'        -- Rollback the IG DML that just saved',
'        raise_application_error(-20001, v_error);',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>26502634761990023
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(372979923608571165)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select eom_enq_id,  EOM_AVG_EXCH_RATE , EOM_QUOTE_IN||'' ''||EOM_TOTAL_CONTAINER_AMT, CM_NAME',
'into :P102_ENQ_ID,  :P102_AVG_EXCH_RATE, :P102_TOTAL_CONTAINER_AMT,:P102_CUSTOMER_NAME',
'from V_ENQUIRIES_ORDERS_MST, V_CUSTOMER_MASTER',
'where eom_ord_id = :P102_ORDER_ID',
'AND EOM_CUSTOMER_ID = CM_ID;',
'exception when others then',
'  :P102_ENQ_ID := null;  ',
'  :P102_AVG_EXCH_RATE:= null;',
'  :P102_TOTAL_CONTAINER_AMT := null;',
'  :P102_CUSTOMER_NAME := null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>453030766995206891
);
wwv_flow_imp.component_end;
end;
/
