prompt --application/pages/page_00084
begin
--   Manifest
--     PAGE: 00084
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
 p_id=>84
,p_name=>'Allocate/ Deallocate Stock'
,p_alias=>'ALLOCATE-DEALLOCATE-STOCK'
,p_page_mode=>'MODAL'
,p_step_title=>'Allocate/ Deallocate Stock'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12658210944075216437)
,p_plug_name=>'Main Region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12658209300350216421)
,p_plug_name=>'Deallocate Stock'
,p_parent_plug_id=>wwv_flow_imp.id(12658210944075216437)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SD_ID',
',SD_REF_STOCK_ID',
',SD_ENQ_ID',
',SD_ORD_ID',
'--,SD_PO_ID',
'--,SD_ID_ID',
',SD_PRODUCT_ID',
',SD_DELIVERY_LOCATION',
',-1*SD_QUANTITY SD_QUANTITY',
',SD_TYPE',
',SD_REMARKS',
',SD_CREATED_BY',
',SD_CREATED_ON',
',SD_UPDATED_BY',
',SD_UPDATED_ON',
',SD_BATCH_NO',
',SD_PACKING_DATE',
',SD_EXPIRY_DATE',
',SD_LENGTH',
',SD_BREADTH',
',SD_HEIGHT',
',SD_GROSS_WEIGHT',
',SD_CUBIC_SPACE',
',SD_DIRECT_STOCK',
',null sd_deallocate_quantity',
'from V_STOCK_DETAILS',
'where SD_PO_ID is null ',
'and SD_ID_ID is null',
'and sd_enq_id = :P84_ENQ_ID',
'and sd_type =''OUT''',
'and SD_REF_REV_ID is null',
'and SD_ID not in (select SD_REF_REV_ID from V_STOCK_DETAILS where SD_PO_ID is null ',
'                    and SD_ID_ID is null',
'                    and sd_enq_id = :P84_ENQ_ID',
'                    and sd_type =''OUT''',
'                    and SD_REF_REV_ID is not null)'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P84_TYPE'
,p_plug_display_when_cond2=>'DEALLOCATE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657425408614423641)
,p_name=>'SD_DEALLOCATE_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_DEALLOCATE_QUANTITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Deallocate ?'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30621381686625309)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'SD_DEALLOCATE_QUANTITY'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657425776389423644)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>260
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657425846824423645)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>250
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657425904941423646)
,p_name=>'SD_DIRECT_STOCK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_DIRECT_STOCK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'SD_DIRECT_STOCK'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657425989641423647)
,p_name=>'SD_CUBIC_SPACE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_CUBIC_SPACE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'SD_CUBIC_SPACE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657426085503423648)
,p_name=>'SD_GROSS_WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_GROSS_WEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'SD_GROSS_WEIGHT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657426235382423649)
,p_name=>'SD_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_HEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'SD_HEIGHT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657426370978423650)
,p_name=>'SD_BREADTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_BREADTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'SD_BREADTH'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657426391468423651)
,p_name=>'SD_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_LENGTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'SD_LENGTH'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657426545351423652)
,p_name=>'SD_EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_EXPIRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Expiry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
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
,p_static_id=>'SD_EXPIRY_DATE'
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
 p_id=>wwv_flow_imp.id(12657426650649423653)
,p_name=>'SD_PACKING_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_PACKING_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Packing Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
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
,p_static_id=>'SD_PACKING_DATE'
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
 p_id=>wwv_flow_imp.id(12657426762726423654)
,p_name=>'SD_BATCH_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_BATCH_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Batch #'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
,p_static_id=>'SD_BATCH_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657426845662423655)
,p_name=>'SD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Updated On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657426961797423656)
,p_name=>'SD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Updated By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657426981188423657)
,p_name=>'SD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created On'
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657427115145423658)
,p_name=>'SD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657427272780423659)
,p_name=>'SD_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
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
,p_static_id=>'SD_REMARKS'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657427301723423660)
,p_name=>'SD_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'SD_TYPE'
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
 p_id=>wwv_flow_imp.id(12657427466989423661)
