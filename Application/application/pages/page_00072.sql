prompt --application/pages/page_00072
begin
--   Manifest
--     PAGE: 00072
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
 p_id=>72
,p_name=>'PO Details'
,p_step_title=>'PO Details'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'    function issue_po ()',
'    {',
'        $s(''P0_CONFIRM_MSG'',''Do you really want to issue PO ?'');',
'        $s(''P0_REQ'',''ISSUE_PO'');',
'        openModal(''SB_CONFIRM'');',
'    }',
'    ',
'    function fnConfirmYes()',
'    {',
'        if ($v(''P0_REQ'') == "ISSUE_PO")',
'          apex.submit(''ISSUE_PO'');',
'        ',
'        closeModal(''SB_CONFIRM'');',
'    }',
'',
'    function fnConfirmNo()',
'    {        ',
'        closeModal(''SB_CONFIRM'');',
'    }',
'</script>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_javascript_code_onload=>'//igStatusColor("po_products","COLOR_STATUS_1","COLOR_STATUS_2");'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*Grid highlight for Product*/',
'.a-GV-table td a {display: block;width: 100%; height: 100%; color:#000;}',
'',
'#SR_po_details_tab .t-Tabs-link::before {',
'font-family: ''Font APEX Small'' !important;',
'display: inline-block;',
'    content: "\ea86";',
'font-weight: normal;',
'font-size: 20px;',
'color: #28765a;',
'line-height: 1;',
'} #SR_po_details_tab .t-Tabs-link{color: #28765a;font-size: 16px;} /*#d1436f*/',
'#SR_po_products_tab .t-Tabs-link::before {',
'font-family: ''Font APEX Small'' !important;',
'display: inline-block;',
'    content: "\f07a";',
'font-weight: normal;',
'font-size: 20px;',
'color: #773393;',
'line-height: 1;',
'} #SR_po_products_tab .t-Tabs-link{color: #773393;font-size: 16px;}',
'#SR_notes_tab .t-Tabs-link::before {',
'font-family: ''Font APEX Small'' !important;',
'display: inline-block;',
'    content: "\f24a";',
'font-weight: normal;',
'font-size: 20px;',
'color: #d1436f;',
'line-height: 1;',
'} #SR_notes_tab .t-Tabs-link{color: #d1436f;font-size: 16px;} /*CA589D*/',
'#SR_att_details_tab .t-Tabs-link::before {',
'font-family: ''Font APEX Small'' !important;',
'display: inline-block;',
'    content: "\f0c6";',
'font-weight: normal;',
'font-size: 20px;',
'color: #5A68AD;',
'line-height: 1;',
'} #SR_att_details_tab .t-Tabs-link{color: #5A68AD;font-size: 16px;} /*CA589D*/',
'',
'.t-Tabs--pill .t-Tabs-item.is-active  .t-Tabs-link, .t-Tabs--pill .t-Tabs-link:active, .t-Tabs--pill .t-Tabs-link:hover {border-bottom: 2px solid #0572CE;}',
'.t-Tabs--pill .t-Tabs-item.is-active .t-Tabs-link, .t-Tabs--pill .t-Tabs-link:hover {background-color: transparent ;}',
'/*.t-Tabs--pill .t-Tabs-item.is-active .t-Tabs-link, .t-Tabs--pill .t-Tabs-link {   background-image: linear-gradient(to left bottom, #56d8ec, #7edae8, #9cdce5, #b6dee3, #cedfe1);}*/',
'.t-Tabs--pill {  background: #EBF6F9;font-weight:bold; } /*EBF6F9*/',
'.t-Tabs-link { text-align : left;}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(48000070175702516)
,p_plug_name=>'PO Details'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'V_PURCHASE_ORDER_MASTER'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'N',
  'attribute_02', 'TEXT',
  'attribute_03', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3901941322659774201)
