prompt --application/pages/page_00068
begin
--   Manifest
--     PAGE: 00068
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
 p_id=>68
,p_name=>'Report'
,p_alias=>'REPORT'
,p_step_title=>'Report'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-table td {padding: 0px 4px;!important;white-space:nowrap;} ',
'',
'@page{size:landscape;}',
'',
'@media print {',
'  body {',
'    zoom: 77%;',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>'@page{size:landscape;}'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(862956127942072921)
,p_plug_name=>'Outstanding Report as on  &APP_SYSDATE.'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select  EOM_ENQ_ID,eom_invoice_no,eom_invoice_date, EOM_CUSTOMER_ID,cm_name, ',
'  eom_enq_no,eom_actual_due_date,EOM_TOTAL_CONTAINER_AMT,',
'  EOM_TOTAL_CONTAINER_AMT - nvl(payment.opd_payment_amount,0) balance,',
'  trunc(sysdate) -trunc(eom_actual_due_date) Late_Days,',
'  eom_quote_in,',
'  case when to_char(nvl(eom_actual_due_date,trunc(sysdate)),''dd'') between ''01'' and ''15'' then',
'            to_date(''01-''||to_char(nvl(eom_actual_due_date,trunc(sysdate)),''Mon-YY'')) ',
'            else',
'            to_date(''16-''||to_char(nvl(eom_actual_due_date,trunc(sysdate)),''Mon-YY'')) ',
'            end Date_Range,',
'   to_date(to_char(nvl(eom_actual_due_date,trunc(sysdate)),''Mon-YY''),''Mon-YY'') Month_Date_Range',
'  from V_ENQUIRIES_ORDERS_MST, V_CUSTOMER_MASTER,',
'  (',
'            select nvl(sum(nvl(opd_payment_amount,0)),0) opd_payment_amount, opd_enq_id, opd_order_id',
'            from V_ORDER_PAYMENT_DETAILS',
'            group by opd_enq_id,opd_order_id',
'        ) payment',
'where EOM_CUSTOMER_ID = cm_id',
'and EOM_ORD_ID is not null',
'and payment.opd_enq_id (+)= EOM_ENQ_ID',
'and payment.opd_order_id (+)= EOM_ORD_ID',
'--and eom_actual_due_date is not null',
'and nvl(payment.opd_payment_amount,0)  <  EOM_TOTAL_CONTAINER_AMT'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P68_RM_NO'
,p_plug_display_when_cond2=>'RPT-012'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1169551456568483884)
,p_name=>'EOM_INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_INVOICE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(1169551599990483885)
,p_name=>'EOM_INVOICE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_INVOICE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Inv. Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(1169551663822483886)
,p_name=>'EOM_CUSTOMER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_CUSTOMER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1169551724414483887)
,p_name=>'CM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Customer'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1169551978249483889)
,p_name=>'EOM_ACTUAL_DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ACTUAL_DUE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Actual Due Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(1169552080701483890)
,p_name=>'EOM_TOTAL_CONTAINER_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_TOTAL_CONTAINER_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Inv. Amt.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(1169552146037483891)
,p_name=>'BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BALANCE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Balance'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(1169552302815483892)
,p_name=>'LATE_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LATE_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Age<br>(Days)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(1169552361559483893)
,p_name=>'EOM_QUOTE_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_QUOTE_IN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Quote In'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(1169552438913483894)
,p_name=>'EOM_ENQ_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Order#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_EOM_ENQ_ID:&EOM_ENQ_ID.'
,p_link_text=>'&EOM_ENQ_NO.'
,p_link_attributes=>'title="Click to view Enquiry details" target="_blank"  style="color:blue;font-weight:bold;"'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1169552531581483895)
,p_name=>'EOM_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Eom Enq Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
 p_id=>wwv_flow_imp.id(1169552660469483896)
