prompt --application/pages/page_00090
begin
--   Manifest
--     PAGE: 00090
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
 p_id=>90
,p_name=>'Custom Invoice Split Groups'
,p_alias=>'CUSTOM-INVOICE-SPLIT-GROUPS'
,p_page_mode=>'MODAL'
,p_step_title=>'Custom Invoice Split Groups'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'    function delete_group (hsn_id)',
'    {',
'        $s("P90_GRP_PROD_DEL_ID",hsn_id);',
'        //apex.submit(''COPY'');',
'        $s(''P0_CONFIRM_MSG'',''Do you want to delete this manual group ? All the products of this group will be moved to the original group'');',
'        $s(''P0_REQ'',''SB_CONFIRM_DELETE_GROUP'');',
'        openModal(''SB_CONFIRM'');',
'        //apex.confirm(''Do you want to Copy this Enquiry '' + enqno + '' ?'' , ''COPY'');',
'    }',
'',
'       function delete_product (cirs_id)',
'    {',
'        $s("P90_GRP_PROD_DEL_ID",cirs_id);',
'        //apex.submit(''COPY'');',
'        $s(''P0_CONFIRM_MSG'',''Do you want to remove this product from the group and move it to original group?'');',
'        $s(''P0_REQ'',''SB_CONFIRM_DELETE_PRODUCT'');',
'        openModal(''SB_CONFIRM'');',
'        //apex.confirm(''Do you want to Copy this Enquiry '' + enqno + '' ?'' , ''COPY'');',
'    }',
'',
'    function fnConfirmYes()',
'    {',
'        if ($v(''P0_REQ'') == "SB_CONFIRM_DELETE_GROUP")',
'          apex.submit(''DELETE_GROUP'');',
'        else if ($v(''P0_REQ'') == "SB_CONFIRM_DELETE_PRODUCT")',
'          apex.submit(''DELETE_PRODUCT'');',
'',
'        closeModal(''SB_CONFIRM'');',
'    }',
'',
'    function fnConfirmNo()',
'    {        ',
'        closeModal(''SB_CONFIRM'');',
'    }',
'',
'</script>'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(203149697959801946)
,p_plug_name=>'Parent Region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(165315999323658254)
,p_plug_name=>'Details'
,p_region_name=>'product_details'
,p_parent_plug_id=>wwv_flow_imp.id(203149697959801946)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CIRS_ID,CIRS_PRODUCT_PACKING,CIRS_PRODUCT_DISPLAY_NAME,CIRS_QTY,CIRS_UOM,CIRS_CIHD_ID',
', CIRS_MANUAL_SPLIT_FLAG,',
' decode(CIRS_MANUAL_SPLIT_FLAG,null,null,''<a href="javascript:delete_product(''||CIRS_ID||'');"><span aria-hidden="true" class="fa fa-times-square-o u-color-9-text"></span></a>'') delete_group_product',
'from V_CUSTOM_INVOICE_REPORT_STAGING ',
'where cirs_enq_id = :P90_CIR_ENQ_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(226375347355171507)
,p_ajax_items_to_submit=>'P90_CIR_ENQ_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100367944794785120)
,p_name=>'DELETE_GROUP_PRODUCT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELETE_GROUP_PRODUCT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Remove Product<br> from group'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:void(0);'
,p_link_text=>'&DELETE_GROUP_PRODUCT.'
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
,p_escape_on_http_output=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100368630036785126)
,p_name=>'CIRS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>25
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100368800573785128)
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
 p_id=>wwv_flow_imp.id(100368919028785129)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100368975368785130)
