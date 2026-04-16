prompt --application/pages/page_00073
begin
--   Manifest
--     PAGE: 00073
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
 p_id=>73
,p_name=>'Custom Invoice - Ordering'
,p_alias=>'CUSTOM-INVOICE-ORDERING'
,p_page_mode=>'MODAL'
,p_step_title=>'Custom Invoice - Ordering'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(422759563903730755)
,p_plug_name=>'Custom Invoice Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'CIR_DISPLAY_NAME ,',
'CIR_PRODUCT_NAME product,',
'CIR_QTY,',
'CIR_UNIT_RATE,',
'CIR_AMOUNT,',
'CIR_TAX_VALUE,',
'CIR_IGST_RATE,',
'CIR_IGST_AMOUNT,',
'CIR_HSN_CODE,',
'cir_group,',
'cir_id,',
'CIR_DESCRIPTION ,',
'CIR_HSN_CODE CIR_HSN_CODE_DISP,',
'CIR_DESCRIPTION CIR_DESCRIPTION_DISP,',
'CIR_DISPLAY_ORDER,',
'CIR_HSN_GROUP_ORDER',
'from V_CUSTOM_INVOICE_REPORT ',
'where cir_enq_id = :P73_CIR_ENQ_ID ',
'--and CIR_CATEGORY =''GD''',
'AND CIR_CATEGORY != ''BLANK''',
'AND ((CIR_CATEGORY = ''GDH'' and CIR_DISPLAY_NAME is not null) OR (CIR_DISPLAY_NAME is null and CIR_CATEGORY != ''GDH''))',
'AND CIR_CATEGORY not in (''GF'',''GFGST'',''GFTOT'',''DGSTTOT'',''TOT'')',
'--ORDER BY CIR_DISPLAY_ORDER',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_header=>'<span style="color:red">*Note - Users can reorder the products within a group in Custom Invoice</span>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(380603981312440055)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(380604023176440056)
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
 p_id=>wwv_flow_imp.id(381527666920218936)
,p_name=>'CIR_GROUP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_GROUP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'HSN Code Description'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(381527774449218937)
,p_name=>'CIR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(381527867707218938)
,p_name=>'CIR_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Packing'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
,p_enable_hide=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(422759919117730759)
,p_name=>'CIR_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Group'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(422760127411730761)
,p_name=>'CIR_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Qty.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(422760350148730763)
,p_name=>'CIR_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(422760459062730764)
,p_name=>'CIR_TAX_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_TAX_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Tax Value'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(422760566058730765)
,p_name=>'CIR_IGST_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_IGST_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'IGST Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(422760623908730766)
,p_name=>'CIR_IGST_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_IGST_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'IGST Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(422761177552730771)
,p_name=>'PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
,p_column_comment=>'This column is hidden as in GDH records product name is null'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(422930262270195957)
,p_name=>'CIR_UNIT_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_UNIT_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cir unit rate'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(423060854833849427)
,p_name=>'CIR_HSN_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_HSN_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'HSN Code'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1158423087951061720)
,p_name=>'CIR_DESCRIPTION_DISP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_DESCRIPTION_DISP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Packing'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(1158423121120061721)
,p_name=>'CIR_HSN_CODE_DISP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_HSN_CODE_DISP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'HSN Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2983902882358639822)
,p_name=>'CIR_HSN_GROUP_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_HSN_GROUP_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'No.'
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
 p_id=>wwv_flow_imp.id(3143074359987255822)