,p_name=>'DATE_RANGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_RANGE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Range'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(1169552795868483897)
,p_name=>'MONTH_DATE_RANGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTH_DATE_RANGE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Month Date Range'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1169551331194483883)
,p_internal_uid=>1249602174581119609
,p_is_editable=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(1169556798160523151)
,p_interactive_grid_id=>wwv_flow_imp.id(1169551331194483883)
,p_static_id=>'4142077'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1169556972412523152)
,p_report_id=>wwv_flow_imp.id(1169556798160523151)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1169557347065523161)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1169551456568483884)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1169558240205523173)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1169551599990483885)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1169559168092523179)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1169551663822483886)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1169560058216523182)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1169551724414483887)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>290
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1169561856960523190)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1169551978249483889)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1169562727442523193)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1169552080701483890)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1169563704079523197)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1169552146037483891)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1169564527893523200)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1169552302815483892)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1169565442791523204)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1169552361559483893)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1169573660035762681)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1169552438913483894)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1169580453278813299)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1169552531581483895)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1173957931985586319)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1169552660469483896)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1173960790935617858)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1169552795868483897)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(834146994317350379)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_execution_seq=>5
,p_name=>'AgeGreaterThanOrEqZero'
,p_background_color=>'#fdc3be'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(1169552302815483892)
,p_condition_operator=>'GTE'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'0'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(834151027647492214)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(1169552146037483891)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(834151097448495404)
,p_view_id=>wwv_flow_imp.id(1169556972412523152)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(1169552080701483890)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(1588166776795549415)
,p_interactive_grid_id=>wwv_flow_imp.id(1169551331194483883)
,p_name=>'Outstanding Report (Bi-Weekly)'
,p_static_id=>'4186100'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1588166951047549416)
,p_report_id=>wwv_flow_imp.id(1588166776795549415)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(834151136294497393)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1169552795868483897)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588167325700549425)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1169551456568483884)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588168218840549437)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1169551599990483885)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588169146727549443)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1169551663822483886)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588170036851549446)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1169551724414483887)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>290
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588171835595549454)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1169551978249483889)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588172706077549457)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1169552080701483890)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588173682714549461)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1169552146037483891)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588174506528549464)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1169552302815483892)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588175421426549468)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1169552361559483893)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588183638670788945)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1169552438913483894)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588190431913839563)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1169552531581483895)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1592567910620612583)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1169552660469483896)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>2.5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(834151125031497395)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_execution_seq=>5
,p_name=>'AgeGreaterThanOrEqZero'
,p_background_color=>'#fdc3be'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(1169552302815483892)
,p_condition_operator=>'GTE'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'0'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(1173959238504592536)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(1169552080701483890)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(1173959308305595726)
,p_view_id=>wwv_flow_imp.id(1588166951047549416)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(1169552146037483891)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(1588167200437556717)
,p_interactive_grid_id=>wwv_flow_imp.id(1169551331194483883)
,p_name=>'Outstanding Report (Monthly)'
,p_static_id=>'4186131'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1588167374689556718)
,p_report_id=>wwv_flow_imp.id(1588167200437556717)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1173960710546617857)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1169552795868483897)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>2.5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588167749342556727)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1169551456568483884)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588168642482556739)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1169551599990483885)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588169570369556745)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1169551663822483886)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588170460493556748)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1169551724414483887)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>290
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588172259237556756)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1169551978249483889)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588173129719556759)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1169552080701483890)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588174106356556763)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1169552146037483891)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588174930170556766)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1169552302815483892)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588175845068556770)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1169552361559483893)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588184062312796247)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1169552438913483894)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1588190855555846865)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1169552531581483895)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1592568334262619885)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1169552660469483896)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(834148412027409212)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_execution_seq=>5
,p_name=>'AgeGreaterThanOrEqZero'
,p_background_color=>'#fdc3be'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(1169552302815483892)
,p_condition_operator=>'GTE'
,p_condition_is_case_sensitive=>false
,p_condition_expression=>'0'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(1173959662146599838)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(1169552080701483890)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(1173959731947603028)
,p_view_id=>wwv_flow_imp.id(1588167374689556718)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(1169552146037483891)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(926956874721795181)
,p_plug_name=>'PC/ FBP Available Report as on  &APP_SYSDATE.'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EOM_ENQ_ID,CM_NAME, EOM_ENQ_NO, EOM_INVOICE_NO, EOM_INVOICE_DATE, INV_AMT, ',
'INV_AMT_FOB, EOM_AVG_EXCH_RATE, EOM_BANK_DUE_DATE, EOM_OUR_DUE_DATE, ',
'EOM_ACTUAL_DUE_DATE, ',
'--case when EOM_ORDER_STATUS = ''DS'' then ''Y'' else EOM_ORDER_STATUS end EOM_ORDER_STATUS ,',
'EOM_ORDER_STATUS,',
' AVAILABLE_PC_FBP, LOAN_AMT, BALANCE,',
'case when EOM_BANK_DUE_DATE < TRUNC(SYSDATE)',
'        then ''red''',
'        end duedate_crossed_css,',
'case    	when EOM_ORDER_STATUS =''IP''  then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when EOM_ORDER_STATUS =''PPO''  then :APP_COLOR_ORD_PPO/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''POI''  then :APP_COLOR_ORD_POI/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''PR''  then :APP_COLOR_ORD_PR/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''RC''  then :APP_COLOR_ORD_RC/*#0000FF #267DB3''*/',
'		    when EOM_ORDER_STATUS =''SHP''  then :APP_COLOR_ORD_SHP/*''#000000 #69C282''*/',
'            when EOM_ORDER_STATUS =''RJ''  then :APP_COLOR_ORD_RJ/*''#000000 #69C282''*/',
'            when EOM_ORDER_STATUS =''DS''  then :APP_COLOR_ORD_DS',
'	   end color_status_1',
'       ,case when EOM_ORDER_STATUS =''IP''  then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when EOM_ORDER_STATUS =''PPO''  then :APP_COLOR_ORD_POI/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''POI''  then :APP_COLOR_ORD_PR/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''PR''  then :APP_COLOR_ORD_RC/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''RC''  then :APP_COLOR_ORD_SHP/*#0000FF #267DB3''*/',
'		    when EOM_ORDER_STATUS =''SHP''  then :APP_COLOR_ORD_SHP/*''#000000 #69C282''*/',
'            when EOM_ORDER_STATUS =''RJ''  then :APP_COLOR_ORD_RJ/*''#000000 #69C282''*/',
'            when EOM_ORDER_STATUS =''DS''  then :APP_COLOR_ORD_DS',
'	   end color_status_2',
'       ,eom_quote_in',
'from V_AVAILABLE_PC_FBP_RPT',
'where eom_ord_acc_year between :FROM_FY and :TO_FY',
'and (BL_BM_ID is null or BL_BM_ID = :P68_BANK_ID)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P68_BANK_ID'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P68_RM_NO'
,p_plug_display_when_cond2=>'RPT-008'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
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
 p_id=>wwv_flow_imp.id(926956974502795182)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>1007007817889430908
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926957325368795186)
,p_db_column_name=>'CM_NAME'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926957461980795187)
,p_db_column_name=>'EOM_ENQ_NO'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Order#'
,p_column_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_EOM_ENQ_ID:#EOM_ENQ_ID#'
,p_column_linktext=>'#EOM_ENQ_NO#'
,p_column_link_attr=>'title="Click to view Enquiry details" target="_blank"  style="color:blue;font-weight:bold;"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926957585187795188)
,p_db_column_name=>'EOM_INVOICE_NO'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Invoice#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926957684329795189)
,p_db_column_name=>'EOM_INVOICE_DATE'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926958003937795192)
,p_db_column_name=>'EOM_AVG_EXCH_RATE'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Booking Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G99G99G99G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926958106631795193)
,p_db_column_name=>'EOM_BANK_DUE_DATE'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Bank Due Date'
,p_column_html_expression=>'<span style="color:#DUEDATE_CROSSED_CSS#">#EOM_BANK_DUE_DATE#</span>'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_column_comment=>'{if #"EOM_BANK_DUE_DATE"# < "SYSTEMDATE"/} <span style="color:red;">#EOM_BANK_DUE_DATE#</span>{endif/}'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926958159412795194)
,p_db_column_name=>'EOM_OUR_DUE_DATE'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Our Due Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926958263893795195)
,p_db_column_name=>'EOM_ACTUAL_DUE_DATE'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Actual Due Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926958350589795196)
,p_db_column_name=>'EOM_ORDER_STATUS'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Order Status'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span ',
' style ="display: block;width:100%; padding:0;background-image: linear-gradient(to right, #COLOR_STATUS_1# ,#COLOR_STATUS_2#);color:#000000;">#EOM_ORDER_STATUS#</span>'))
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(163833101712165487)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{case EOM_ORDER_STATUS/}',
'{when DS/}',
'<span style="color:red;">#EOM_ORDER_STATUS#</span>',
'{otherwise/}',
'<span style="color:green;">#EOM_ORDER_STATUS#</span>',
'{endcase/}',
'',
'class="t-Button t-Button--stretch"'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926958438519795197)
,p_db_column_name=>'AVAILABLE_PC_FBP'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Available PC/ FBP  (&APP_LOCAL_CURR_SYMBOL.)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G999G99G99G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926958651873795199)
,p_db_column_name=>'BALANCE'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Balance  (&APP_LOCAL_CURR_SYMBOL.)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G999G99G99G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(929420394540893081)
,p_db_column_name=>'INV_AMT'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Inv. Amt.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G999G99G99G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(929420439557893082)
,p_db_column_name=>'INV_AMT_FOB'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Inv. Amt. FOB'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G999G99G99G990D00'
,p_static_id=>'INV_AMT_FOB'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(929422951509893107)
,p_db_column_name=>'LOAN_AMT'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Amount Drawn  (&APP_LOCAL_CURR_SYMBOL.)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G999G99G99G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(929423072604893108)
,p_db_column_name=>'DUEDATE_CROSSED_CSS'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Duedate Crossed Css'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(862952252474072882)
,p_db_column_name=>'EOM_ENQ_ID'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Eom Enq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(862952466474072884)
,p_db_column_name=>'COLOR_STATUS_1'
,p_display_order=>210
,p_column_identifier=>'W'
,p_column_label=>'Color Status 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(862952593861072885)
,p_db_column_name=>'COLOR_STATUS_2'
,p_display_order=>220
,p_column_identifier=>'X'
,p_column_label=>'Color Status 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1302829783249838)
,p_db_column_name=>'EOM_QUOTE_IN'
,p_display_order=>230
,p_column_identifier=>'Y'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(926971795659931541)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1716227'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CM_NAME:EOM_ENQ_NO:EOM_INVOICE_NO:INV_AMT:INV_AMT_FOB:EOM_INVOICE_DATE:EOM_AVG_EXCH_RATE:EOM_BANK_DUE_DATE:EOM_OUR_DUE_DATE:EOM_ACTUAL_DUE_DATE:EOM_ORDER_STATUS:AVAILABLE_PC_FBP:LOAN_AMT:BALANCE:EOM_QUOTE_IN:'
,p_sort_column_1=>'EOM_QUOTE_IN'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'EOM_BANK_DUE_DATE'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'EOM_QUOTE_IN'
,p_break_enabled_on=>'EOM_QUOTE_IN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(862952634286072886)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(926956874721795181)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Bank Limit'' || TOTAL_BANK_LIMIT || CHR(10) || ''Amount Drawn'' || LOAN_AMT_DRAWN',
'                        || CHR(10) || ''Available Limit'' || to_char(replace(TOTAL_BANK_LIMIT,'','','''') - replace(LOAN_AMT_DRAWN,'','',''''),''99G99G99G99G990D00'') tt,  ',
'        to_char(replace(TOTAL_BANK_LIMIT,'','','''') - replace(LOAN_AMT_DRAWN,'','','''') -replace( AVAILABLE_LOAN,'','',''''),''99G99G99G99G990D00'') EXCESS_DOC_VALUE,',
'        AVAILABLE_PC',
'from (select to_char(sum(BALANCE),''99G99G99G99G990D00'')  AVAILABLE_LOAN,',
'	   to_char(sum(case when EOM_ORDER_STATUS = ''DS'' then 0 else BALANCE end),''99G99G99G99G990D00'') AVAILABLE_PC,',
'	   to_char(sum(case when EOM_ORDER_STATUS = ''DS'' then BALANCE else 0 end),''99G99G99G99G990D00'') AVAILABLE_FBP,',
'       to_char(sum(nvl(LOAN_AMT,0)) ,''99G99G99G99G990D00'') LOAN_AMT_DRAWN',
'from V_AVAILABLE_PC_FBP_RPT',
'where (BL_BM_ID is null or BL_BM_ID = :P68_BANK_ID)',
'and EOM_ORD_ACC_YEAR between :FROM_FY and :TO_FY),',
'(select to_char(BL_LIMIT,''99G99G99G99G990D00'')  TOTAL_BANK_LIMIT',
'        from V_BANK_LIMIT',
'        where BL_BM_ID = :P68_BANK_ID',
'        and trunc(sysdate) between BL_EFFECTIVE_DATE and BL_EXPIRY_DATE) TOTAL_BANK_LIMIT',
'/*',
'select :P68_TOTAL_BANK_LIMIT,',
'to_char(replace(:P68_AVAILABLE_LIMIT,'','','''') - replace(:P68_AVAILABLE_LOAN,'','',''''),''99G99G99G99G990D00''),',
':P68_AVAILABLE_PC',
'from dual',
'union all',
'select :P68_LOAN_AMT_DRAWN,(select ',
'LISTAGG(ST_NAME || '' '' || ST_CODE || '' '' || ST_EXTRA3,'' ; '')',
'from V_SETUP_TABLE ',
'where st_type= ''QUOTE_IN''',
'and ST_DISPLAY =''Y''',
'and (ST_EXTRA3 is not null or ST_EXTRA3 != 0)),:P68_AVAILABLE_FBP',
'from dual',
'union all',
'select :P68_AVAILABLE_LIMIT,:P68_AVAILABLE_LOAN,null',
'from dual*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P68_TOTAL_BANK_LIMIT,P68_AVAILABLE_LOAN,P68_AVAILABLE_PC,P68_LOAN_AMT_DRAWN,P68_AVAILABLE_FBP,P68_AVAILABLE_LIMIT,P68_EXCESS_DOC_VALUE'
,p_plug_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(862952724341072887)
,p_max_row_count=>'1000000'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>943003567727708613
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(862953267716072892)
,p_db_column_name=>'AVAILABLE_PC'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Available Pc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(862953625149072896)
,p_db_column_name=>'EXCESS_DOC_VALUE'
,p_display_order=>40
,p_column_identifier=>'I'
,p_column_label=>'Excess Doc Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(862953740698072897)
,p_db_column_name=>'TT'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Tt'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'RICH_TEXT'
,p_heading_alignment=>'LEFT'
,p_rich_text_format=>'MARKDOWN'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(954352618711971583)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1990036'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AVAILABLE_PC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(926959778912795210)
,p_plug_name=>'Sales Graph'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct CM_NAME,',
'        curr_sym || '' '' ||to_char(sum(INV_AMT) over (partition by CM_NAME),''99G99G99G99G990D00'') INV_AMT,',
'        to_char(sum(INV_AMT_INR) over (partition by CM_NAME),''99G99G99G99G990D00'') INV_AMT_INR,',
'        --sum(INV_AMT_INR) over (partition by EOM_ENQ_ID)',
'        round((sum(INV_AMT_INR) over (partition by CM_NAME)/nvl(TOTAL_INV_AMT_INR,1)) * 100,2) INV_AMT_INR_PERC',
'       -- sum(INV_AMT_INR) over (partition by CM_NAME,curr_code) INV_AMT_INR_GRAPH',
'from (',
'select EOM_ENQ_ID,',
'        CM_NAME, ',
' (nvl(EOM_TOTAL_CONTAINER_AMT,0)) INV_AMT,--,''99G99G99G99G990D00'') st_extra1 || '' '' ||',
' nvl(EOM_TOTAL_CONTAINER_AMT,0)*nvl(ST_EXTRA3,0) INV_AMT_INR, --,''99G99G99G99G990D00'')',
' nvl(ST_EXTRA1,0) curr_sym,',
' nvl(sum(nvl(EOM_TOTAL_CONTAINER_AMT,0)*nvl(ST_EXTRA3,0)) over (),1) TOTAL_INV_AMT_INR,',
' nvl(ST_CODE,0) curr_code',
'from    V_ENQUIRIES_ORDERS_MST,',
'        V_CUSTOMER_MASTER,',
'        V_SETUP_TABLE',
'where EOM_CUSTOMER_ID = CM_ID',
'and EOM_ORD_ID is not null',
'and st_type = ''QUOTE_IN''',
'and EOM_QUOTE_IN = ST_CODE',
'and eom_ord_acc_year between :FROM_FY and :TO_FY)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'FROM_FY,TO_FY'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P68_RM_NO'
,p_plug_display_when_cond2=>'RPT-010'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
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
 p_id=>wwv_flow_imp.id(926959835116795211)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>1007010678503430937
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926959946007795212)
,p_db_column_name=>'CM_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926961035849795223)
,p_db_column_name=>'INV_AMT'
,p_display_order=>120
,p_column_identifier=>'B'
,p_column_label=>'Inv. Value in FC'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G999G99G99G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(926961755244795230)
,p_db_column_name=>'INV_AMT_INR'
,p_display_order=>130
,p_column_identifier=>'C'
,p_column_label=>'INR Inv. Value'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1007749603335348081)
,p_db_column_name=>'INV_AMT_INR_PERC'
,p_display_order=>140
,p_column_identifier=>'D'
,p_column_label=>'Inv. Value in INR %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1007757763293361457)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'2524087'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CM_NAME:INV_AMT:INV_AMT_INR_PERC:INV_AMT_INR'
,p_sort_column_1=>'INV_AMT_INR_PERC'
,p_sort_direction_1=>'DESC'
,p_chart_type=>'pie'
,p_chart_label_column=>'CM_NAME'
,p_chart_value_column=>'INV_AMT_INR_PERC'
,p_chart_sorting=>'VALUE_DESC'
,p_chart_orientation=>'vertical'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1007749899233348084)
,p_plug_name=>'Exposure Report as on  &APP_SYSDATE.'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>90
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select --''Set'' || rownum || ''-'' || a.Date_Range "Date Range", a.*',
' a.*',
'from (',
'select case when to_char(nvl(eom_invoice_date,trunc(sysdate)),''dd'') between ''01'' and ''15'' then',
'            to_date(''01-''||to_char(nvl(eom_invoice_date,trunc(sysdate)),''Mon-YY'')) --|| '' - '' ||  ''15-''||to_char(nvl(eom_invoice_date,trunc(sysdate)),''Mon-YY'')',
'            else',
'            to_date(''16-''||to_char(nvl(eom_invoice_date,trunc(sysdate)),''Mon-YY'')) --|| '' - '' || ''31-''||to_char(nvl(eom_invoice_date,trunc(sysdate)),''Mon-YY'')',
'            end Date_Range,',
'            EOM_ENQ_ID,    ',
'        EOM_ENQ_NO, --OrderNo',
'        EOM_INVOICE_NO,',
'        EOM_INVOICE_DATE, --OrderDate',
'        EOM_AVG_EXCH_RATE,',
'       -- st_extra1 || '' '' ||to_char(EOM_TOTAL_CONTAINER_AMT,''99G99G99G99G990D00'') INV_AMT,',
'      --  st_extra1 || '' '' ||to_char(eod.inv_amt_fob,''99G99G99G99G990D00'') INV_AMT_FOB,',
'        case when EOM_AVG_EXCH_RATE < st_extra3 then  ''green''',
'        else  ''red''  end AVG_EXCH_RATE_COLOR, --Booking Rate',
'        CM_NAME,',
'        EOM_OUR_DUE_DATE,',
'        ST_CODE,',
'        round((EOM_TOTAL_CONTAINER_AMT - nvl(payment.opd_payment_amount,0)) ,2) balance,',
'        round((EOM_TOTAL_CONTAINER_AMT - nvl(payment.opd_payment_amount,0)) * EOM_AVG_EXCH_RATE,2) balanceinr',
'from    V_ENQUIRIES_ORDERS_MST,',
'        V_CUSTOMER_MASTER,',
'        V_SETUP_TABLE,',
'        (',
'            select nvl(sum(nvl(opd_payment_amount,0)),0) opd_payment_amount, opd_enq_id, opd_order_id',
'            from V_ORDER_PAYMENT_DETAILS',
'            group by opd_enq_id,opd_order_id',
'        ) payment',
'where EOM_CUSTOMER_ID = CM_ID',
'and EOM_ORD_ID is not null',
'and payment.opd_enq_id (+)= EOM_ENQ_ID',
'and payment.opd_order_id (+)= EOM_ORD_ID',
'and st_type = ''QUOTE_IN''',
'and EOM_QUOTE_IN = ST_CODE',
'and nvl(payment.opd_payment_amount,0)  <  EOM_TOTAL_CONTAINER_AMT',
'and eom_ord_acc_year between :FROM_FY and :TO_FY',
'order by EOM_INVOICE_DATE',
') a'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'FROM_FY,TO_FY'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P68_RM_NO'
,p_plug_display_when_cond2=>'RPT-009'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1007751801667348103)
,p_name=>'EOM_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1007751884307348104)
,p_name=>'EOM_ENQ_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Order#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_EOM_ENQ_ID:&EOM_ENQ_ID.'
,p_link_text=>'&EOM_ENQ_NO.'
,p_link_attributes=>'title="Click to view Enquiry details" target="_blank"  style="color:blue;font-weight:bold;"'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1007751963186348105)
,p_name=>'EOM_INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_INVOICE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(1007752062655348106)
,p_name=>'EOM_INVOICE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_INVOICE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Inv. Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(1007752161304348107)
,p_name=>'EOM_AVG_EXCH_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_AVG_EXCH_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Costing Ex. Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '<span style="color:&AVG_EXCH_RATE_COLOR.;font-weight:bold">&EOM_AVG_EXCH_RATE.</span>')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1007752297370348108)
,p_name=>'AVG_EXCH_RATE_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AVG_EXCH_RATE_COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1007752365408348109)
,p_name=>'CM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Customer'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1007752457812348110)
,p_name=>'EOM_OUR_DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_OUR_DUE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Our Due Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(1007752593881348111)
,p_name=>'ST_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ST_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Quote In'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>500
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1007752705858348112)
,p_name=>'BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BALANCE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Balance'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(1007752792527348113)
,p_name=>'BALANCEINR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BALANCEINR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Balance INR'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(1007752866904348114)
,p_name=>'DATE_RANGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_RANGE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Date Range'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>40
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1007751594808348101)
,p_internal_uid=>1087802438194983827
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
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
 p_id=>wwv_flow_imp.id(1024963824129492745)
