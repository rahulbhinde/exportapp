prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_name=>'Inward Details'
,p_step_title=>'Inward Details'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-GV-header, .a-GV-headerGroup',
'{',
'height:50px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142694785516284353)
,p_plug_name=>'Inward Master'
,p_region_name=>'V_INWARD_MASTER'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IM_ID,',
'       IM_INWARD_NO,',
'       IM_INWARD_DATE,',
'       IM_DELIVERY_DATE,',
'       IM_CREATED_BY,',
'       IM_CREATED_ON,',
'       IM_UPDATED_BY,',
'       IM_UPDATED_ON,',
'       IM_STATUS,',
'       IM_ORD_STOCK_FLAG',
'  from V_INWARD_MASTER',
'where nvl(IM_STATUS,''IP'') != ''CO'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'IM_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28152239310058992)
,p_name=>'IM_ORD_STOCK_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_ORD_STOCK_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Ordered Stock Flag ?'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30621381686625309)
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125659694056889690)
,p_name=>'IM_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125659776876889691)
,p_name=>'IM_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Updated On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142696534336284388)
,p_name=>'IM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_ID'
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
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_IM_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142697217187284392)
,p_name=>'IM_INWARD_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_INWARD_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Inward #'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(142697736418284393)
,p_name=>'IM_INWARD_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_INWARD_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Inward Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(142698413690284394)
,p_name=>'IM_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_DELIVERY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Delivery Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(142698948715284396)
,p_name=>'IM_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_USER'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142699589698284396)
,p_name=>'IM_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'SYSDATE'
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142702481890317604)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142702599105317605)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142801880674323615)
,p_name=>'IM_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(142946820452443213)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'-- Select Status --'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'IP'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(142695329465284364)
,p_internal_uid=>5984299696849666
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(142695692337284370)
,p_interactive_grid_id=>wwv_flow_imp.id(142695329465284364)
,p_static_id=>'123143'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(142695732386284370)
,p_report_id=>wwv_flow_imp.id(142695692337284370)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30271908165635771)
,p_view_id=>wwv_flow_imp.id(142695732386284370)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(28152239310058992)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>124
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125670882142918132)
,p_view_id=>wwv_flow_imp.id(142695732386284370)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(125659694056889690)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125671302187918135)
,p_view_id=>wwv_flow_imp.id(142695732386284370)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(125659776876889691)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142696943755284392)
,p_view_id=>wwv_flow_imp.id(142695732386284370)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(142696534336284388)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142697621489284392)
,p_view_id=>wwv_flow_imp.id(142695732386284370)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(142697217187284392)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142698201523284394)
,p_view_id=>wwv_flow_imp.id(142695732386284370)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(142697736418284393)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142698800275284396)
,p_view_id=>wwv_flow_imp.id(142695732386284370)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(142698413690284394)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142699341000284396)
,p_view_id=>wwv_flow_imp.id(142695732386284370)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(142698948715284396)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142699967233284397)
,p_view_id=>wwv_flow_imp.id(142695732386284370)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(142699589698284396)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142719485402422574)
,p_view_id=>wwv_flow_imp.id(142695732386284370)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(142702481890317604)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142951663770489484)
,p_view_id=>wwv_flow_imp.id(142695732386284370)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(142801880674323615)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142702770261317607)
,p_plug_name=>'Inward Details'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_ID,',
'  ID_IM_ID,',
'  ID_SUPM_ID,',
'  ID_PRODUCT_ID,',
'  ID_PO_ID,',
'  ID_ORD_ID,',
'  ID_QTY_ORDERED,',
'  ID_QTY_RECEIVED,',
'  ID_BATCH_NO,',
'  ID_PACKING_DATE,',
'  ID_EXPIRY_DATE,',
'  ID_LENGTH,',
'  ID_BREADTH,',
'  ID_HEIGHT,',
'  ID_PKG,',
'  ID_PKG1,',
'  ID_PKG1_UNIT,',
'  ID_PKG2,',
'  ID_PKG2_UNIT,',
'  ID_GROSS_WEIGHT,',
'  ID_QUALITY,',
'  ID_REMARKS,',
'  ID_CREATED_BY,',
'  ID_CREATED_ON,',
'  ID_UPDATED_BY,',
'  ID_UPDATED_ON',
'FROM V_INWARD_DETAILS ;'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(142694785516284353)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125659886403889692)
,p_name=>'ID_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125659900333889693)
,p_name=>'ID_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Updated On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142702941225317609)
,p_name=>'ID_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_ID_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142703055315317610)
,p_name=>'ID_IM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_IM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(142696534336284388)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142703207388317611)
,p_name=>'ID_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select  PM_NAME || '' '' ||   PM_PACKAGE_1 ||'' '' || PM_PRODUCT_UNIT  || '' x '' ||   PM_PACKAGE_2 || '' '' ||  PM_PACKAGE_UNIT product, PM_ID',
'  from V_PURCHASE_ORDER_MASTER, V_PURCHASE_ORDER_DETAILS, V_ENQUIRIES_ORDERS_DETAILS, V_ENQUIRIES_ORDERS_MST,V_PRODUCT_MASTER',
'  where pom_id = POD_POM_ID',
'  and eod_product_id = pod_product_id',
'  and eom_enq_id = eod_enq_id',
'  and eom_type = ''ORDER''',
'  and eom_ord_id = pom_ord_id',
'  and PM_ID = pod_product_id',
'  and nvl(eom_order_status,''IP'') != ''CO''',
'  and nvl(POM_STATUS,''IP'') in (''OR'',''PDL'')',
'  and pom_supplier_id =:ID_SUPM_ID',
'  and pom_ord_id = :ID_ORD_ID'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Product -'
,p_lov_cascade_parent_items=>'ID_SUPM_ID,ID_ORD_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'  select  PM_NAME || '' '' ||   PM_PACKAGE_1 ||'' '' || PM_PRODUCT_UNIT  || '' x '' ||   PM_PACKAGE_2 || '' '' ||  PM_PACKAGE_UNIT product, PM_ID',
'  from V_PURCHASE_ORDER_MASTER, V_PURCHASE_ORDER_DETAILS, V_ENQUIRIES_ORDERS_DETAILS, V_ENQUIRIES_ORDERS_MST,V_PRODUCT_MASTER',
'  where pom_id = POD_POM_ID',
'  and eod_product_id = pod_product_id',
'  and eom_enq_id = eod_enq_id',
'  and eom_type = ''ORDER''',
'  and eom_ord_id = pom_ord_id',
'  and PM_ID = pod_product_id',
'  and nvl(eom_order_status,''IP'') != ''CO''',
'  and nvl(POM_STATUS,''IP'') = ''OR''',
'  and pom_ord_id = :ID_ORD_ID',
'  and pom_supplier_id = :SUPPLIER'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142703322826317612)
,p_name=>'ID_PO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Purchase Order'
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
'select  ''PO#''||pom_id ||'' - ''|| pom_delivery_date disp_val, pom_id ret_val',
'from V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS',
'where pom_id = pod_pom_id',
'and pom_supplier_id = :ID_SUPM_ID',
'and pom_ord_id = :ID_ORD_ID',
'and POD_PRODUCT_ID = :ID_PRODUCT_ID',
'and pom_status in (''OR'',''PDL'')',
'and nvl(POD_DELIVERED_QUANTITY,0) < nvl(POD_ORDERED_QUANTITY,0)'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'ID_PRODUCT_ID,ID_SUPM_ID,ID_ORD_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''PO#''||pom_id ||'' - ''|| pom_delivery_date disp_val, pom_id ret_val',
'from V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS',
'where pom_id = pod_pom_id',
'and pom_supplier_id = 64--:SUPPLIER',
'and pom_ord_id = :ID_ORD_ID',
'and POD_PRODUCT_ID = :ID_PRODUCT_ID',
'and pom_status = ''OR''',
'and nvl(POD_DELIVERED_QUANTITY,0) < nvl(POD_ORDERED_QUANTITY,0)'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142703388081317613)
,p_name=>'ID_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_ORD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Order'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select cm_name || '' - '' || eom_order_date, eom_ord_id ',
'from V_ENQUIRIES_ORDERS_MST, V_CUSTOMER_MASTER',
'where eom_customer_id = cm_id',
'and eom_type = ''ORDER''',
'and nvl(eom_order_status,''IP'') != ''CO''',
'and exists (',
'              select 1 ',
'              from V_PURCHASE_ORDER_MASTER',
'              where POM_ORD_ID = eom_ord_id',
'              and pom_supplier_id = :ID_SUPM_ID',
'              and pom_status in (''OR'',''PDL'')',
'          )'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Order -'
,p_lov_cascade_parent_items=>'ID_SUPM_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142703508015317614)
,p_name=>'ID_QTY_ORDERED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_QTY_ORDERED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity<br>Ordered'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(142703565514317615)
,p_name=>'ID_QTY_RECEIVED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_QTY_RECEIVED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity<br>Received'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(142703694476317616)
,p_name=>'ID_BATCH_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_BATCH_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Batch#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142703825883317617)
,p_name=>'ID_PACKING_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PACKING_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Packing<br>Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'focus',
  'show_other_months', 'N')).to_clob
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
 p_id=>wwv_flow_imp.id(142703877868317618)