,p_plug_name=>'Main Tabs Region'
,p_parent_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(84630958117938780)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47564410818591489)
,p_plug_name=>' Product Details'
,p_region_name=>'po_products'
,p_parent_plug_id=>wwv_flow_imp.id(3901941322659774201)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POD_ID,',
'POD_POM_ID,',
'POD_PRODUCT_ID,',
'POD_RATE,',
'POD_ORDERED_QUANTITY,',
'pom_ord_id,',
'POM_ENQ_ID,',
'POD_CREATED_BY,',
'POD_CREATED_ON,',
'POD_UPDATED_BY,',
'POD_UPDATED_ON,',
'pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT pm_name,',
'POD_DELIVERED_QUANTITY ,',
'case when nvl(POD_DELIVERED_QUANTITY,0) >= nvl(POD_ORDERED_QUANTITY,0)  then :APP_COLOR_ORD_RC',
'     --    when nvl(POD_DELIVERED_QUANTITY,0) < nvl(POD_ORDERED_QUANTITY,0) and nvl(POD_DELIVERED_QUANTITY,0)!= 0 then :APP_COLOR_ORD_PR ',
'',
'end color_status_1',
',case when nvl(POD_DELIVERED_QUANTITY,0) >= nvl(POD_ORDERED_QUANTITY,0)  then :APP_COLOR_ORD_RC',
'  --       when nvl(POD_DELIVERED_QUANTITY,0) < nvl(POD_ORDERED_QUANTITY,0) and nvl(POD_DELIVERED_QUANTITY,0)!= 0  then :APP_COLOR_ORD_PR',
'end color_status_2',
',case when nvl(POD_DELIVERED_QUANTITY,0) >= nvl(POD_ORDERED_QUANTITY,0)  then',
'''style=background-image:linear-gradient(90deg,'' || :APP_COLOR_ORD_RC ||'','' || :APP_COLOR_ORD_RC ||'');color:#000!important'' ',
'else null',
'end CSS_STYLE,',
'--nvl(POD_RATE,0) * nvl(POD_ORDERED_QUANTITY,0) rate_order_qty_total,  --Commented by Rahul on 12-Nov-24 and added unitwise rate',
'--nvl(POD_RATE,0) * nvl(POD_DELIVERED_QUANTITY,0) rate_del_qty_total,',
'nvl(FN_Convert_PO_AMT(eod_id,POD_CALC_UNIT_RATE_RND,''TOTAL_AMT'',POD_RATE_UNIT),0) * nvl(POD_ORDERED_QUANTITY,0) rate_order_qty_total,',
'nvl(FN_Convert_PO_AMT(eod_id,POD_CALC_UNIT_RATE_RND,''TOTAL_AMT'',POD_RATE_UNIT),0) * nvl(POD_DELIVERED_QUANTITY,0) rate_del_qty_total,',
'pod_verified',
'--Added by Rahul on 12-Nov-24 start',
'--,fn_convert_amt_unitwise(eod_id,POD_RATE) Unit_rate  ',
',nvl(eod_costing_unit,''CTN'') product_costing_unit',
'--Added by Rahul on 12-Nov-24 end',
'/* Added by Rahul on 24-Nov-24 for Satkamal PO unitwise rate start*/',
',POD_RATE_UNIT',
',POD_CALC_UNIT_RATE',
',POD_CALC_UNIT_RATE_RND',
',POD_PRODUCT_DESCRIPTION',
',eod_id',
'/* Added by Rahul on 24-Nov-24 for Satkamal PO unitwise rate end*/',
',POD_QTY_UNITWISE --Added by Rahul on 11-Apr-25 for SKE',
'FROM V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS ,V_PRODUCT_MASTER',
',V_ENQUIRIES_ORDERS_DETAILS --Added by Rahul on 12-Nov-24',
'WHERE pom_id = pod_pom_id',
'and POD_PRODUCT_ID = pm_id',
'AND   POD_POM_ID = :P72_POM_ID',
'--Added by Rahul on 12-Nov-24  start',
'and pom_enq_id = eod_enq_id',
'and pod_product_id = eod_product_id',
'--Added by Rahul on 12-Nov-24 end',
'and pm_id = eod_product_id',
'and eod_enq_id = :P72_POM_ENQ_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P72_POM_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P72_POM_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>' Product Details'
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
 p_id=>wwv_flow_imp.id(27614598762485767)
,p_name=>'POD_DELIVERED_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_DELIVERED_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Delivered<br>Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
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
 p_id=>wwv_flow_imp.id(27614707976485768)
,p_name=>'COLOR_STATUS_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLOR_STATUS_1'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(27614873895485769)
,p_name=>'COLOR_STATUS_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLOR_STATUS_2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47564582551591491)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47564715674591492)
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
 p_id=>wwv_flow_imp.id(48132118094567444)
,p_name=>'POD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_ID'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48132156823567445)
,p_name=>'POD_POM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_POM_ID'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48132283220567446)
,p_name=>'POD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'POD_PRODUCT_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48132427298567447)
,p_name=>'POD_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('Rate (\20B9)')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_column_comment=>'Format Mask - 999G999G999G999G990D00'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48133616149567459)
,p_name=>'POD_ORDERED_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_ORDERED_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ordered<br>Qty.'
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
,p_column_comment=>'999G999G999G999G999G999G990'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48133753964567461)
,p_name=>'POM_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_ORD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48133919776567462)
,p_name=>'POM_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48133948187567463)
,p_name=>'POD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created<br>By'
,p_heading_alignment=>'CENTER'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48134040928567464)
,p_name=>'POD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created<br>On'
,p_heading_alignment=>'CENTER'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48134217044567465)
,p_name=>'POD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated<br>By'
,p_heading_alignment=>'CENTER'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48134253337567466)
,p_name=>'POD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated<br>On'
,p_heading_alignment=>'CENTER'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(48134372041567467)
,p_name=>'PM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_link_target=>'javascript:void(0);'
,p_link_text=>'&PM_NAME.'
,p_link_attributes=>'&CSS_STYLE.'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91367350218703168)
,p_name=>'EOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'EOD ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91367438015703169)
,p_name=>'POD_PRODUCT_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_PRODUCT_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
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
 p_id=>wwv_flow_imp.id(91367528455703170)
,p_name=>'POD_CALC_UNIT_RATE_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_CALC_UNIT_RATE_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('Calc. Unit Rate Rnd (\20B9)')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>270
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
 p_id=>wwv_flow_imp.id(91367620013703171)
,p_name=>'POD_CALC_UNIT_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_CALC_UNIT_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('Calc. Unit Rate (\20B9)')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>260
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_item_attributes=>'readonly="readonly"'
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
 p_id=>wwv_flow_imp.id(91367690525703172)
,p_name=>'POD_RATE_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_RATE_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'PO Rate Display Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(82766796451579644)
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
 p_id=>wwv_flow_imp.id(91367832146703173)
,p_name=>'PRODUCT_COSTING_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_COSTING_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product Costing Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(21656474658278457)
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91367923700703174)
,p_name=>'RATE_DEL_QTY_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE_DEL_QTY_TOTAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Rate * <br>Del Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(91368013319703175)
,p_name=>'RATE_ORDER_QTY_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE_ORDER_QTY_TOTAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Rate * <br>Order Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(94356777670689611)
,p_name=>'POD_QTY_UNITWISE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_QTY_UNITWISE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Unitwise<br>Qty.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>300
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
 p_id=>wwv_flow_imp.id(143012622253343555)
,p_name=>'CSS_STYLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CSS_STYLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6951882624994450266)
,p_name=>'POD_VERIFIED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_VERIFIED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_RADIOGROUP'
,p_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2')).to_clob
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
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>'(:P72_POM_STATUS = ''DL'' or :P72_POM_STATUS= ''PDL'')'
,p_display_condition2=>'PLSQL'
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(47564482812591490)
,p_internal_uid=>20154852556795648
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>false
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(48131706716561748)
,p_interactive_grid_id=>wwv_flow_imp.id(47564482812591490)
,p_static_id=>'123205'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(48131731848561749)
,p_report_id=>wwv_flow_imp.id(48131706716561748)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30814194048970485)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(27614598762485767)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30821515276067445)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(27614707976485768)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30822075953067447)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(27614873895485769)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48138018460568242)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(47564582551591491)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48139816644578613)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(48132118094567444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48140278025578615)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(48132156823567445)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48140777250578617)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(48132283220567446)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>512
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48141256387578618)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(48132427298567447)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48311479865815559)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(48133616149567459)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48370774367290623)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(48133753964567461)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48371309861290627)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(48133919776567462)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48404845281013995)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(48133948187567463)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48405428437014001)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(48134040928567464)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48405907093014003)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(48134217044567465)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48406338987014004)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(48134253337567466)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48421365341375195)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(48134372041567467)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>381
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82959996283778715)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(91367350218703168)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82960912411778720)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(91367438015703169)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82961847936778726)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(91367528455703170)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>146
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82962763716778730)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(91367620013703171)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82963650737778741)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(91367690525703172)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82964498139778745)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(91367832146703173)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82965369637778750)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(91367923700703174)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(82966363835778760)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(91368013319703175)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142801580246689376)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(143012622253343555)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(243754404019902601)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(94356777670689611)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6947779005417287644)
,p_view_id=>wwv_flow_imp.id(48131731848561749)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(6951882624994450266)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(503870570736697388)
,p_plug_name=>' Notes'
,p_region_name=>'notes'
,p_parent_plug_id=>wwv_flow_imp.id(3901941322659774201)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  un_id',
', un_heading',
', ''u-color-'' || ora_hash(UN_CREATED_BY, 29) || '' u-color-'' || ora_hash(UN_CREATED_BY, 29) || ''-bd'' icon_modifier',
', un_details note_details',
', UN_CREATED_ON note_date',
', apex_string.get_initials(UN_CREATED_BY) user_icon',
', UN_CREATED_BY user_name',
', UN_DISPLAY',
', UN_DISPLAY_ORDER',
', UN_TYPE',
', UN_TYPE_ID',
', UN_ACTIVE',
', un_highlight_color',
'from V_USER_NOTES',
'where un_type_id = :P72_POM_ID',
'and UN_TYPE =''PO'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P72_POM_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P72_POM_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(503871238514697395)
,p_name=>'UN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_ID'
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
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_UN_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(503871894662697401)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>100
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(503871991589697402)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(503872244992697405)
,p_name=>'NOTE_DETAILS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTE_DETAILS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Note Details'
,p_heading_alignment=>'LEFT'
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
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(503872368738697406)
,p_name=>'NOTE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Note Created'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(503872450142697407)
,p_name=>'USER_ICON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ICON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(503872682258697409)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(503872703304697410)
,p_name=>'ICON_MODIFIER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON_MODIFIER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(503872806609697411)
,p_name=>'UN_HEADING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_HEADING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Heading'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(503872980376697412)
,p_name=>'UN_DISPLAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_DISPLAY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Display ?'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(503873063028697413)
,p_name=>'UN_DISPLAY_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_DISPLAY_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Display Order'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(503873112629697414)
,p_name=>'UN_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'PO'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(503873268385697415)
,p_name=>'UN_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P72_POM_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_column_comment=>'Removed P72_EOM_ENQ_ID and considered P72_POM_ID as PO notes should have POM_ID as UN_TYPE_ID - 03-Apr-24'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(503873320461697416)
,p_name=>'UN_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Active ?'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5911358979935961992)
,p_name=>'UN_HIGHLIGHT_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_HIGHLIGHT_COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Highlight Color'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(5815161024608725223)
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
,p_default_expression=>'DEFAULT'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(503870872112697391)
,p_internal_uid=>4841001962067744075
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_update_authorization_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_delete_authorization_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>true
,p_detail_view_before_rows=>'<ul class="t-Comments t-Comments--chat margin-md" id="notes_r">'
,p_detail_view_for_each_row=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon &ICON_MODIFIER." aria-hidden="true">&USER_ICON.</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            &USER_NAME. &middot; <span class="t-Comments-date">&NOTE_DATE.</span> ',
'            <!--<span class="t-Comments-actions">&ACTIONS.</span>-->',
'        </div>',
'        <div class="t-Comments-comment">',
'            &NOTE_DETAILS.',
'        </div>',
'    </div>',
'</li>'))
,p_detail_view_after_rows=>'</ul>'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(504070543012349053)
,p_interactive_grid_id=>wwv_flow_imp.id(503870872112697391)
,p_static_id=>'123206'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(490368531058411583)
,p_report_id=>wwv_flow_imp.id(504070543012349053)
,p_view_type=>'DETAIL'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(490368623884416516)
,p_view_id=>wwv_flow_imp.id(490368531058411583)
,p_display_seq=>1000
,p_column_id=>wwv_flow_imp.id(503873063028697413)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(504070622467349053)
,p_report_id=>wwv_flow_imp.id(504070543012349053)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(490369648344442041)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(503872806609697411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(490370370550442043)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(503872980376697412)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(490371022245442045)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(503873063028697413)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(490371738344442047)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(503873112629697414)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>173
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(490372477228442050)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(503873268385697415)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(490373181876442052)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(503873320461697416)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(504072683064349071)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(503871238514697395)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(504075593770349082)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(503871894662697401)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(504078140911375396)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(503872244992697405)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>521
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(504078636451375398)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(503872368738697406)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(504079140876375399)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(503872450142697407)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(504080184003375403)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(503872682258697409)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(504088036903476577)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(503872703304697410)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5815162022574729906)
,p_view_id=>wwv_flow_imp.id(504070622467349053)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5911358979935961992)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3901941251591774200)
,p_plug_name=>' PO Details'
,p_region_name=>'po_details'
,p_parent_plug_id=>wwv_flow_imp.id(3901941322659774201)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7541282411552007093)
,p_plug_name=>'Attachments'
,p_region_name=>'att_details'
,p_parent_plug_id=>wwv_flow_imp.id(3901941322659774201)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>25
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A_ID,',
'A_TYPE,',
'A_TYPE_ID,',
'A_ATTACHMENT,',
'A_NAME,',
'A_MIME_TYPE,',
'A_TITLE,',
'A_REMARKS,',
'A_CREATED_BY,',
'A_CREATED_ON,',
'A_UPDATED_BY,',
'A_UPDATED_ON',
'from V_ATTACHMENTS',
'where A_TYPE = ''PO''',
'and A_TYPE_ID = :P72_POM_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P72_POM_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P72_POM_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>' V_ATTACHMENTS'
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
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {	',
'	var $ = apex.jQuery,  ',
'	toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),  ',
'	toolbarGroup = toolbarData[4];',
'',
'    toolbarGroup.controls.unshift( {  ',
'        type: "SELECT",  ',
'        action: "change-rows-per-page"  ',
'    } );   ',
'  toolbarGroup.controls.push(',
'  {',
'    type: "BUTTON",',
'    action: "addAttachment",',
'    icon: "fa fa-upload fa-anim-horizontal-shake fam-plus fam-is-danger",',
'    iconBeforeLabel: true,',
'    hot: true,',
'  });',
'	config.toolbarData = toolbarData; 	',
'    config.initActions = function(actions) {',
'		',
'		var  rpp = actions.lookup("change-rows-per-page"),  ',
'            originalSet = rpp.set,  ',
'            originalGet = rpp.get;  ',
'        rpp.set = function(val) {  ',
'            val = val === "null" ? null : parseInt(val, 10);  ',
'            originalSet(val);  ',
'        };  ',
'        rpp.get = function() {  ',
'            var val = originalGet();  ',
'            return val === null ? "null" : val;  ',
'        };  ',
'	     ',
'        actions.add(',
'        {',
'          name: "addAttachment",',
'          label: "Add Attachment",',
'          action: addAttach',
'        })               ',
'    }    ',
'',
'  function addAttach(event, focusElement)',
'  {',
'    //javascript:openModal(''ML_SEL'');',
'    var x = apex.item(''P72_POM_ID'').getValue();',
'    var url = "f?p=#APP_ID#:81:#SESSION#::NO:RP,81:P81_A_TYPE,P81_A_TYPE_ID:PO,#P72_POM_ID#";',
'    url = url.replace("#APP_ID#", $v("pFlowId"));',
'    url = url.replace("#SESSION#", $v("pInstance"));',
'    url = url.replace("#P72_POM_ID#", x);',
'    apex.server.process("PREPARE_URL", {',
'    x01: url',
'      }, {',
'      success: function(pData) {',
'       if (pData.success === true) {',
'         apex.navigation.redirect(pData.url);',
'       } else {',
'         console.log("FALSE");',
'       }',
'     },',
'    error: function(request, status, error) {',
'    console.log("status---" + status + " error----" + error);',
'      }',
'    });',
'  }    ',
'console.log(config);',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7541279656506007065)
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
 p_id=>wwv_flow_imp.id(7541279756514007066)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7541279789910007067)