,p_interactive_grid_id=>wwv_flow_imp.id(1007751594808348101)
,p_static_id=>'2696148'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>1000
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1024964079956492748)
,p_report_id=>wwv_flow_imp.id(1024963824129492745)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(834149316751435397)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1007752866904348114)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1024965505215492772)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1007751801667348103)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1024966289895492777)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1007751884307348104)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1024967186635492781)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1007751963186348105)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1024968086714492785)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1007752062655348106)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1024968961294492789)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1007752161304348107)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1024969825466492792)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1007752297370348108)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1024970773599492796)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1007752365408348109)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>242
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1024971656384492800)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1007752457812348110)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1024972548217492804)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1007752593881348111)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1024973472163492810)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1007752705858348112)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1024974332756492813)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1007752792527348113)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(834148077796421937)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(1007752705858348112)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(834148124248426096)
,p_view_id=>wwv_flow_imp.id(1024964079956492748)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(1007752792527348113)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1169552869706483898)
,p_plug_name=>'Sales Register'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>110
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
' where eom_ord_acc_year between :FROM_FY and :TO_FY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'FROM_FY,TO_FY'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P68_RM_NO'
,p_plug_display_when_cond2=>'RPT-011'
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
 p_id=>wwv_flow_imp.id(1169555330102483923)
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
,p_internal_uid=>1249606173489119649
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1169555482239483924)
,p_db_column_name=>'EOM_ENQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Eom Enq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1169555607149483925)
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
 p_id=>wwv_flow_imp.id(1169555687308483926)
