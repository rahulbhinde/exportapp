prompt --application/pages/page_00089
begin
--   Manifest
--     PAGE: 00089
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
 p_id=>89
,p_name=>'Product Status Details'
,p_alias=>'PRODUCT-STATUS-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Status Details'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'.t-Region-headerItems--title {padding-top : 0.2rem;padding-bottom : 0.2rem;}'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28841657552806970083)
,p_plug_name=>'Product Status Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * ',
'from (',
'SELECT  eod_id,eod_product_id product_id,eod_product_id product_name,',
'eom_ord_id, eom_enq_id,pm_brand',
',max(nvl(eod_quantity,0)) "Total Qty"',
',sum(nvl(po.ord_qty,0)) "Ordered Qty"',
',sum(nvl(po.rec_qty,0)) "Received Qty"',
',max(nvl(eod_quantity,0)) - sum(nvl(po.ord_qty,0)) - max(nvl(sd.sd_quantity,0)) "Pending to Order"',
',max(nvl(eod_quantity,0))  - sum(nvl(po.rec_qty,0)) - max(nvl(sd.sd_quantity,0)) "Pending for Delivery"',
',nvl((select ST_NAME from V_SETUP_TABLE where  EOD_PRODUCT_STATUS = st_code and st_type = ''PRODUCT_STATUS''),''In-Progress'') Status',
',max(nvl(sd.sd_quantity,0)) "Allocated From Stock"',
'FROM V_ENQUIRIES_ORDERS_MST',
'    ,V_ENQUIRIES_ORDERS_DETAILS',
'    ,(SELECT POD_ID,pom_id,pom_ord_id,POD_PRODUCT_ID,POM_SUPPLIER_ID,sum(POD_ORDERED_QUANTITY) ord_qty,sum(POD_DELIVERED_QUANTITY) rec_qty ',
'        FROM V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS ',
'                WHERE pom_id = pod_pom_id',
'                and pom_status not in (''IP'',''RJ'')',
'                --AND pom_id in apex_util.string_to_table(p_string=>:P47_POM_ID_IW, p_separator=>'':'') ',
'               -- AND instr('':'' || :P47_POM_ID_IW || '':'', '':'' || pom_id || '':'') > 0',
'               group by POD_ID,pom_id,pom_ord_id,POD_PRODUCT_ID,POM_SUPPLIER_ID',
'    ) po',
' --   ,V_INWARD_DETAILS',
'    ,(         select sd_enq_id,sd_product_id,nvl(sum(nvl(sd_quantity,0)),0)*-1  sd_quantity',
'				from V_STOCK_DETAILS',
'			   where sd_enq_id =  :P89_EOM_ENQ_ID',
'				and  sd_type = ''OUT''',
'			group by sd_enq_id,sd_product_id',
'    ) sd',
'    ,V_PRODUCT_MASTER',
'WHERE eom_enq_id    = eod_enq_id',
'  AND eom_ord_id    = po.pom_ord_id(+)',
'   --AND nvl(po.ord_qty,0) <> nvl(po.rec_qty,0)',
'    AND eod_product_id = po.POD_PRODUCT_ID(+)',
'    AND eod_product_id = pm_id',
'    and eom_enq_id = :P89_EOM_ENQ_ID',
'    and eod_enq_id = sd.sd_enq_id (+)',
'    and eod_product_id = sd.sd_product_id (+)',
'group by eod_product_id,EOD_PRODUCT_STATUS,eom_ord_id, eom_enq_id,pm_brand,eod_id',
'    )'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P89_EOM_ENQ_ID'
,p_prn_page_header=>'Product Status Details'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28841649249589970060)
,p_name=>'Allocated From Stock'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Allocated From Stock'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Allocated From Stock'
,p_heading_alignment=>'RIGHT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28841649829001970060)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28841650424083970060)
,p_name=>'Pending for Delivery'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Pending for Delivery'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pending For Delivery'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(28841651083486970061)
,p_name=>'Pending to Order'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Pending to Order'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pending To Order'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28841651686711970061)
,p_name=>'Received Qty'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Received Qty'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Received Qty'
,p_heading_alignment=>'RIGHT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28841652242651970061)
,p_name=>'Ordered Qty'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Ordered Qty'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ordered Qty'
,p_heading_alignment=>'RIGHT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28841652907431970061)
,p_name=>'Total Qty'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Total Qty'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Qty'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(28841653463512970062)
,p_name=>'EOM_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_ID'
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
 p_id=>wwv_flow_imp.id(28841654022272970062)