,p_name=>'ID_EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_EXPIRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Expiry<br>Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'focus',
  'show_other_months', 'N')).to_clob
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
 p_id=>wwv_flow_imp.id(142703949266317619)
,p_name=>'ID_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_LENGTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Length'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(142704090101317620)
,p_name=>'ID_BREADTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_BREADTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Breadth'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(142704187878317621)
,p_name=>'ID_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_HEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Height'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(142704231102317622)
,p_name=>'ID_PKG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PKG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Package'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(142704399867317623)
,p_name=>'ID_PKG1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PKG1'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Package 1'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(142704484985317624)
,p_name=>'ID_PKG1_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PKG1_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Package 1<br>Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142704581299317625)
,p_name=>'ID_PKG2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PKG2'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Package 2'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(142704642577317626)
,p_name=>'ID_PKG2_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PKG2_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Package 2<br>Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142704780318317627)
,p_name=>'ID_GROSS_WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_GROSS_WEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Gross<br>Weight'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(142704905501317628)
,p_name=>'ID_QUALITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_QUALITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Quality'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
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
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142705018126317629)
,p_name=>'ID_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142705065108317630)
,p_name=>'ID_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Id created by'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142705184255317631)
,p_name=>'ID_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Id created on'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
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
 p_id=>wwv_flow_imp.id(142705488898317634)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142705534275317635)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(142775189731349399)