,p_db_column_name=>'EOM_INVOICE_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Invoice#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1169555737301483927)
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
 p_id=>wwv_flow_imp.id(1169555878112483928)
,p_db_column_name=>'EOM_CUSTOMER_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Eom Customer Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1169556013282483929)
,p_db_column_name=>'CM_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1169556063317483930)
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
 p_id=>wwv_flow_imp.id(1189575067819568081)
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
 p_id=>wwv_flow_imp.id(1189575174643568082)
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
 p_id=>wwv_flow_imp.id(1189575285462568083)
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
 p_id=>wwv_flow_imp.id(1189575331638568084)
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
 p_id=>wwv_flow_imp.id(1189575509543568085)
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
 p_id=>wwv_flow_imp.id(1189575604771568086)
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
 p_id=>wwv_flow_imp.id(1189575711577568087)
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
 p_id=>wwv_flow_imp.id(1189575811421568088)
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
 p_id=>wwv_flow_imp.id(1189575822242568089)
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
 p_id=>wwv_flow_imp.id(1189575936999568090)
,p_db_column_name=>'EOM_ORD_ACC_YEAR'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Eom Ord Acc Year'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1189576071786568091)
,p_db_column_name=>'EOM_QUOTE_IN'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Quote In'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1189600168028569090)
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
 p_id=>wwv_flow_imp.id(357984007821227708)
,p_report_id=>wwv_flow_imp.id(1189600168028569090)
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
 p_id=>wwv_flow_imp.id(357984382335227709)
,p_report_id=>wwv_flow_imp.id(1189600168028569090)
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
 p_id=>wwv_flow_imp.id(357984830864227709)
,p_report_id=>wwv_flow_imp.id(1189600168028569090)
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
 p_id=>wwv_flow_imp.id(357985244726227709)
,p_report_id=>wwv_flow_imp.id(1189600168028569090)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30999916926007746887)
,p_plug_name=>'Hidden Items Region'
,p_region_name=>'hiddenitemreg'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(926958852109795201)
,p_plug_name=>'Update Exchange Rates'
,p_region_name=>'EXCH_RATE'
,p_parent_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ST_ID',
',ST_NAME',
',ST_CODE',
',ST_EXTRA3',
'from V_SETUP_TABLE ',
'where st_type= ''QUOTE_IN''',
'and ST_DISPLAY =''Y'''))
,p_plug_source_type=>'NATIVE_IG'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(926959056996795203)
,p_name=>'ST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ST_ID'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(926959201881795204)
,p_name=>'ST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Currency'
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
 p_id=>wwv_flow_imp.id(926959300897795205)
,p_name=>'ST_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ST_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(926959388099795206)
,p_name=>'ST_EXTRA3'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ST_EXTRA3'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Exchange Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_max_length=>2000
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
 p_id=>wwv_flow_imp.id(926959464801795207)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(926959588907795208)
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
 p_id=>wwv_flow_imp.id(926958921047795202)
,p_internal_uid=>1007009764434430928
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
,p_toolbar_buttons=>'SAVE'
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
 p_id=>wwv_flow_imp.id(926974873638965444)