,p_name=>'EOM_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ORD_ID'
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
 p_id=>wwv_flow_imp.id(28841654687480970063)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28891053955903952741)
,p_name=>'PRODUCT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_NAME'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_is_required=>true
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28891054026644952742)
,p_name=>'EOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(28891055066645952752)
,p_name=>'PM_BRAND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_BRAND'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Brand'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(28841657037705970077)
,p_internal_uid=>3616375181064860996
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(28841656629548970074)
,p_interactive_grid_id=>wwv_flow_imp.id(28841657037705970077)
,p_static_id=>'123237'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>20
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(28841656547198970073)
,p_report_id=>wwv_flow_imp.id(28841656629548970074)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841648889656970060)
,p_view_id=>wwv_flow_imp.id(28841656547198970073)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(28841649249589970060)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841649442984970060)
,p_view_id=>wwv_flow_imp.id(28841656547198970073)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(28841649829001970060)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>209
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841650100257970060)
,p_view_id=>wwv_flow_imp.id(28841656547198970073)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(28841650424083970060)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>139
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841650685603970060)
,p_view_id=>wwv_flow_imp.id(28841656547198970073)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(28841651083486970061)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841651251996970061)
,p_view_id=>wwv_flow_imp.id(28841656547198970073)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(28841651686711970061)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841651869846970061)
,p_view_id=>wwv_flow_imp.id(28841656547198970073)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(28841652242651970061)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841652449264970061)
,p_view_id=>wwv_flow_imp.id(28841656547198970073)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(28841652907431970061)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841653084584970062)
,p_view_id=>wwv_flow_imp.id(28841656547198970073)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(28841653463512970062)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>169
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841653652554970062)
,p_view_id=>wwv_flow_imp.id(28841656547198970073)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(28841654022272970062)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841654289114970062)
,p_view_id=>wwv_flow_imp.id(28841656547198970073)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(28841654687480970063)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>300
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32457948265108791464)
,p_view_id=>wwv_flow_imp.id(28841656547198970073)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(28891055066645952752)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32458017686202395022)
,p_view_id=>wwv_flow_imp.id(28841656547198970073)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(28891053955903952741)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>331
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(32458024307545488764)
,p_view_id=>wwv_flow_imp.id(28841656547198970073)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(28891054026644952742)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28891053653634952738)
,p_plug_name=>'Inward Details'
,p_parent_plug_id=>wwv_flow_imp.id(28841657552806970083)
,p_region_template_options=>'t-Region--accent1:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select IM_INWARD_NO,IM_INWARD_DATE,IM_STATUS,ID_QTY_RECEIVED, ID_BATCH_NO, ID_PACKING_DATE, ID_EXPIRY_DATE,ID_PO_ID,ID_ORD_ID,ID_PRODUCT_ID',
' from V_INWARD_MASTER,V_INWARD_DETAILS',
' where im_id = id_im_id'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(28841657552806970083)
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Inward Details'
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
 p_id=>wwv_flow_imp.id(28891052617947952727)