,p_name=>'CIRS_MANUAL_SPLIT_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_MANUAL_SPLIT_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Manual Split Flag'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100369127707785131)
,p_name=>'CIRS_CIHD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_CIHD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(165315921504658253)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100369204088785132)
,p_name=>'CIRS_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_UOM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100369268305785133)
,p_name=>'CIRS_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100369410659785134)
,p_name=>'CIRS_PRODUCT_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_PRODUCT_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Product'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100369453720785135)
,p_name=>'CIRS_PRODUCT_PACKING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_PRODUCT_PACKING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Packing'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(165316038821658255)
,p_internal_uid=>336676050967554835
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
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'    action: "splitGroup",',
'    icon: "fa fa-random",',
'    iconBeforeLabel: true,',
'    hot: false,',
'  });',
'	config.toolbarData = toolbarData; 	',
'    config.initActions = function(actions) {',
'	     ',
'        actions.add(',
'        {',
'          name: "splitGroup",',
'          label: "Split Group",',
'          action: splitgroup',
'        })        ',
'    } ',
'     function splitgroup(event, focusElement)',
'  {',
'    var i, records, model, record,',
'      view = apex.region("product_details").widget().interactiveGrid("getCurrentView");',
'    var selectedIds = [];',
'    if (view.supports.edit)',
'    {',
'      model = view.model;',
'      records = view.getSelectedRecords();',
'      if (records.length > 0)',
'      {',
'        for (i = 0; i < records.length; i++)',
'        { ',
'          record = records[i];            ',
'          selectedIds.push(records[i][0]);',
'        }',
'          apex.server.process ("SPLIT_GROUPS", ',
'                               {x01: JSON.stringify(selectedIds)},',
'                               {dataType: ''text'', ',
'                                success: function( pData )',
'                                {        ',
'                                      apex.submit('''');',
'                                }',
'                               }',
'                              );   ',
'      }',
'    }',
'  }     ',
'console.log(config);',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(170043117285716933)
,p_interactive_grid_id=>wwv_flow_imp.id(165316038821658255)
,p_static_id=>'123201'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>5
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(170043206480716934)
,p_report_id=>wwv_flow_imp.id(170043117285716933)
,p_view_type=>'GRID'
,p_stretch_columns=>false
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(99567990320046254)
,p_view_id=>wwv_flow_imp.id(170043206480716934)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(100367944794785120)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102.9931
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100336471923743329)
,p_view_id=>wwv_flow_imp.id(170043206480716934)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(100368630036785126)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100340744006749516)
,p_view_id=>wwv_flow_imp.id(170043206480716934)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(100368919028785129)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100359054500782067)
,p_view_id=>wwv_flow_imp.id(170043206480716934)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(100368975368785130)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100359939313782070)
,p_view_id=>wwv_flow_imp.id(170043206480716934)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(100369127707785131)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100360877984782073)
,p_view_id=>wwv_flow_imp.id(170043206480716934)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(100369204088785132)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100361735749782077)
,p_view_id=>wwv_flow_imp.id(170043206480716934)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(100369268305785133)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100362580268782082)
,p_view_id=>wwv_flow_imp.id(170043206480716934)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(100369410659785134)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>249
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100363531191782091)
,p_view_id=>wwv_flow_imp.id(170043206480716934)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(100369453720785135)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>162
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(226375347355171507)
,p_plug_name=>'Unique HSN Code & GST% of Enquiry Product(s)'
,p_parent_plug_id=>wwv_flow_imp.id(203149697959801946)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>7
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	CIHD_ID,',
'        CIHD_HSN_CODE,',
'		CIHD_HSN_DESC,     ',
'		CIHD_GST_PERC,     ',
'		CIHD_END_USE_CODE,  ',
'		CIHD_CHAPTER,',
'        CIHD_CREATED_BY,',
'        CIHD_CREATED_ON,',
'        CIHD_UPDATED_BY,',
'        CIHD_UPDATED_ON,',
'        CIHD_DISPLAY_ORDER,',
'        decode(CIHD_PARENT_ID,null,null,''<a href="javascript:delete_group(''||CIHD_ID||'');"><span aria-hidden="true" class="fa fa-times-square-o u-color-9-text"></span></a>'') delete_group',
'from 	V_CUSTOM_INVOICE_HSN_DETAILS ',
'where 	CIHD_ENQ_ID = :P90_CIR_ENQ_ID  '))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(100368392709785124)
,p_name=>'DELETE_GROUP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELETE_GROUP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Delete Group'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:void(0);'
,p_link_text=>'&DELETE_GROUP.'
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
,p_escape_on_http_output=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(165314802953658242)
,p_name=>'CIHD_HSN_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_HSN_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'HSN Code'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(165314884043658243)
,p_name=>'CIHD_HSN_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_HSN_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'HSN Description'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(165315007764658244)
,p_name=>'CIHD_GST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_GST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'GST %'
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
 p_id=>wwv_flow_imp.id(165315062231658245)
,p_name=>'CIHD_END_USE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_END_USE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'End Use Code'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(165315201468658246)
,p_name=>'CIHD_CHAPTER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_CHAPTER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Chapter'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(165315630611658250)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(165315642462658251)
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
 p_id=>wwv_flow_imp.id(165315921504658253)
,p_name=>'CIHD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_CIHD_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(170057427271799843)
,p_name=>'CIHD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
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
 p_id=>wwv_flow_imp.id(170057511459799844)
,p_name=>'CIHD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(170057610017799845)
,p_name=>'CIHD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(170057721207799846)
,p_name=>'CIHD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(3235983225833210391)
,p_name=>'CIHD_DISPLAY_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_DISPLAY_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Display Order'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(165314019978658234)
,p_internal_uid=>336674032124554814
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
,p_toolbar_buttons=>'SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>false
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(169914285784298945)
,p_interactive_grid_id=>wwv_flow_imp.id(165314019978658234)
,p_static_id=>'123202'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(169914433395298946)
,p_report_id=>wwv_flow_imp.id(169914285784298945)
,p_view_type=>'GRID'
,p_stretch_columns=>false
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(99966835004384265)
,p_view_id=>wwv_flow_imp.id(169914433395298946)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(100368392709785124)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(170003648411420204)
,p_view_id=>wwv_flow_imp.id(169914433395298946)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(165314802953658242)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(170004115943420208)
,p_view_id=>wwv_flow_imp.id(169914433395298946)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(165314884043658243)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>360
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(170004608696420210)
,p_view_id=>wwv_flow_imp.id(169914433395298946)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(165315007764658244)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(170005071473420211)
,p_view_id=>wwv_flow_imp.id(169914433395298946)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(165315062231658245)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(170005572707420212)
,p_view_id=>wwv_flow_imp.id(169914433395298946)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(165315201468658246)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(170035369393665868)
,p_view_id=>wwv_flow_imp.id(169914433395298946)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(165315630611658250)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(170039606827675745)
,p_view_id=>wwv_flow_imp.id(169914433395298946)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(165315921504658253)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(170115353206198306)
,p_view_id=>wwv_flow_imp.id(169914433395298946)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(170057427271799843)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(170115772675198309)
,p_view_id=>wwv_flow_imp.id(169914433395298946)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(170057511459799844)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(170116283103198310)
,p_view_id=>wwv_flow_imp.id(169914433395298946)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(170057610017799845)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(170116785863198313)
,p_view_id=>wwv_flow_imp.id(169914433395298946)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(170057721207799846)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3167213873082844060)
,p_view_id=>wwv_flow_imp.id(169914433395298946)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3235983225833210391)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(260937678031795413)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(124817506615634011)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(260938102012797392)
,p_plug_name=>'Step 2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(260938445195799649)
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
 p_id=>wwv_flow_imp.id(100550032533086235)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(260938445195799649)
,p_button_name=>'NEXT'
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
 p_id=>wwv_flow_imp.id(100549571468086233)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(260938445195799649)
,p_button_name=>'REGENERATE_CI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Regenerate & Continue'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(100549212370086233)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(260938445195799649)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(100548780963086233)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(260938445195799649)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(100544812508086208)
,p_branch_name=>'Go To Page 65'
,p_branch_action=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:RP,65:P65_CIR_ENQ_ID:&P90_CIR_ENQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'NEXT,REGENERATE_CI'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(100545196671086209)
,p_branch_name=>'Go To Page 10'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_ENQ_ID,P10_OUTPUT_TYPE:&P90_CIR_ENQ_ID.,CI&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(100549212370086233)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(100368318105785123)
,p_name=>'P90_GRP_PROD_DEL_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(203149697959801946)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(169915675449153535)
,p_name=>'P90_CIR_ENQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(226375347355171507)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22140710392136626837)
,p_name=>'P90_CIR_ADDITIONAL_DETAILS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(226375347355171507)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(100548113043086218)
,p_computation_sequence=>10
,p_computation_item=>'P90_CIR_ADDITIONAL_DETAILS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P10_DISPLAY_OTHER'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(100547664727086217)
,p_validation_name=>'ValidateHSNDetails'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_hsn_codes VARCHAR2(4000);',
'BEGIN',
'',
'for i in ',
' (select cihd_hsn_code',
'from V_CUSTOM_INVOICE_HSN_DETAILS',
'where cihd_enq_id = :P90_CIR_ENQ_ID',
'and (cihd_hsn_desc is null or cihd_end_use_code is null or cihd_chapter is null or CIHD_DISPLAY_ORDER is null)) loop',
'v_hsn_codes := v_hsn_codes || '', '' || i.cihd_hsn_code;',
'end loop;',
'',
'v_hsn_codes := TRIM(BOTH '','' FROM v_hsn_codes);',
'',
'IF v_hsn_codes is not null THEN',
'return ''Update all the details of the HSN Codes - '' || v_hsn_codes;',
'else',
'return ''ERROR'';',
'END IF;',
'',
'EXCEPTION WHEN no_data_found then',
'    return null;',
'when others then',
'    return ''Error validating HSN Codes'';',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(100550032533086235)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(100546176572086214)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(100548780963086233)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(100545706351086211)
,p_event_id=>wwv_flow_imp.id(100546176572086214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100551442986086238)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(226375347355171507)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Groups of Custom Invoice - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>92926993486954698
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100547368633086217)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate CI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'MERGE INTO V_CUSTOM_INVOICE_REPORT_STAGING a',
'    USING (',
'WITH product_grp as (select max(nvl(EOD_QUANTITY,0)) grp_qty,eod_group_id grp_id ',
'                            from V_ENQUIRIES_ORDERS_DETAILS b ',
'                            where eod_enq_id = b.eod_enq_id ',
'                            and eod_enq_id = :P90_CIR_ENQ_ID',
'                            group by b.eod_group_id)',
'select ',
'	--SEQ_CIRS_ID.nextval cirs_id,',
'	eod_enq_id,',
'	eod_id,',
'	eod_product_id,',
'	pm_name,',
'	LPAD(PM_PACKAGE,2,'' '') || '' '' || RPAD(PM_BABY_BOX_UNIT,4,'' '')',
'          ||nvl2(PM_PACKAGE, '' x '',null)||PM_PACKAGE_1 || '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT product_packing,',
'	nvl(EOD_CIR_DISPLAY_NAME,pm_name) display_name,',
'	to_number(LPAD(CASE WHEN nvl(eod_quantity,0) = 0 THEN NULL ELSE eod_quantity END ,4,'' '')) eod_quantity,',
'	case when NVL(EOM_COSTING_TYPE,''FOB'') = ''FOB'' then NVL(EOD_FOB_DOLL_RND ,0)',
'                when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&F'' then nvl(EOD_CANDF_AMT_RND ,0)',
'                when NVL(EOM_COSTING_TYPE,''FOB'') = ''CIF'' then NVL(EOD_CIF_AMT_RND ,0)',
'                when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&I'' then nvl(EOD_CNI_AMT_RND ,0)',
'    end unit_rate, ',
'	round( (case when eod_group_id IS NULL then eod_quantity',
'					when eod_group_id IS NOT NULL then',
'					(select grp_qty from product_grp where grp_id = eod_group_id)',
'				end)',
'					*',
'				(case when NVL(EOM_COSTING_TYPE,''FOB'') = ''FOB'' then NVL(EOD_FOB_DOLL_RND ,0)',
'					when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&F'' then nvl(EOD_CANDF_AMT_RND ,0)',
'					when NVL(EOM_COSTING_TYPE,''FOB'') = ''CIF'' then NVL(EOD_CIF_AMT_RND ,0)',
'					when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&I'' then nvl(EOD_CNI_AMT_RND ,0)',
'				end)							',
'			,2) amount,',
'	round(round( (case when eod_group_id IS NULL then eod_quantity',
'					when eod_group_id IS NOT NULL then',
'					(select grp_qty from product_grp where grp_id = eod_group_id)',
'				end)',
'					*',
'				(case when NVL(EOM_COSTING_TYPE,''FOB'') = ''FOB'' then NVL(EOD_FOB_DOLL_RND ,0)',
'					when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&F'' then nvl(EOD_CANDF_AMT_RND ,0)',
'					when NVL(EOM_COSTING_TYPE,''FOB'') = ''CIF'' then NVL(EOD_CIF_AMT_RND ,0)',
'					when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&I'' then nvl(EOD_CNI_AMT_RND ,0)',
'				end)							',
'			,2)*nvl(EOM_REALISE_RATE,EOD_EXCHANGE_RATE),2)  tax_value,',
'	nvl(EOD_TOTAL_GST_PERC,0)  igst_rate,',
'	round((round( (case when eod_group_id IS NULL then eod_quantity',
'					when eod_group_id IS NOT NULL then',
'					(select grp_qty from product_grp where grp_id = eod_group_id)',
'				end)',
'					*',
'				(case when NVL(EOM_COSTING_TYPE,''FOB'') = ''FOB'' then NVL(EOD_FOB_DOLL_RND ,0)',
'					when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&F'' then nvl(EOD_CANDF_AMT_RND ,0)',
'					when NVL(EOM_COSTING_TYPE,''FOB'') = ''CIF'' then NVL(EOD_CIF_AMT_RND ,0)',
'					when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&I'' then nvl(EOD_CNI_AMT_RND ,0)',
'				end)							',
'			,2)*nvl(EOM_REALISE_RATE,EOD_EXCHANGE_RATE)*nvl(EOD_TOTAL_GST_PERC,0))/100,2) igst_amount,',
'',
'	/*dis_amount,',
'	dis_tax_value,',
'	dis_unit_rate,',
'	dis_igst_amount,*/',
'	eod_HSN_CODE hsn_code,',
'	nvl(eod_gross_wt,0) * nvl(eod_quantity,0) gross_wt,',
'	nvl(eod_net_wt,0) * nvl(eod_quantity,0)  net_wt,',
'	CASE WHEN nvl(eod_quantity,0) = 0 THEN RPAD('' '',6,'' '') ELSE RPAD(pm_uom,6,'' '') END  uom,',
'	nvl(EOD_FOC_FLAG,''N'') FOC_FLAG',
'from V_ENQUIRIES_ORDERS_MST,',
'    V_ENQUIRIES_ORDERS_DETAILS,',
'	V_PRODUCT_MASTER',
'where eom_enq_id = eod_enq_id',
'and eod_product_id = pm_id',
'and eod_enq_id = :P90_CIR_ENQ_ID) b',
'ON (	a.cirs_product_id = b.eod_product_id',
'		and a.cirs_eod_id = b.eod_id',
'		and a.cirs_enq_id = b.eod_enq_id',
'        and a.cirs_enq_id = :P90_CIR_ENQ_ID',
'       )',
'    WHEN MATCHED THEN',
'	 UPDATE SET',
'			cirs_product_name			=	b.pm_name	,',
'			cirs_product_packing		=	b.product_packing	,',
'			cirs_product_display_name	=	b.display_name	,',
'			cirs_qty					=	b.eod_quantity	,',
'			cirs_unit_rate				=	b.unit_rate	,',
'			cirs_amount					=	b.amount	,',
'			cirs_tax_value				=	b.tax_value	,',
'			cirs_igst_rate				=	b.igst_rate	,',
'			cirs_igst_amount			=	b.igst_amount	,',
'			/*cirs_dis_amount				=	b.dis_amount	,',
'			cirs_dis_tax_value			=	b.dis_tax_value	,',
'			cirs_dis_unit_rate			=	b.dis_unit_rate	,',
'			cirs_dis_igst_amount		=	b.dis_igst_amount	,*/',
'			cirs_hsn_code				=	b.hsn_code	,',
'			cirs_gross_wt				=	b.gross_wt	,',
'			cirs_net_wt					=	b.net_wt	,',
'			cirs_uom					=	b.uom	,',
'			cirs_foc_flag				=	b.foc_flag	',
'',
'      WHERE a.cirs_product_id = b.eod_product_id',
'		and a.cirs_eod_id = b.eod_id',
'		and a.cirs_enq_id = b.eod_enq_id',
'        and a.cirs_enq_id = :P90_CIR_ENQ_ID',
'    ',
'    WHEN NOT MATCHED THEN    ',
'      INSERT (cirs_id,',
'				cirs_enq_id,',
'				cirs_eod_id,',
'				cirs_product_id,',
'				cirs_product_name,',
'				cirs_product_packing,',
'				cirs_product_display_name,',
'				cirs_qty,',
'				cirs_unit_rate,',
'				cirs_amount,',
'				cirs_tax_value,',
'				cirs_igst_rate,',
'				cirs_igst_amount,',
'				/*cirs_dis_amount,',
'				cirs_dis_tax_value,',
'				cirs_dis_unit_rate,',
'				cirs_dis_igst_amount,*/',
'				cirs_hsn_code,',
'				cirs_gross_wt,',
'				cirs_net_wt,',
'				cirs_uom,',
'				cirs_foc_flag',
'',
'             )',
'      VALUES (	seq_cirs_id.nextval ,',
'                b.eod_enq_id	,',
'				b.eod_id	,',
'				b.eod_product_id	,',
'				b.pm_name	,',
'				b.product_packing	,',
'				b.display_name	,',
'				b.eod_quantity	,',
'				b.unit_rate	,',
'				b.amount	,',
'				b.tax_value	,',
'				b.igst_rate	,',
'				b.igst_amount	,',
'				/*b.dis_amount	,',
'				b.dis_tax_value	,',
'				b.dis_unit_rate	,',
'				b.dis_igst_amount	,*/',
'				b.hsn_code	,',
'				b.gross_wt	,',
'				b.net_wt	,',
'				b.uom	,',
'				b.foc_flag',
'        );	',
'',
'UPDATE V_CUSTOM_INVOICE_REPORT_STAGING a',
'SET a.CIRS_MANUAL_CI_GRP_CIRS_ID = ''''',
'WHERE a.CIRS_MANUAL_CI_GRP_CIRS_ID not in (',
'                                            select c.CIRS_MANUAL_CI_GRP_CIRS_ID  ',
'                                            from V_CUSTOM_INVOICE_REPORT_STAGING c, V_ENQUIRIES_ORDERS_DETAILS b',
'                                            where b.eod_enq_id = :P90_CIR_ENQ_ID',
'                                            and a.CIRS_MANUAL_CI_GRP_CIRS_ID = c.cirs_id',
'                                            and c.cirs_product_id = b.eod_product_id',
'                                            and c.cirs_eod_id = b.eod_id',
'                                        )',
'AND a.cirs_enq_id = :P90_CIR_ENQ_ID',
'AND a.CIRS_MANUAL_CI_GRP_CIRS_ID is not null;   ',
'',
'',
'delete from V_CUSTOM_INVOICE_REPORT_STAGING a',
'where a.cirs_eod_id not in (',
'                    select eod_id ',
'                    from V_ENQUIRIES_ORDERS_DETAILS b',
'                    where b.eod_enq_id = :P90_CIR_ENQ_ID',
'                    );   ',
'                ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(100550032533086235)
,p_process_when_type=>'NEVER'
,p_internal_uid=>92931067839954719
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--When No Rows returned condition removed on 12Sep20',
'select 1 ',
'from V_CUSTOM_INVOICE_REPORT',
'where CIR_ENQ_ID= :P71_CIR_ENQ_ID'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100546574732086215)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate CI - by CI package'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_success_failure VARCHAR2(10);',
'v_error_msg       VARCHAR2(4000); ',
'BEGIN',
'    PKG_CUSTOM_INVOICE.populate_staging (:P90_CIR_ENQ_ID,v_success_failure,v_error_msg,:P90_CIR_ADDITIONAL_DETAILS); --Aditional Details parameter added by Rahul on 14-Dec-23 to pass flags for split frt/insurance',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(100550032533086235)
,p_internal_uid=>92931861740954721
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--When No Rows returned condition removed on 12Sep20',
'select 1 ',
'from V_CUSTOM_INVOICE_REPORT',
'where CIR_ENQ_ID= :P71_CIR_ENQ_ID'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100547030281086216)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Regenerate CI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_success_failure number;',
'    v_err_message     varchar2(4000);',
'begin',
'    proc_custom_invoice (:P90_CIR_ENQ_ID,v_success_failure,v_err_message);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(100549571468086233)
,p_process_when_type=>'NEVER'
,p_internal_uid=>92931406191954720
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100368701779785127)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(165315999323658254)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Details - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>93109734693255809
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100368172659785122)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Manual Group or Product'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_scope logger_logs.scope%type := ''Delete Manual Groups'';',
'l_params logger.tab_param;',
'l_cihd_id   number;',
'l_cihd_parent_id  number;',
'l_cnt_products   number;',
'BEGIN',
'logger.append_param(l_params, ''P90_GRP_PROD_DEL_ID'', :P90_GRP_PROD_DEL_ID);',
'logger.append_param(l_params, ''REQUEST'', :REQUEST); ',
'logger.LOG(''START delete manual group product'', l_scope,null,l_params);',
'',
'IF :REQUEST = ''DELETE_PRODUCT'' THEN',
'    select cihd_id,CIHD_PARENT_ID',
'    into  l_cihd_id, l_cihd_parent_id',
'    from  V_CUSTOM_INVOICE_HSN_DETAILS',
'    where cihd_id = (',
'                        select cirs_cihd_id ',
'                        from V_CUSTOM_INVOICE_REPORT_STAGING',
'                        where cirs_id = :P90_GRP_PROD_DEL_ID',
'                    );',
'    ',
'    select count(1)',
'    into l_cnt_products',
'    from V_CUSTOM_INVOICE_REPORT_STAGING',
'    where cirs_cihd_id = l_cihd_id;',
'',
'    update V_CUSTOM_INVOICE_REPORT_STAGING',
'    set CIRS_MANUAL_SPLIT_FLAG = ''''',
'       ,CIRS_CIHD_ID = l_cihd_parent_id',
'    where cirs_enq_id = :P90_CIR_ENQ_ID',
'    and   cirs_id = :P90_GRP_PROD_DEL_ID;',
'   ',
'   if l_cnt_products = 1 then',
'        delete from V_CUSTOM_INVOICE_HSN_DETAILS where cihd_id = l_cihd_id and cihd_enq_id = :P90_CIR_ENQ_ID;',
'   end if;',
'',
'elsif  :REQUEST = ''DELETE_GROUP'' THEN',
'',
'    update V_CUSTOM_INVOICE_REPORT_STAGING',
'    set cirs_manual_split_flag = '''',',
'    cirs_cihd_id = (select cihd_parent_id',
'                    from V_CUSTOM_INVOICE_HSN_DETAILS',
'                    where cihd_id = :P90_GRP_PROD_DEL_ID',
'                    and cihd_id = cirs_cihd_id',
'                   )',
'    where cirs_cihd_id = :P90_GRP_PROD_DEL_ID;',
'',
'    delete from V_CUSTOM_INVOICE_HSN_DETAILS where cihd_id = :P90_GRP_PROD_DEL_ID and cihd_enq_id = :P90_CIR_ENQ_ID;',
'',
'     --Added by Rahul on 31-Mar-25 to update display order start',
'         MERGE INTO V_CUSTOM_INVOICE_HSN_DETAILS cihd',
'    USING ( ',
'            WITH qsort as ( select cihd_id, CIHD_HSN_CODE,CIHD_HSN_DESC, CIHD_GST_PERC',
'                                , CIHD_END_USE_CODE, CIHD_CHAPTER',
'                            ,CIHD_ENQ_ID, cihd_parent_id',
'                            from V_CUSTOM_INVOICE_HSN_DETAILS',
'                            where cihd_enq_id =  :P90_CIR_ENQ_ID                         ',
'                            ORDER BY CIHD_DISPLAY_ORDER, CIHD_GST_PERC, CIHD_HSN_CODE,cihd_parent_id nulls first',
'						   )',
'            SELECT cihd_id, CIHD_HSN_CODE,CIHD_HSN_DESC, CIHD_GST_PERC',
'                                , CIHD_END_USE_CODE, CIHD_CHAPTER',
'                            ,CIHD_ENQ_ID, cihd_parent_id,ROWNUM DISPLAY_ORDER',
'            FROM qsort) iq ',
'    ON (iq.cihd_id = cihd.cihd_id',
'        )',
'    WHEN MATCHED THEN ',
'        UPDATE SET  cihd.CIHD_DISPLAY_ORDER = iq.DISPLAY_ORDER;',
'        ',
'    --Added by Rahul on 31-Mar-25 to update display order end',
'',
'end if;',
'',
'EXCEPTION WHEN OTHERS THEN',
'logger.log_error(''exception while deleting manual group ids - '' || sqlerrm, l_scope);',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error deleting manual group'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE_GROUP,DELETE_PRODUCT'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Manual Group deleted and products moved to original group'
,p_internal_uid=>93110263813255814
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100368475396785125)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Products HSN and Update Display Order of HSN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_success_failure     number;',
'    v_cnt                 number;',
'    v_err_message         varchar2(4000);',
'    v_merge_rowcnt        number;',
'begin',
'   ',
'     MERGE INTO V_CUSTOM_INVOICE_HSN_DETAILS cihd',
'    USING ( ',
'            WITH qsort as (SELECT 	DISTINCT nvl(HCM_CODE,EOD_HSN_CODE) HCM_CODE,',
'                                    HCM_DESCRIPTION,',
'                                    nvl(EOD_TOTAL_GST_PERC,0) EOD_TOTAL_GST_PERC,',
'                                    HCM_END_USE_CODE,',
'                                    HCM_CHAPTER,',
'                                    EOD_ENQ_ID,',
'                                    EOD_HSN_CODE',
'                            FROM V_ENQUIRIES_ORDERS_DETAILS,V_PRODUCT_MASTER,V_HSN_CODE_MASTER',
'                                WHERE EOD_PRODUCT_ID = PM_ID ',
'                                AND EOD_ENQ_ID = :P90_CIR_ENQ_ID ',
'                                AND EOD_HSN_CODE = HCM_CODE (+)',
'                                AND NVL(EOD_TOTAL_GST_PERC,0) IN ( SELECT DISTINCT NVL(EOD_TOTAL_GST_PERC,0) GST_PERC',
'                                                                    FROM V_ENQUIRIES_ORDERS_DETAILS',
'                                                                    WHERE EOD_ENQ_ID = :P90_CIR_ENQ_ID)',
'                            ORDER BY EOD_TOTAL_GST_PERC, EOD_HSN_CODE)',
'            SELECT HCM_CODE,HCM_DESCRIPTION',
'					,EOD_TOTAL_GST_PERC,HCM_END_USE_CODE',
'                    ,HCM_CHAPTER,EOD_ENQ_ID',
'					,EOD_HSN_CODE,ROWNUM DISPLAY_ORDER',
'            FROM qsort) iq ',
'    ON (nvl(cihd.CIHD_HSN_CODE,0)  = nvl(iq.HCM_CODE,0) ',
'        and nvl(cihd.CIHD_GST_PERC,0) = nvl(iq.EOD_TOTAL_GST_PERC,0) ',
'        and iq.EOD_ENQ_ID = cihd.CIHD_ENQ_ID)',
'    WHEN NOT MATCHED THEN',
'        INSERT  ',
'            (',
'                CIHD_ID,            ',
'                CIHD_ENQ_ID,',
'                CIHD_HSN_CODE,',
'                CIHD_HSN_DESC,',
'                CIHD_GST_PERC,',
'                CIHD_END_USE_CODE,',
'                CIHD_CHAPTER,',
'                CIHD_DISPLAY_ORDER',
'            )  ',
'        VALUES(SEQ_CIHD_ID.NEXTVAL, :P10_ENQ_ID, iq.HCM_CODE,iq.HCM_DESCRIPTION,',
'                nvl(iq.EOD_TOTAL_GST_PERC,0),iq.HCM_END_USE_CODE,iq.HCM_CHAPTER,iq.DISPLAY_ORDER);',
'',
'        v_merge_rowcnt := sql%rowcount;',
'',
'        insert into error_log(el_text) values (''v_merge_rowcnt - '' || v_merge_rowcnt);',
'        ',
'        DELETE FROM V_CUSTOM_INVOICE_HSN_DETAILS ',
'		WHERE CIHD_ENQ_ID = :P10_ENQ_ID ',
'		AND NOT EXISTS (select 1 ',
'						from V_ENQUIRIES_ORDERS_DETAILS ',
'						where EOD_HSN_CODE = CIHD_HSN_CODE ',
'						AND NVL(EOD_TOTAL_GST_PERC,0) = nvl(CIHD_GST_PERC,0)',
'						AND EOD_ENQ_ID = :P10_ENQ_ID );',
'',
'IF v_merge_rowcnt != 0 THEN',
' MERGE INTO V_CUSTOM_INVOICE_HSN_DETAILS cihd',
'    USING ( ',
'            WITH qsort as ( select cihd_id, CIHD_HSN_CODE,CIHD_HSN_DESC, CIHD_GST_PERC',
'                                , CIHD_END_USE_CODE, CIHD_CHAPTER',
'                            ,CIHD_ENQ_ID, cihd_parent_id',
'                            from V_CUSTOM_INVOICE_HSN_DETAILS',
'                            where cihd_enq_id =  :P90_CIR_ENQ_ID                         ',
'                            ORDER BY CIHD_GST_PERC, CIHD_HSN_CODE,cihd_parent_id nulls first',
'						   )',
'            SELECT cihd_id, CIHD_HSN_CODE,CIHD_HSN_DESC, CIHD_GST_PERC',
'                                , CIHD_END_USE_CODE, CIHD_CHAPTER',
'                            ,CIHD_ENQ_ID, cihd_parent_id,ROWNUM DISPLAY_ORDER',
'            FROM qsort) iq ',
'    ON (iq.cihd_id = cihd.cihd_id',
'        )',
'    WHEN MATCHED THEN ',
'        UPDATE SET  cihd.CIHD_DISPLAY_ORDER = iq.DISPLAY_ORDER;',
'END IF;',
'',
'    PKG_CUSTOM_INVOICE.populate_staging (:P90_CIR_ENQ_ID,v_success_failure,v_err_message,:P90_CIR_ADDITIONAL_DETAILS); --Aditional Details parameter added by Rahul on 14-Dec-23 to pass flags for split frt/insurance',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>93109961076255811
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(100368058560785121)
,p_process_sequence=>70
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SPLIT_GROUPS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'	l_selected_ids_json          varchar2(4000);',
'    type numTab is table of number  index by binary_integer;',
'    l_cirs_id                     numTab;',
'    l_array                      JSON_ARRAY_T;',
'    l_error_msg                  varchar2(4000);',
'    v_old_cihd_id                number;',
'    v_new_cihd_id                number;',
'    v_cnt_products               number;',
'',
'    l_scope logger_logs.scope%type := ''Split groups of custom invoice'';',
'    l_params logger.tab_param;',
'    v_error_msg varchar2(4000);',
'    v_split_flag varchar2(1);',
'',
'BEGIN',
'    ',
'    logger.append_param(l_params, ''P90_CIR_ENQ_ID'', :P90_CIR_ENQ_ID); ',
'    logger.LOG(''START'', l_scope);',
'',
'      l_selected_ids_json := apex_application.g_x01;',
'      l_array := json_array_t(l_selected_ids_json) ;',
'    ',
'    if l_array.get_size() > 0 then',
'    ',
'        for j in 0 .. l_array.get_size() - 1 loop',
'            l_cirs_id(j+1) := l_array.get_number(j); 		',
'        end loop;',
'',
'        select cirs_cihd_id, nvl(cirs_manual_split_flag,''N'')',
'        into v_old_cihd_id, v_split_flag',
'        from  V_CUSTOM_INVOICE_REPORT_STAGING',
'        where cirs_id = l_cirs_id(1)',
'        and cirs_enq_id = :P90_CIR_ENQ_ID;',
'',
'        select count(1)',
'        into v_cnt_products',
'        from V_CUSTOM_INVOICE_REPORT_STAGING',
'        where cirs_enq_id = :P90_CIR_ENQ_ID',
'        and   cirs_cihd_id = v_old_cihd_id;',
'',
'    if v_split_flag != ''Y'' and v_cnt_products > 1 then',
'        INSERT INTO V_CUSTOM_INVOICE_HSN_DETAILS (',
'            cihd_id,',
'            cihd_enq_id,',
'            cihd_hsn_code,',
'            cihd_hsn_desc,',
'            cihd_gst_perc,',
'            cihd_end_use_code,',
'            cihd_chapter,',
'            cihd_created_by,',
'            cihd_created_on,',
'            cihd_updated_by,',
'            cihd_updated_on,',
'            cihd_display_order,',
'            cihd_parent_id',
'        )  (',
'            select',
'            SEQ_cihd_id.nextval,',
'            cihd_enq_id,',
'            cihd_hsn_code,',
'            cihd_hsn_desc,',
'            cihd_gst_perc,',
'            cihd_end_use_code,',
'            cihd_chapter,',
'            cihd_created_by,',
'            cihd_created_on,',
'            cihd_updated_by,',
'            cihd_updated_on,',
'            cihd_display_order,',
'            v_old_cihd_id',
'         from V_CUSTOM_INVOICE_HSN_DETAILS',
'         where cihd_id = v_old_cihd_id',
'         and cihd_enq_id = :P90_CIR_ENQ_ID',
'        );',
'',
'        v_new_cihd_id := SEQ_cihd_id.currval;',
'',
'        forall j in 1..l_cirs_id.count',
'        update V_CUSTOM_INVOICE_REPORT_STAGING',
'        set CIRS_CIHD_ID = v_new_cihd_id',
'           ,CIRS_MANUAL_SPLIT_FLAG = ''Y''',
'        where cirs_enq_id = :P90_CIR_ENQ_ID',
'        and cirs_id = l_cirs_id(j);',
'    ',
'    --Added by Rahul on 31-Mar-25 to update display order start',
'         MERGE INTO V_CUSTOM_INVOICE_HSN_DETAILS cihd',
'    USING ( ',
'            WITH qsort as ( select cihd_id, CIHD_HSN_CODE,CIHD_HSN_DESC, CIHD_GST_PERC',
'                                , CIHD_END_USE_CODE, CIHD_CHAPTER',
'                            ,CIHD_ENQ_ID, cihd_parent_id',
'                            from V_CUSTOM_INVOICE_HSN_DETAILS',
'                            where cihd_enq_id =  :P90_CIR_ENQ_ID                         ',
'                            ORDER BY CIHD_DISPLAY_ORDER, CIHD_GST_PERC, CIHD_HSN_CODE,cihd_parent_id nulls first',
'						   )',
'            SELECT cihd_id, CIHD_HSN_CODE,CIHD_HSN_DESC, CIHD_GST_PERC',
'                                , CIHD_END_USE_CODE, CIHD_CHAPTER',
'                            ,CIHD_ENQ_ID, cihd_parent_id,ROWNUM DISPLAY_ORDER',
'            FROM qsort) iq ',
'    ON (iq.cihd_id = cihd.cihd_id',
'        )',
'    WHEN MATCHED THEN ',
'        UPDATE SET  cihd.CIHD_DISPLAY_ORDER = iq.DISPLAY_ORDER;',
'        ',
'    --Added by Rahul on 31-Mar-25 to update display order end',
'',
'    elsif v_split_flag != ''Y'' and v_cnt_products = 1 then',
'        l_error_msg := ''This group has only one product and cannot be split further'';',
'        apex_error.add_error (',
'			p_message          => l_error_msg,',
'			p_display_location => apex_error.c_on_error_page );  ',
'    ',
'    elsif v_split_flag = ''Y'' then',
'        l_error_msg := ''This product is already in a manual group and cannot be split further'';',
'        apex_error.add_error (',
'			p_message          => l_error_msg,',
'			p_display_location => apex_error.c_on_error_page );  ',
'    end if;',
'    end if;',
'exception when others then',
'    l_error_msg := SQLERRM;',
'    logger.log_error(''Error in split groups process - '' || l_error_msg, l_scope, null, l_params);  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>93110377912255815
);
wwv_flow_imp.component_end;
end;
/