,p_name=>'A_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Updated On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7541279888966007068)
,p_name=>'A_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7541280032177007069)
,p_name=>'A_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created On'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7541280123956007070)
,p_name=>'A_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7541280268888007071)
,p_name=>'A_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
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
 p_id=>wwv_flow_imp.id(7541280338047007072)
,p_name=>'A_TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Title'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(7541280400619007073)
,p_name=>'A_MIME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_MIME_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(7541280506582007074)
,p_name=>'A_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_NAME'
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
 p_id=>wwv_flow_imp.id(7541280601209007075)
,p_name=>'A_ATTACHMENT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Download'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_ID:V_ATTACHMENTS,&A_ID.'
,p_link_text=>'<i class="fa fa-download" style="color: #006ed0; "></i>'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7541280707134007076)
,p_name=>'A_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_TYPE_ID'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7541280837738007077)
,p_name=>'A_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_TYPE'
,p_data_type=>'VARCHAR2'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7541280899696007078)
,p_name=>'A_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7541280977202007079)
,p_internal_uid=>1350916680806792085
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
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
 p_id=>wwv_flow_imp.id(7525985525467866561)
,p_interactive_grid_id=>wwv_flow_imp.id(7541280977202007079)
,p_static_id=>'123204'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7525985457593866561)
,p_report_id=>wwv_flow_imp.id(7525985525467866561)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7525880703882816672)
,p_view_id=>wwv_flow_imp.id(7525985457593866561)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(7541279756514007066)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7525979417121866538)
,p_view_id=>wwv_flow_imp.id(7525985457593866561)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(7541279789910007067)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7525979958625866539)
,p_view_id=>wwv_flow_imp.id(7525985457593866561)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(7541279888966007068)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7525980425717866542)
,p_view_id=>wwv_flow_imp.id(7525985457593866561)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(7541280032177007069)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7525980958263866543)
,p_view_id=>wwv_flow_imp.id(7525985457593866561)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(7541280123956007070)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7525981422904866545)
,p_view_id=>wwv_flow_imp.id(7525985457593866561)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(7541280268888007071)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7525981898948866546)
,p_view_id=>wwv_flow_imp.id(7525985457593866561)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(7541280338047007072)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7525982442014866547)
,p_view_id=>wwv_flow_imp.id(7525985457593866561)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(7541280400619007073)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7525982937982866549)
,p_view_id=>wwv_flow_imp.id(7525985457593866561)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7541280506582007074)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7525983409968866550)
,p_view_id=>wwv_flow_imp.id(7525985457593866561)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7541280601209007075)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7525983942978866552)
,p_view_id=>wwv_flow_imp.id(7525985457593866561)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7541280707134007076)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7525984461844866554)
,p_view_id=>wwv_flow_imp.id(7525985457593866561)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7541280837738007077)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7525984905135866557)
,p_view_id=>wwv_flow_imp.id(7525985457593866561)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7541280899696007078)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3901941459095774202)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3886338597031548759)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(503870570736697388)
,p_button_name=>'P72_ADD_NOTES_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--padRight'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Notes'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.:OTHER:&DEBUG.:34:P34_UN_TYPE,P34_UN_TYPE_ID:ENQ,&P72_EOM_ENQ_ID.'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48000768008702519)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--danger:t-Button--simple:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Back'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa fa-undo-arrow'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48000672801702519)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--danger:t-Button--simple:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P72_POM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_security_scheme=>wwv_flow_imp.id(69913861202257093)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3885444904399048097)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_button_name=>'DISPLAY_STATUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link:t-Button--gapTop'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Status : &P72_POM_STATUS_DESC.'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:void(0);'
,p_button_execute_validations=>'N'
,p_button_condition=>'P72_POM_STATUS'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(91368265590703177)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_button_name=>'DISPLAY_PO_NO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link:t-Button--gapTop'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'PO# : &P72_POM_NO.'
,p_button_redirect_url=>'javascript:void(0);'
,p_button_execute_validations=>'N'
,p_button_condition=>'P72_POM_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(101014854145017712)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_button_name=>'DISPLAY_PO_NO_1'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link:t-Button--gapTop'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'PO# : &P72_POM_ID.'
,p_button_redirect_url=>'javascript:void(0);'
,p_button_execute_validations=>'N'
,p_button_condition=>'P72_POM_NO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48000556175702519)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_condition=>'P72_POM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19108594702642406)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_button_name=>'P72_OUTPUT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Outputs'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.:RP:&DEBUG.::P10_ENQ_ID,P10_OUTPUT_TYPE,P10_CALLING_FROM,APP_OM_ID:&P72_POM_ID.,PO,PO,'
,p_button_condition=>'P72_POM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-file-excel-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_button_comment=>' <i class="fa fa-file-excel-o" style="font-size:16px;color:white"><i class="fa fa-file-pdf-o" style="font-size:16px;color:pink"></i></i>'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48000451181702519)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_condition=>'P72_POM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48500011028068231)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_button_name=>'ISSUE_PO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Issue PO'
,p_button_redirect_url=>'javascript:issue_po();'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P72_POM_ID is not null and :P72_POM_STATUS = ''IP'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3886338130871548758)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(503870570736697388)
,p_button_name=>'P72_ADD_DEFAULT_NOTES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--padRight'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Default Notes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.:OTHER:&DEBUG.:56:P56_TYPE,P56_TYPE_ID:PO,&P72_POM_ID.'
,p_button_condition=>'P72_POM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48199896432623537)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(47564410818591489)
,p_button_name=>'ADD_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Products'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:47:P47_ORDER_ID,P47_SUPPLIER_ID,P47_POM_ID,P47_CALLING_FROM,P47_POM_ID_IW,P47_SELECTED_PRODUCTS:&P72_POM_ORD_ID.,&P72_POM_SUPPLIER_ID.,&P72_POM_ID.,PO,,'
,p_button_condition=>'P72_POM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8892176298529725706)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(7541282411552007093)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:81:P81_A_TYPE,P81_A_TYPE_ID:PO,&P72_POM_ID.'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12727450052408822644)
,p_branch_name=>'Go To Page 35'
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'ISSUE_PO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(48002372183702522)
,p_branch_name=>'Go To Page 72'
,p_branch_action=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::P72_POM_ID:&P72_POM_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18359646149284103)
,p_name=>'P72_POM_PAYMENT_TERMS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Payment Terms'
,p_source=>'POM_PAYMENT_TERMS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>32
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47563588763591481)
,p_name=>'P72_POM_ENQ_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_source=>'POM_ENQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47563988592591485)
,p_name=>'P72_POM_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Customer'
,p_source=>'POM_CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_ORDERED_CUSTOMER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	distinct cm_name as d,',
'		cm_id as r',
'from 	V_ENQUIRIES_ORDERS_MST',
'		,V_CUSTOMER_MASTER',
'where 	eom_customer_id = cm_id',
'and 	eom_ord_id is not null',
'--and 	eom_order_status in (''PPO'',''IP'') --commented this on 30May20 as after PO Issued, Customer was not displayed in Customer LOV',
'and 	nvl(cm_active,''Y'') = ''Y''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Customer -'
,p_cSize=>30
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-sm'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(48002799204702574)
,p_name=>'P72_POM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_source=>'POM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48003125104702581)
,p_name=>'P72_POM_ORD_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Order'
,p_source=>'POM_ORD_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	  ''Inv# - '' || EOM_ENQ_NO || '' - '' || EOM_ORDER_DATE lov_code, EOM_ORD_ID lov_ret',
'from V_ENQUIRIES_ORDERS_MST',
'       ,V_CUSTOMER_MASTER',
'where eom_customer_id = cm_id',
'and EOM_ORD_ID is not null',
'and eom_customer_id = :P72_POM_CUSTOMER_ID',
'and eom_order_status in (''PPO'',''IP'',''POI'',''PDL'',''DL'',''RC'',''PR'',''SHP'')',
'order by EOM_ENQ_NO,EOM_ORDER_DATE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Order -'
,p_lov_cascade_parent_items=>'P72_POM_CUSTOMER_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-sm'
,p_is_persistent=>'N'
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
,p_item_comment=>'Fields removed from Submit - P72_POM_CUSTOMER_ID,P72_POM_ORD_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48003436242702584)
,p_name=>'P72_POM_SUPPLIER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Supplier'
,p_source=>'POM_SUPPLIER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SUPM_NAME || '',''|| SUPM_CITY, SUPM_ID',
'from',
'V_SUPPLIER_MASTER,V_ENQUIRIES_ORDERS_MST, V_ENQUIRIES_ORDERS_DETAILS  --Added EOM/EOD to display list of supp/manufac of specific order by Rahul on 18-Mar-2024. Also removed supp manufac join from query',
'where  SUPM_SUPPLIER_TYPE =''DISTRIBUTOR''',
'and eom_enq_id = eod_enq_id',
'and eod_manufac_id = supm_id',
'and eom_ord_id = :P72_POM_ORD_ID',
'/* Commented by Rahul on 15-Mar-2024 to list all manufac/suppliers in the list start',
'and sml_manufac_id in (',
'select  DISTINCT eod_manufac_id',
'from V_ENQUIRIES_ORDERS_MST,V_ENQUIRIES_ORDERS_DETAILS',
'where eom_enq_id = eod_enq_id',
'and eom_ord_id = :P72_POM_ORD_ID)',
' Commented by Rahul on 15-Mar-2024 to list all manufac/suppliers in the list end */',
'union',
'select distinct SUPM_NAME || '',''|| SUPM_CITY, SUPM_ID  --Added EOM/EOD to display list of supp/manufac of specific order by Rahul on 18-Mar-2024',
'from V_SUPPLIER_MASTER,V_ENQUIRIES_ORDERS_MST, V_ENQUIRIES_ORDERS_DETAILS',
'where SUPM_SUPPLIER_TYPE =''MANUFACTURER''',
'and eom_enq_id = eod_enq_id',
'and eod_manufac_id = supm_id',
'and eom_ord_id = :P72_POM_ORD_ID',
'/* Commented by Rahul on 15-Mar-2024 to list all manufac/suppliers in the list start',
'and SUPM_ID in (',
'select  DISTINCT eod_manufac_id',
'from V_ENQUIRIES_ORDERS_MST,V_ENQUIRIES_ORDERS_DETAILS',
'where eom_enq_id = eod_enq_id',
'and eom_ord_id = :P72_POM_ORD_ID)',
' Commented by Rahul on 15-Mar-2024 to list all manufac/suppliers in the list End */',
'UNION',
'select distinct SUPM_NAME || '',''|| SUPM_CITY, SUPM_ID  ',
'from V_SUPPLIER_MASTER',
'where SUPM_SUPPLIER_TYPE in (''MANUFACTURER'',''DISTRIBUTOR'')',
'and :P72_SHOW_ALL_SUPPLIER = ''Y''',
'UNION',
'select distinct SUPM_NAME || '',''|| SUPM_CITY, SUPM_ID  ',
'from V_SUPPLIER_MASTER',
'where SUPM_SUPPLIER_TYPE in (''MANUFACTURER'',''DISTRIBUTOR'')',
'and supm_id = :P72_POM_SUPPLIER_ID',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Supplier -'
,p_lov_cascade_parent_items=>'P72_POM_ORD_ID'
,p_ajax_items_to_submit=>'P72_POM_ORD_ID,P72_SHOW_ALL_SUPPLIER'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-top-sm'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(48003837944702584)
,p_name=>'P72_POM_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_item_default=>'IP'
,p_source=>'POM_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48004235819702584)
,p_name=>'P72_POM_DL_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Delivery Location'
,p_source=>'POM_DL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_DELIVERY_LOCATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''DELIVERY_LOCATION''',
' order by ST_DISPLAY_ORDER'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Delivery Location -'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48004680361702584)
,p_name=>'P72_POM_BL_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Billing Location'
,p_source=>'POM_BL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_BILLING_LOCATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''BILLING_LOCATION''',
' order by ST_DISPLAY_ORDER'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Billing Location -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48005045111702584)
,p_name=>'P72_POM_DELIVERY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Delivery Date'
,p_source=>'POM_DELIVERY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48005458738702585)
,p_name=>'P72_POM_DISCOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Discount'
,p_source=>'POM_DISCOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48005873318702585)
,p_name=>'P72_POM_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Created By'
,p_source=>'POM_CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P72_POM_ID'
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
 p_id=>wwv_flow_imp.id(48006301495702585)
