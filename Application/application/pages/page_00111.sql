prompt --application/pages/page_00111
begin
--   Manifest
--     PAGE: 00111
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
 p_id=>111
,p_name=>'Expense Details'
,p_alias=>'EXPENSE-DETAILS'
,p_step_title=>'Expense Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59852007819541531)
,p_plug_name=>'Expense Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>5
,p_query_type=>'TABLE'
,p_query_table=>'V_EXPENSE_MASTER'
,p_query_order_by=>'EM_ID'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34564728201520552)
,p_plug_name=>'Details'
,p_parent_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'	ED_ID,',
'    ED_EM_ID , ',
'    ED_EXPENSE_TYPE ,',
'	ED_EXPENSE_AMOUNT ,',
'	ED_REMARKS ,',
'    ED_CREATED_BY,',
'    ED_CREATED_ON,',
'    ED_UPDATED_BY,',
'    ED_UPDATED_ON,',
'    st_display_order',
'',
'from    V_EXPENSE_DETAILS, V_SETUP_TABLE',
' where ED_EM_ID = :P111_EM_ID',
'and ed_expense_Type = st_code',
'and st_type = ''EXPENSE_TYPE'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P111_EM_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P111_EM_ENQ_ID'
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
 p_id=>wwv_flow_imp.id(34564900281520554)
,p_name=>'ED_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_ID'
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
,p_default_expression=>'SEQ_ED_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34565029643520555)
,p_name=>'ED_EM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_EM_ID'
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
,p_default_expression=>'P111_EM_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34565142661520556)
,p_name=>'ED_EXPENSE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_EXPENSE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Expense Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(25981635783989387)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Expense Type -'
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34565222203520557)
,p_name=>'ED_EXPENSE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_EXPENSE_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Expense Amount (&APP_LOCAL_CURR_SYMBOL.)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(34565291283520558)
,p_name=>'ED_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(34565371858520559)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34565475960520560)
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
 p_id=>wwv_flow_imp.id(34566837411520573)
,p_name=>'ED_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34566946408520574)
,p_name=>'ED_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34567050032520575)
,p_name=>'ED_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(34567131161520576)
,p_name=>'ED_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45171613244306077)
,p_name=>'ST_DISPLAY_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ST_DISPLAY_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Display Order'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(34564790270520553)
,p_internal_uid=>114615633657156279
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
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(130562709784623277)
,p_interactive_grid_id=>wwv_flow_imp.id(34564790270520553)
,p_static_id=>'1046028'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(130562921205623279)
,p_report_id=>wwv_flow_imp.id(130562709784623277)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(58981222642321388)
,p_view_id=>wwv_flow_imp.id(130562921205623279)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(45171613244306077)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130563409331623287)
,p_view_id=>wwv_flow_imp.id(130562921205623279)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(34564900281520554)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130564363410623296)
,p_view_id=>wwv_flow_imp.id(130562921205623279)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(34565029643520555)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130565192734623304)
,p_view_id=>wwv_flow_imp.id(130562921205623279)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(34565142661520556)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>263
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130566069700623308)
,p_view_id=>wwv_flow_imp.id(130562921205623279)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(34565222203520557)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>165
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130566999994623313)
,p_view_id=>wwv_flow_imp.id(130562921205623279)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(34565291283520558)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(130762020488642135)
,p_view_id=>wwv_flow_imp.id(130562921205623279)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(34565371858520559)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>54
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131774763060162910)
,p_view_id=>wwv_flow_imp.id(130562921205623279)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(34566837411520573)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131775527974162948)
,p_view_id=>wwv_flow_imp.id(130562921205623279)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(34566946408520574)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>168
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131776461501162952)
,p_view_id=>wwv_flow_imp.id(130562921205623279)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(34567050032520575)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>124
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(131777358000162956)
,p_view_id=>wwv_flow_imp.id(130562921205623279)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(34567131161520576)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>155
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(102169163332778311)
,p_view_id=>wwv_flow_imp.id(130562921205623279)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(34565222203520557)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59864933388541990)
,p_plug_name=>'Expense Details Old'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'	ED_ID,',
'    ED_EM_ID , ',
'    st_code ED_EXPENSE_TYPE ,',
'	ED_EXPENSE_AMOUNT ,',
'	ED_REMARKS ',
'from   V_SETUP_TABLE , V_EXPENSE_DETAILS',
' where st_type = ''EXPENSE_TYPE''',
'AND st_code  = ED_EXPENSE_TYPE(+)',
'AND ED_EM_ID(+) = :P111_EM_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P111_EM_ID'
,p_plug_display_condition_type=>'NEVER'
,p_prn_page_header=>'Expense Details'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(59866108873541996)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(59866656293541997)
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
 p_id=>wwv_flow_imp.id(59867633760542001)
