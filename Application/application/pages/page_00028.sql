prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_name=>'Add Stock'
,p_alias=>'ADD-STOCK'
,p_step_title=>'Add Stock'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11478187582346214)
,p_plug_name=>'Add Stock'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SD_ID,',
'       SD_REF_STOCK_ID,',
'       SD_ENQ_ID,',
'       SD_ORD_ID,',
'       SD_PO_ID,',
'       SD_ID_ID,',
'       SD_PRODUCT_ID,',
'       SD_DELIVERY_LOCATION,',
'       SD_QUANTITY,',
'       SD_TYPE,',
'       SD_REMARKS,',
'       SD_CREATED_BY,',
'       SD_CREATED_ON,',
'       SD_UPDATED_BY,',
'       SD_UPDATED_ON,',
'       SD_BATCH_NO,',
'       SD_PACKING_DATE,',
'       SD_EXPIRY_DATE,',
'       SD_LENGTH,',
'       SD_BREADTH,',
'       SD_HEIGHT,',
'       SD_GROSS_WEIGHT,',
'       SD_CUBIC_SPACE,',
'       SD_DIRECT_STOCK,',
'       case  when SD_LENGTH =0 and SD_BREADTH =0 and SD_HEIGHT =0 then ''cs'' ',
'             when SD_LENGTH is not null and SD_BREADTH is not null and SD_HEIGHT is not null then ''lbh'' ',
'	         when SD_CUBIC_SPACE is not null  then ''cs''',
'	         else ''lbh'' ',
'        end cubic_type,',
'        sd_user_remarks user_remarks,',
'        '''' Product_Stock_LOV_SD_ID',
'  from V_STOCK_DETAILS',
' where SD_ID = :P28_SD_ID',
' --1 = 2 --added so that no records are fetched initially',
' --SD_CREATED_BY = :APP_USER'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'SD_ID'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P28_PRODUCT_PPM'
,p_plug_display_when_cond2=>'PRODUCT'
,p_prn_page_header=>'Add Stock'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11431406833904648)
,p_name=>'SD_GROSS_WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_GROSS_WEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Gross<br>Weight'
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
 p_id=>wwv_flow_imp.id(11431510446904649)
,p_name=>'SD_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_HEIGHT'
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
 p_id=>wwv_flow_imp.id(11431614538904650)
,p_name=>'SD_BREADTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_BREADTH'
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
 p_id=>wwv_flow_imp.id(11431690037904651)
,p_name=>'SD_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_LENGTH'
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
 p_id=>wwv_flow_imp.id(11431860580904652)
,p_name=>'SD_EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_EXPIRY_DATE'
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
 p_id=>wwv_flow_imp.id(11431963535904653)
,p_name=>'SD_PACKING_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_PACKING_DATE'
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
 p_id=>wwv_flow_imp.id(11432058860904654)
,p_name=>'SD_BATCH_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_BATCH_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Batch#'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(11479974778346383)
,p_name=>'SD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_SD_ID'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11480540922346384)
,p_name=>'SD_REF_STOCK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_REF_STOCK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ref Stock ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11484116817346386)
,p_name=>'SD_DELIVERY_LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_DELIVERY_LOCATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Delivery Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(87525276340829036)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11484725723346387)
,p_name=>'SD_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(11485270410346387)
,p_name=>'SD_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_RADIOGROUP'
,p_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2')).to_clob
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:IN;IN,OUT;OUT'
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
,p_default_type=>'STATIC'
,p_default_expression=>'IN'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11485799267346387)
,p_name=>'SD_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11486409456346388)
,p_name=>'SD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
,p_heading_alignment=>'CENTER'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11487054576346388)
,p_name=>'SD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(11487579223346388)
,p_name=>'SD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11488251247346389)
,p_name=>'SD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
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
 p_id=>wwv_flow_imp.id(99157818792842125)
,p_name=>'SD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Product Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>320
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
 p_id=>wwv_flow_imp.id(99157931099842126)
,p_name=>'PRODUCT_STOCK_LOV_SD_ID'
,p_source_type=>'SQL_EXPRESSION'
,p_source_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(SELECT decode(SD_TYPE,''IN'',sd.SD_PRODUCT_ID, sd.SD_ID) LOV_SD_ID',
'from V_STOCK_DETAILS sd',
'where sd.sd_id = :P28_SD_ID)'))
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
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
'  from V_PRODUCT_MASTER',
' where nvl(pm_active,''Y'') = ''Y''',
' and :SD_TYPE = ''IN''',
'UNION',
'select pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT as d , sd_id r',
'from V_STOCK_DETAILS,V_PRODUCT_MASTER',
'where sd_product_id is not null',
'and sd_packing_material_id is null',
'and sd_type = ''IN''',
'and FN_STOCK_BALANCE(sd_id) > 0',
'and :SD_TYPE = ''OUT''',
'and sd_product_id = pm_id'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'SD_TYPE'
,p_ajax_optimize_refresh=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101763846946300094)
,p_name=>'USER_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
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
 p_id=>wwv_flow_imp.id(101766144505300117)
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
 p_id=>wwv_flow_imp.id(101766234769300118)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12727448119157822625)