,p_interactive_grid_id=>wwv_flow_imp.id(926958921047795202)
,p_static_id=>'1716258'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(926975084152965446)
,p_report_id=>wwv_flow_imp.id(926974873638965444)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(926975535554965458)
,p_view_id=>wwv_flow_imp.id(926975084152965446)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(926959056996795203)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(926976378177965471)
,p_view_id=>wwv_flow_imp.id(926975084152965446)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(926959201881795204)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(926977306877965477)
,p_view_id=>wwv_flow_imp.id(926975084152965446)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(926959300897795205)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(926978144868965480)
,p_view_id=>wwv_flow_imp.id(926975084152965446)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(926959388099795206)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(926979076019965484)
,p_view_id=>wwv_flow_imp.id(926975084152965446)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(926959464801795207)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30407530735659273570)
,p_plug_name=>'Report of &P68_RM_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001,C002,C003,C004,C005,TO_NUMBER(C006) C006,C007,C008,TO_NUMBER(C009) C009,C010,C011,C012,C013,C014,C015',
'from APEX_COLLECTIONS',
'WHERE COLLECTION_NAME= ''REPORTS'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'P68_RM_NO'
,p_plug_display_when_cond2=>'RPT-002:RPT-006'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report of &P68_RM_NAME.'
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
 p_id=>wwv_flow_imp.id(30407530832724273571)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'There are no record(s) for the selected criteria.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>30487581676110909297
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407530989253273572)
,p_db_column_name=>'C001'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&P68_C001.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c001 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407531050307273573)
,p_db_column_name=>'C002'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'&P68_C002.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c002 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407531120899273574)
,p_db_column_name=>'C003'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'&P68_C003.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c003 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407531221872273575)
,p_db_column_name=>'C004'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'&P68_C004.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c004 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407531302468273576)
,p_db_column_name=>'C005'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'&P68_C005.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c005 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407531440681273577)
,p_db_column_name=>'C006'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'&P68_C006.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c006 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407531495240273578)
,p_db_column_name=>'C007'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'&P68_C007.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c007 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407531612229273579)
,p_db_column_name=>'C008'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'&P68_C008.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c008 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407531764550273580)
,p_db_column_name=>'C009'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'&P68_C009.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c009 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407531878393273581)
,p_db_column_name=>'C010'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'&P68_C010.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c010 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407531923763273582)
,p_db_column_name=>'C011'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'&P68_C011.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c011 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407532005948273583)
,p_db_column_name=>'C012'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'&P68_C012.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c012 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407532124120273584)
,p_db_column_name=>'C013'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'&P68_C013.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c013 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407532199611273585)
,p_db_column_name=>'C014'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'&P68_C014.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c014 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407532327667273586)
,p_db_column_name=>'C015'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'&P68_C015.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c015 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30407570273539414116)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'2979693'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'C001:C002:C003:C004:C005:C006:C007:C008:C009:C010:C011:C012:C013:C014:C015'
,p_sort_column_1=>'C001'
,p_sort_direction_1=>'ASC'
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
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(909556053118383132)
,p_report_id=>wwv_flow_imp.id(30407570273539414116)
,p_pivot_columns=>'C001:C003'
,p_row_columns=>'C005'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(358004395822227740)
,p_pivot_id=>wwv_flow_imp.id(909556053118383132)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'C006'
,p_db_column_name=>'PFC1'
,p_column_label=>'Expense Amount'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30407532489264273587)
,p_plug_name=>'Report of &P68_RM_NAME.'
,p_parent_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C001,C002,C003,C004,C005,C006,C007,C008,C009,C010,C011,C012,C013,C014,C015',
'from APEX_COLLECTIONS',
'WHERE COLLECTION_NAME= ''REPORTS'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'P68_RM_NO'
,p_plug_display_when_cond2=>'RPT-002:RPT-006:RPT-008:RPT-010:RPT-009:RPT-012::RPT-011'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report of &P68_RM_NAME.'
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
 p_id=>wwv_flow_imp.id(30407532551170273588)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'HTML:CSV'
,p_enable_mail_download=>'N'
,p_owner=>'RANU'
,p_internal_uid=>30487583394556909314
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407532694198273589)
,p_db_column_name=>'C001'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&P68_C001.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c001 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407532786433273590)
,p_db_column_name=>'C002'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'&P68_C002.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c002 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407532845314273591)
,p_db_column_name=>'C003'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'&P68_C003.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c003 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407532910576273592)
,p_db_column_name=>'C004'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'&P68_C004.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c004 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407533053030273593)
,p_db_column_name=>'C005'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'&P68_C005.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c005 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407533146248273594)
,p_db_column_name=>'C006'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'&P68_C006.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c006 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407533200333273595)
,p_db_column_name=>'C007'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'&P68_C007.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c007 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407533338278273596)
,p_db_column_name=>'C008'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'&P68_C008.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c008 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407533433926273597)
,p_db_column_name=>'C009'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'&P68_C009.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c009 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407533572195273598)
,p_db_column_name=>'C010'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'&P68_C010.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c010 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407533687898273599)
,p_db_column_name=>'C011'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'&P68_C011.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c011 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407533701941273600)
,p_db_column_name=>'C012'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'&P68_C012.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c012 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407533887562273601)
,p_db_column_name=>'C013'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'&P68_C013.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c013 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407533957878273602)
,p_db_column_name=>'C014'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'&P68_C014.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c014 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30407534092533273603)
,p_db_column_name=>'C015'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'&P68_C015.'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from   apex_collections',
'where  collection_name = ''REPORTS''',
'and    c015 is not null '))
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(30407606148612620206)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'2980052'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'C001:C002:C003:C004:C005:C006:C008:C009:C007:'
,p_count_columns_on_break=>'C001'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(894180698629534709)
,p_report_id=>wwv_flow_imp.id(30407606148612620206)
,p_pivot_columns=>'C001:C003'
,p_row_columns=>'C005'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(358010641745227747)
,p_pivot_id=>wwv_flow_imp.id(894180698629534709)
,p_display_seq=>1
,p_function_name=>'COUNT'
,p_column_name=>'C006'
,p_db_column_name=>'PFC1'
,p_column_label=>'Expense Amount'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32590331757774996990)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	v_select_clause		varchar2(4000);',
'	v_from_clause		varchar2(4000);',
'	v_where_clause		varchar2(4000);',
'    q varchar2(4000);',
'begin',
'	select listagg(RH_NAME || '' "'' || RH_NAME , ''" , '') || ''"''',
'	into v_select_clause',
'	from V_REPORT_HEADINGS',
'	where RH_RM_NO = :P68_RM_NO',
'   -- and    RH_ID = 1',
'	order by RH_DISPLAY_ORDER;',
'',
'	select RM_CODE_NAME',
'	into v_from_clause',
'	from V_REPORT_MASTER',
'	where RM_NO = :P68_RM_NO',
'	and RM_CODE_TYPE = ''VIEW'';',
'',
'	select listagg(RP_PARAM_FIELD || '' '' || RP_OPERATOR || '' :'' || RP_NAME, '' AND '')',
'	into v_where_clause',
'	from V_REPORT_PARAMETERS',
'	where RP_RM_NO = :P68_RM_NO',
'	order by RP_DISP_ORDER;',
'	',
'	q:= ''SELECT '' || v_select_clause || '' '' ||',
'			''FROM ''|| v_from_clause ;',
'          --  || '' '' ||	''WHERE ''|| v_where_clause;',
'          ',
'          insert into error_log (el_text) values (q);',
'    return q;',
'',
'exception when others then',
' return ''SELECT null INVOICE_DATE,',
'null HSN_CODE,',
'null PRODUCT_NAME,',
'null AMOUNT_FOB_RS,',
'null AMOUNT_FOB_DOLLAR FROM DUAL'';',
'',
'end;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	v_select_clause		varchar2(4000);',
'	v_from_clause		varchar2(4000);',
'	v_where_clause		varchar2(4000);',
'    q varchar2(4000);',
'begin',
'	select listagg(RH_NAME || '' "'' || RH_DISPLAY_NAME , ''" , '') || ''"''',
'	into v_select_clause',
'	from V_REPORT_HEADINGS',
'	where RH_RM_NO = :P68_RM_NO',
'   -- and    RH_ID = 1',
'	order by RH_DISPLAY_ORDER;',
'',
'	select RM_CODE_NAME',
'	into v_from_clause',
'	from V_REPORT_MASTER',
'	where RM_NO = :P68_RM_NO',
'	and RM_CODE_TYPE = ''VIEW'';',
'',
'	select listagg(RP_PARAM_FIELD || '' '' || RP_OPERATOR || '' :'' || RP_NAME, '' AND '')',
'	into v_where_clause',
'	from V_REPORT_PARAMETERS',
'	where RP_RM_NO = :P68_RM_NO',
'	order by RP_DISP_ORDER;',
'	',
'	q:= ''SELECT '' || v_select_clause || '' '' ||',
'			''FROM ''|| v_from_clause ;',
'          --  || '' '' ||	''WHERE ''|| v_where_clause;',
'          ',
'          insert into error_log (el_text) values (q);',
'    return q;',
'',
'exception when others then',
' --return ''SELECT  2 FROM DUAL'';',
' return null;',
'end;'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(32590347112589233316)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RAHUL'
,p_internal_uid=>32670397955975869042
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32590347239584233317)
,p_db_column_name=>'INVOICE_DATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Invoice Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32590347374376233318)
,p_db_column_name=>'HSN_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Hsn Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32590347457109233319)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32590347583187233320)
,p_db_column_name=>'AMOUNT_FOB_RS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Amount Fob Rs'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32590347652694233321)
,p_db_column_name=>'AMOUNT_FOB_DOLLAR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Amount Fob Dollar'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32590384807882539991)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'265416'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'INVOICE_DATE:HSN_CODE:PRODUCT_NAME:AMOUNT_FOB_RS:AMOUNT_FOB_DOLLAR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(357985964973227710)
,p_button_sequence=>280
,p_button_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--large:t-Button--iconLeft:t-Button--hoverIconPush:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_icon_css_classes=>'fa-window-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(357986453886227712)
,p_button_sequence=>290
,p_button_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--large:t-Button--danger:t-Button--simple:t-Button--iconLeft:t-Button--hoverIconPush:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Clear'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-times-square-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(357986693794227713)
,p_button_sequence=>300
,p_button_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_button_name=>'UPDATE_EXCHANGE_RATE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--large:t-Button--iconLeft:t-Button--hoverIconPush:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Exch. Rate'
,p_button_redirect_url=>'javascript:openModal(''EXCH_RATE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P68_RM_NO'
,p_button_condition2=>'RPT-008:RPT-010'
,p_button_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_icon_css_classes=>'fa-exchange'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(357987126142227714)
,p_button_sequence=>310
,p_button_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Print'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(358018827141227774)
,p_branch_name=>'Submit'
,p_branch_action=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(357985964973227710)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(862969874334073026)
,p_name=>'P68_EXCH_RATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(926956874721795181)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Exchange Rate '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'LISTAGG(ST_CODE || '' - '' || ST_EXTRA3, CHR(10) )',
'from V_SETUP_TABLE ',
'where st_type= ''QUOTE_IN''',
'and ST_DISPLAY =''Y''',
'and (ST_EXTRA3 is not null or ST_EXTRA3 != 0)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(862994181131073070)
,p_name=>'FY'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select AS_GOVT_FY',
'from V_ACCOUNTING_SETUP ',
'where trunc(sysdate) between AS_OPEN_DATE and AS_CLOSE_DATE'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Financial Year'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct AS_GOVT_FY d,AS_GOVT_FY r',
'from V_ACCOUNTING_SETUP ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select FY -'
,p_cSize=>30
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM V_REPORT_PARAMETERS',
'WHERE RP_RM_NO = :P68_RM_NO',
'AND RP_NAME = ''FROM_FY'''))
,p_display_when_type=>'EXISTS'
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
 p_id=>wwv_flow_imp.id(926995327608795335)