,p_name=>'ED_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(59868666834542002)
,p_name=>'ED_EM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_EM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P111_EM_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(59869662434542002)
,p_name=>'ED_EXPENSE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_EXPENSE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Expense Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(59870648924542003)
,p_name=>'ED_EXPENSE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_EXPENSE_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Expense Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(59871690669542004)
,p_name=>'ED_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(59865333192541992)
,p_internal_uid=>139916176579177718
,p_is_editable=>true
,p_edit_operations=>'u'
,p_edit_row_operations_column=>'APEX$ROW_SELECTOR'
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
 p_id=>wwv_flow_imp.id(59865745730541994)
,p_interactive_grid_id=>wwv_flow_imp.id(59865333192541992)
,p_static_id=>'1243241'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(59865942513541995)
,p_report_id=>wwv_flow_imp.id(59865745730541994)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59867090314541999)
,p_view_id=>wwv_flow_imp.id(59865942513541995)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(59866656293541997)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59868073172542001)
,p_view_id=>wwv_flow_imp.id(59865942513541995)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(59867633760542001)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59869050245542002)
,p_view_id=>wwv_flow_imp.id(59865942513541995)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(59868666834542002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59870072974542003)
,p_view_id=>wwv_flow_imp.id(59865942513541995)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(59869662434542002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59871096278542003)
,p_view_id=>wwv_flow_imp.id(59865942513541995)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(59870648924542003)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(59872043089542004)
,p_view_id=>wwv_flow_imp.id(59865942513541995)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(59871690669542004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25966821185989329)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_button_name=>'GET_PREVIOUS_EM_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Previous'
,p_button_position=>'COPY'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25965167446989325)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--danger:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Cancel'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:110:&APP_SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25966036171989326)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_position=>'COPY'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P111_EM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'Delete'
,p_icon_css_classes=>'fa-trash-o'
,p_security_scheme=>wwv_flow_imp.id(69913861202257093)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25964782613989324)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_button_condition=>'P111_EM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25965638390989326)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_button_condition=>'P111_EM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25966369123989329)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_button_name=>'GET_NEXT_EM_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25980197297989379)
,p_branch_action=>'f?p=&APP_ID.:111:&APP_SESSION.::&DEBUG.::P111_EM_ID:&P111_EM_ID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(25966369123989329)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25980561198989381)
,p_branch_action=>'f?p=&APP_ID.:111:&APP_SESSION.::&DEBUG.::P111_EM_ID:&P111_EM_ID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(25966821185989329)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25980972401989381)
,p_branch_name=>'Go To Page 110'
,p_branch_action=>'f?p=&APP_ID.:110:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(25965167446989325)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59859725593541616)
,p_name=>'P111_EM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_item_source_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_item_default=>'SEQ_EM_ID'
,p_item_default_type=>'SEQUENCE'
,p_source=>'EM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59860079422541621)
,p_name=>'P111_EM_ID_PREV'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59860505805541621)
,p_name=>'P111_EM_ID_NEXT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59860925776541623)
,p_name=>'P111_EM_ENQ_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_item_source_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_prompt=>'Invoice#'
,p_source=>'EM_ENQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select eom_invoice_no d, eom_enq_id r',
'from V_ENQUIRIES_ORDERS_MST',
'where  eom_enq_status != ''RJ''',
'and eom_order_status != ''RJ''',
'and EOM_TYPE = ''ORDER''',
'and eom_ord_id is not null',
'and (eom_enq_id not in (select em_enq_id from V_EXPENSE_MASTER)',
'or eom_enq_id = (select em_enq_id from V_EXPENSE_MASTER where em_id = :P111_EM_ID))',
'order by 2 desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Enquiry/Order -'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(59861361005541628)
,p_name=>'P111_EM_FINAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_item_source_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_item_default=>'N'
,p_prompt=>'Final'
,p_source=>'EM_FINAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_FLAG_YN'
,p_lov=>'.'||wwv_flow_imp.id(30621381686625309)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59861724842541628)
,p_name=>'P111_EM_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_item_source_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_prompt=>'Remarks'
,p_source=>'EM_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59864064738541631)
,p_name=>'P111_EM_ID_COUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_grid_column=>12
,p_display_when_type=>'NEVER'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131775583881108540)
,p_name=>'P111_EM_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_item_source_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_prompt=>'Created By'
,p_source=>'EM_CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131775861491110271)
,p_name=>'P111_EM_CREATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_item_source_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_prompt=>'Created On'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'EM_CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131776206271113381)
,p_name=>'P111_EM_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_item_source_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_prompt=>'Updated By'
,p_source=>'EM_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P111_EM_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(131776475512115366)
,p_name=>'P111_EM_UPDATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_item_source_plug_id=>wwv_flow_imp.id(59852007819541531)
,p_prompt=>'Updated On'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'EM_UPDATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_display_when=>'P111_EM_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25973438905989347)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(59852007819541531)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on V_EXPENSE_MASTER'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>106024282292625073
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25964103545989316)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(59864933388541990)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Expense Details Old - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'	l_scope logger_logs.scope%type := ''Update V_EXPENSE_DETAILS'';',
'	l_params logger.tab_param;',
'	v_error_msg varchar2(4000);',
'',
'BEGIN',
'case :APEX$ROW_STATUS    when ''U'' then',
'	logger.LOG(''START'', l_scope);',
'	logger.LOG(''Before Insert in V_EXPENSE_DETAILS'', l_scope, null, l_params);',
'',
'	logger.append_param(l_params, ''ED_ID'', :ED_ID);',
'	logger.append_param(l_params, ''ED_EM_ID'', :P111_EM_ID);',
'	logger.append_param(l_params, ''ED_EXPENSE_TYPE'', :ED_EXPENSE_TYPE);',
'	logger.append_param(l_params, ''ED_EXPENSE_AMOUNT'', :ED_EXPENSE_AMOUNT);',
'	logger.append_param(l_params, ''ED_REMARKS'', :ED_REMARKS);',
'',
'',
'MERGE INTO V_EXPENSE_DETAILS ed',
'        USING ( select :ED_ID ED_ID,',
'	:P111_EM_ID	ED_EM_ID,',
'	:ED_EXPENSE_TYPE ED_EXPENSE_TYPE,',
'	:ED_EXPENSE_AMOUNT ED_EXPENSE_AMOUNT,',
'	:ED_REMARKS ED_REMARKS ',
'	from dual ) eds  ',
'	ON (nvl(ed.ED_ID,-1) = eds.ED_ID',
'		AND nvl(ed.ED_EM_ID,-1) = eds.ED_EM_ID',
'		AND nvl(ed.ED_EXPENSE_TYPE,''X'') = eds.ED_EXPENSE_TYPE',
'       )	   ',
'   WHEN MATCHED THEN',
'      UPDATE SET',
'		ED_EXPENSE_AMOUNT	= eds.ED_EXPENSE_AMOUNT,',
'		ED_REMARKS			= eds.ED_REMARKS',
'		',
'',
'    WHEN NOT MATCHED THEN',
'      INSERT (ED_ID,',
'	ED_EM_ID	,',
'	ED_EXPENSE_TYPE,',
'	ED_EXPENSE_AMOUNT	,',
'	ED_REMARKS	',
'             )',
'      VALUES (SEQ_ED_ID.nextval,',
'	          eds.ED_EM_ID,',
'	          eds.ED_EXPENSE_TYPE,',
'	          eds.ED_EXPENSE_AMOUNT,',
'	          eds.ED_REMARKS',
'			  );',
'',
'	logger.LOG(''After Insert in V_EXPENSE_DETAILS'', l_scope, NULL, l_params);',
'end case;',
'    EXCEPTION WHEN OTHERS THEN',
' v_error_msg := ''Error in V_EXPENSE_DETAILS - '' || substr(sqlerrm,1,2000);',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>106014946932625042
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25979347280989363)
,p_process_sequence=>45
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(34564728201520552)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Expense Details - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>106030190667625089
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25972999917989347)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(59852007819541531)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on V_EXPENSE_MASTER'
,p_internal_uid=>106023843304625073
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25979779167989377)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Expense Details - Expense Type'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'	l_scope logger_logs.scope%type := ''Update V_EXPENSE_DETAILS'';',
'	l_params logger.tab_param;',
'	v_error_msg varchar2(4000);',
'',
'BEGIN',
'',
'IF :P111_EM_ID is not null THEN',
'',
'	logger.LOG(''START'', l_scope);',
'	logger.LOG(''Pre-rendering Expense Type insert in ED'', l_scope, null, l_params);',
'	logger.append_param(l_params, ''ED_EM_ID'', :P111_EM_ID);',
'',
'    MERGE INTO V_EXPENSE_DETAILS ed',
'        USING (select ',
'                        st_code ',
'                from   V_SETUP_TABLE',
'                 where st_type = ''EXPENSE_TYPE''',
'                 and nvl(ST_DISPLAY,''N'') = ''Y'') st  ',
'	ON ( nvl(ed.ED_EXPENSE_TYPE,''X'') = st.st_code',
'    and ED_EM_ID = :P111_EM_ID',
'       )	   ',
'   WHEN NOT MATCHED THEN',
'      INSERT (ED_ID,',
'	ED_EM_ID	,',
'	ED_EXPENSE_TYPE',
'             )',
'      VALUES (SEQ_ED_ID.nextval,',
'	          :P111_EM_ID,',
'	          st.st_code',
'			  );',
'',
'	logger.LOG(''After Pre-rendering Expense Type insert in ED'', l_scope, NULL, l_params);',
'END IF;',
'',
'    EXCEPTION WHEN OTHERS THEN',
' v_error_msg := ''Error in Pre-rendering Expense Type insert in ED - '' || substr(sqlerrm,1,2000);',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>106030622554625103
);
wwv_flow_imp.component_end;
end;
/
