prompt --application/pages/page_00082
begin
--   Manifest
--     PAGE: 00082
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
 p_id=>82
,p_name=>'Inward Details'
,p_alias=>'INWARD-DETAILS'
,p_step_title=>'Inward Details'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'    var v_id_id;',
'    var v_po_id;',
'',
'    function close_iw ()',
'    {',
'        $s(''P0_CONFIRM_MSG'',''Are you sure you want to close this Inward Entry ?'');',
'        $s(''P0_REQ'',''SAVE'');',
'        openModal(''SB_CONFIRM'');',
'    }',
'    ',
'    function fnConfirmYes()',
'    {',
'        if ($v(''P0_REQ'') == "SAVE")',
'          apex.submit(''SAVE'');',
'        else if ($v(''P0_REQ'') == "DELETE_PRODUCT")',
'           //apex.submit(''DELETE_PRODUCT'');',
'           apex.server.process ("DELETE_PRODUCT", ',
'                             //  {x01: JSON.stringify(selectedIds),x02: $v(''P23_EOM_ENQ_ID'')},',
'                               {x01: v_id_id,x02: v_po_id},',
'                               {dataType: ''text'', ',
'                                success: function( pData )',
'                                {        ',
'                                      apex.submit('''');',
'                                }',
'                               }',
'					)',
'',
'        closeModal(''SB_CONFIRM'');',
'    }',
'',
'    function fnConfirmNo()',
'    {        ',
'        closeModal(''SB_CONFIRM'');',
'    }',
'',
'    function delete_product(p_id_id, p_po_id)',
'    {',
'        v_id_id = p_id_id;',
'        v_po_id = p_po_id; ',
'        $s(''P0_CONFIRM_MSG'',''Are you sure you want to delete this product ?'');',
'        $s(''P0_REQ'',''DELETE_PRODUCT'');',
'        openModal(''SB_CONFIRM'');',
'    }',
'</script>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Tabs--pill .t-Tabs-item.is-active  .t-Tabs-link, .t-Tabs--pill .t-Tabs-link:active, .t-Tabs--pill .t-Tabs-link:hover {border-bottom: 2px solid #0572CE;}',
'.t-Tabs--pill .t-Tabs-item.is-active .t-Tabs-link, .t-Tabs--pill .t-Tabs-link:hover {background-color: transparent ;}',
'/*.t-Tabs--pill .t-Tabs-item.is-active .t-Tabs-link, .t-Tabs--pill .t-Tabs-link {   background-image: linear-gradient(to left bottom, #56d8ec, #7edae8, #9cdce5, #b6dee3, #cedfe1);}*/',
'.t-Tabs--pill {  background: #EBF6F9;font-weight:bold; } /*EBF6F9*/',
'.t-Tabs-link { text-align : left;}',
'.CSSreadonly {border-radius: 2px;color: #333;background-color: #f2f2f2;border-color: #d9d9d9;}',
'',
'#SR_iw_details_tab .t-Tabs-link::before {',
'font-family: ''Font APEX Small'' !important;',
'display: inline-block;',
'    content: "\ea86";',
'font-weight: normal;',
'font-size: 20px;',
'color: #28765a;',
'line-height: 1;',
'} #SR_iw_details_tab .t-Tabs-link{color: #28765a;font-size: 16px;} /*#d1436f*/',
'#SR_products_tab .t-Tabs-link::before {',
'font-family: ''Font APEX Small'' !important;',
'display: inline-block;',
'    content: "\f07a";',
'font-weight: normal;',
'font-size: 20px;',
'color: #773393;',
'line-height: 1;',
'} #SR_products_tab .t-Tabs-link{color: #773393;font-size: 16px;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12796072319788358557)
,p_plug_name=>'Main Region Buttons and Tabs'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12796072238910358556)
,p_plug_name=>'Buttons Region'
,p_parent_plug_id=>wwv_flow_imp.id(12796072319788358557)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12796073006587358564)
,p_plug_name=>'Tabs Region'
,p_parent_plug_id=>wwv_flow_imp.id(12796072319788358557)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(84630958117938780)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12738578511962931634)
,p_plug_name=>' Inward Details'
,p_region_name=>'iw_details'
,p_parent_plug_id=>wwv_flow_imp.id(12796073006587358564)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'V_INWARD_MASTER'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12796072879297358563)
,p_plug_name=>' Product Details'
,p_region_name=>'products'
,p_parent_plug_id=>wwv_flow_imp.id(12796073006587358564)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_ID,',
'ID_PO_ID,',
'ID_SUPM_ID,',
'ID_PRODUCT_ID,',
'ID_QTY_ORDERED,',
'ID_QTY_RECEIVED,',
'ID_ORD_ID,',
'pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT pm_name,',
'ID_BATCH_NO, ID_PACKING_DATE, ID_EXPIRY_DATE, ID_LENGTH, ID_BREADTH, ID_HEIGHT,ID_CUBIC_SPACE,ID_REMARKS,',
'ID_CREATED_BY, ',
'ID_CREATED_ON, ',
'ID_UPDATED_BY, ',
'ID_UPDATED_ON,',
' ''PO#''||pom_id ||'' - ''|| pom_delivery_date PO,',
' case  when ID_LENGTH =0 and ID_BREADTH =0 and ID_HEIGHT =0 then ''cs'' ',
'       when ID_LENGTH is not null and ID_BREADTH is not null and ID_HEIGHT is not null then ''lbh'' ',
'	   when ID_CUBIC_SPACE is not null  then ''cs''',
'	 else ''lbh'' ',
' end cubic_type',
' ',
'/*case when nvl(POD_DELIVERED_QUANTITY,0) >= nvl(POD_ORDERED_QUANTITY,0)  then :APP_COLOR_ORD_RC',
'     --    when nvl(POD_DELIVERED_QUANTITY,0) < nvl(POD_ORDERED_QUANTITY,0) and nvl(POD_DELIVERED_QUANTITY,0)!= 0 then :APP_COLOR_ORD_PR ',
'',
'end color_status_1',
',case when nvl(POD_DELIVERED_QUANTITY,0) >= nvl(POD_ORDERED_QUANTITY,0)  then :APP_COLOR_ORD_RC',
'  --       when nvl(POD_DELIVERED_QUANTITY,0) < nvl(POD_ORDERED_QUANTITY,0) and nvl(POD_DELIVERED_QUANTITY,0)!= 0  then :APP_COLOR_ORD_PR',
'end color_status_2',
',case when nvl(POD_DELIVERED_QUANTITY,0) >= nvl(POD_ORDERED_QUANTITY,0)  then',
'''style=background-image:linear-gradient(90deg,'' || :APP_COLOR_ORD_RC ||'','' || :APP_COLOR_ORD_RC ||'');color:#000!important'' ',
'else null',
'end CSS_STYLE,*/',
'--nvl(POD_RATE,0) * nvl(POD_ORDERED_QUANTITY,0) rate_order_qty_total,',
'--nvl(POD_RATE,0) * nvl(POD_DELIVERED_QUANTITY,0) rate_del_qty_total,',
'--pod_verified',
',ID_GROSS_WEIGHT --Added by Rahul 07052023',
',id_barcode -- Added by Rahul on 15Jan24',
',(select nvl(ID_QTY_ORDERED,0) - nvl(pod_delivered_quantity,0)  from V_PURCHASE_ORDER_DETAILS where pod_pom_id = ID_PO_ID and pod_product_id = ID_PRODUCT_ID) rem_qty  --Added by Rahul on 15-Mar-24',
',''<span aria-hidden="true" class="fa fa-times-square-o u-color-9-text">'' delete_product',
',eom_invoice_no --Added by Rahul 17-Feb-25',
'FROM V_INWARD_DETAILS ,V_PRODUCT_MASTER, V_PURCHASE_ORDER_MASTER',
',V_ENQUIRIES_ORDERS_MST --Added by Rahul 17-Feb-25',
'WHERE ID_PRODUCT_ID = pm_id',
'AND POM_ID = ID_PO_ID',
'AND   ID_IM_ID = :P82_IM_ID',
'AND POM_ORD_ID = EOM_ORD_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P82_IM_ID'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P82_IM_STATUS'
,p_plug_read_only_when2=>'CO'
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
,p_plug_comment=>'Readonly contd - P82_IM_STATUS = CO '
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(95147913489065302)
,p_name=>'EOM_INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_INVOICE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Invoice#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
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
 p_id=>wwv_flow_imp.id(100367381292785114)
,p_name=>'DELETE_PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELETE_PRODUCT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Delete Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_link_target=>'javascript:delete_product(&ID_ID.,&ID_PO_ID.);'
,p_link_text=>'&DELETE_PRODUCT.'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P82_IM_STATUS'
,p_display_condition2=>'CO'
,p_escape_on_http_output=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12727451050804822654)
,p_name=>'CUBIC_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUBIC_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_RADIOGROUP'
,p_heading=>'Cubic Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:LxBxH;lbh,Cubic Space;cs'
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12727451100276822655)
,p_name=>'PO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'PO#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
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
 p_id=>wwv_flow_imp.id(12727451217810822656)
,p_name=>'ID_SUPM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_SUPM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Supplier'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12727451397097822658)
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
 p_id=>wwv_flow_imp.id(12727451504239822659)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12727451594886822660)
,p_name=>'ID_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(12727451718761822661)
,p_name=>'ID_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
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
 p_id=>wwv_flow_imp.id(12727451844831822662)
,p_name=>'ID_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(12727451909775822663)
,p_name=>'ID_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(12727452063037822664)
,p_name=>'ID_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(12727452081921822665)
,p_name=>'ID_CUBIC_SPACE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_CUBIC_SPACE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cubic Space'
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
,p_static_id=>'ID_CUBIC_SPACE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13100458041584459416)
,p_name=>'ID_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_HEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Height'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(13100458140323459417)
,p_name=>'ID_BREADTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_BREADTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Breadth'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(13100458266996459418)
,p_name=>'ID_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_LENGTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Length'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13100458331983459419)
,p_name=>'ID_EXPIRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_EXPIRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Expiry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
,p_format_mask=>'DD/MM/YY'
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
 p_id=>wwv_flow_imp.id(13100458446269459420)
,p_name=>'ID_PACKING_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PACKING_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Packing Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
,p_format_mask=>'DD/MM/YY'
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
 p_id=>wwv_flow_imp.id(13100458548989459421)
,p_name=>'ID_BATCH_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_BATCH_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Batch#'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13100458650495459422)
,p_name=>'PM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_NAME'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13100458729846459423)
,p_name=>'ID_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_ORD_ID'
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
 p_id=>wwv_flow_imp.id(13100458809407459424)
,p_name=>'ID_QTY_RECEIVED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_QTY_RECEIVED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty Received'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '1',
  'number_alignment', 'right',
  'virtual_keyboard', 'numeric')).to_clob
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
 p_id=>wwv_flow_imp.id(13100458949801459425)
,p_name=>'ID_QTY_ORDERED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_QTY_ORDERED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Qty Ordered'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13100458983332459426)
,p_name=>'ID_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PRODUCT_ID'
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
 p_id=>wwv_flow_imp.id(13100459123548459427)
,p_name=>'ID_PO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_PO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'ID_PO_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13100459244221459428)
,p_name=>'ID_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'ID_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(17105545810038693698)
,p_name=>'ID_GROSS_WEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_GROSS_WEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Gross Wt'
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
 p_id=>wwv_flow_imp.id(22047782996353672133)
,p_name=>'ID_BARCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID_BARCODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Barcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28891055805917952759)
,p_name=>'REM_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REM_QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Balance Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
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
 p_id=>wwv_flow_imp.id(13100459287266459429)
,p_internal_uid=>589524791297854437
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
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
 p_id=>wwv_flow_imp.id(12727446012776821269)
,p_interactive_grid_id=>wwv_flow_imp.id(13100459287266459429)
,p_static_id=>'123222'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(12727445967782821269)
,p_report_id=>wwv_flow_imp.id(12727446012776821269)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(95141905573062663)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(95147913489065302)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(96564561058839597)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(100367381292785114)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12725249339870264076)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(12727451050804822654)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727251035199655219)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(12727451100276822655)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>168
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727351080069697464)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(12727451217810822656)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727427266126797695)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(12727451504239822659)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727436440699821237)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(12727451594886822660)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727436880843821238)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(12727451718761822661)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727437379947821240)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(12727451844831822662)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727437914357821241)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(12727451909775822663)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727438404135821242)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(12727452063037822664)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>63
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727438910278821244)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(12727452081921822665)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727439419476821245)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(13100458041584459416)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727439964131821247)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(13100458140323459417)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727440469478821248)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(13100458266996459418)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727440884430821249)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(13100458331983459419)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727441432213821251)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(13100458446269459420)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727441887369821252)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(13100458548989459421)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727442400786821253)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(13100458650495459422)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>269
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727442947679821255)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(13100458729846459423)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727443445104821256)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(13100458809407459424)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727443932408821257)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(13100458949801459425)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727444443345821259)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(13100458983332459426)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727444940230821261)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(13100459123548459427)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12727445477614821264)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(13100459244221459428)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19623911612879399530)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(17105545810038693698)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21919687967400144393)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(22047782996353672133)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28847757084189700496)
,p_view_id=>wwv_flow_imp.id(12727445967782821269)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(28891055805917952759)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12738571137772931619)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12796072238910358556)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Back'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12738570322740931616)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12796072238910358556)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P82_IM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(69930751139109744)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12738569940041931615)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12796072238910358556)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P82_IM_ID is not null and :P82_IM_STATUS != ''CO'''
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12738569540535931615)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12796072238910358556)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P82_IM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12738376037404849686)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12796072879297358563)
,p_button_name=>'ADD_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Products'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.::P47_ORDER_ID,P47_SUPPLIER_ID,P47_POM_ID,P47_CALLING_FROM,P47_POM_ID_IW,P47_IM_ID,P47_SELECTED_PRODUCTS,P47_SUPPLIER_IW:&P72_POM_ORD_ID.,&P72_POM_SUPPLIER_ID.,&P72_POM_ID.,IW,,&P82_IM_ID.,,'
,p_button_condition=>':P82_IM_ID is not null and :P82_IM_STATUS != ''CO'''
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12738569275606931615)
,p_branch_name=>'Go To Page 77'
,p_branch_action=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12727448769055822631)
,p_name=>'P82_IM_DELIVERY_LOCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_item_source_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_prompt=>'Delivery Location'
,p_source=>'IM_DELIVERY_LOCATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_DELIVERY_LOCATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''DELIVERY_LOCATION''',
' order by ST_DISPLAY_ORDER'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P82_IM_STATUS'
,p_read_only_when2=>'CO'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12738574551482931622)
,p_name=>'P82_IM_ORD_STOCK_FLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_item_source_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_source=>'IM_ORD_STOCK_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12738574888520931622)
,p_name=>'P82_IM_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12796073006587358564)
,p_item_source_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_item_default=>'IP'
,p_prompt=>'Status'
,p_source=>'IM_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_INWARD_STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''INWARD_STATUS''',
' order by ST_DISPLAY_ORDER'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>':P82_IM_ID is null or :P82_IM_STATUS = ''CO'''
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12738575361602931622)
,p_name=>'P82_IM_UPDATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_item_source_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_prompt=>'Updated On'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'IM_UPDATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(12738575735347931622)
,p_name=>'P82_IM_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_item_source_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_prompt=>'Updated By'
,p_source=>'IM_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(12738576130496931622)
,p_name=>'P82_IM_CREATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_item_source_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_prompt=>'Created On'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'IM_CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(12738576528286931622)
,p_name=>'P82_IM_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_item_source_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_prompt=>'Created By'
,p_source=>'IM_CREATED_BY'
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
 p_id=>wwv_flow_imp.id(12738576942569931623)