,p_name=>'ID_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(28841654687480970063)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28891052710264952728)
,p_name=>'ID_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_ORD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(28841654022272970062)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28891052790365952729)
,p_name=>'ID_PO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(28891052826214952730)
,p_name=>'ID_EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_EXPIRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Expiry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(28891052997628952731)
,p_name=>'ID_PACKING_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PACKING_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Packing Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(28891053048483952732)
,p_name=>'ID_BATCH_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_BATCH_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Batch No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(28891053150693952733)
,p_name=>'ID_QTY_RECEIVED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_QTY_RECEIVED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty Received'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(28891053248316952734)
,p_name=>'IM_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(142946820452443213)
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(28891053376770952735)
,p_name=>'IM_INWARD_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_INWARD_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Inward Date'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28891053470865952736)
,p_name=>'IM_INWARD_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IM_INWARD_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Inward#'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(28891053537303952737)
,p_internal_uid=>3566978681466878336
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_no_data_found_message=>'Inward not present'
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(28841533290240259134)
,p_interactive_grid_id=>wwv_flow_imp.id(28891053537303952737)
,p_static_id=>'123239'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(28841533152245259134)
,p_report_id=>wwv_flow_imp.id(28841533290240259134)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841528197398259119)
,p_view_id=>wwv_flow_imp.id(28841533152245259134)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(28891052617947952727)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841528711032259121)
,p_view_id=>wwv_flow_imp.id(28841533152245259134)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(28891052710264952728)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841529183709259122)
,p_view_id=>wwv_flow_imp.id(28841533152245259134)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(28891052790365952729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841529688495259123)
,p_view_id=>wwv_flow_imp.id(28841533152245259134)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(28891052826214952730)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841530202357259125)
,p_view_id=>wwv_flow_imp.id(28841533152245259134)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(28891052997628952731)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841530706445259126)
,p_view_id=>wwv_flow_imp.id(28841533152245259134)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(28891053048483952732)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841531192489259127)
,p_view_id=>wwv_flow_imp.id(28841533152245259134)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(28891053150693952733)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841531636567259129)
,p_view_id=>wwv_flow_imp.id(28841533152245259134)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(28891053248316952734)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841532199014259130)
,p_view_id=>wwv_flow_imp.id(28841533152245259134)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(28891053376770952735)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841532714154259132)
,p_view_id=>wwv_flow_imp.id(28841533152245259134)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(28891053470865952736)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28891054996745952751)
,p_plug_name=>'PO Details'
,p_parent_plug_id=>wwv_flow_imp.id(28841657552806970083)
,p_region_template_options=>'t-Region--accent1:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT POD_ID,pom_id,pom_ord_id,POD_PRODUCT_ID,POM_SUPPLIER_ID,POD_ORDERED_QUANTITY ord_qty,nvl(POD_DELIVERED_QUANTITY,0) rec_qty,POM_DELIVERY_DATE,POM_STATUS ',
'FROM V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS ',
'WHERE pom_id = pod_pom_id',
'and pom_status not in (''IP'',''RJ'')',
'--AND pom_id in apex_util.string_to_table(p_string=>:P47_POM_ID_IW, p_separator=>'':'') ',
'-- AND instr('':'' || :P47_POM_ID_IW || '':'', '':'' || pom_id || '':'') > 0',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(28841657552806970083)
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'PO Details'
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
 p_id=>wwv_flow_imp.id(28891053734914952739)
,p_name=>'POM_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(164022125181208349)
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(28891053820168952740)
,p_name=>'POM_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_DELIVERY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Delivery Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(28891054197606952743)
,p_name=>'REC_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REC_QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Received Qty'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28891054273458952744)
,p_name=>'ORD_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORD_QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ordered Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(28891054395009952745)
,p_name=>'POM_SUPPLIER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_SUPPLIER_ID'
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
,p_lov_id=>wwv_flow_imp.id(32895962227233049206)
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
 p_id=>wwv_flow_imp.id(28891054428424952746)