,p_name=>'CIR_DISPLAY_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_DISPLAY_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Display<br>Order'
,p_heading_alignment=>'CENTER'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(422759762131730757)
,p_internal_uid=>3841848549483643024
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(422904237157094946)
,p_interactive_grid_id=>wwv_flow_imp.id(422759762131730757)
,p_static_id=>'123208'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>15
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(315584087303495210)
,p_report_id=>wwv_flow_imp.id(422904237157094946)
,p_view_type=>'CHART'
,p_chart_type=>'bar'
,p_chart_orientation=>'horizontal'
,p_chart_stack=>'on'
,p_axis_label=>'Products'
,p_axis_value=>'Quantity'
,p_axis_value_decimal_places=>2
);
wwv_flow_imp_page.create_ig_report_chart_col(
 p_id=>wwv_flow_imp.id(3441206947196056608)
,p_view_id=>wwv_flow_imp.id(315584087303495210)
,p_column_type=>'VALUE'
,p_column_id=>wwv_flow_imp.id(422760127411730761)
,p_function=>'SUM'
);
wwv_flow_imp_page.create_ig_report_chart_col(
 p_id=>wwv_flow_imp.id(3441207026423056608)
,p_view_id=>wwv_flow_imp.id(315584087303495210)
,p_column_type=>'LABEL'
,p_column_id=>wwv_flow_imp.id(422759919117730759)
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_chart_col(
 p_id=>wwv_flow_imp.id(3441207091349056608)
,p_view_id=>wwv_flow_imp.id(315584087303495210)
,p_column_type=>'SERIES_NAME'
,p_column_id=>wwv_flow_imp.id(422761177552730771)
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(422904349778094946)
,p_report_id=>wwv_flow_imp.id(422904237157094946)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(375048987238278080)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(381527867707218938)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(381520566418055681)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(380603981312440055)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(381564295773922765)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(381527666920218936)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>283
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(381571511622040892)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(381527774449218937)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(388453975862875432)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(422761177552730771)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(422905335509094952)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(422759919117730759)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(422906363429094958)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(422760127411730761)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>47
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(422907357074094963)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(422760350148730763)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(422907910859094971)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(422760459062730764)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(422908362211094975)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(422760566058730765)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(422908902708094977)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(422760623908730766)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(422986653846317949)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(422930262270195957)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(423066814734849934)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(423060854833849427)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1130531207174245572)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1158423087951061720)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>247
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1130531620062245576)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1158423121120061721)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2983896854351639489)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2983902882358639822)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>2.5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3143068371895255523)
,p_view_id=>wwv_flow_imp.id(422904349778094946)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3143074359987255822)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(457434895440151514)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-WizardSteps--displayLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(124817506615634011)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(457435319421153493)
,p_plug_name=>'Step 4'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(457435662604155750)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3143077947353330718)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(457435662604155750)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3143077542255330716)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(457435662604155750)
,p_button_name=>'Next'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3143077191640330716)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(457435662604155750)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3143074912406330703)
,p_branch_name=>'Go To Page 67'
,p_branch_action=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:RP,67:P67_ENQ_ID:&P73_CIR_ENQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3143077542255330716)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3143075410057330703)
,p_branch_name=>'Go To Page 65'
,p_branch_action=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:RP,65:P65_CIR_ENQ_ID:&P73_CIR_ENQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3143077191640330716)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3143079675157330725)
,p_name=>'P73_CIR_ENQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(422759563903730755)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3143076327589330705)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3143077947353330718)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3143075878607330704)
,p_event_id=>wwv_flow_imp.id(3143076327589330705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3143079232861330720)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(422759563903730755)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Custom Invoice Details - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3143077542255330716)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_internal_uid=>3143130382492159216
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3143076778008330706)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert_upd_grp_summary'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'--Added CIR_DESCRIPTION column in the Partition by clause by Rahul on 23082019 to group the products on the basis of their packing as well.',
'MERGE INTO V_CUSTOM_INVOICE_REPORT a',
'    USING (select cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION,CIR_DISPLAY_ORDER,CIR_GROUP,',
'           SUM_QTY,rnk,round(SUM_AMT/SUM_QTY,2) SUM_UNIT_RATE,SUM_AMT,SUM_TAX_VALUE,SUM_IGST_AMT,SUM_GROSS_WT,SUM_NET_WT',
'           from ',
'(',
'select cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION,CIR_DISPLAY_ORDER,CIR_GROUP,',
'sum(CIR_QTY) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION) AS SUM_QTY ,',
'rank() over (PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION order by cir_display_order) rnk,',
'--sum(CIR_UNIT_RATE) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE) AS SUM_UNIT_RATE,',
'sum(CIR_AMOUNT) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION) AS SUM_AMT,',
'sum(CIR_TAX_VALUE) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION) AS SUM_TAX_VALUE,',
'sum(CIR_IGST_AMOUNT) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION) AS SUM_IGST_AMT,',
'sum(CIR_GROSS_WT) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION) AS SUM_GROSS_WT,',
'sum(CIR_NET_WT) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION) AS SUM_NET_WT',
'from V_CUSTOM_INVOICE_REPORT',
'where cir_enq_id = :P73_CIR_ENQ_ID',
'and cir_display_name is not null',
'and cir_category != ''GDH''',
')',
'where rnk = 1            ',
'          ) b',
'    ON (a.cir_display_name = b.cir_display_name',
'        and a.CIR_DESCRIPTION = b.CIR_DESCRIPTION    --Added by Rahul on 23082019',
'        and a.cir_enq_id = :P73_CIR_ENQ_ID',
'        and a.cir_category = ''GDH''',
'       )',
'    WHEN MATCHED THEN',
'      UPDATE SET',
'        CIR_QTY       = b.SUM_QTY,',
'        CIR_UNIT_RATE = b.SUM_UNIT_RATE,',
'        CIR_AMOUNT = b.SUM_AMT,',
'        CIR_TAX_VALUE = b.SUM_TAX_VALUE,',
'        CIR_IGST_AMOUNT = b.SUM_IGST_AMT,',
'        CIR_GROSS_WT = b.SUM_GROSS_WT,',
'        CIR_NET_WT = b.SUM_NET_WT,',
'        CIR_DISPLAY_ORDER = b.CIR_DISPLAY_ORDER,',
'        CIR_GROUP = b.CIR_GROUP',
'      WHERE a.cir_enq_id = :P73_CIR_ENQ_ID',
'        and a.cir_category = ''GDH''',
'        and a.cir_display_name = b.cir_display_name',
'        and a.CIR_DESCRIPTION = b.CIR_DESCRIPTION ',
'    WHEN NOT MATCHED THEN',
'      INSERT (cir_display_name,',
'              CIR_HSN_CODE,',
'              CIR_UOM,',
'              CIR_IGST_RATE,',
'              CIR_DESCRIPTION,',
'              CIR_QTY,       	',
'              CIR_UNIT_RATE, 	',
'              CIR_AMOUNT, 		',
'              CIR_TAX_VALUE, 	',
'              CIR_IGST_AMOUNT, ',
'              CIR_GROSS_WT, 	',
'              CIR_NET_WT,',
'              cir_category,',
'              CIR_ENQ_ID,',
'              CIR_DISPLAY_ORDER,',
'              CIR_GROUP',
'             )',
'      VALUES (b.cir_display_name,',
'              b.CIR_HSN_CODE,',
'              b.CIR_UOM,',
'              b.CIR_IGST_RATE,',
'              b.CIR_DESCRIPTION,',
'              b.SUM_QTY,       	',
'              b.SUM_UNIT_RATE, 	',
'              b.SUM_AMT, 		',
'              b.SUM_TAX_VALUE, 	',
'              b.SUM_IGST_AMT, ',
'              b.SUM_GROSS_WT, 	',
'              b.SUM_NET_WT,',
'              ''GDH'',',
'              :P73_CIR_ENQ_ID,',
'              b.CIR_DISPLAY_ORDER,',
'              b.CIR_GROUP);',
'  ',
'  ',
'delete from V_CUSTOM_INVOICE_REPORT a',
'where a.cir_enq_id = :P73_CIR_ENQ_ID',
'and a.cir_category = ''GDH''',
'and not exists (',
'                    select 1 ',
'                    from V_CUSTOM_INVOICE_REPORT b',
'                    where a.cir_enq_id = b.cir_enq_id',
'                    and b.CIR_CATEGORY = ''GD''',
'                    and upper(b.CIR_DISPLAY_NAME) = upper(a.CIR_DISPLAY_NAME)',
'                    and b.CIR_DESCRIPTION = a.CIR_DESCRIPTION --Added by Rahul on 23082019',
'                );             ',
'              ',
'exception when others then',
'        null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to Process Grouping Information'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3143077542255330716)
,p_process_when_type=>'NEVER'
,p_internal_uid=>3143127927639159202
);
wwv_flow_imp.component_end;
end;
/