,p_name=>'P68_BANK_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select bm_id',
' from V_BANK_MASTER',
'where rownum =1'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Bank'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_BANK'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BM_NAME  d, BM_ID r',
'from V_BANK_MASTER',
'where nvl(BM_ACTIVE_YN,''Y'') = ''Y'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Bank -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when=>'P68_RM_NO'
,p_display_when2=>'RPT-008'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(929436741768893212)
,p_name=>'P68_TOTAL_BANK_LIMIT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(926956874721795181)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Bank Limit (&APP_LOCAL_CURR_SYMBOL.)'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(BL_LIMIT,''99G99G99G99G990D00'')  TOTAL_BANK_LIMIT',
'        from V_BANK_LIMIT',
'        where BL_BM_ID = :P68_BANK_ID',
'        and trunc(sysdate) between BL_EFFECTIVE_DATE and BL_EXPIRY_DATE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(929437112244893216)
,p_name=>'P68_LOAN_AMT_DRAWN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(926956874721795181)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount Drawn (&APP_LOCAL_CURR_SYMBOL.)'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(sum(nvl(LOAN_AMT,0)) ,''99G99G99G99G990D00'') LOAN_AMT_DRAWN',
'from V_AVAILABLE_PC_FBP_RPT',
'where (BL_BM_ID is null or BL_BM_ID = :P68_BANK_ID)',
'and EOM_ORD_ACC_YEAR between :FROM_FY and :TO_FY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(929437244239893217)
,p_name=>'P68_AVAILABLE_LIMIT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(926956874721795181)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Available Limit (&APP_LOCAL_CURR_SYMBOL.)'
,p_source=>'to_char(to_number(replace(:P68_TOTAL_BANK_LIMIT,'','','''')) - to_number(replace(:P68_LOAN_AMT_DRAWN,'','','''')),''99G99G99G99G990D00'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(929437285030893218)
,p_name=>'P68_AVAILABLE_LOAN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(926956874721795181)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Available Loan (&APP_LOCAL_CURR_SYMBOL.)'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(sum(BALANCE),''99G99G99G99G990D00'')  AVAILABLE_LOAN',
'from V_AVAILABLE_PC_FBP_RPT',
'where (BL_BM_ID is null or BL_BM_ID = :P68_BANK_ID)',
'and EOM_ORD_ACC_YEAR between :FROM_FY and :TO_FY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(929437522963893220)
,p_name=>'P68_EXCESS_DOC_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(926956874721795181)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Excess Doc. Value (&APP_LOCAL_CURR_SYMBOL.)'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(replace(:P68_TOTAL_BANK_LIMIT,'','','''')-sum(nvl(LOAN_AMT,0))-sum(BALANCE),''99G99G99G99G990D00'')',
'from V_AVAILABLE_PC_FBP_RPT',
'where (BL_BM_ID is null or BL_BM_ID = :P68_BANK_ID)',
'and EOM_ORD_ACC_YEAR between :FROM_FY and :TO_FY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(929437577138893221)
,p_name=>'P68_AVAILABLE_PC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(926956874721795181)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Available PC (&APP_LOCAL_CURR_SYMBOL.)'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'	   to_char(sum(case when EOM_ORDER_STATUS = ''DS'' then 0 else BALANCE end),''99G99G99G99G990D00'') AVAILABLE_PC',
'from V_AVAILABLE_PC_FBP_RPT',
'where (BL_BM_ID is null or BL_BM_ID = :P68_BANK_ID)',
'and EOM_ORD_ACC_YEAR between :FROM_FY and :TO_FY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(929437663150893222)
,p_name=>'P68_AVAILABLE_FBP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(926956874721795181)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Available FBP (&APP_LOCAL_CURR_SYMBOL.)'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	   to_char(sum(case when EOM_ORDER_STATUS = ''DS'' then BALANCE else 0 end),''99G99G99G99G990D00'') AVAILABLE_FBP',
'from V_AVAILABLE_PC_FBP_RPT',
'where (BL_BM_ID is null or BL_BM_ID = :P68_BANK_ID)',
'and EOM_ORD_ACC_YEAR between :FROM_FY and :TO_FY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1007780684905348254)
,p_name=>'P68_EXCH_RATE_EXP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1007749899233348084)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Exchange Rate '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'LISTAGG(ST_CODE || '' - '' || to_char(ST_EXTRA3,''99G99G99G99G990D00''), CHR(10) )',
'from V_SETUP_TABLE ',
'where st_type= ''QUOTE_IN''',
'and ST_DISPLAY =''Y''',
'and (ST_EXTRA3 is not null or ST_EXTRA3 != 0)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1007780777156348255)
,p_name=>'P68_AVG_EXCH_RATE_EXP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1007749899233348084)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Costing Avg. Exchange Rate '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   --round(avg( EOM_AVG_EXCH_RATE),2) costing_avg_exchrate,',
'        LISTAGG(case when nvl(round(avg( EOM_AVG_EXCH_RATE),2),0) <  nvl(ST_EXTRA3,0) then ',
'          ST_CODE || '' - <span style ="color:green">'' || to_char(round(avg( EOM_AVG_EXCH_RATE),2),''99G99G99G99G990D00'') || ''</span>''  ',
'     else ST_CODE || '' - <span style ="color:red">'' || to_char(round(avg( EOM_AVG_EXCH_RATE),2),''99G99G99G99G990D00'') || ''</span>'' ',
'     end,''<br/>'') costing_avg_exchrate',
'from    V_ENQUIRIES_ORDERS_MST,',
'        V_SETUP_TABLE,',
'        (',
'            select nvl(sum(nvl(opd_payment_amount,0)),0) opd_payment_amount, opd_enq_id, opd_order_id',
'            from V_ORDER_PAYMENT_DETAILS',
'            group by opd_enq_id,opd_order_id',
'        ) payment',
'where EOM_ORD_ID is not null',
'and payment.opd_enq_id (+)= EOM_ENQ_ID',
'and payment.opd_order_id (+)= EOM_ORD_ID',
'and st_type = ''QUOTE_IN''',
'and EOM_QUOTE_IN = ST_CODE',
'and nvl(payment.opd_payment_amount,0)  <  EOM_TOTAL_CONTAINER_AMT',
'and eom_ord_acc_year between :FROM_FY and :TO_FY',
'group by ST_CODE,ST_EXTRA3'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--boldDisplay'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1007787992464348235)
,p_name=>'P68_RM_CATEGORY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_prompt=>'Category'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select RM_CATEGORY d, RM_CATEGORY r',
'from (select distinct RM_CATEGORY  ',
'from V_REPORT_MASTER',
'where instr(:APP_USER_ROLE,RM_ROLE) > 0',
')',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(32357284283591511423)
,p_name=>'P68_RM_NAME'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select RM_NAME',
'from V_REPORT_MASTER',
'where RM_NO= :P68_RM_NO'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32357284337214511424)
,p_name=>'CUSTOMER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CUSTOMER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cm_name as d,',
'       cm_id as r',
'  from V_CUSTOMER_MASTER',
' where nvl(cm_active,''Y'') = ''Y''',
' order by 1'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM V_REPORT_PARAMETERS',
'WHERE RP_RM_NO = :P68_RM_NO',
'AND RP_NAME = ''CUSTOMER'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609122147107268652
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
 p_id=>wwv_flow_imp.id(32357284405167511425)
,p_name=>'PRODUCT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_prompt=>'Product'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_PRODUCT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pm_brand || '' '' || replace(pm_name,pm_brand,'''') || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT as d,',
'       pm_id as r',
'  from V_PRODUCT_MASTER',
' where nvl(pm_active,''Y'') = ''Y''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Product -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM V_REPORT_PARAMETERS',
'WHERE RP_RM_NO = :P68_RM_NO',
'AND RP_NAME = ''PRODUCT'''))
,p_display_when_type=>'EXISTS'
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
 p_id=>wwv_flow_imp.id(32589269908321833880)