,p_name=>'ID_SUPM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_SUPM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Supplier'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(27457637726582088)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Supplier -'
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
 p_id=>wwv_flow_imp.id(142702885996317608)
,p_internal_uid=>5991856227882910
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    //Tab and Shift-Tab will skip over cells that are read-only',
'    options.defaultGridViewOptions = {  ',
'        skipReadonlyCells: true  ',
'    };  ',
'    ',
'    options.initActions = function( actions ) {                ',
'        //Action to focus on the Search Bar',
'        actions.add( {',
'            name: "focus",',
'            label: "focus",',
'            action: function( event, focusElement ) {',
'               var ig$ = $(actions.context);',
'               ig$.interactiveGrid("focus");',
'               return true;               ',
'            }',
'        });',
'        ',
'        // Add a keyboard shortcut to Add a Row',
'        actions.lookup( "row-add-row" ).shortcut = "Alt+A";',
'        actions.update( "row-add-row" );',
'        ',
'        // Add a keyboard shortcut to Delete a Row',
'        actions.lookup( "row-delete" ).shortcut = "Alt+D";',
'        actions.update( "row-delete" );      ',
'        ',
'        // Add a keyboard shortcut to Save the changes',
'        actions.lookup( "save" ).shortcut = "Alt+S";',
'        actions.update( "save" );          ',
'        ',
'        // Add a keyboard shortcut to refresh the IG',
'        actions.lookup( "refresh" ).shortcut = "Alt+R";',
'        actions.update( "refresh" );   ',
'        ',
'        // Add a keyboard shortcut to focus on the Search Bar',
'        actions.lookup( "focus" ).shortcut = "Alt+F";',
'        actions.update( "focus" );    ',
'        ',
'        // Add a keyboard shortcut to reset the IG',
'        actions.lookup( "reset-report" ).shortcut = "Alt+C";',
'        actions.update( "reset-report" );                  ',
'',
'        }        ',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(142725224519433224)
,p_interactive_grid_id=>wwv_flow_imp.id(142702885996317608)
,p_static_id=>'123144'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(142725292885433224)
,p_report_id=>wwv_flow_imp.id(142725224519433224)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125671808973918139)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(125659886403889692)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>203
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125672318860918142)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(125659900333889693)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142725801153433232)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(142702941225317609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142726274739433242)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(142703055315317610)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142726783208433250)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(142703207388317611)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>515
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142727299449433255)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(142703322826317612)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>161
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142727763413433259)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(142703388081317613)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>355
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142728270452433266)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(142703508015317614)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142728761838433270)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(142703565514317615)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142729256274433275)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(142703694476317616)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142729828394433279)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(142703825883317617)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142730232436433283)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(142703877868317618)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142730770537433287)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(142703949266317619)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142731274717433292)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(142704090101317620)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142731781404433303)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(142704187878317621)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142732132290433311)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(142704231102317622)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142732707162433322)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(142704399867317623)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142733227662433328)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(142704484985317624)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142733690083433334)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(142704581299317625)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142734174119433343)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(142704642577317626)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142734714691433351)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(142704780318317627)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142735164851433358)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(142704905501317628)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142735658391433367)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(142705018126317629)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142736173521433372)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(142705065108317630)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142736707553433376)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(142705184255317631)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142744910997460736)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(142705488898317634)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142781270327349680)
,p_view_id=>wwv_flow_imp.id(142725292885433224)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(142775189731349399)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>332
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5911358287180961985)
,p_plug_name=>'Closed Inward Details'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID_ID,',
'  ID_IM_ID,',
'  IM_INWARD_NO,',
'  ID_SUPM_ID,',
'  ID_PRODUCT_ID,',
'  ID_PO_ID,',
'  ID_ORD_ID,',
'  ID_QTY_ORDERED,',
'  ID_QTY_RECEIVED,',
'  ID_BATCH_NO,',
'  ID_PACKING_DATE,',
'  ID_EXPIRY_DATE,',
'  ID_LENGTH,',
'  ID_BREADTH,',
'  ID_HEIGHT,',
'  ID_PKG,',
'  ID_PKG1,',
'  ID_PKG1_UNIT,',
'  ID_PKG2,',
'  ID_PKG2_UNIT,',
'  ID_GROSS_WEIGHT,',
'  ID_QUALITY,',
'  ID_REMARKS,',
'  ID_CREATED_BY,',
'  ID_CREATED_ON,',
'  ID_UPDATED_BY,',
'  ID_UPDATED_ON',
'FROM V_INWARD_MASTER, V_INWARD_DETAILS ',
'WHERE IM_ID = ID_IM_ID',
'and nvl(IM_STATUS,''IP'') = ''CO'''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5803543452329823504)
,p_name=>'IM_INWARD_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_INWARD_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Inward #'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>290
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5803543527708823505)
,p_name=>'ID_SUPM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_SUPM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Supplier'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(27457637726582088)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Supplier -'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5803543787460823508)
,p_name=>'ID_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
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
 p_id=>wwv_flow_imp.id(5803543904167823509)