,p_name=>'POD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_PRODUCT_ID'
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
,p_parent_column_id=>wwv_flow_imp.id(28841654687480970063)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28891054579393952747)
,p_name=>'POM_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_ORD_ID'
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
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(28841654022272970062)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28891054674927952748)
,p_name=>'POM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'PO#'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(28891054749927952749)
,p_name=>'POD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(28891054832052952750)
,p_internal_uid=>3566977386717878323
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
,p_no_data_found_message=>'PO not issued'
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(28841553654860779314)
,p_interactive_grid_id=>wwv_flow_imp.id(28891054832052952750)
,p_static_id=>'123238'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(28841553611226779314)
,p_report_id=>wwv_flow_imp.id(28841553654860779314)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841535683814301664)
,p_view_id=>wwv_flow_imp.id(28841553611226779314)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(28891053734914952739)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841536204701301666)
,p_view_id=>wwv_flow_imp.id(28841553611226779314)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(28891053820168952740)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841550089487779303)
,p_view_id=>wwv_flow_imp.id(28841553611226779314)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(28891054197606952743)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841550585952779304)
,p_view_id=>wwv_flow_imp.id(28841553611226779314)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(28891054273458952744)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841551106793779306)
,p_view_id=>wwv_flow_imp.id(28841553611226779314)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(28891054395009952745)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841551580100779307)
,p_view_id=>wwv_flow_imp.id(28841553611226779314)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(28891054428424952746)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841552090724779308)
,p_view_id=>wwv_flow_imp.id(28841553611226779314)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(28891054579393952747)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841552551642779310)
,p_view_id=>wwv_flow_imp.id(28841553611226779314)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(28891054674927952748)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28841553099588779311)
,p_view_id=>wwv_flow_imp.id(28841553611226779314)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(28891054749927952749)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28891052140576952723)
,p_name=>'P89_PENDING_CUBIC'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(28841657552806970083)
,p_prompt=>'Pending Cubic'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(round(sum(NVL(eod_quantity,0)*NVL(nvl(EOD_CUBIC_SPACE,pm_cubic_space),0)),2),0)  pending_cubic',
'from V_ENQUIRIES_ORDERS_DETAILS,V_PRODUCT_MASTER',
' where eod_product_id = pm_id',
' and eod_enq_id = :P89_EOM_ENQ_ID',
' and nvl(EOD_PRODUCT_STATUS,''CD'') != ''RC'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28891052272293952724)
,p_name=>'P89_RECEIVED_CUBIC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(28841657552806970083)
,p_prompt=>'Received Cubic'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(round(sum(NVL(eod_quantity,0)*NVL(nvl(EOD_CUBIC_SPACE,pm_cubic_space),0)),2),0)  received_cubic',
'from V_ENQUIRIES_ORDERS_DETAILS, V_PRODUCT_MASTER',
' where eod_product_id = pm_id',
' and eod_enq_id = :P89_EOM_ENQ_ID ',
' and nvl(EOD_PRODUCT_STATUS,''CD'') = ''RC'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28891052514596952726)
,p_name=>'P89_TOTAL_CUBIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28841657552806970083)
,p_prompt=>'Total Cubic'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(round(sum(NVL(eod_quantity,0)*NVL(nvl(EOD_CUBIC_SPACE,pm_cubic_space),0)),2),0)  Total_Cubic',
'from V_ENQUIRIES_ORDERS_DETAILS,V_PRODUCT_MASTER',
' where eod_product_id = pm_id',
' and eod_enq_id = :P89_EOM_ENQ_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28891055518659952756)
,p_name=>'P89_EOM_ENQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28841657552806970083)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28841509688405874472)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28841509618594874471)
,p_event_id=>wwv_flow_imp.id(28841509688405874472)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin',
' select ',
' nvl(case when nvl(EOD_PRODUCT_STATUS,''CD'') = ''RC'' then ',
'    nvl(round(sum(NVL(eod_quantity,0)*NVL(nvl(EOD_CUBIC_SPACE,pm_cubic_space),0)),2),0) ',
' end,0) rec_qty,',
' nvl(case when nvl(EOD_PRODUCT_STATUS,''CD'') != ''RC'' then ',
'    nvl(round(sum(NVL(eod_quantity,0)*NVL(nvl(EOD_CUBIC_SPACE,pm_cubic_space),0)),2),0) ',
' end,0)  rem_qty',
' ,nvl(round(sum(NVL(eod_quantity,0)*NVL(nvl(EOD_CUBIC_SPACE,pm_cubic_space),0)),2),0)  total_cubic',
' INTO',
'  :P89_RECEIVED_CUBIC,',
'  :P89_PENDING_CUBIC,',
'  :P89_TOTAL_CUBIC',
' from  V_ENQUIRIES_ORDERS_DETAILS ,V_PRODUCT_MASTER',
' where eod_product_id = pm_id',
' and eod_enq_id = 252 --:P89_EOM_ENQ_ID',
' group by EOD_PRODUCT_STATUS;',
' ',
' exception when others then',
'   :P89_RECEIVED_CUBIC := '''';',
'  :P89_PENDING_CUBIC := '''';',
'  :P89_TOTAL_CUBIC := '''';',
' end;'))
,p_attribute_02=>'P89_EOM_ENQ_ID'
,p_attribute_03=>'P89_TOTAL_CUBIC,P89_RECEIVED_CUBIC,P89_PENDING_CUBIC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