,p_name=>'P68_RM_NO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select RM_NO',
'from V_REPORT_MASTER',
'where RM_CODE_TYPE = ''VIEW''',
'and RM_CATEGORY = :P68_RM_CATEGORY',
'and rownum = 1'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Report'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select RM_NAME, RM_NO',
'from V_REPORT_MASTER',
'where RM_CODE_TYPE = ''VIEW''',
'and RM_CATEGORY = :P68_RM_CATEGORY',
'and nvl(RM_ACTIVE,''Y'') = ''Y'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Report -'
,p_lov_cascade_parent_items=>'P68_RM_CATEGORY'
,p_ajax_items_to_submit=>'P68_RM_CATEGORY'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590430357690047641)
,p_name=>'P68_C001'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590430467515047642)
,p_name=>'P68_C002'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590430509845047643)
,p_name=>'P68_C003'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590430654224047644)
,p_name=>'P68_C004'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590430734966047645)
,p_name=>'P68_C005'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590430853305047646)
,p_name=>'P68_C006'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590430935465047647)
,p_name=>'P68_C007'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590431052686047648)
,p_name=>'P68_C008'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590431084178047649)
,p_name=>'P68_C009'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590431249132047650)
,p_name=>'P68_C010'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590431368730047651)
,p_name=>'P68_C011'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590431442862047652)
,p_name=>'P68_C012'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590431539701047653)
,p_name=>'P68_C013'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590431591363047654)
,p_name=>'P68_C014'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590431682031047655)
,p_name=>'P68_C015'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590545236936765549)
,p_name=>'FROM_FY'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_prompt=>'From Financial Year-Month'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select --regexp_replace(AS_YEAR_MONTH, ''([0-9]{4})([0-9]{2})'', ''\1-\2'')  d',
'        to_char(AS_OPEN_DATE,''Mon-YYYY'')  d',
'        , AS_YEAR_MONTH r',
'from V_ACCOUNTING_SETUP',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select From Year-Month -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM V_REPORT_PARAMETERS',
'WHERE RP_RM_NO = :P68_RM_NO',
'AND RP_NAME = ''FROM_FY'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609122147107268652
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
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select substr(AS_GOVT_FY,1,4) || ''04'' ',
'from V_ACCOUNTING_SETUP ',
'where trunc(sysdate) between AS_OPEN_DATE and AS_CLOSE_DATE'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32590545530383767073)
,p_name=>'TO_FY'
,p_is_required=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(30999916926007746887)
,p_prompt=>'To Financial Year-Month'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select --regexp_replace(AS_YEAR_MONTH, ''([0-9]{4})([0-9]{2})'', ''\1-\2'') d',
'      to_char(AS_OPEN_DATE,''Mon-YYYY'')  d',
'    , AS_YEAR_MONTH r',
'from V_ACCOUNTING_SETUP',
'where AS_YEAR_MONTH  >= :FROM_FY',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select To Year-Month -'
,p_lov_cascade_parent_items=>'FROM_FY'
,p_ajax_items_to_submit=>'FROM_FY'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM V_REPORT_PARAMETERS',
'WHERE RP_RM_NO = :P68_RM_NO',
'AND RP_NAME = ''TO_FY'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609122147107268652
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
,p_item_comment=>'TO_CHAR(SYSDATE,''YYYYMM'')'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(358011305463227762)
,p_validation_name=>'Customer Required'
,p_validation_sequence=>10
,p_validation=>'CUSTOMER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select Customer.'
,p_always_execute=>'Y'
,p_validation_condition=>'P68_RM_NO'
,p_validation_condition2=>'RPT-002'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_imp.id(357985964973227710)
,p_associated_item=>wwv_flow_imp.id(32357284337214511424)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(358013202384227765)
,p_name=>'Clear CustomerAndProduct'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(357986453886227712)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(358013711323227768)
,p_event_id=>wwv_flow_imp.id(358013202384227765)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'CUSTOMER,PRODUCT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(358014231664227769)
,p_event_id=>wwv_flow_imp.id(358013202384227765)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(358014612285227769)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(926956874721795181)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(358015062011227770)
,p_event_id=>wwv_flow_imp.id(358014612285227769)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_CSS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_AVAILABLE_LIMIT'
,p_attribute_01=>'GreenColour'
,p_attribute_02=>'color:green'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(358015519763227770)
,p_name=>'ColorCodeGreen'
,p_event_sequence=>30
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'($v("P68_EXCESS_DOC_VALUE").trim()).charAt(0)=="-" ||   /*Excess Doc Negative green*/',
'($v("P68_AVAILABLE_LIMIT").trim()).charAt(0)!="-"  /*Avail Limit Positive green*/'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(358016501006227771)
,p_event_id=>wwv_flow_imp.id(358015519763227770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_CSS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_EXCESS_DOC_VALUE,P68_AVAILABLE_LIMIT,P68_AVAILABLE_FBP,P68_AVAILABLE_PC'
,p_attribute_01=>'color'
,p_attribute_02=>'green'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(358015978039227771)
,p_event_id=>wwv_flow_imp.id(358015519763227770)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_EXCESS_DOC_VALUE,P68_AVAILABLE_LIMIT,P68_AVAILABLE_FBP,P68_AVAILABLE_PC,P68_LOAN_AMT_DRAWN'
,p_attribute_01=>'u-textEnd'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(358016897357227771)
,p_name=>'Print Report'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(357987126142227714)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(358017395409227772)
,p_event_id=>wwv_flow_imp.id(358016897357227771)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//// Collapse Left Navigation Bar If It Was Expanded ////',
'',
'var navCollapsed = 0;',
'if ($("body").hasClass("js-navExpanded")) {',
'    $("#t_Button_navControl").click();',
'    navCollapsed = 1;',
'};',
'setTimeout(3000);',
'',
'',
'',
'//////// Hide ////////',
'',
'//Hide Navigation Bar List',
'$("#t_Header").hide();',
'',
'//Hide Navigation Menu',
'$("#t_Body_nav").hide();',
'',
'//Hide Breadcrumb',
'$("#t_Body_title").hide();',
'',
'//Hide Content Offset',
'$("#t_Body_content_offset").hide();',
'',
'//Hide Interactive Report Search Bar',
'$(".a-IRR-toolbar").hide();',
'',
'//Hide Report Link Column Header',
'$("#LINK").hide();',
'',
'//Hide Report Link Column Elements',
'$(''td[headers="LINK"]'').hide();',
'',
'//Hide Buttons',
'$(".t-Button").hide();',
'',
'//Hide Footer',
'$(".t-Footer").hide();',
'',
'//Hide Select lists',
'//$(".selectlist").hide();',
'//$(".t-Form-label").hide();',
'$("#hiddenitemreg").hide();',
'',
'//////// Browser Print ////////',
'window.print();',
'',
'',
'',
'//////// Show ////////',
'',
'//Show Navigation Bar List',
'$("#t_Header").show();',
'',
'//Show Navigation Menu',
'$("#t_Body_nav").show();',
'',
'//Show Breadcrumb',
'$("#t_Body_title").show();',
'',
'//Show Content Offset',
'$("#t_Body_content_offset").show();',
'',
'//Show Interactive Report Search Bar',
'$(".a-IRR-toolbar").show();',
'',
'//Show Report Link Column Header',
'$("#LINK").show();',
'',
'//Show Report Link Column Elements',
'$(''td[headers="LINK"]'').show();',
'',
'//Show Buttons',
'$(".t-Button").show();',
'',
'//Show Footer',
'$(".t-Footer").show();',
'',
'//Hide Select lists',
'//$(".selectlist").show();',
'//$(".t-Form-label").show();',
'$("#hiddenitemreg").show();',
'',
'//// Expand Left Navigation Bar If It Was Colapsed ////',
'if ( navCollapsed == 1 ) {',
'    $("#t_Button_navControl").click();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(358017789808227772)
,p_name=>'AssignFromToFY'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'FY'
,p_condition_element=>'FY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(358018309106227773)
,p_event_id=>wwv_flow_imp.id(358017789808227772)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'FROM_FY,TO_FY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select min(AS_YEAR_MONTH),max(AS_YEAR_MONTH)',
'from V_ACCOUNTING_SETUP',
'where AS_GOVT_FY =:FY',
'order by 2;'))
,p_attribute_07=>'FY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(358011601012227763)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select TOTAL_BANK_LIMIT ,',
'     LOAN_AMT_DRAWN,',
'     to_char(replace(TOTAL_BANK_LIMIT,'','','''') - replace(LOAN_AMT_DRAWN,'','',''''),''99G99G99G99G990D00'') AVAILABLE_LIMIT,  ',
'     to_char(replace(TOTAL_BANK_LIMIT,'','','''') - replace(LOAN_AMT_DRAWN,'','','''') -replace( AVAILABLE_LOAN,'','',''''),''99G99G99G99G990D00'') EXCESS_DOC_VALUE,',
'      AVAILABLE_LOAN,',
'        AVAILABLE_PC,',
'        AVAILABLE_FBP',
'       into :P68_TOTAL_BANK_LIMIT,:P68_LOAN_AMT_DRAWN,:P68_AVAILABLE_LIMIT,',
'	   :P68_EXCESS_DOC_VALUE,:P68_AVAILABLE_LOAN,:P68_AVAILABLE_PC,:P68_AVAILABLE_FBP',
'from (select to_char(sum(BALANCE),''99G99G99G99G990D00'')  AVAILABLE_LOAN,',
'	   to_char(sum(case when EOM_ORDER_STATUS = ''DS'' then 0 else BALANCE end),''99G99G99G99G990D00'') AVAILABLE_PC,',
'	   to_char(sum(case when EOM_ORDER_STATUS = ''DS'' then BALANCE else 0 end),''99G99G99G99G990D00'') AVAILABLE_FBP,',
'       to_char(sum(nvl(LOAN_AMT,0)) ,''99G99G99G99G990D00'') LOAN_AMT_DRAWN',
'from V_AVAILABLE_PC_FBP_RPT',
'where (BL_BM_ID is null or BL_BM_ID = :P68_BANK_ID)',
'and EOM_ORD_ACC_YEAR between :FROM_FY and :TO_FY),',
'(select to_char(BL_LIMIT,''99G99G99G99G990D00'')  TOTAL_BANK_LIMIT',
'        from V_BANK_LIMIT',
'        where BL_BM_ID = :P68_BANK_ID',
'        and trunc(sysdate) between BL_EFFECTIVE_DATE and BL_EXPIRY_DATE) TOTAL_BANK_LIMIT;',
'exception when others then',
' :P68_TOTAL_BANK_LIMIT := '''';',
' :P68_LOAN_AMT_DRAWN:= '''';',
' :P68_AVAILABLE_LIMIT:= '''';',
'	   :P68_EXCESS_DOC_VALUE:= '''';',
'       :P68_AVAILABLE_LOAN:= '''';',
'       :P68_AVAILABLE_PC:= '''';',
'       :P68_AVAILABLE_FBP:= '''';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>438062444398863489
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(357998355449227729)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(926958852109795201)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Update Exchange Rates - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>438049198835863455
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(358012046919227763)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Report Data using Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    --v_query varchar2(4000);',
'    --v_var_names apex_application_global.vc_arr2;',
'    --v_va_val apex_application_global.vc_arr2;',
'        v_RM_CODE_NAME varchar(4000);',
'BEGIN',
'	select RM_CODE_NAME',
'	into v_RM_CODE_NAME',
'	from V_REPORT_MASTER',
'	where RM_NO = :P68_RM_NO ',
'    and RM_TYPE = ''REPORT''',
'	and RM_CODE_TYPE = ''VIEW'';',
'    ',
'    if v_RM_CODE_NAME is not null then',
'        	IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''REPORTS'' ) ',
'        	THEN',
'        	APEX_COLLECTION.DELETE_COLLECTION (p_collection_name => ''REPORTS'');',
'        	END IF;',
'            ',
'            --v_query := fn_reports (:P68_RM_NO);',
'            ',
'            ',
'            --v_var_names := apex_util.string_to_table(''FROM_FY:TO_FY'');',
'            --v_va_val    := apex_util.string_to_table(''202010:202010'');',
'            ',
'            ',
'        	apex_collection.CREATE_COLLECTION_FROM_QUERY',
'            ( p_collection_name => ''REPORTS''',
'            , p_query           => fn_reports (:P68_RM_NO)',
'            --, p_names           => v_var_names',
'            --, p_values          => v_va_val',
'            );',
'    end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P68_RM_NO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>438062890305863489
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_query varchar2(4000);',
'    v_var_names apex_application_global.vc_arr2;',
'    v_va_val apex_application_global.vc_arr2;',
'    ',
'BEGIN',
'	IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''REPORTS'' ) ',
'	THEN',
'	APEX_COLLECTION.DELETE_COLLECTION (p_collection_name => ''REPORTS'');',
'	END IF;',
'    ',
'    v_query := fn_reports (:P68_RM_NO);',
'    ',
'    ',
'    v_var_names := apex_util.string_to_table(''FROM_FY:TO_FY'');',
'    v_va_val    := apex_util.string_to_table(''202010:202010'');',
'    ',
'    insert into error_log (el_text) values (v_query);',
'commit;',
'    ',
'	apex_collection.CREATE_COLLECTION_FROM_QUERY_B',
'    ( p_collection_name => ''REPORTS''',
'    , p_query           => v_query',
'    , p_names           => v_var_names',
'    , p_values          => v_va_val',
'    );',
'END;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(358012775582227764)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Report Data when no Report selected'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''REPORTS'' ) ',
'	THEN',
'	APEX_COLLECTION.TRUNCATE_COLLECTION (p_collection_name => ''REPORTS'');',
'	END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P68_RM_NO'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>438063618968863490
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(358012387941227764)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Report Headers'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  cursor c_columns',
'  is',
'    select RH_DISPLAY_NAME column_name ',
'    from   V_REPORT_HEADINGS',
'    where  RH_RM_NO = :P68_RM_NO',
'    order by RH_DISPLAY_ORDER;',
'  ',
'',
' type column_rec is TABLE OF V_REPORT_HEADINGS.RH_DISPLAY_NAME%type;',
' t_columns column_rec;',
' ',
'begin ',
'  open  c_columns;',
'  fetch c_columns bulk collect into t_columns;',
'  close c_columns;',
'  ',
'  for i in 1 .. t_columns.count',
'  loop',
'      insert into error_log(el_text) values (''P68_C0''|| lpad(i,2,0));',
'    apex_util.set_session_state( p_name  => ''P68_C0''|| lpad(i,2,0)',
'                               , p_value => t_columns(i)',
'                               );',
'  end loop;',
'  ',
'  exception when others',
'  then',
'    if c_columns%isopen',
'    then',
'      close c_columns;',
'    end if;',
'end;  '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>438063231327863490
);
wwv_flow_imp.component_end;
end;
/