,p_name=>'SD_DIRECT_STOCK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_DIRECT_STOCK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Direct Stock'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12727448206244822626)
,p_name=>'SD_CUBIC_SPACE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_CUBIC_SPACE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cubic Space'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>250
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
 p_id=>wwv_flow_imp.id(12727448331487822627)
,p_name=>'SD_ID_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_ID_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12727448421443822628)
,p_name=>'SD_PO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_PO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12727448544956822629)
,p_name=>'SD_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_ORD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12727448616985822630)
,p_name=>'SD_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12796068931255358523)
,p_name=>'CUBIC_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUBIC_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_RADIOGROUP'
,p_heading=>'Cubic Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:LXBXH;lbh,Cubic Space;cs'
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
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(11478712737346215)
,p_internal_uid=>15519855469786922
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'There are no record(s) for Stock. Kindly click on "Add Row" to add new Stock entry.'
,p_show_toolbar=>true
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
 p_id=>wwv_flow_imp.id(11479147338346217)
,p_interactive_grid_id=>wwv_flow_imp.id(11478712737346215)
,p_static_id=>'123114'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(11479159854346217)
,p_report_id=>wwv_flow_imp.id(11479147338346217)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11480342869346384)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(11479974778346383)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11480905976346384)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(11480540922346384)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11484521792346386)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(11484116817346386)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>271
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11485117595346387)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(11484725723346387)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11485629478346387)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(11485270410346387)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11486241017346388)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(11485799267346387)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>195
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11486838683346388)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(11486409456346388)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11487419724346388)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(11487054576346388)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11487998696346389)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(11487579223346388)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11488615115346389)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(11488251247346389)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26146423835290612)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(11431406833904648)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26148441434292534)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(11431510446904649)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26150560892295514)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(11431614538904650)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26152636519300067)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(11431690037904651)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26154771672303476)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(11431860580904652)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26156827304306651)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(11431963535904653)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(26158984952310423)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(11432058860904654)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98963085720359698)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(99157818792842125)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98966289257374459)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(99157931099842126)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>250
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(99163446969081712)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(101763846946300094)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101343704608011892)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(101766234769300118)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12676523581634310871)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(12796068931255358523)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12693346522824873893)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(12727448119157822625)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12693347169943873894)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(12727448206244822626)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12693347773856873896)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(12727448331487822627)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12693348282943873897)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(12727448421443822628)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12693348966560873899)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(12727448544956822629)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12693349538837873903)
,p_view_id=>wwv_flow_imp.id(11479159854346217)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(12727448616985822630)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95374817311618955)
,p_plug_name=>'Add Packing Material Stock'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SD_ID,',
'       SD_REF_STOCK_ID,',
'       SD_PACKING_MATERIAL_ID,',
'       SD_RATE,',
'       SD_DELIVERY_LOCATION,',
'     --  decode(sd_type,''IN'',SD_QUANTITY,''OUT'',-1*SD_QUANTITY) SD_QUANTITY, IG is unable to save due to this modified column',
'       SD_QUANTITY,',
'       SD_TYPE,',
'       SD_REMARKS,',
'       SD_CREATED_BY,',
'       SD_CREATED_ON,',
'       SD_UPDATED_BY,',
'       SD_UPDATED_ON,',
'       SD_DIRECT_STOCK,',
'       SD_USER_REMARKS,',
'       '''' PMM_LOV_SD_ID',
'  from V_STOCK_DETAILS',
' where SD_ID = :P28_SD_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'SD_ID'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P28_PRODUCT_PPM'
,p_plug_display_when_cond2=>'PACKING_MATERIAL'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Add Packing Material Stock'
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
 p_id=>wwv_flow_imp.id(95374990514618957)
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
 p_id=>wwv_flow_imp.id(95375142645618958)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(95375213934618959)
,p_name=>'SD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_ID'
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
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_SD_ID'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(95375303953618960)
,p_name=>'SD_REF_STOCK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_REF_STOCK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'SD_REF_STOCK_ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(95375567981618962)
,p_name=>'SD_DELIVERY_LOCATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_DELIVERY_LOCATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Delivery Location'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(87525276340829036)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select -'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(95375616057618963)
,p_name=>'SD_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
 p_id=>wwv_flow_imp.id(95375750994618964)
,p_name=>'SD_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_RADIOGROUP'
,p_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2')).to_clob
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:IN;IN,OUT;OUT'
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
,p_default_type=>'STATIC'
,p_default_expression=>'IN'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_readonly_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_readonly_condition=>'P28_SD_ID'
,p_readonly_for_each_row=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(95375790089618965)
,p_name=>'SD_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(95376593628618973)
,p_name=>'SD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
,p_heading_alignment=>'CENTER'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(95376713603618974)
,p_name=>'SD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(95376866507618975)
,p_name=>'SD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(95376898056618976)
,p_name=>'SD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(99156674874842114)
,p_name=>'PMM_LOV_SD_ID'
,p_source_type=>'SQL_EXPRESSION'
,p_source_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(SELECT decode(SD_TYPE,''IN'',sd.SD_PACKING_MATERIAL_ID, sd.SD_REF_STOCK_ID) LOV_SD_ID',
'from V_STOCK_DETAILS sd',
'where sd.sd_id = :P28_SD_ID)'))
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Packing Material'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
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
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(101152454686709296)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'SD_TYPE'
,p_ajax_optimize_refresh=>true
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101765879920300115)
,p_name=>'SD_USER_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_USER_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
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
 p_id=>wwv_flow_imp.id(101767304467300129)
,p_name=>'SD_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Unit Price (&APP_LOCAL_CURR_SYMBOL.)'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>280
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
 p_id=>wwv_flow_imp.id(101767357816300130)
,p_name=>'SD_PACKING_MATERIAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_PACKING_MATERIAL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'SD_PACKING_MATERIAL_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101767620724300132)
,p_name=>'SD_DIRECT_STOCK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SD_DIRECT_STOCK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(95374939445618956)
,p_internal_uid=>97114755708482930
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'There are no record(s) for Stock. Kindly click on "Add Row" to add new Stock entry.'
,p_show_toolbar=>true
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
 p_id=>wwv_flow_imp.id(101762517463297080)
,p_interactive_grid_id=>wwv_flow_imp.id(95374939445618956)
,p_static_id=>'1043159'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(101762297792297076)
,p_report_id=>wwv_flow_imp.id(101762517463297080)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98760037883391009)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(99156674874842114)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>250
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101329930437972720)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(101765879920300115)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101736303236241500)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(101767304467300129)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101737197793241503)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(101767357816300130)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101739983342296961)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(101767620724300132)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101745319719296987)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(95376898056618976)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101746210237296991)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(95376866507618975)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101747100467296995)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(95376713603618974)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101748010972296999)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(95376593628618973)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101755234767297028)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(95375790089618965)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101756085432297032)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(95375750994618964)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101756991797297036)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(95375616057618963)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101757870452297040)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(95375567981618962)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>164
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101759659766297048)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(95375303953618960)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101760567299297052)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(95375213934618959)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101761507262297059)
,p_view_id=>wwv_flow_imp.id(101762297792297076)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(95375142645618958)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101767090430300127)
,p_plug_name=>'Items Region'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12727447810290822622)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101767090430300127)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Back'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101766996073300126)
,p_name=>'P28_PRODUCT_PPM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(101767090430300127)
,p_prompt=>'Select Type'
,p_source=>'PACKING_MATERIAL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Products;PRODUCT,Packing Material;PACKING_MATERIAL'
,p_read_only_when=>'P28_SD_ID'
,p_read_only_when_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'REDIRECT_SET_VALUE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12727448071368822624)
,p_name=>'P28_SD_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(101767090430300127)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(101765067867300107)
,p_tabular_form_region_id=>wwv_flow_imp.id(95374817311618955)
,p_validation_name=>'CheckQtyBasedOnType'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_error_msg varchar2(4000);',
'v_packing_material_id number;',
'v_bal_stock number;',
'v_entered_qty number;',
'BEGIN',
' ',
'IF (:SD_TYPE = ''IN'' and :SD_QUANTITY < 0) THEN',
'    v_error_msg := ''Entered quantity should be greater than 0'';    ',
'ELSIF (:SD_TYPE = ''OUT''  ) THEN',
'',
'            -- select sd_id',
'            -- into v_packing_material_id',
'            -- from V_STOCK_DETAILS',
'            -- where sd_packing_material_id = :SD_PACKING_MATERIAL_ID',
'            -- and sd_type = ''IN'';',
'',
'           v_bal_stock := FN_STOCK_BALANCE(:SD_REF_STOCK_ID);',
'    --    if (:SD_QUANTITY < 0) then',
'     --        v_error_msg := ''Entered quantity should be greater than 0'';',
'     --   elsif (:SD_QUANTITY > v_bal_stock) then',
'    --Following if contd added for OUT records where qty in database is stored in qty Rahul 9-Oct-24 Start',
'         if (:SD_QUANTITY < 0 ) then',
'            v_entered_qty := -1 * :SD_QUANTITY;',
'         else',
'            v_entered_qty :=  :SD_QUANTITY;',
'         end if;',
'    --Following if contd added for OUT records where qty in database is stored in qty Rahul 9-Oct-24 Start',
'        if (v_entered_qty > v_bal_stock) then',
'            v_error_msg := ''Entered quantity - ''|| v_entered_qty ||'' should be less than or equal to balance quantity - '' || v_bal_stock;',
'        end if;',
'END IF;',
'return v_error_msg;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_column=>'SD_QUANTITY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(101763674726300093)
,p_tabular_form_region_id=>wwv_flow_imp.id(11478187582346214)
,p_validation_name=>'Products - CheckQtyBasedOnType'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_error_msg varchar2(4000);',
'v_packing_material_id number;',
'v_bal_stock number;',
'v_entered_qty  number; ',
'BEGIN',
' ',
'IF (:SD_TYPE = ''IN'' and :SD_QUANTITY < 0) THEN',
'    v_error_msg := ''Entered quantity should be greater than 0'';    ',
'ELSIF (:SD_TYPE = ''OUT''  ) THEN',
'',
'            -- select sd_id',
'            -- into v_packing_material_id',
'            -- from V_STOCK_DETAILS',
'            -- where sd_packing_material_id = :SD_PACKING_MATERIAL_ID',
'            -- and sd_type = ''IN'';',
'',
'           v_bal_stock := FN_STOCK_BALANCE(:SD_REF_STOCK_ID);',
'            ',
'    --Following if contd added for OUT records where qty in database is stored in qty Rahul 9-Oct-24 Start',
'         if (:SD_QUANTITY < 0 ) then',
'            v_entered_qty := -1 * :SD_QUANTITY;',
'         else',
'            v_entered_qty :=  :SD_QUANTITY;',
'         end if;',
'    --Following if contd added for OUT records where qty in database is stored in qty Rahul 9-Oct-24 Start',
'',
'        if (v_entered_qty > v_bal_stock) then',
'            v_error_msg := ''Entered quantity - ''|| v_entered_qty ||'' should be less than or equal to balance quantity - '' || v_bal_stock;',
'        end if;',
'END IF;',
'return v_error_msg;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_column=>'SD_QUANTITY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12676528588908339770)
,p_name=>'onchangeofCubicType'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(11478187582346214)
,p_triggering_element=>'CUBIC_TYPE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'CUBIC_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'lbh'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12676527186534339741)
,p_event_id=>wwv_flow_imp.id(12676528588908339770)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'SD_LENGTH,SD_BREADTH,SD_HEIGHT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12676528207860339742)
,p_event_id=>wwv_flow_imp.id(12676528588908339770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'SD_LENGTH,SD_BREADTH,SD_HEIGHT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12676526749404339741)
,p_event_id=>wwv_flow_imp.id(12676528588908339770)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'SD_CUBIC_SPACE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12676526251534339741)
,p_event_id=>wwv_flow_imp.id(12676528588908339770)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'SD_LENGTH,SD_BREADTH,SD_HEIGHT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12676527723457339741)
,p_event_id=>wwv_flow_imp.id(12676528588908339770)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'SD_CUBIC_SPACE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12676525840988337451)
,p_name=>'onchangeofLBHCalcCubicSpace'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(11478187582346214)
,p_triggering_element=>'SD_LENGTH,SD_BREADTH,SD_HEIGHT'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'CUBIC_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'lbh'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12676525475389337450)
,p_event_id=>wwv_flow_imp.id(12676525840988337451)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'SD_CUBIC_SPACE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'round((nvl(:SD_LENGTH,0) * nvl(:SD_BREADTH,0) * nvl(:SD_HEIGHT,0))/1000000,5)'
,p_attribute_07=>'SD_LENGTH,SD_BREADTH,SD_HEIGHT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101766866569300125)
,p_name=>'Hide Show IG Regions'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_PRODUCT_PPM'
,p_condition_element=>'P28_PRODUCT_PPM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PRODUCT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101766780879300124)
,p_event_id=>wwv_flow_imp.id(101766866569300125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Stock - Products'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11478187582346214)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101766531089300121)
,p_event_id=>wwv_flow_imp.id(101766866569300125)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Packing Material - Stock'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95374817311618955)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101766652532300123)
,p_event_id=>wwv_flow_imp.id(101766866569300125)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Packing Material - Stock'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95374817311618955)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101766642558300122)
,p_event_id=>wwv_flow_imp.id(101766866569300125)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'Stock - Products'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11478187582346214)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101765829815300114)
,p_name=>'onChangeOfInputType'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(95374817311618955)
,p_triggering_element=>'SD_TYPE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'SD_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'IN'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101764151490300097)
,p_event_id=>wwv_flow_imp.id(101765829815300114)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'SD_RATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101765034282300106)
,p_event_id=>wwv_flow_imp.id(101765829815300114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'SD_RATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101764162353300098)
,p_event_id=>wwv_flow_imp.id(101765829815300114)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'SD_RATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101765588691300112)
,p_event_id=>wwv_flow_imp.id(101765829815300114)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'SD_RATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101764639132300102)
,p_name=>'setPackingMaterialDetails'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(95374817311618955)
,p_triggering_element=>'PMM_LOV_SD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101764551240300101)
,p_event_id=>wwv_flow_imp.id(101764639132300102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'setPackingMaterialDetails'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'insert into error_log (el_text) values (''Rahul inside dynamic action of packing material lov change sd_type - '' || :SD_TYPE);',
'',
'IF :SD_TYPE = ''OUT'' THEN',
'    select sd_packing_material_id,sd_id,SD_DELIVERY_LOCATION',
'    into :sd_packing_material_id,:SD_REF_STOCK_ID,:SD_DELIVERY_LOCATION',
'    from V_STOCK_DETAILS',
'    where sd_id = :PMM_LOV_SD_ID',
'    and sd_type = ''IN'';',
'',
'insert into error_log (el_text) values (''Rahul inside dynamic action of packing material lov change SD_REF_STOCK_ID - '' || :SD_REF_STOCK_ID);',
'',
'',
' elsif :SD_TYPE = ''IN'' then',
'     :sd_packing_material_id := :PMM_LOV_SD_ID;',
'     :SD_DELIVERY_LOCATION := null;',
'     :SD_REF_STOCK_ID := null;',
'',
'END IF;',
'',
'exception when others then',
'    :SD_DELIVERY_LOCATION := null;',
'     :SD_REF_STOCK_ID := null;',
'     :sd_packing_material_id := null;',
'end;'))
,p_attribute_02=>'SD_TYPE,PMM_LOV_SD_ID'
,p_attribute_03=>'SD_PACKING_MATERIAL_ID,SD_REF_STOCK_ID,SD_DELIVERY_LOCATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101763337966300089)
,p_name=>'Products - setPackingMaterialDetails'
,p_event_sequence=>60
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(11478187582346214)
,p_triggering_element=>'PRODUCT_STOCK_LOV_SD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101763233569300088)
,p_event_id=>wwv_flow_imp.id(101763337966300089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'setPackingMaterialDetails'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'insert into error_log (el_text) values (''Rahul inside dynamic action of packing material lov change sd_type - '' || :SD_TYPE);',
'',
'IF :SD_TYPE = ''OUT'' THEN',
'    select sd_id, SD_PRODUCT_ID, SD_DELIVERY_LOCATION, SD_DIRECT_STOCK',
'    into :SD_REF_STOCK_ID,:SD_PRODUCT_ID,:SD_DELIVERY_LOCATION,:SD_DIRECT_STOCK',
'    from V_STOCK_DETAILS',
'    where sd_id = :PRODUCT_STOCK_LOV_SD_ID',
'    and sd_type = ''IN'';',
'',
'insert into error_log (el_text) values (''Rahul inside dynamic action of packing material lov change SD_REF_STOCK_ID - '' || :SD_REF_STOCK_ID);',
'',
' elsif :SD_TYPE = ''IN'' then',
'     :SD_PRODUCT_ID := :PRODUCT_STOCK_LOV_SD_ID;',
'     :SD_DELIVERY_LOCATION := null;',
'     :SD_REF_STOCK_ID := null;',
'     :SD_DIRECT_STOCK := ''Y'';',
'',
'END IF;',
'',
'exception when others then',
'    :SD_DELIVERY_LOCATION := null;',
'    :SD_REF_STOCK_ID := null;',
'end;'))
,p_attribute_02=>'SD_TYPE,PRODUCT_STOCK_LOV_SD_ID'
,p_attribute_03=>'SD_REF_STOCK_ID,SD_DELIVERY_LOCATION,SD_PRODUCT_ID,SD_DIRECT_STOCK'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99157552679842123)
,p_name=>'EnableDisableFields'
,p_event_sequence=>70
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(11478187582346214)
,p_triggering_element=>'SD_TYPE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'SD_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'IN'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99157387954842121)
,p_event_id=>wwv_flow_imp.id(99157552679842123)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'DisabledFields'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'SD_BATCH_NO,SD_PACKING_DATE,SD_EXPIRY_DATE,SD_LENGTH,SD_BREADTH,SD_HEIGHT,SD_GROSS_WEIGHT,SD_CUBIC_SPACE,CUBIC_TYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99157522692842122)
,p_event_id=>wwv_flow_imp.id(99157552679842123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'EnableFields'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'SD_BATCH_NO,SD_PACKING_DATE,SD_EXPIRY_DATE,SD_LENGTH,SD_BREADTH,SD_HEIGHT,SD_GROSS_WEIGHT,SD_CUBIC_SPACE,CUBIC_TYPE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(101767225247300128)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(95374817311618955)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Add Packing Material Stock - Save Interactive Grid '
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>104311126443124010
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(101766012699300116)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11478187582346214)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Add Stock - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>104312338991124022
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(101764285535300099)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(95374817311618955)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Packing Material - Update Ref Stock ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update V_STOCK_DETAILS',
'    set sd_ref_stock_id = sd_id',
'    where sd_ref_stock_id is null',
'    and sd_type = ''IN'';',
'',
'    update V_STOCK_DETAILS',
'    set sd_quantity = -1 * sd_quantity',
'    where sd_quantity > 0',
'    and sd_type = ''OUT'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>104314066155124039
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(99155643589842103)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11478187582346214)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Products - Update Ref Stock ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update V_STOCK_DETAILS',
'    set sd_ref_stock_id = sd_id',
'    where sd_ref_stock_id is null',
'    and sd_type = ''IN'';',
'',
'    update V_STOCK_DETAILS',
'    set sd_quantity = -1 * sd_quantity',
'    where sd_quantity > 0',
'    and sd_type = ''OUT'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>106922708100582035
);
wwv_flow_imp.component_end;
end;
/
