prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_name=>'Manual Group'
,p_alias=>'MANUAL-GROUP'
,p_page_mode=>'MODAL'
,p_step_title=>'Manual Group'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(458944416889411207)
,p_plug_name=>'Custom Invoice Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'CIR_DISPLAY_NAME ,',
'CIR_PRODUCT_NAME product,',
'CIR_QTY,',
'CIR_UNIT_RATE,',
'CIR_AMOUNT,',
'CIR_TAX_VALUE,',
'CIR_IGST_RATE,',
'CIR_IGST_AMOUNT,',
'CIR_HSN_CODE,',
'replace(cir_group,substr(cir_group,1,INSTR(cir_group, '')'')),'''') cir_group,',
'cir_group cir_group_hdn, --added to filter records in products to be merged',
'cir_id,',
'CIR_DESCRIPTION ,',
'--CIR_HSN_CODE CIR_HSN_CODE_DISP,',
'--CIR_DESCRIPTION CIR_DESCRIPTION_DISP,',
'CIR_MANUAL_GRP_PRODUCT,',
'to_number(substr(cir_group,1,INSTR(cir_group, '')'')-1)) hsn_grp_order',
'from V_CUSTOM_INVOICE_REPORT ',
'where cir_enq_id = :P74_CIR_ENQ_ID ',
'and CIR_CATEGORY =''GD'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_header=>'<span style="color:red">*Note - Users can edit the Group column to group or rename the products in Custom Invoice</span>'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(416788834298120507)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(416788876162120508)
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
 p_id=>wwv_flow_imp.id(417712519905899388)
,p_name=>'CIR_GROUP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_GROUP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Description'
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(417712627434899389)
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
 p_id=>wwv_flow_imp.id(417712720692899390)
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
 p_id=>wwv_flow_imp.id(458944772103411211)
,p_name=>'CIR_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458944980397411213)
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
 p_id=>wwv_flow_imp.id(458945203134411215)
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
 p_id=>wwv_flow_imp.id(458945312048411216)
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
 p_id=>wwv_flow_imp.id(458945419044411217)
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
 p_id=>wwv_flow_imp.id(458945476894411218)
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
 p_id=>wwv_flow_imp.id(458946030538411223)
,p_name=>'PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(459115115255876409)
,p_name=>'CIR_UNIT_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_UNIT_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(459245707819529879)
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
 p_id=>wwv_flow_imp.id(3105702423489475318)
,p_name=>'CIR_GROUP_HDN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_GROUP_HDN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3105702583430475319)
,p_name=>'HSN_GRP_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HSN_GRP_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'HSN'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3105702820311475322)
,p_name=>'CIR_MANUAL_GRP_PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_MANUAL_GRP_PRODUCT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Product to be merged'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT as d,',
'       pm_id as r',
'  from V_PRODUCT_MASTER, V_CUSTOM_INVOICE_REPORT',
' where CIR_PRODUCT_ID = pm_id',
' and cir_enq_id = :P74_CIR_ENQ_ID',
' and CIR_CATEGORY =''GD''',
' and CIR_GROUP <> :CIR_GROUP_HDN',
' order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'CIR_GROUP_HDN'
,p_ajax_items_to_submit=>'CIR_GROUP_HDN'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(458944615117411209)
,p_internal_uid=>3878033402469323476
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
 p_id=>wwv_flow_imp.id(459089090142775398)