,p_name=>'SD_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Allocated<br>Qty.'
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
,p_static_id=>'SD_QUANTITY'
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
 p_id=>wwv_flow_imp.id(12657427559999423662)
,p_name=>'SD_DELIVERY_LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_DELIVERY_LOCATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Delivery Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(87525276340829036)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'SD_DELIVERY_LOCATION'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12657427613768423663)
,p_name=>'SD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(11504197761410516)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'SD_PRODUCT_ID'
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
 p_id=>wwv_flow_imp.id(12658208851821216416)
,p_name=>'SD_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_ORD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658208973351216417)
,p_name=>'SD_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Order#/ Enquiry#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(12654531474356303473)
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
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658209061725216418)
,p_name=>'SD_REF_STOCK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_REF_STOCK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'SD_REF_STOCK_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658209091212216419)
,p_name=>'SD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'SD_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(12658209263537216420)
,p_internal_uid=>1031774815027097446
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
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(12657422200787410877)
,p_interactive_grid_id=>wwv_flow_imp.id(12658209263537216420)
,p_static_id=>'123226'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(12657422105820410875)
,p_report_id=>wwv_flow_imp.id(12657422200787410877)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657408211508410826)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(12657425408614423641)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657409640081410831)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(12657425846824423645)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657410120037410832)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(12657425904941423646)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657410633105410834)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(12657425989641423647)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657411083270410835)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(12657426085503423648)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657411677246410837)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(12657426235382423649)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657412089757410838)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(12657426370978423650)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657412618940410839)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(12657426391468423651)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657413089222410841)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(12657426545351423652)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657413659490410843)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(12657426650649423653)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657414095409410844)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(12657426762726423654)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657414609875410846)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(12657426845662423655)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657415113405410847)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(12657426961797423656)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657415579770410849)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(12657426981188423657)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657416132237410850)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(12657427115145423658)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657416582402410852)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(12657427272780423659)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657417122959410854)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(12657427301723423660)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657417625277410855)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(12657427466989423661)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657418114337410857)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(12657427559999423662)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>241
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657418607274410858)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(12657427613768423663)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>304
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657420091826410863)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(12658208851821216416)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657420620450410864)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(12658208973351216417)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657421178307410866)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(12658209061725216418)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657421579318410871)
,p_view_id=>wwv_flow_imp.id(12657422105820410875)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(12658209091212216419)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12658231232254302082)
,p_plug_name=>'Allocate Stock'
,p_region_name=>'AllocateStock'
,p_parent_plug_id=>wwv_flow_imp.id(12658210944075216437)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SD_ID',
',SD_REF_STOCK_ID',
',SD_ENQ_ID',
',SD_ORD_ID',
',SD_PO_ID',
',SD_ID_ID',
',SD_PRODUCT_ID',
',SD_DELIVERY_LOCATION',
'--,(select EOD_QUANTITY from V_ENQUIRIES_ORDERS_DETAILS where eod_enq_id = :P84_ENQ_ID and eod_product_id = SD_PRODUCT_ID) SD_QUANTITY',
',SD_QUANTITY',
',SD_TYPE',
',SD_REMARKS',
',SD_CREATED_BY',
',SD_CREATED_ON',
',SD_UPDATED_BY',
',SD_UPDATED_ON',
',SD_BATCH_NO',
',SD_PACKING_DATE',
',SD_EXPIRY_DATE',
',SD_LENGTH',
',SD_BREADTH',
',SD_HEIGHT',
',SD_GROSS_WEIGHT',
',SD_CUBIC_SPACE',
',SD_DIRECT_STOCK',
',FN_STOCK_BALANCE(sd_id) sd_balance',
',null sd_allocate_quantity',
'from V_STOCK_DETAILS',
'where sd_product_id in (select eod_product_id from V_ENQUIRIES_ORDERS_DETAILS where eod_enq_id = :P84_ENQ_ID and nvl(EOD_PRODUCT_STATUS,''IP'') not in (''OR'',''RC''))',
'and nvl(sd_enq_id,-1) != :P84_ENQ_ID',
'and sd_type =''IN''',
'and FN_STOCK_BALANCE(sd_id)> 0'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P84_TYPE'
,p_plug_display_when_cond2=>'ALLOCATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Allocate Stock'
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
 p_id=>wwv_flow_imp.id(12658209600322216424)