,p_name=>'P82_IM_DELIVERY_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_item_source_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_prompt=>'Delivery Date'
,p_format_mask=>'DD/MM/YY'
,p_source=>'IM_DELIVERY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P82_IM_STATUS'
,p_read_only_when2=>'CO'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12738577362235931623)
,p_name=>'P82_IM_INWARD_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_item_source_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Inward Date'
,p_format_mask=>'DD/MM/YY'
,p_source=>'IM_INWARD_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P82_IM_STATUS'
,p_read_only_when2=>'CO'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12738577778436931625)
,p_name=>'P82_IM_INWARD_NO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12796073006587358564)
,p_item_source_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_prompt=>'Inward#'
,p_source=>'IM_INWARD_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_read_only_when=>'P82_IM_STATUS'
,p_read_only_when2=>'CO'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12738578096639931630)
,p_name=>'P82_IM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_item_source_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_source=>'IM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12796072644546358560)
,p_name=>'P82_IM_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12796073006587358564)
,p_item_source_plug_id=>wwv_flow_imp.id(12738578511962931634)
,p_prompt=>'Remarks'
,p_source=>'IM_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>32
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P82_IM_STATUS'
,p_read_only_when2=>'CO'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(12796068633780358520)
,p_tabular_form_region_id=>wwv_flow_imp.id(12796072879297358563)
,p_validation_name=>'Validate Cubic Space'
,p_validation_sequence=>10
,p_validation=>'ID_CUBIC_SPACE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_always_execute=>'Y'
,p_only_for_changed_rows=>'N'
,p_associated_column=>'ID_CUBIC_SPACE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12727450941771822653)
,p_name=>'onchangeofCubicType'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(12796072879297358563)
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
 p_id=>wwv_flow_imp.id(12727450669045822650)