,p_interactive_grid_id=>wwv_flow_imp.id(458944615117411209)
,p_static_id=>'123210'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>25
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(351768940289175662)
,p_report_id=>wwv_flow_imp.id(459089090142775398)
,p_view_type=>'CHART'
,p_chart_type=>'bar'
,p_chart_orientation=>'horizontal'
,p_chart_stack=>'on'
,p_axis_label=>'Products'
,p_axis_value=>'Quantity'
,p_axis_value_decimal_places=>2
);
wwv_flow_imp_page.create_ig_report_chart_col(
 p_id=>wwv_flow_imp.id(3441206915683056622)
,p_view_id=>wwv_flow_imp.id(351768940289175662)
,p_column_type=>'VALUE'
,p_column_id=>wwv_flow_imp.id(458944980397411213)
,p_function=>'SUM'
);
wwv_flow_imp_page.create_ig_report_chart_col(
 p_id=>wwv_flow_imp.id(3441207034468056622)
,p_view_id=>wwv_flow_imp.id(351768940289175662)
,p_column_type=>'LABEL'
,p_column_id=>wwv_flow_imp.id(458944772103411211)
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_chart_col(
 p_id=>wwv_flow_imp.id(3441207186293056622)
,p_view_id=>wwv_flow_imp.id(351768940289175662)
,p_column_type=>'SERIES_NAME'
,p_column_id=>wwv_flow_imp.id(458946030538411223)
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(459089202763775398)
,p_report_id=>wwv_flow_imp.id(459089090142775398)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(411233840223958532)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(417712720692899390)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(417705419403736133)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(416788834298120507)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(417749148759603217)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(417712519905899388)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>283
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(417756364607721344)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(417712627434899389)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(424638828848555884)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(458946030538411223)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>250
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459090188494775404)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(458944772103411211)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>213
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459091216414775410)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(458944980397411213)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459092210059775415)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(458945203134411215)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459092763844775423)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(458945312048411216)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459093215196775427)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(458945419044411217)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459093755693775429)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(458945476894411218)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459171506831998401)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(459115115255876409)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(459251667720530386)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(459245707819529879)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3105497738314034937)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3105702423489475318)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3440601167288912838)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3105702820311475322)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>460
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441200019565968387)
,p_view_id=>wwv_flow_imp.id(459089202763775398)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3105702583430475319)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(493619748425831966)
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
 p_id=>wwv_flow_imp.id(493620172406833945)
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
 p_id=>wwv_flow_imp.id(493620515589836202)
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
 p_id=>wwv_flow_imp.id(3106893216928650242)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(493620515589836202)
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
 p_id=>wwv_flow_imp.id(3106892910545650241)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(493620515589836202)
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
 p_id=>wwv_flow_imp.id(3106892436450650240)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(493620515589836202)
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
 p_id=>wwv_flow_imp.id(3106890219163650218)
,p_branch_name=>'Go To Page 73'
,p_branch_action=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:RP,73:P73_CIR_ENQ_ID:&P74_CIR_ENQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3106892910545650241)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3106890615971650218)
,p_branch_name=>'Go To Page 65'
,p_branch_action=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:RP,65:P65_CIR_ENQ_ID:&P74_CIR_ENQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3106892436450650240)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3106894933766650255)
,p_name=>'P74_CIR_ENQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(458944416889411207)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3106891664682650221)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3106893216928650242)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3106891148316650219)
,p_event_id=>wwv_flow_imp.id(3106891664682650221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3106894515822650250)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(458944416889411207)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Custom Invoice Details - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(124831033882939849)
,p_internal_uid=>3106945665453478746
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3106892028673650225)
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
'where cir_enq_id = :P74_CIR_ENQ_ID',
'and cir_display_name is not null',
'and cir_category != ''GDH''',
')',
'where rnk = 1            ',
'          ) b',
'    ON (a.cir_display_name = b.cir_display_name',
'        and a.CIR_DESCRIPTION = b.CIR_DESCRIPTION    --Added by Rahul on 23082019',
'        and a.cir_enq_id = :P74_CIR_ENQ_ID',
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
'      WHERE a.cir_enq_id = :P74_CIR_ENQ_ID',
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
'              :P74_CIR_ENQ_ID,',
'              b.CIR_DISPLAY_ORDER,',
'              b.CIR_GROUP);',
'  ',
'  ',
'delete from V_CUSTOM_INVOICE_REPORT a',
'where a.cir_enq_id = :P74_CIR_ENQ_ID',
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
,p_process_when_button_id=>wwv_flow_imp.id(3106892910545650241)
,p_internal_uid=>3106943178304478721
);
wwv_flow_imp.component_end;
end;
/