,p_name=>'ID_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
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
 p_id=>wwv_flow_imp.id(5803544010365823510)
,p_name=>'ID_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
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
 p_id=>wwv_flow_imp.id(5803544071106823511)
,p_name=>'ID_QUALITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_QUALITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Quality'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
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
 p_id=>wwv_flow_imp.id(5803544187185823512)
,p_name=>'ID_GROSS_WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_GROSS_WEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Gross<br>Weight'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5803544283000823513)
,p_name=>'ID_PKG2_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PKG2_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Package 2<br>Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(5803544464308823514)
,p_name=>'ID_PKG2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PKG2'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Package 2'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5803544499350823515)
,p_name=>'ID_PKG1_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PKG1_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Package 1<br>Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(5803544617840823516)
,p_name=>'ID_PKG1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PKG1'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Package 1'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5803544726353823517)
,p_name=>'ID_PKG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PKG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Package'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5803544783597823518)
,p_name=>'ID_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_HEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Height'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5803544917179823519)
,p_name=>'ID_BREADTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_BREADTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Breadth'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5803545009266823520)
,p_name=>'ID_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_LENGTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Length'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5803545072418823521)
,p_name=>'ID_EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_EXPIRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Expiry<br>Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'focus',
  'show_other_months', 'N')).to_clob
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
 p_id=>wwv_flow_imp.id(5803545204129823522)
,p_name=>'ID_PACKING_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PACKING_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Packing<br>Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'focus',
  'show_other_months', 'N')).to_clob
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
 p_id=>wwv_flow_imp.id(5803545295802823523)