,p_name=>'P72_POM_CREATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Created On'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'POM_CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P72_POM_ID'
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
 p_id=>wwv_flow_imp.id(48006690260702585)
,p_name=>'P72_POM_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Updated By'
,p_source=>'POM_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P72_POM_ID'
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
 p_id=>wwv_flow_imp.id(48007030403702585)
,p_name=>'P72_POM_UPDATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Updated On'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'POM_UPDATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P72_POM_ID'
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
 p_id=>wwv_flow_imp.id(91368332342703178)
,p_name=>'P72_POM_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_source=>'POM_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3901940982498774197)
,p_name=>'P72_POM_STATUS_DESC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ST_NAME ',
'from V_SETUP_TABLE ',
'where st_type = ''PO_STATUS'' ',
'and ST_CODE = nvl(:P72_POM_STATUS,''IP'')'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3901941023944774198)
,p_name=>'P72_POM_SUPPLIER_CONTACT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Supplier Contact'
,p_source=>'POM_CONTACT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CTM_NAME || nvl2(CTM_DESIGNATION,'' - '','''') || CTM_DESIGNATION display,CTM_ID return',
'from V_CONTACTS_MASTER ',
'where CTM_CATEGORY = ''SUPPLIER''',
'and CTM_SUP_ID = :P72_POM_SUPPLIER_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Supplier Contact -'
,p_lov_cascade_parent_items=>'P72_POM_SUPPLIER_ID'
,p_ajax_items_to_submit=>'P72_POM_SUPPLIER_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(5911358641070961988)
,p_name=>'P72_POM_REF_COMM_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3901941251591774200)
,p_item_source_plug_id=>wwv_flow_imp.id(48000070175702516)
,p_prompt=>'Ref. Communication Remarks'
,p_source=>'POM_REF_COMM_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>32
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28841508846955874464)
,p_name=>'P72_SHOW_ALL_SUPPLIER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3901941459095774202)
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Show All Suppliers;Y'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(48133460415567458)
,p_tabular_form_region_id=>wwv_flow_imp.id(47564410818591489)
,p_validation_name=>'ValidateEnteredQuantity'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_rem_qty number;',
'v_ord_qty number;',
'v_total_qty number;',
'v_stock_qty number;',
'begin',
'',
'if  :POD_ORDERED_QUANTITY <= 0 then',
'--insert into error_log (el_text) values (''1 if'');commit;',
'   return ''Entered Qty. '' || :POD_ORDERED_QUANTITY || '' cannot be less than or equal to 0'';',
'end if;',
'',
'    begin',
'        select eod_quantity',
'        into v_total_qty',
'        from V_ENQUIRIES_ORDERS_DETAILS',
'        where eod_product_id = :POD_PRODUCT_ID',
'        and eod_enq_id = :POM_ENQ_ID;',
'        --insert into error_log (el_text) values (''2 v_total_qty'' || v_total_qty || '',''||:POM_ENQ_ID ||'',''||:POD_PRODUCT_ID);commit;',
'    exception when others then',
'        v_total_qty := 0 ;',
'       -- insert into error_log (el_text) values (''2 v_total_qty exception'' || v_total_qty || '',''||:POM_ENQ_ID ||'',''||:POD_PRODUCT_ID);commit;',
'    end;',
'',
'    begin',
'        SELECT nvl(sum(POD_ORDERED_QUANTITY),0) ord_qty ',
'        into v_ord_qty',
'          FROM V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS ',
'         WHERE pom_id = pod_pom_id',
'          AND pom_ord_id = :POM_ORD_ID --:P72_POM_ORD_ID Modified the condtion from != to =',
'          AND pod_product_id = :POD_PRODUCT_ID',
'          AND pom_status != ''RJ''',
'          AND pom_id != :POD_POM_ID',
'        group by pom_ord_id,POD_PRODUCT_ID;',
'        ',
'       -- insert into error_log (el_text) values (''3 v_ord_qty '' || v_ord_qty);commit;',
'        ',
'    exception when others then',
'        v_ord_qty := 0 ;',
'      --  insert into error_log (el_text) values (''3 v_ord_qty exception'' || v_ord_qty ||'',''||:POM_ORD_ID);commit;',
'    end;',
'',
'--Added below block to consider stock allocated quantity for validating entered quantity in PO Rahul 8-May-25 Start',
'    begin',
'        select -1 * nvl(sum(nvl(sd_quantity,0)),0)',
'        into v_stock_qty',
'        from V_STOCK_DETAILS',
'        where sd_product_id = :POD_PRODUCT_ID',
'        and sd_enq_id = :POM_ENQ_ID',
'        and  SD_PO_ID is null ',
'        and SD_ID_ID is null',
'        and sd_type = ''OUT'';',
'    exception when others then',
'        v_stock_qty := 0;',
'    end;',
'--Added below block to consider stock allocated quantity for validating entered quantity in PO Rahul 8-May-25 end',
'',
'v_rem_qty := nvl(v_total_qty,0) - nvl(v_ord_qty,0) - nvl(v_stock_qty,0) ;',
'--insert into error_log (el_text) values (''4 v_rem_qty '' || v_rem_qty);commit;',
'',
'if v_rem_qty < :POD_ORDERED_QUANTITY then',
'   return ''Entered Qty. - '' || :POD_ORDERED_QUANTITY || '' cannot be greater than balance quantity - '' ||  v_rem_qty;',
'end if;',
'',
'exception when others then',
'',
'return ''In Exception - '' || :POD_ORDERED_QUANTITY  || sqlerrm;',
'--insert into error_log (el_text) values (''main execption'' || v_rem_qty);',
'--commit;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_column=>'POD_ORDERED_QUANTITY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(94353306234689576)
,p_tabular_form_region_id=>wwv_flow_imp.id(47564410818591489)
,p_validation_name=>'Dynamic Validations Hook - PO Products IG'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_sql varchar2(4000);',
'v_cnt number;',
'v_error_msg varchar2(4000);',
'',
'cursor cur_validations is ',
'select VM_SQL , VM_ERROR_MSG',
'from V_VALIDATION_MASTER',
'where vm_page_no = :APP_PAGE_ID',
'and nvl(VM_ACTIVE_YN,''Y'') = ''Y''',
'and vm_page_section = ''PO_PRODUCTS_IG'';',
'begin',
'--insert into error_log(el_text) values (''inside dynamic validation block - '' || V(:POD_PRODUCT_ID));',
'for i in cur_validations loop',
'v_sql := i.VM_SQL;',
'--v_sql := ''select count (distinct eod_exchange_rate) from V_ENQUIRIES_ORDERS_DETAILS where eod_enq_id = '' ||:P23_EOM_ENQ_ID ||''and eod_exchange_rate != ''|| :P23_EOM_REALISE_RATE;',
'--insert into error_log(el_text) values (v_sql);',
'execute immediate v_sql into v_cnt;',
'--insert into error_log(el_text) values (''v_cnt - '' ||v_cnt);',
'if v_cnt != 0 then',
'    v_error_msg := i.VM_ERROR_MSG;',
'    	apex_error.add_error (',
'			p_message          => v_error_msg,',
'			p_display_location => apex_error.c_inline_in_notification );  ',
'end if;',
'end loop;',
'end;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Error saving product details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47563676086591482)
,p_name=>'onChangeGetEnqID'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P72_POM_ORD_ID'
,p_condition_element=>'P72_POM_ORD_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47563799065591483)
,p_event_id=>wwv_flow_imp.id(47563676086591482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select EOM_ENQ_ID into :P72_POM_ENQ_ID From V_ENQUIRIES_ORDERS_MST where EOM_ORD_ID = :P72_POM_ORD_ID;',
'end;'))
,p_attribute_02=>'P72_POM_ORD_ID'
,p_attribute_03=>'P72_POM_ENQ_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3883545138631307694)
,p_name=>'Add Notes - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(503870570736697388)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3883544726755307654)
,p_event_id=>wwv_flow_imp.id(3883545138631307694)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(503870570736697388)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8896054207828489967)
,p_name=>'Add Attachment - Dialog Closed'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7541282411552007093)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8896054134135489966)
,p_event_id=>wwv_flow_imp.id(8896054207828489967)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7541282411552007093)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28841508795504874463)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P72_SHOW_ALL_SUPPLIER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28841508629778874462)
,p_event_id=>wwv_flow_imp.id(28841508795504874463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P72_POM_SUPPLIER_ID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(91367176817703167)
,p_name=>'Set Unit Rate Disp Unitwise'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(47564410818591489)
,p_triggering_element=>'POD_RATE_UNIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(91367104442703166)
,p_event_id=>wwv_flow_imp.id(91367176817703167)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set Unit Rate'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'insert into error_log(el_text) values (''Rahul inside page process of PO unit rate func call EOD_ID - '' || :EOD_ID || ''- POD_RATE -'' || :POD_RATE || '' - POD_RATE_UNIT - ''|| :POD_RATE_UNIT);',
'commit;',
'',
'select FN_Convert_PO_AMT(:EOD_ID,:POD_RATE,''UNIT_PRICE'',:POD_RATE_UNIT)',
'into :POD_CALC_UNIT_RATE',
'from dual;',
'',
':POD_CALC_UNIT_RATE_RND := :POD_CALC_UNIT_RATE;',
'',
'END;'))
,p_attribute_02=>'EOD_ID,POD_RATE,POD_RATE_UNIT'
,p_attribute_03=>'POD_CALC_UNIT_RATE,POD_CALC_UNIT_RATE_RND'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48007902905702587)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(48000070175702516)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from V_PURCHASE_ORDER_MASTER'
,p_internal_uid=>48059052536531083
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48008243172702588)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P72_POM_ID is null then',
'        select "#OWNER#"."SEQ_POM_ID".nextval',
'          into :P72_POM_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(48000451181702519)
,p_internal_uid=>48059392803531084
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48008659986702588)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(48000070175702516)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Attachments'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>48059809617531084
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(91368399271703179)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate PO Number'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_po_no varchar2(100); ',
'    v_po_no_cnt number;',
'    gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT) || ''.''; ',
'    l_params logger.tab_param;',
'    l_scope logger_logs.scope%type := lower($$PLSQL_UNIT);',
'begin',
'',
'    select count(POM_ID)',
'    into v_po_no_cnt',
'    from V_PURCHASE_ORDER_MASTER',
'    where POM_ID = :P72_POM_ID',
'    and POM_NO is not null;',
'',
'    ',
'',
'    IF v_po_no_cnt = 0 THEN',
'    logger.LOG(''before calling function GENERATE_ENQ_INV_NO from PO screen - '' || :P72_POM_ID || '' - ''|| v_po_no_cnt, l_scope);',
'        v_po_no := FN_GENERATE_ENQ_INV_NO(''PO'',:P72_POM_ID);',
'      ',
'            update V_PURCHASE_ORDER_MASTER',
'            set POM_NO = (CASE WHEN POM_NO IS NULL THEN v_po_no ELSE POM_NO',
'                                        END)',
'            where POM_ID = :P72_POM_ID',
'            and POM_NO is null;',
'        logger.LOG(''after calling function GENERATE_ENQ_INV_NO from PO screen - '' || v_po_no, l_scope);',
'    END IF;',
'    ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10800868442076903
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48009085514702588)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(48000672801702519)
,p_internal_uid=>48060235145531084
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48132002994567443)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(47564410818591489)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'PO Products - Save IG Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>48183152625395939
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3901941189777774199)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(503870570736697388)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'PO Notes - Save IG Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3901992339408602695
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39353341372126746)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update_PO_Status_To_IP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_error_msg varchar2(4000);',
'v_success_failure  varchar2(4000);',
'gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT);',
'  l_scope logger_logs.scope%type := gc_scope_prefix;',
'  l_params logger.tab_param;',
'  ',
'begin',
'    logger.append_param(l_params, ''P72_POM_ID'', :P72_POM_ID);',
'    logger.append_param(l_params, ''P72_POM_ORD_ID'', :P72_POM_ORD_ID);   ',
'    logger.append_param(l_params, ''P72_POM_STATUS'', :P72_POM_STATUS); ',
'    ',
'    logger.LOG(''START of Page Process of Purchase Order To Update Status to IP'', l_scope, NULL, l_params);',
'    ',
'--uncommented below if condition of P72_POM_STATUS = OR as status was updated to IP even if DL PO was verified - on 08-Apr-21 Ranu',
'/*',
'IF :P72_POM_STATUS = ''OR'' THEN',
'    pkg_status.update_status(''PO'',:P72_POM_ID,''IP'',v_error_msg,v_success_failure,:P72_POM_ORD_ID);',
'END IF;',
'*/',
'pkg_status.update_status(''PO'',:P72_POM_ID,null,v_error_msg,v_success_failure,:P72_POM_ORD_ID); --Added new logic in pkg_status to update the PO status to its current status hence sending status as null Rahul 19-Apr-25',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(48000556175702519)
,p_internal_uid=>39404491002955242
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8896054037415489965)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7541282411552007093)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'PO ATTACHMENTS - Save IG Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8896105187046318461
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48500159432071206)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Issue PO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_count NUMBER;',
'  v_error_msg   VARCHAR2(4000);',
'  v_success_failure number;',
'  gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT);',
'  l_scope logger_logs.scope%type := gc_scope_prefix;',
'  l_params logger.tab_param;',
'BEGIN',
'    logger.append_param(l_params, ''P72_POM_ID'', :P72_POM_ID);',
'    logger.append_param(l_params, ''P72_POM_ORD_ID'', :P72_POM_ORD_ID);    ',
'    logger.LOG(''START of Page Process Issue PO'', l_scope, NULL, l_params);  ',
'    ',
' pkg_status.update_status(''PO'',:P72_POM_ID,''OR'',v_error_msg,v_success_failure,:P72_POM_ORD_ID);',
'',
'    logger.LOG(''End of Page Process Issue PO'', l_scope, NULL, l_params); ',
'EXCEPTION',
'WHEN OTHERS THEN',
'  v_error_msg := sqlerrm;',
'  logger.log_error(''Exception of Page Process Issue PO '' || v_error_msg, l_scope, NULL, l_params); ',
'END;  '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error in issuing PO.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(48500011028068231)
,p_process_when=>'ISSUE_PO'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Status of PO updated successfully.'
,p_internal_uid=>48551309062899702
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8209192724731718457)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_region_id=>wwv_flow_imp.id(7541282411552007093)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PREPARE_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   result varchar2(32767);',
'begin',
'   result:=apex_util.prepare_url(apex_application.g_x01);',
'   apex_json.open_object;',
'   apex_json.write(''success'', true);',
'   apex_json.write(''url'', result);',
'   apex_json.close_object;',
'exception',
' when others then',
'   apex_json.open_object;',
'   apex_json.write(''success'', false);',
'   apex_json.write(''message'', sqlerrm);',
'   apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_internal_uid=>8209243874362546953
);
wwv_flow_imp.component_end;
end;
/