,p_name=>'SD_ALLOCATE_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_ALLOCATE_QUANTITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Allocate<br>Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'SD_ALLOCATE_QUANTITY'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658209726266216425)
,p_name=>'SD_BALANCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_BALANCE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Balance'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'SD_BALANCE'
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
 p_id=>wwv_flow_imp.id(12658210484372216433)
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
 p_id=>wwv_flow_imp.id(12658210598991216434)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658215658409302062)
,p_name=>'SD_DIRECT_STOCK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_DIRECT_STOCK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'SD_DIRECT_STOCK'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658216230055302062)
,p_name=>'SD_CUBIC_SPACE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_CUBIC_SPACE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'SD_CUBIC_SPACE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658216780930302063)
,p_name=>'SD_GROSS_WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_GROSS_WEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'SD_GROSS_WEIGHT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658217457914302063)
,p_name=>'SD_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_HEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'SD_HEIGHT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658218043167302063)
,p_name=>'SD_BREADTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_BREADTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'SD_BREADTH'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658218660500302063)
,p_name=>'SD_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_LENGTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'SD_LENGTH'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658219239906302063)
,p_name=>'SD_EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_EXPIRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Expiry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
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
,p_static_id=>'SD_EXPIRY_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658219850278302064)
,p_name=>'SD_PACKING_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_PACKING_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Packing Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
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
,p_static_id=>'SD_PACKING_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658220419115302064)
,p_name=>'SD_BATCH_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_BATCH_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Batch #'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
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
,p_static_id=>'SD_BATCH_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658220983292302065)
,p_name=>'SD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Updated On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658221668008302065)
,p_name=>'SD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Updated By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658222271987302066)
,p_name=>'SD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658222863355302066)
,p_name=>'SD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658223405184302066)
,p_name=>'SD_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
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
,p_static_id=>'SD_REMARKS'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658223991415302067)
,p_name=>'SD_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'SD_TYPE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658224581173302067)
,p_name=>'SD_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'SD_QUANTITY'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658225215113302067)
,p_name=>'SD_DELIVERY_LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_DELIVERY_LOCATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Delivery Location'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(87525276340829036)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'SD_DELIVERY_LOCATION'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658225834894302068)
,p_name=>'SD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(11504197761410516)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'SD_PRODUCT_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658226459265302068)
,p_name=>'SD_ID_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_ID_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Inward#, Del. date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(12654430816033072053)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658227020737302069)
,p_name=>'SD_PO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_PO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'PO#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(12654431396714128367)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658227618917302069)
,p_name=>'SD_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_ORD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658228210424302069)
,p_name=>'SD_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Order#/ Enquiry#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(12654531474356303473)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658228811308302070)
,p_name=>'SD_REF_STOCK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_REF_STOCK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'SD_REF_STOCK_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12658229469961302070)
,p_name=>'SD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'SD_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(12658230735746302079)
,p_internal_uid=>1031753342818011787
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
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(12658230341236302076)
,p_interactive_grid_id=>wwv_flow_imp.id(12658230735746302079)
,p_static_id=>'123225'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(12658230257272302076)
,p_report_id=>wwv_flow_imp.id(12658230341236302076)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657513760291634342)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(12658209600322216424)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657514347945634344)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(12658209726266216425)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12657608981740103938)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(12658210598991216434)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658215188411302062)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(12658215658409302062)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658215832250302062)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(12658216230055302062)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658216411426302062)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(12658216780930302063)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658217010816302063)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(12658217457914302063)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658217643386302063)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(12658218043167302063)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658218224885302063)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(12658218660500302063)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658218797760302063)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(12658219239906302063)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658219433566302063)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(12658219850278302064)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658220038587302064)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(12658220419115302064)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658220613236302064)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(12658220983292302065)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658221264624302065)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(12658221668008302065)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658221807616302065)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(12658222271987302066)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658222402747302066)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(12658222863355302066)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658223044703302066)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(12658223405184302066)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658223616881302066)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(12658223991415302067)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>52
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658224246547302067)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(12658224581173302067)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658224785658302067)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(12658225215113302067)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>282
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658225383890302067)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(12658225834894302068)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>267
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658226064119302068)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(12658226459265302068)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>222
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658226630245302068)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(12658227020737302069)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658227185568302069)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(12658227618917302069)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658227790107302069)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(12658228210424302069)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658228406495302069)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(12658228811308302070)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12658228984182302070)
,p_view_id=>wwv_flow_imp.id(12658230257272302076)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(12658229469961302070)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12657425043250423637)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(12658210944075216437)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_alignment=>'RIGHT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12658210091688216429)
,p_name=>'P84_ORD_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12658210944075216437)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12658210861636216436)
,p_name=>'P84_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12658210944075216437)
,p_item_default=>'ALLOCATE'
,p_prompt=>' '
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Allocate;ALLOCATE,Deallocate;DEALLOCATE'
,p_colspan=>4
,p_grid_column=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12658213681165216465)
,p_name=>'P84_ENQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12658210944075216437)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12657424674883423633)
,p_tabular_form_region_id=>wwv_flow_imp.id(12658231232254302082)
,p_validation_name=>'Validate Allocate Qty.'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF to_number(:SD_ALLOCATE_QUANTITY) > to_number(:SD_BALANCE) THEN',
'   return ''Qty. '' || :SD_ALLOCATE_QUANTITY || '' must be less than or equal to Balance quantity '' || :SD_BALANCE ;',
'END IF;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(12657425043250423637)
,p_associated_column=>'SD_ALLOCATE_QUANTITY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12658209480278216423)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12658231232254302082)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Allocate Stock'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'        v_residue_quantity number := 0;',
'        qty_limit_exceed EXCEPTION;',
'        --PRAGMA exception_init(qty_limit_exceed, -20111); commented by rahul',
'        v_err_message varchar2(4000);',
'        v_success_failure   varchar2(4000);',
'begin',
'',
'        select nvl(sum(nvl(eod_quantity,0)),0) + nvl(sum(nvl(sd_quantity,0)),0) residue_quantity',
'        into v_residue_quantity',
'        from   V_ENQUIRIES_ORDERS_DETAILS,',
'                ( select sd_enq_id,sd_product_id,sum(sd_quantity)  sd_quantity',
'                    from V_STOCK_DETAILS',
'                   where sd_enq_id =  :P84_ENQ_ID',
'                    and sd_product_id = :sd_product_id',
'                    and  sd_type = ''OUT''',
'                group by sd_enq_id,sd_product_id',
'                ) ',
'        where eod_enq_id =  :P84_ENQ_ID',
'        and eod_product_id = :sd_product_id',
'        and eod_enq_id = sd_enq_id (+)',
'        and eod_product_id = sd_product_id (+)',
'        group by eod_enq_id,eod_product_id',
'        having nvl(sum(nvl(eod_quantity,0)),0) + nvl(sum(nvl(sd_quantity,0)),0) > 0;',
'        ',
'    IF to_number(:SD_ALLOCATE_QUANTITY) > v_residue_quantity THEN',
'        --raise_application_error(-20111,''Quantity Limit Exceeded'');  commented by rahul',
'        v_err_message := ''Allocated quantity : '' || :SD_ALLOCATE_QUANTITY || '' is more than the total outstanding quantity '' || v_residue_quantity || '' for this order'';',
'        raise qty_limit_exceed;',
'    END IF;',
'        ',
'    if to_number(:SD_ALLOCATE_QUANTITY) <= v_residue_quantity then',
'',
'		INSERT INTO V_STOCK_DETAILS (',
'                sd_id,',
'                sd_ref_stock_id,',
'                sd_enq_id,',
'                sd_ord_id,',
'                --sd_po_id,',
'                --sd_id_id,',
'                sd_product_id,',
'                sd_delivery_location,',
'                sd_quantity,',
'                sd_type,',
'                sd_remarks,',
'                sd_batch_no,',
'                sd_packing_date,',
'                sd_expiry_date,',
'                sd_length,',
'                sd_breadth,',
'                sd_height,',
'                sd_gross_weight,',
'                sd_cubic_space,',
'                sd_direct_stock',
'            )',
'            values',
'            (   seq_sd_id.nextval,',
'                :sd_id ,',
'                :P84_ENQ_ID,',
'                :P84_ORD_ID,',
'                --:sd_po_id,',
'                --:sd_id_id,',
'                :sd_product_id,',
'                :sd_delivery_location,',
'                :SD_ALLOCATE_QUANTITY * -1,',
'                ''OUT'', --sd_type,',
'                ''System generated out entries by Allocate stock option'', --sd_remarks,',
'                :sd_batch_no,',
'                :sd_packing_date,',
'                :sd_expiry_date,',
'                :sd_length,',
'                :sd_breadth,',
'                :sd_height,',
'                :sd_gross_weight,',
'                :sd_cubic_space,',
'                :sd_direct_stock	',
'            );    ',
'',
'        pkg_status.update_status(''ORD_STATUS'',:P84_ENQ_ID,null,v_err_message,v_success_failure,:P84_ORD_ID);   --Added by Rahul on 23-Sep-24 to update product and order status ',
'',
'',
'     end if;',
'EXCEPTION WHEN qty_limit_exceed THEN',
'',
'  apex_error.add_error (',
'    p_message          => v_err_message,',
'    p_display_location => apex_error.c_inline_in_notification  --apex_error.c_inline_with_field_and_notif',
'  );',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error in allocation - #SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12657425043250423637)
,p_process_success_message=>'Successfully allocated'
,p_internal_uid=>12658260629909044919
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12657425323158423640)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12658209300350216421)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Deallocate Stock'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_err_message varchar2(4000);',
'v_success_failure varchar2(4000);',
'',
'begin',
'',
'--insert into error_log values (123,''ranu'',sysdate);',
' --   case :APEX$ROW_STATUS',
' --       when ''U'' then',
'     if :SD_DEALLOCATE_QUANTITY = ''Y'' then',
'		INSERT INTO V_STOCK_DETAILS (',
'                sd_id,',
'                sd_ref_stock_id,',
'                sd_enq_id,',
'                sd_ord_id,',
'                --sd_po_id,',
'                --sd_id_id,',
'                sd_product_id,',
'                sd_delivery_location,',
'                sd_quantity,',
'                sd_type,',
'                sd_remarks,',
'                sd_batch_no,',
'                sd_packing_date,',
'                sd_expiry_date,',
'                sd_length,',
'                sd_breadth,',
'                sd_height,',
'                sd_gross_weight,',
'                sd_cubic_space,',
'                sd_direct_stock,',
'                SD_REF_REV_ID',
'            )',
'            values',
'            (   seq_sd_id.nextval,',
'                :sd_ref_stock_id ,',
'                :P84_ENQ_ID,',
'                :P84_ORD_ID,',
'                --:sd_po_id,',
'                --:sd_id_id,',
'                :sd_product_id,',
'                :sd_delivery_location,',
'                :SD_QUANTITY,',
'                ''OUT'', --sd_type,',
'                ''System generated reversal out entries by Deallocate stock option'', --sd_remarks,',
'                :sd_batch_no,',
'                :sd_packing_date,',
'                :sd_expiry_date,',
'                :sd_length,',
'                :sd_breadth,',
'                :sd_height,',
'                :sd_gross_weight,',
'                :sd_cubic_space,',
'                :sd_direct_stock,',
'                :sd_id',
'            );',
'',
'                pkg_status.update_status(''ORD_STATUS'',:P84_ENQ_ID,null,v_err_message,v_success_failure,:P84_ORD_ID);   --Added by Rahul on 23-Sep-24 to update product and order status ',
'',
'',
'        end if;',
'   --     end case;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error in deallocation'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12657425043250423637)
,p_process_success_message=>'Successfully deallocated'
,p_internal_uid=>12657476472789252136
);
wwv_flow_imp.component_end;
end;
/