,p_name=>'ID_BATCH_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_BATCH_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Batch#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(5803545454811823524)
,p_name=>'ID_QTY_RECEIVED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_QTY_RECEIVED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity<br>Received'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5803545514732823525)
,p_name=>'ID_QTY_ORDERED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_QTY_ORDERED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity<br>Ordered'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(5803545608083823526)
,p_name=>'ID_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_ORD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Order'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select cm_name || '' - '' || eom_order_date, eom_ord_id ',
'from V_ENQUIRIES_ORDERS_MST, V_CUSTOMER_MASTER',
'where eom_customer_id = cm_id',
'and eom_type = ''ORDER''',
'and eom_ord_id = :ID_ORD_ID'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Order -'
,p_lov_cascade_parent_items=>'ID_SUPM_ID'
,p_ajax_optimize_refresh=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5803545756893823527)
,p_name=>'ID_PO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Purchase Order'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
'select  ''PO#''||pom_id ||'' - ''|| pom_delivery_date disp_val, pom_id ret_val',
'from V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS',
'where pom_id = pod_pom_id',
'and pom_id = :ID_PO_ID'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'ID_PRODUCT_ID,ID_SUPM_ID,ID_ORD_ID'
,p_ajax_optimize_refresh=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''PO#''||pom_id ||'' - ''|| pom_delivery_date disp_val, pom_id ret_val',
'from V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS',
'where pom_id = pod_pom_id',
'and pom_supplier_id = 64--:SUPPLIER',
'and pom_ord_id = :ID_ORD_ID',
'and POD_PRODUCT_ID = :ID_PRODUCT_ID',
'and pom_status = ''OR''',
'and nvl(POD_DELIVERED_QUANTITY,0) < nvl(POD_ORDERED_QUANTITY,0)'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5803545787761823528)
,p_name=>'ID_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select  PM_NAME || '' '' ||   PM_PACKAGE_1 ||'' '' || PM_PRODUCT_UNIT  || '' x '' ||   PM_PACKAGE_2 || '' '' ||  PM_PACKAGE_UNIT product, PM_ID',
'  from V_PRODUCT_MASTER',
'  where pm_id = :ID_PRODUCT_ID'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Product -'
,p_lov_cascade_parent_items=>'ID_SUPM_ID,ID_ORD_ID'
,p_ajax_optimize_refresh=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'  select  PM_NAME || '' '' ||   PM_PACKAGE_1 ||'' '' || PM_PRODUCT_UNIT  || '' x '' ||   PM_PACKAGE_2 || '' '' ||  PM_PACKAGE_UNIT product, PM_ID',
'  from V_PURCHASE_ORDER_MASTER, V_PURCHASE_ORDER_DETAILS, V_ENQUIRIES_ORDERS_DETAILS, V_ENQUIRIES_ORDERS_MST,V_PRODUCT_MASTER',
'  where pom_id = POD_POM_ID',
'  and eod_product_id = pod_product_id',
'  and eom_enq_id = eod_enq_id',
'  and eom_type = ''ORDER''',
'  and eom_ord_id = pom_ord_id',
'  and PM_ID = pod_product_id',
'  and nvl(eom_order_status,''IP'') != ''CO''',
'  and nvl(POM_STATUS,''IP'') = ''OR''',
'  and pom_ord_id = :ID_ORD_ID',
'  and pom_supplier_id = :SUPPLIER'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5803545915753823529)
,p_name=>'ID_IM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_IM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5803546013025823530)
,p_name=>'ID_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_ID_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5803546126720823531)
,p_name=>'ID_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Updated On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5803546223800823532)
,p_name=>'ID_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5911358080404961983)
,p_internal_uid=>481709287386715950
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) {',
'    //Tab and Shift-Tab will skip over cells that are read-only',
'    options.defaultGridViewOptions = {  ',
'        skipReadonlyCells: true  ',
'    };  ',
'    ',
'    options.initActions = function( actions ) {                ',
'        //Action to focus on the Search Bar',
'        actions.add( {',
'            name: "focus",',
'            label: "focus",',
'            action: function( event, focusElement ) {',
'               var ig$ = $(actions.context);',
'               ig$.interactiveGrid("focus");',
'               return true;               ',
'            }',
'        });',
'        ',
'        // Add a keyboard shortcut to Add a Row',
'        actions.lookup( "row-add-row" ).shortcut = "Alt+A";',
'        actions.update( "row-add-row" );',
'        ',
'        // Add a keyboard shortcut to Delete a Row',
'        actions.lookup( "row-delete" ).shortcut = "Alt+D";',
'        actions.update( "row-delete" );      ',
'        ',
'        // Add a keyboard shortcut to Save the changes',
'        actions.lookup( "save" ).shortcut = "Alt+S";',
'        actions.update( "save" );          ',
'        ',
'        // Add a keyboard shortcut to refresh the IG',
'        actions.lookup( "refresh" ).shortcut = "Alt+R";',
'        actions.update( "refresh" );   ',
'        ',
'        // Add a keyboard shortcut to focus on the Search Bar',
'        actions.lookup( "focus" ).shortcut = "Alt+F";',
'        actions.update( "focus" );    ',
'        ',
'        // Add a keyboard shortcut to reset the IG',
'        actions.lookup( "reset-report" ).shortcut = "Alt+C";',
'        actions.update( "reset-report" );                  ',
'',
'        }        ',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5803540667097815030)
,p_interactive_grid_id=>wwv_flow_imp.id(5911358080404961983)
,p_static_id=>'123142'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5803540554117815029)
,p_report_id=>wwv_flow_imp.id(5803540667097815030)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803527103217814918)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5803543452329823504)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803527586191814922)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5803543527708823505)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>253
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803528140995814925)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(5803543787460823508)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803528587083814927)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(5803543904167823509)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803529129211814930)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(5803544010365823510)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803529580986814935)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(5803544071106823511)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803530164640814937)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(5803544187185823512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803530602842814940)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(5803544283000823513)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803531153361814942)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(5803544464308823514)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803531586561814945)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(5803544499350823515)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803532145990814947)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(5803544617840823516)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803532590889814949)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(5803544726353823517)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803533158693814951)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(5803544783597823518)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803533609467814954)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(5803544917179823519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803534142745814956)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(5803545009266823520)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803534623576814958)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(5803545072418823521)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803535086497814960)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5803545204129823522)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803535579740814962)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5803545295802823523)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803536081760814965)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5803545454811823524)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803536592600814968)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5803545514732823525)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803537121531814971)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5803545608083823526)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>323
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803537574227814973)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5803545756893823527)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>199
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803538090184814979)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5803545787761823528)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>435
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803538579049814985)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5803545915753823529)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803539150272814990)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5803546013025823530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803539515450814996)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(5803546126720823531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5803539987133815010)
,p_view_id=>wwv_flow_imp.id(5803540554117815029)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(5803546223800823532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142765037072536562)
,p_name=>'P44_SUPPLIER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(142702770261317607)
,p_prompt=>'Supplier'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142705925583317638)
,p_name=>'Fetch Product details'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(142702770261317607)
,p_triggering_element=>'ID_PRODUCT_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'ID_PRODUCT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142705998290317639)
,p_event_id=>wwv_flow_imp.id(142705925583317638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_error_msg varchar2(4000);',
'begin',
'select ',
'PM_LENGTH,',
'PM_BREADTH,',
'PM_HEIGHT,',
'PM_GROSS_WEIGHT,',
'PM_PACKAGE,',
'PM_PACKAGE_1,',
'PM_PACKAGE_UNIT,',
'PM_PACKAGE_2,',
'PM_PRODUCT_UNIT',
'',
'into :ID_LENGTH,:ID_BREADTH,:ID_HEIGHT,:ID_GROSS_WEIGHT,:ID_PKG,:ID_PKG1,:ID_PKG1_UNIT,:ID_PKG2,:ID_PKG2_UNIT',
'From V_PRODUCT_MASTER',
'where PM_ID = :ID_PRODUCT_ID;',
'',
'/* Commented by Rahul on 19-Apr-2020 to fetch the list of PO# for the user to select te PO# as one product can be ordered in multiple POs by splitting the quantity',
'begin',
'select  POD_ORDERED_QUANTITY,pom_id',
'into :ID_QTY_ORDERED,:ID_PO_ID',
'from V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS',
'where pom_id = pod_pom_id',
'and pom_ord_id = :ID_ORD_ID',
'and pom_supplier_id = :SUPPLIER',
'and POD_PRODUCT_ID = :ID_PRODUCT_ID;',
'exception when others then',
':ID_PO_ID := '''';',
'   v_error_msg := ''Error Fetching PO Details''||sqlerrm ;',
'      insert into error_log values (''44'',''Error:''||v_error_msg,sysdate);',
'',
'APEX_ERROR.ADD_ERROR (p_message => ''This custom account is not active!'',',
'p_display_location => apex_error.c_on_error_page  );',
'end;',
'*/',
'exception when others then',
':ID_LENGTH:= '''';',
':ID_BREADTH:= '''';',
':ID_HEIGHT:= '''';',
':ID_PKG:= '''';',
':ID_PKG1:= '''';',
':ID_PKG1_UNIT:= '''';',
':ID_PKG2:= '''';',
':ID_PKG2_UNIT:= '''';',
':ID_GROSS_WEIGHT := '''';',
'',
'end;'))
,p_attribute_02=>'ID_PRODUCT_ID,ID_ORD_ID,SUPPLIER'
,p_attribute_03=>'ID_LENGTH,ID_BREADTH,ID_HEIGHT,ID_PKG,ID_PKG1,ID_PKG1_UNIT,ID_PKG2,ID_PKG2_UNIT,ID_GROSS_WEIGHT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(142801988674323616)
,p_name=>'update_status'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(142694785516284353)
,p_triggering_element=>'IM_STATUS'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'IM_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142802215233323618)
,p_event_id=>wwv_flow_imp.id(142801988674323616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Do you really want to finalize this inward?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142802078419323617)
,p_event_id=>wwv_flow_imp.id(142801988674323616)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_error_msg varchar2(4000);',
'v_success_failure  varchar2(4000);',
'gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT);',
'  l_scope logger_logs.scope%type := gc_scope_prefix;',
'  l_params logger.tab_param;',
'  ',
'  CURSOR PRODUCTS_LST IS',
'        SELECT',
'            EOM_ENQ_ID,',
'            ID_ORD_ID,',
'            ID_PO_ID,',
'            ID_ID,',
'            ID_PRODUCT_ID,',
'            POM_DL_ID,',
'            ID_QTY_RECEIVED,',
'            ID_BATCH_NO,',
'            ID_PACKING_DATE,',
'            ID_EXPIRY_DATE,',
'            ID_LENGTH,',
'            ID_BREADTH,',
'            ID_HEIGHT,',
'            ID_GROSS_WEIGHT,',
'            ID_REMARKS',
'        FROM',
'            V_INWARD_DETAILS,',
'            V_ENQUIRIES_ORDERS_MST,',
'            V_PURCHASE_ORDER_MASTER',
'        WHERE',
'            id_ord_id = eom_ord_id',
'            AND id_po_id = pom_id',
'            AND id_im_id = :IM_ID;',
'',
'TYPE IW_PRODUCT_TAB IS TABLE OF PRODUCTS_LST%ROWTYPE;',
'',
'IW_PRODUCTS_LST IW_PRODUCT_TAB;',
'  ',
'begin',
'    logger.append_param(l_params, ''IM_ID'', :IM_ID);',
'    logger.append_param(l_params, ''IM_STATUS'', :IM_STATUS);   ',
'    ',
'    logger.LOG(''START of Dynamic action on status change of Inward Master to Finalize it and update the status'', l_scope, NULL, l_params);',
'    ',
'   pkg_status.update_status(''IW'',:IM_ID,''CO'',v_error_msg,v_success_failure);',
'   ',
'   logger.LOG(''After update of inward master to Completed'');',
'   ',
'     IF (:IM_STATUS = ''CO'')Then',
'    logger.LOG(''Inside IF dynamic action of update_status'', l_scope, NULL, l_params);',
'    ',
'    Open PRODUCTS_LST;',
'      FETCH PRODUCTS_LST BULK COLLECT INTO IW_PRODUCTS_LST;',
'    close PRODUCTS_LST;',
'    ',
'     logger.LOG(''After bulk fetch of products dynamic action of update_status'', l_scope, NULL, l_params);',
'        FORALL  indx in 1 .. IW_PRODUCTS_LST.count ',
'            INSERT INTO V_STOCK_DETAILS (',
'            sd_id,',
'            sd_stock_id,',
'            sd_enq_id,',
'            sd_ord_id,',
'            sd_po_id,',
'            sd_id_id,',
'            sd_product_id,',
'            sd_delivery_location,',
'            sd_quantity,',
'            sd_type,',
'            sd_remarks,',
'            sd_created_by,',
'            sd_created_on,',
'            sd_updated_by,',
'            sd_updated_on,',
'            sd_batch_no,',
'            sd_packing_date,',
'            sd_expiry_date,',
'            sd_length,',
'            sd_breadth,',
'            sd_height,',
'            sd_gross_weight',
'        ) VALUES (',
'            SEQ_SD_ID.nextval,',
'            NULL,',
'            IW_PRODUCTS_LST(indx).EOM_ENQ_ID,',
'            IW_PRODUCTS_LST(indx).ID_ORD_ID,',
'            IW_PRODUCTS_LST(indx).ID_PO_ID,',
'            IW_PRODUCTS_LST(indx).ID_ID,',
'            IW_PRODUCTS_LST(indx).ID_PRODUCT_ID,',
'            IW_PRODUCTS_LST(indx).POM_DL_ID,',
'            IW_PRODUCTS_LST(indx).ID_QTY_RECEIVED,',
'            ''IN'',',
'            IW_PRODUCTS_LST(indx).ID_REMARKS,',
'            nvl(:APP_USER,''SYSTEM''),',
'            SYSDATE,',
'            NULL,',
'            NULL,',
'            IW_PRODUCTS_LST(indx).ID_BATCH_NO,',
'            IW_PRODUCTS_LST(indx).ID_PACKING_DATE,',
'            IW_PRODUCTS_LST(indx).ID_EXPIRY_DATE,',
'            IW_PRODUCTS_LST(indx).ID_LENGTH,',
'            IW_PRODUCTS_LST(indx).ID_BREADTH,',
'            IW_PRODUCTS_LST(indx).ID_HEIGHT,',
'            IW_PRODUCTS_LST(indx).ID_GROSS_WEIGHT',
'        );',
'    logger.LOG(''After bulk insert of products dynamic action of update_status'', l_scope, NULL, l_params);',
'      END IF;',
'   ',
'end;'))
,p_attribute_02=>'IM_ID,IM_STATUS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(142802258157323619)
,p_event_id=>wwv_flow_imp.id(142801988674323616)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39353148377126744)
,p_name=>'FetchOrderedQty'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(142702770261317607)
,p_triggering_element=>'ID_PO_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'ID_PO_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39353243559126745)
,p_event_id=>wwv_flow_imp.id(39353148377126744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT); ',
'l_scope logger_logs.scope%type := gc_scope_prefix;',
'	l_params logger.tab_param;',
'begin',
'logger.append_param(l_params, ''ID_ORD_ID'', :ID_ORD_ID);',
'logger.append_param(l_params, ''ID_SUPM_ID'', :ID_SUPM_ID);',
'logger.append_param(l_params, ''ID_PRODUCT_ID'', :ID_PRODUCT_ID);',
'logger.append_param(l_params, ''ID_PO_ID'', :ID_PO_ID);',
' /*logger.LOG(''Before select of POD_ORDERED_QUANTITY'', l_scope, NULL, l_params);*/',
'select  POD_ORDERED_QUANTITY',
'into :ID_QTY_ORDERED',
'from V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS',
'where pom_id = pod_pom_id',
'and pom_ord_id = :ID_ORD_ID',
'and pom_supplier_id = :ID_SUPM_ID',
'and POD_PRODUCT_ID = :ID_PRODUCT_ID',
'and pom_id = :ID_PO_ID',
'and pom_status in (''OR'',''PDL'');',
' --logger.LOG(''After select of ordered quantity '' || :ID_QTY_ORDERED, l_scope, NULL, l_params);',
'exception when others then',
'logger.LOG(''in exception of fetch ordered qty Dynamic Action '' || SQLERRM, l_scope, NULL, l_params);',
':ID_QTY_ORDERED := 0;',
'end;'))
,p_attribute_02=>'ID_PRODUCT_ID,ID_ORD_ID,ID_SUPM_ID,ID_PO_ID'
,p_attribute_03=>'ID_QTY_ORDERED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29213000720572681)
,p_name=>'Reload Page'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(142694785516284353)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
,p_da_event_comment=>'This dynamic action is created to reload the page once the new master entry of inward is created. As it is throwing error if we create the child entry for the inward without reloading.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29213075264572682)
,p_event_id=>wwv_flow_imp.id(29213000720572681)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(142702674938317606)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(142694785516284353)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Inward Master - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>142753824569146102
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(142705687632317636)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(142702770261317607)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Inward Details - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>142756837263146132
);
wwv_flow_imp.component_end;
end;
/