,p_event_id=>wwv_flow_imp.id(12727450941771822653)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ID_LENGTH,ID_BREADTH,ID_HEIGHT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12727450805468822652)
,p_event_id=>wwv_flow_imp.id(12727450941771822653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ID_LENGTH,ID_BREADTH,ID_HEIGHT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12727450536269822649)
,p_event_id=>wwv_flow_imp.id(12727450941771822653)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ID_CUBIC_SPACE'
,p_attribute_01=>'CSSreadonly'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12670531103505898964)
,p_event_id=>wwv_flow_imp.id(12727450941771822653)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ID_CUBIC_SPACE'
,p_attribute_01=>'document.getElementById(''ID_CUBIC_SPACE'').removeAttribute(''readonly'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12727450681912822651)
,p_event_id=>wwv_flow_imp.id(12727450941771822653)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ID_CUBIC_SPACE'
,p_attribute_01=>'CSSreadonly'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12670531182931898965)
,p_event_id=>wwv_flow_imp.id(12727450941771822653)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ID_CUBIC_SPACE'
,p_attribute_01=>'document.getElementById(''ID_CUBIC_SPACE'').setAttribute(''readonly'', ''readonly'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12727450290333822647)
,p_event_id=>wwv_flow_imp.id(12727450941771822653)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ID_LENGTH,ID_BREADTH,ID_HEIGHT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12727447762470822621)
,p_name=>'onchangeofCubicType Backup'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(12796072879297358563)
,p_triggering_element=>'CUBIC_TYPE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'CUBIC_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'lbh'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12727447389237822618)
,p_event_id=>wwv_flow_imp.id(12727447762470822621)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ID_LENGTH,ID_BREADTH,ID_HEIGHT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12727447658733822620)
,p_event_id=>wwv_flow_imp.id(12727447762470822621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ID_LENGTH,ID_BREADTH,ID_HEIGHT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12727447336889822617)
,p_event_id=>wwv_flow_imp.id(12727447762470822621)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ID_CUBIC_SPACE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12727447544806822619)
,p_event_id=>wwv_flow_imp.id(12727447762470822621)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ID_CUBIC_SPACE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12727447248998822616)
,p_event_id=>wwv_flow_imp.id(12727447762470822621)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ID_LENGTH,ID_BREADTH,ID_HEIGHT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12727450228826822646)
,p_name=>'onchangeofLBHCalcCubicSpace'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(12796072879297358563)
,p_triggering_element=>'ID_LENGTH,ID_BREADTH,ID_HEIGHT'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'CUBIC_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'lbh'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12727450142491822645)
,p_event_id=>wwv_flow_imp.id(12727450228826822646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ID_CUBIC_SPACE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'round((nvl(:ID_LENGTH,0) * nvl(:ID_BREADTH,0) * nvl(:ID_HEIGHT,0))/1000000,5)'
,p_attribute_07=>'ID_LENGTH,ID_BREADTH,ID_HEIGHT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12727449409390822638)
,p_name=>'SaveClick'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12738569940041931615)
,p_condition_element=>'P82_IM_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'CO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12727449325598822637)
,p_event_id=>wwv_flow_imp.id(12727449409390822638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:close_iw();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15876991972822646876)
,p_event_id=>wwv_flow_imp.id(12727449409390822638)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.submit(''SAVE'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12738568331769931613)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12738578511962931634)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Inward Details'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12738619481400760109
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12727451340591822657)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12796072879297358563)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' Product Details - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>12727502490222651153
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12727449491477822639)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Closed Status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_error_msg varchar2(4000);',
'v_success_failure  varchar2(4000);',
'gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT);',
'  l_scope logger_logs.scope%type := gc_scope_prefix;',
'  l_params logger.tab_param;',
' ',
' /* Commented by Rahul on 07-May-2023 as the update logic is handled in PL/SQL package',
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
'            AND id_im_id = :P82_IM_ID;',
'',
'TYPE IW_PRODUCT_TAB IS TABLE OF PRODUCTS_LST%ROWTYPE;',
'',
'IW_PRODUCTS_LST IW_PRODUCT_TAB;',
' Rahul End 07-May-2023',
' */ ',
'begin',
'    logger.append_param(l_params, ''IM_ID'', :P82_IM_ID);',
'    logger.append_param(l_params, ''IM_STATUS'', :P82_IM_STATUS);   ',
'    ',
'    logger.LOG(''START of Dynamic action on status change of Inward Master to Finalize it and update the status'', l_scope, NULL, l_params);',
'    ',
'   pkg_status.update_status(''IW'',:P82_IM_ID,''CO'',v_error_msg,v_success_failure);',
'   ',
'   logger.LOG(''After update of inward master to Completed'');',
'   ',
'   --Commented by Ranu on 02-Sep-2021 as these entries are handled in package - pkg_status/ pkg_stock.',
'    /* IF (:P82_IM_STATUS = ''CO'')Then',
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
'      END IF;*/',
'   ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12738569940041931615)
,p_process_when=>'P82_IM_STATUS'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'CO'
,p_internal_uid=>12727500641108651135
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12738568772419931614)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12738578511962931634)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Inward Details'
,p_internal_uid=>12738619922050760110
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(96364119010558010)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_PRODUCT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_success_failure   varchar2(4000);',
'v_err_msg           varchar2(4000);',
'v_error_msg         varchar2(4000);',
'l_scope logger_logs.scope%type := ''Delete Product from Closed Inward'';',
'l_params logger.tab_param;',
'l_id_id number;',
'l_po_id number;',
'l_product_id number;',
'l_qty_rcvd number;',
'l_ord_id number;',
'l_enq_id number;',
'BEGIN',
'',
'l_id_id := apex_application.g_x01;',
'l_po_id := apex_application.g_x02;',
'',
'    select ID_PRODUCT_ID,ID_QTY_RECEIVED,ID_ORD_ID',
'    into l_product_id, l_qty_rcvd,l_ord_id',
'    from V_INWARD_DETAILS',
'    where id_id = l_id_id;',
'    ',
'    select eom_enq_id',
'    into l_enq_id',
'    from V_ENQUIRIES_ORDERS_MST',
'    where eom_ord_id = l_ord_id;',
'',
'    logger.append_param(l_params, ''ID_ID'', l_id_id); ',
'    logger.append_param(l_params, ''ID_PO_ID'', l_po_id); ',
'    logger.append_param(l_params, ''l_product_id'', l_product_id); ',
'    logger.append_param(l_params, ''l_qty_rcvd'', l_qty_rcvd); ',
'    ',
'    logger.LOG(''START delete product from closed inward'', l_scope,null,l_params);',
'',
'    update V_PURCHASE_ORDER_DETAILS',
'    set pod_delivered_quantity = nvl(pod_delivered_quantity,0) - l_qty_rcvd',
'    where pod_pom_id = l_po_id',
'    and pod_product_id = l_product_id',
'    and nvl(pod_delivered_quantity,0) != 0;',
'    ',
'    pkg_stock.update_stock(''IW'',l_id_id,''OUT'',v_success_failure,v_error_msg);',
'',
'  IF v_success_failure != ''00'' then',
'      v_err_msg := ''Error in executing procedure pkg_stock.update_stock while calling from inward det page update closed inward - ''|| l_id_id  || '' - '' || v_error_msg || '' - '' || v_success_failure;',
'      LOGGER.LOG_ERROR(v_err_msg, L_SCOPE, null, L_PARAMS);',
'  end if;  ',
'',
'	--Setting the PO status to Ordered so that calling the existing status update pkg ',
'    pkg_status.update_status(''PO'',l_po_id,''OR'',v_error_msg,v_success_failure,:ID_ORD_ID);',
'',
'      IF v_success_failure != ''00'' then',
'      v_err_msg := ''Error in executing procedure update status for PO while calling from inward det page update closed inward ID_PO_ID - ''|| l_po_id  || '' - '' || v_error_msg;',
'      LOGGER.LOG_ERROR(v_err_msg, L_SCOPE, null, L_PARAMS);',
'    end if; ',
'',
'        --Following call is to update status of PO , Product and Order Status. Skip flag is set as Y to exclude reposting or stock and other updates to PM Rahul 20-Sep-24',
'    pkg_status.update_status(''IW'',:P82_IM_ID,''CO'',v_error_msg,v_success_failure,l_id_id,null,null,''Y'');',
'',
'    IF v_success_failure != ''00'' then',
'      v_err_msg := ''Error in executing procedure update status for Inward while calling from inward det page update closed inward ID_ID - ''|| l_id_id  || '' - '' || v_error_msg;',
'      LOGGER.LOG_ERROR(v_err_msg, L_SCOPE, null, L_PARAMS);',
'    end if; ',
'',
'    --To update status of all product of the order and order status to which the deleted product belongs  ',
'    pkg_status.update_status(''ORD_STATUS'',l_enq_id,null,v_error_msg,v_success_failure,l_ord_id);   --Added by Rahul on 23-Sep-24 to update product and order status ',
'	',
'    IF v_success_failure != ''00'' then',
'      v_err_msg := ''Error in executing procedure update status ORD_STATUS for Inward while calling from inward det page update closed inward l_enq_id - ''|| l_enq_id  || '' - '' || v_error_msg;',
'      LOGGER.LOG_ERROR(v_err_msg, L_SCOPE, null, L_PARAMS);',
'    end if; ',
'',
'    delete from V_INWARD_DETAILS',
'    where id_id = l_id_id;',
'',
'EXCEPTION WHEN OTHERS THEN',
'logger.log_error(''exception while deleting product from closed inward - '' || sqlerrm, l_scope, null, L_PARAMS);',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>97114317462482926
);
wwv_flow_imp.component_end;
end;
/
