prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'Output Generation'
,p_page_mode=>'MODAL'
,p_step_title=>'Output Generation'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.excelcss {font-size:16px;color:green;}',
'.pdfcss{font-size:16px;color:#ED6647;}',
'.doccss{font-size:16px;color:blue;}'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13212860775863701)
,p_plug_name=>'Packing & Batch Summary'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'rownum "Sr#", a.eod_quantity "Qty", a.pm_uom "UOM", a.packing "Packing", a.description "Item Description", a.unit_fob "Unit FOB", a.total_fob "Total"',
',a.batch_no "Batch#", a.id_packing_date "Pkg. dt.", a.id_expiry_date "Expiry dt.", a.barcode "Barcode"',
'from (',
'select  inv.batch_no,id_product_id ',
', inv.id_packing_date , inv.id_expiry_date, eod_hsn_code, (eod_net_wt * eod_quantity) net_weight, (eod_gross_wt * eod_quantity) gross_weight',
', eod_quantity,pm_name description,   trim(PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT) packing,',
'          eod_marks_nos',
'  ,trim(to_char(case when nvl(EOM_COSTING_TYPE,''FOB'') = ''FOB'' then nvl(EOD_FOB_DOLL_RND ,0)',
'                when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&F'' then nvl(EOD_CANDF_AMT_RND ,0)',
'                when nvl(EOM_COSTING_TYPE,''FOB'') = ''CIF'' then nvl(EOD_CIF_AMT_RND ,0)',
'                when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&I'' then nvl(EOD_CNI_AMT_RND ,0)',
'         end,''99,99,990.99'')) || '' '' || pm_uom unit_fob',
'         ,pm_uom',
'        ,to_char(round(trim(case when nvl(EOM_COSTING_TYPE,''FOB'') = ''FOB'' then nvl(EOD_FOB_DOLL_RND ,0)',
'                when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&F'' then nvl(EOD_CANDF_AMT_RND ,0)',
'                when nvl(EOM_COSTING_TYPE,''FOB'') = ''CIF'' then nvl(EOD_CIF_AMT_RND ,0)',
'                when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&I'' then nvl(EOD_CNI_AMT_RND ,0)',
'         end)* nvl(eod_quantity,0),2),''99,99,99,990.99'') total_fob',
'         ,nvl(inv.barcode,pm_barcode) barcode',
'',
'from   v_enquiries_orders_details, v_product_master, v_enquiries_orders_mst,',
'(',
'    select distinct (LISTAGG(id_batch_no, '',''||CHR(10)) ',
'WITHIN GROUP (  ORDER BY id_product_id ) ',
'OVER (partition by id_product_id ',
'	)) batch_no, id_product_id',
',(LISTAGG(id_packing_date, '',''||CHR(10)) ',
'WITHIN GROUP (  ORDER BY id_product_id ) ',
'OVER (partition by id_product_id ',
'	)) id_packing_date',
',(LISTAGG(id_expiry_date, '',''||CHR(10)) ',
'WITHIN GROUP (  ORDER BY id_product_id ) ',
'OVER (partition by id_product_id ',
'	)) id_expiry_date ',
'    ,id_barcode barcode',
'from v_inward_master, v_inward_details, v_enquiries_orders_mst',
'where id_im_id = im_id',
'and id_ord_id = eom_ord_id',
'and im_status = ''CO''',
'and eom_enq_id =  :P10_ENQ_ID',
'--Added below union by Rahul on 23-Sep-25 to fetch details from stock start',
'union',
'select distinct (LISTAGG(id_batch_no, '',''||CHR(10)) ',
'WITHIN GROUP (  ORDER BY id_product_id ) ',
'OVER (partition by id_product_id ',
'	)) batch_no, id_product_id',
',(LISTAGG(id_packing_date, '',''||CHR(10)) ',
'WITHIN GROUP (  ORDER BY id_product_id ) ',
'OVER (partition by id_product_id ',
'	)) id_packing_date',
',(LISTAGG(id_expiry_date, '',''||CHR(10)) ',
'WITHIN GROUP (  ORDER BY id_product_id ) ',
'OVER (partition by id_product_id ',
'	)) id_expiry_date ',
'    ,id_barcode barcode',
'from v_inward_details,',
'(',
' select sum(nvl(sd.sd_quantity,0)),sd.sd_id_id',
' from v_stock_details sd,',
' (select SD_REF_STOCK_ID,SD_ENQ_ID,SD_PRODUCT_ID,nvl(sum(nvl(sd_quantity,0)),0)*-1  sd_quantity',
'				from v_stock_details',
'			   where sd_enq_id =  :P10_ENQ_ID',
'                and SD_PO_ID is null',
'                and SD_ID_ID is null',
'				and  sd_type = ''OUT''',
'			group by SD_REF_STOCK_ID,sd_enq_id,sd_product_id',
'            having nvl(sum(nvl(sd_quantity,0)),0) != 0) stock_product',
'where sd.sd_id = stock_product.sd_ref_stock_id',
'and sd.sd_type = ''IN''',
'group by sd.sd_id_id',
'having sum(nvl(sd.sd_quantity,0)) > 0) stock',
'where id_id = stock.sd_id_id',
'--Rahul 23-Sep-25 end',
') inv',
'where  inv.id_product_id (+) = EOD_PRODUCT_ID',
'and eod_enq_id =  :P10_ENQ_ID',
'and eod_product_id = pm_id',
'and eod_enq_id = eom_enq_id',
'ORDER BY ',
'CASE WHEN UNIT_FOB like ''0.00%'' THEN UNIT_FOB END desc,',
'description',
') a'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P10_ENQ_ID'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10_OUTPUT_TYPE'
,p_plug_display_when_cond2=>'PBS'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13214343908863716)
,p_name=>'Qty'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Qty'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(13215566656863728)
,p_name=>'Sr#'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Sr#'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sr#'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(13215678194863729)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13215702686863730)
,p_name=>'Packing'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Packing'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Packing'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>431
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
 p_id=>wwv_flow_imp.id(13215840503863731)
,p_name=>'Item Description'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Item Description'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Item Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(13215953177863732)
,p_name=>'Unit FOB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Unit FOB'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit FOB'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>114
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
 p_id=>wwv_flow_imp.id(13216010344863733)
,p_name=>'Total'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Total'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Total'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>16
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
 p_id=>wwv_flow_imp.id(13216192379863734)
,p_name=>'Batch#'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Batch#'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Batch#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32767
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
 p_id=>wwv_flow_imp.id(13216234417863735)
,p_name=>'Pkg. dt.'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Pkg. dt.'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Pkg. Dt.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32767
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
 p_id=>wwv_flow_imp.id(13216368063863736)
,p_name=>'Expiry dt.'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Expiry dt.'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Expiry Dt.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32767
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
 p_id=>wwv_flow_imp.id(13216455662863737)
,p_name=>'Barcode'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Barcode'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Barcode'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(13212901993863702)
,p_internal_uid=>13212901993863702
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_no_data_found_message=>'Custom Invoice Report is not generated <br>or<br> Costing of the order is modified after the Custom Invoice Report was generated'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>true
,p_download_formats=>'CSV'
,p_enable_mail_download=>false
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'  var $ = apex.jQuery,',
'    toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),',
'    toolbarGroup = toolbarData.toolbarFind("actions1");',
'',
'  toolbarGroup.controls.push( {',
'    type: "BUTTON",',
'    hot: true,',
'    action: "show-download-dialog",',
'    iconBeforeLabel: true',
'  });',
'  config.toolbarData = toolbarData;',
'  return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(13225838234817958)
,p_interactive_grid_id=>wwv_flow_imp.id(13212901993863702)
,p_static_id=>'132259'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(13226039001817957)
,p_report_id=>wwv_flow_imp.id(13225838234817958)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13226513441817946)
,p_view_id=>wwv_flow_imp.id(13226039001817957)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(13214343908863716)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13227421754817938)
,p_view_id=>wwv_flow_imp.id(13226039001817957)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(13215566656863728)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13228302637817932)
,p_view_id=>wwv_flow_imp.id(13226039001817957)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(13215678194863729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13229294701817927)
,p_view_id=>wwv_flow_imp.id(13226039001817957)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(13215702686863730)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13230036180817921)
,p_view_id=>wwv_flow_imp.id(13226039001817957)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(13215840503863731)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13230913039817916)
,p_view_id=>wwv_flow_imp.id(13226039001817957)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(13215953177863732)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13231890313817910)
,p_view_id=>wwv_flow_imp.id(13226039001817957)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(13216010344863733)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13232764257817905)
,p_view_id=>wwv_flow_imp.id(13226039001817957)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(13216192379863734)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13233640284817899)
,p_view_id=>wwv_flow_imp.id(13226039001817957)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(13216234417863735)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13234536985817893)
,p_view_id=>wwv_flow_imp.id(13226039001817957)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(13216368063863736)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13235491518817887)
,p_view_id=>wwv_flow_imp.id(13226039001817957)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(13216455662863737)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21663359619725977)
,p_plug_name=>'Preview PDF'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<embed src="&P10_PREVIEW_PDF_LINK_TXT."   width="100%" height="600">'' src',
'from dual',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10_PREVIEW_PDF_LINK_TXT'
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'P10_OUTPUT_TYPE'
,p_plug_display_when_cond2=>'EWB:PBS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Preview PDF'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(21663499739725978)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>101714343126361704
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21663647848725979)
,p_db_column_name=>'SRC'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'PDF Preview'
,p_column_html_expression=>'<embed src="&P10_PREVIEW_PDF_LINK_TXT."   width="100%" height="600">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21673205580782972)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1017241'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SRC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70570773291196084)
,p_plug_name=>'Wizard Progress Questions for Output'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(100369846675273059)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10_OUTPUT_TYPE'
,p_plug_display_when_cond2=>'COMINVSC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148461546357250872)
,p_plug_name=>'Output Master Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'OM_ID,',
'OM_REF_ID,',
'--dbms_lob.getlength("OM_EXCEL") OM_EXCEL,',
'OM_EXCEL_NAME,',
'--dbms_lob.getlength("OM_PDF") OM_PDF,',
'OM_PDF_NAME,',
'OM_DOC_TYPE,',
'OM_DOC_MIME_TYPE,',
'OM_FINAL,',
'OM_REMARKS,',
'OM_CREATED_BY,',
'OM_CREATED_ON,',
'OM_UPDATED_BY,',
'OM_UPDATED_ON,',
'--dbms_lob.getlength("OM_DOC") OM_DOC,',
'OM_DOC_NAME,',
'om_parameters,',
'''f?''||''p=&APP_ID.:&APP_PAGE_ID.:&SESSION.:APPLICATION_PROCESS=download_pdf_file:::APP_OM_ID:''||OM_ID preview_link --Added by Ranu on 9/26 for PDF Preview functionality',
'from V_OUTPUT_MASTER ',
'where OM_REF_ID = :P10_ENQ_ID',
'and OM_DOC_TYPE = :P10_OUTPUT_TYPE',
'',
'/*Commented by Rahul on 14-Nov-25 to insert p_type so page 10 query can directly compare output type and decode for each output is not required. Old Data needs to be patched to update p_type instead of st_extra1',
'and OM_DOC_TYPE = decode (:P10_OUTPUT_TYPE,''PO'',''PO'',',
'                          ''ENQ'',''Proforma'',',
'                          ''ORD'',''Proforma'',',
'                          ''CI'',''CustomInvoice'',',
'                          ''GM'',''ContainerGrossMass'',',
'                          ''BOL'',''BillOfLading'',',
'                          ''COMINV'',''CommercialInvoice'',',
'                          ''PL'',''PackingList'',',
'                         ''SPICES'',''SpicesBoardReturn'',',
'                         ''LC'',''LotCodeList'',',
'                         ''PDI'',''ProductDeclIngredientsList'', --Added by Rahul on 28-Feb-24',
'                         ''CIAU'', ''CustomInvoiceAU'',',
'                         ''APEDA'',''ApedaBoardReturn'' --Added by Rahul on 22-Oct-24',
'                         ,''COMINVSC'',''CommercialInvoiceSC''',
'                         ,''SELF_SEAL'',''SelfSealing''',
'                         ,''PLAU'',''PackingListAU''',
'                         ,''SP'',''StuffingProgram''',
'                         ,''PD'',''PackingDeclaration''',
'                         ) */'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'P10_OUTPUT_TYPE'
,p_plug_display_when_cond2=>'EWB:PBS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Output Master Report'
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
'if ((:P10_OUTPUT_TYPE = ''ENQ'' or :P10_OUTPUT_TYPE = ''ORD'') AND :P10_EO_ID is null) then',
'   return true;',
'else',
'   return false;',
'end if;'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21663305775725976)
,p_name=>'PREVIEW_LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PREVIEW_LINK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143015019039343579)
,p_name=>'DOC'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'DOC'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_ID,P9000_FILE_TYPE:OUTPUTS,&OM_ID.,DOC'
,p_link_text=>'<i class="fa fa-file-word-o doccss"></i>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from v_setup_table ',
'where st_type= ''REPORT_SETUP'' ',
'and (lower(ST_EXTRA1) = ''.docx'' ',
'    or lower(ST_EXTRA2) = ''.docx'' ',
'    or  lower(ST_EXTRA2) = ''.docx'') ',
'and ST_NAME = :P10_OUTPUT_TYPE'))
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143015140654343580)
,p_name=>'EXCEL'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Excel'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_ID,P9000_FILE_TYPE:OUTPUTS,&OM_ID.,EXCEL'
,p_link_text=>'<i class="fa fa-file-excel-o excelcss"></i>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from v_setup_table',
'where st_type= ''REPORT_SETUP''',
' and (lower(ST_EXTRA1) = ''.xlsx''',
'  or lower(ST_EXTRA2) = ''.xlsx'' ',
'   or  lower(ST_EXTRA3) = ''.xlsx'') ',
'and ST_NAME = :P10_OUTPUT_TYPE'))
,p_escape_on_http_output=>true
,p_column_comment=>'(:P10_OUTPUT_TYPE = ''ENQ'' or  :P10_OUTPUT_TYPE = ''COMINV'' or  :P10_OUTPUT_TYPE = ''SPICES'' or  :P10_OUTPUT_TYPE = ''APEDA'' ) '
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143015591655343584)
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
 p_id=>wwv_flow_imp.id(143015632392343585)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143015793176343586)
,p_name=>'PDF'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'PDF'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.:Y:P9000_CALLING_FROM,P9000_FILE_ID,P9000_FILE_TYPE:OUTPUTS,&OM_ID.,PDF'
,p_link_text=>'<i class="fa fa-file-pdf-o pdfcss"></i>'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from v_setup_table ',
'where st_type= ''REPORT_SETUP'' ',
'and (lower(ST_EXTRA1) = ''.pdf'' ',
'    or lower(ST_EXTRA2) = ''.pdf'' ',
'    or  lower(ST_EXTRA2) = ''.pdf'') ',
'and ST_NAME = :P10_OUTPUT_TYPE'))
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143015830727343587)
,p_name=>'OM_DOC_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_DOC_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(143016077545343589)
,p_name=>'OM_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Updated On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(143016192034343590)
,p_name=>'OM_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(143016236505343591)
,p_name=>'OM_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(143016315024343592)
,p_name=>'OM_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(143016414636343593)
,p_name=>'OM_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
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
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143016531876343594)
,p_name=>'OM_FINAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_FINAL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Final'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(143016680570343595)
,p_name=>'OM_DOC_MIME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_DOC_MIME_TYPE'
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
 p_id=>wwv_flow_imp.id(143016804051343596)
,p_name=>'OM_DOC_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_DOC_TYPE'
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
 p_id=>wwv_flow_imp.id(143016865056343597)
,p_name=>'OM_PDF_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_PDF_NAME'
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
 p_id=>wwv_flow_imp.id(143017084517343599)
,p_name=>'OM_EXCEL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_EXCEL_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(148459439735250851)
,p_name=>'OM_REF_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_REF_ID'
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
 p_id=>wwv_flow_imp.id(148459627722250853)
,p_name=>'OM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_ID'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22467909583992730509)
,p_name=>'OM_PARAMETERS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OM_PARAMETERS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_CHECKBOX'
,p_heading=>'Parameters'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30863123969239354)
,p_lov_display_extra=>false
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(148459724624250854)
,p_internal_uid=>17493581034889846
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_delete_authorization_scheme=>wwv_flow_imp.id(69930751139109744)
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'ACTIONS_MENU:SAVE'
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
 p_id=>wwv_flow_imp.id(143011422620339857)
,p_interactive_grid_id=>wwv_flow_imp.id(148459724624250854)
,p_static_id=>'123089'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(143011354828339857)
,p_report_id=>wwv_flow_imp.id(143011422620339857)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21670798971765930)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(21663305775725976)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142983503187557991)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(143015019039343579)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142983999444557993)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(143015140654343580)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143001242986283420)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(143015632392343585)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143003547055312237)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(143015793176343586)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143004349868339824)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(143015830727343587)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143004889736339826)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(143016077545343589)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143005367907339827)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(143016192034343590)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143005857245339829)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(143016236505343591)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143006360543339831)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(143016315024343592)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143006812322339832)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(143016414636343593)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>235
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143007328770339834)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(143016531876343594)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143007835430339836)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(143016680570343595)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143008334436339838)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(143016804051343596)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143008882217339839)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(143016865056343597)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143009364303339841)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(143017084517343599)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143009888345339843)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(148459439735250851)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143010867875339851)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(148459627722250853)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22139910902645420170)
,p_view_id=>wwv_flow_imp.id(143011354828339857)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(22467909583992730509)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>294
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159397566648456190)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(124817506615634011)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10_OUTPUT_TYPE'
,p_plug_display_when_cond2=>'CI'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159398161991458652)
,p_plug_name=>'Step 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10_OUTPUT_TYPE'
,p_plug_display_when_cond2=>'CI'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159399841055478486)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'P10_OUTPUT_TYPE'
,p_plug_display_when_cond2=>'CI:COMINVSC:PO:SELF_SEAL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(162853821170780732)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'P10_OUTPUT_TYPE'
,p_plug_display_when_cond2=>'CI:COMINVSC:PO:SELF_SEAL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(162860184353780839)
,p_name=>'Output Master Report Old'
,p_display_sequence=>10
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'OM_ID,',
'OM_ID OM_ID_DELETE,',
'OM_REF_ID,',
'dbms_lob.getlength("OM_EXCEL") OM_EXCEL,',
'OM_EXCEL_NAME,',
'dbms_lob.getlength("OM_PDF") OM_PDF,',
'OM_PDF_NAME,',
'OM_DOC_TYPE,',
'OM_DOC_MIME_TYPE,',
'OM_FINAL,',
'OM_REMARKS,',
'OM_CREATED_BY,',
'OM_CREATED_ON,',
'OM_UPDATED_BY,',
'OM_UPDATED_ON,',
'dbms_lob.getlength("OM_DOC") OM_DOC,',
'OM_DOC_NAME',
'from V_OUTPUT_MASTER ',
'where OM_REF_ID = :P10_ENQ_ID',
'and OM_DOC_TYPE = decode (:P10_OUTPUT_TYPE,''PO'',''PO'',''ENQ'',''Proforma'',''ORD'',''Proforma'',''CI'',''CustomInvoice'',''GM'',''ContainerGrossMass'',''BOL'',''BillOfLading'',''COMINV'',''CommercialInvoice'')'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No Outputs Found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ((:P10_OUTPUT_TYPE = ''ENQ'' or :P10_OUTPUT_TYPE = ''ORD'') AND :P10_EO_ID is null) then',
'   return true;',
'else',
'   return false;',
'end if;'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125197113436174286)
,p_query_column_id=>1
,p_column_alias=>'OM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP:P10_OM_ID:#OM_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="Edit">'
,p_disable_sort_column=>'N'
,p_report_column_required_role=>'!'||wwv_flow_imp.id(69914533657288756)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125198507716174300)
,p_query_column_id=>2
,p_column_alias=>'OM_ID_DELETE'
,p_column_display_sequence=>2
,p_column_heading=>'Delete'
,p_column_link=>'javascript:apex.confirm(''Are you sure you want to delete this item?'', {request : ''DELETE'', set : {''P10_OM_ID'': ''#OM_ID#''}})'
,p_column_linktext=>'<i class="fa fa-trash-o fam-x fam-is-danger" style="font-size:16px;color:#0397D5"></i>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'--insert into error_log (el_text) values (:OM_CREATED_BY || :APP_USER || ''-test b4'');',
'/*if (:OM_CREATED_BY = :APP_USER)  then',
'insert into error_log (el_text) values (:OM_CREATED_BY || :APP_USER || ''-test'');',
'--or (fn_access_control (''DELETE_ACCESS''))',
'	return true;',
'else',
'	return false;',
'end if;*/',
'return true;',
'end;'))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125197205217174287)
,p_query_column_id=>3
,p_column_alias=>'OM_REF_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125197394254174288)
,p_query_column_id=>4
,p_column_alias=>'OM_EXCEL'
,p_column_display_sequence=>4
,p_column_heading=>'Excel'
,p_column_format=>'DOWNLOAD:V_OUTPUT_MASTER:OM_EXCEL:OM_ID::OM_DOC_MIME_TYPE:OM_EXCEL_NAME:::attachment:<i class="fa fa-file-excel-o excelcss"></i>:'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>':P10_OUTPUT_TYPE = ''ENQ'' or  :P10_OUTPUT_TYPE = ''PO'''
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<i class="fa fa-file-excel-o" class="excelcss"></i>',
'',
'<i class="fa fa-file-excel-o" class="excelcss"></i>',
'',
'P10_OUTPUT_TYPE = ENQ'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125197442733174289)
,p_query_column_id=>5
,p_column_alias=>'OM_EXCEL_NAME'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125197495876174290)
,p_query_column_id=>6
,p_column_alias=>'OM_PDF'
,p_column_display_sequence=>6
,p_column_heading=>'PDF'
,p_column_format=>'DOWNLOAD:V_OUTPUT_MASTER:OM_PDF:OM_ID::OM_DOC_MIME_TYPE:OM_PDF_NAME:::attachment:<i class="fa fa-file-pdf-o pdfcss"></i>:'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>'<i class="fa fa-file-pdf-o" class="pdfcss"></i>'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125197647337174291)
,p_query_column_id=>7
,p_column_alias=>'OM_PDF_NAME'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125197778738174292)
,p_query_column_id=>8
,p_column_alias=>'OM_DOC_TYPE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125197804982174293)
,p_query_column_id=>9
,p_column_alias=>'OM_DOC_MIME_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125197964682174294)
,p_query_column_id=>10
,p_column_alias=>'OM_FINAL'
,p_column_display_sequence=>11
,p_column_heading=>'Final'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125198080646174295)
,p_query_column_id=>11
,p_column_alias=>'OM_REMARKS'
,p_column_display_sequence=>12
,p_column_heading=>'Remarks'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125198169146174296)
,p_query_column_id=>12
,p_column_alias=>'OM_CREATED_BY'
,p_column_display_sequence=>13
,p_column_heading=>'Created By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125198292041174297)
,p_query_column_id=>13
,p_column_alias=>'OM_CREATED_ON'
,p_column_display_sequence=>14
,p_column_heading=>'Created On'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125198376840174298)
,p_query_column_id=>14
,p_column_alias=>'OM_UPDATED_BY'
,p_column_display_sequence=>15
,p_column_heading=>'Updated By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(125198434214174299)
,p_query_column_id=>15
,p_column_alias=>'OM_UPDATED_ON'
,p_column_display_sequence=>16
,p_column_heading=>'Updated On'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(82481228078714167)
,p_query_column_id=>16
,p_column_alias=>'OM_DOC'
,p_column_display_sequence=>7
,p_column_heading=>'DOC'
,p_column_format=>'DOWNLOAD:V_OUTPUT_MASTER:OM_DOC:OM_ID::OM_DOC_MIME_TYPE:OM_DOC_NAME:::attachment:<i class="fa fa-file-word-o doccss"></i>:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(82481351116714168)
,p_query_column_id=>17
,p_column_alias=>'OM_DOC_NAME'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(164521206011619528)
,p_plug_name=>'items'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>5
,p_query_type=>'TABLE'
,p_query_table=>'V_OUTPUT_MASTER'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'N',
  'attribute_02', 'HTML',
  'attribute_03', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4113239400005968736)
,p_plug_name=>'EWayBill'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Outward'' "SupplyType",',
'''EXPORT'' "SubType",',
'''Tax Invoice'' "TaxInvoice",',
'eom_invoice_no "DocNo",',
'sysdate "DocDate",',
'''Regular'' "TransctionType",',
'''JANUZ UNIVERSAL'' "PartyName",',
'''27AAHFJ9563G1ZY'' "GSTIN", -- Needs to be driven from setup',
'cm_name "ToPartyName",',
'--CIR_PRODUCT_NAME "Product",',
'CIR_GROUP "Product",',
'CIR_PRODUCT_NAME "Description",',
'CIR_HSN_CODE "HSN",',
'--upper(decode(pm_uom,''ctns'',''CARTONS'',pm_uom)) "Unit",',
'''CARTONS'' "Unit",',
'CIR_QTY "Qty",',
'CIR_TAX_VALUE "AssessableValue",',
'''0+0+''||CIR_IGST_RATE||''+0+0'' "TaxRate",',
'''0.00'' "CGSTAMT",',
'''0.00'' "SGSTAMT",',
'CIR_IGST_AMOUNT "IGSTAMT",',
'''0.00'' "CessAMT",',
'''0.00'' "CessNonAdvAMT",',
'''0.00'' "Others",',
'CIR_TAX_VALUE + CIR_IGST_AMOUNT "InvoiceValue",',
'CIR_IGST_RATE,',
'cir_display_order',
'from V_CUSTOM_INVOICE_REPORT,V_ENQUIRIES_ORDERS_MST,  V_CUSTOMER_MASTER',
'where cir_enq_id = eom_enq_id',
'--and cir_product_id = pm_id',
'and eom_customer_id = cm_id',
'and cir_enq_id = :P10_ENQ_ID',
'and cir_category = ''GF''',
'and eom_custom_inv_amt = (select max(cir_amount)',
'                          from V_CUSTOM_INVOICE_REPORT',
'                          where cir_enq_id = :P10_ENQ_ID',
'                          and cir_category = ''TOT''',
'                          )',
'                          ;'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10_OUTPUT_TYPE'
,p_plug_display_when_cond2=>'EWB'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'EWayBill'
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
 p_id=>wwv_flow_imp.id(3877543488037475122)
,p_name=>'CIR_IGST_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_IGST_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'IGST Rate%'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
 p_id=>wwv_flow_imp.id(3877543565695475123)
,p_name=>'InvoiceValue'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'InvoiceValue'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Invoice Value'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>230
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
 p_id=>wwv_flow_imp.id(3877543615886475124)
,p_name=>'Others'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Others'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Others'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(3877543741825475125)
,p_name=>'CessNonAdvAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CessNonAdvAMT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cess Non Adv. Amt.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(3877543881317475126)
,p_name=>'CessAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CessAMT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cess Amt.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(3877543970515475127)
,p_name=>'IGSTAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IGSTAMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'IGST Amt.'
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
 p_id=>wwv_flow_imp.id(3877544070743475128)
,p_name=>'SGSTAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SGSTAMT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'SGST Amt.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(3877544164634475129)
,p_name=>'CGSTAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CGSTAMT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'CGST Amt.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(3877544296144475130)
,p_name=>'TaxRate'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TaxRate'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tax Rate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>48
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
 p_id=>wwv_flow_imp.id(3877544387846475131)
,p_name=>'AssessableValue'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AssessableValue'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assessable Value'
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
 p_id=>wwv_flow_imp.id(3877544475240475132)
,p_name=>'Qty'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Qty'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty.'
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
 p_id=>wwv_flow_imp.id(3877544572478475133)
,p_name=>'Unit'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Unit'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>7
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
 p_id=>wwv_flow_imp.id(3877544692177475134)
,p_name=>'HSN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HSN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'HSN'
,p_heading_alignment=>'LEFT'
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3877544772143475135)
,p_name=>'Description'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Description'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3877544833941475136)
,p_name=>'Product'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Product'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Product'
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
 p_id=>wwv_flow_imp.id(3877544952992475137)
,p_name=>'ToPartyName'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ToPartyName'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'To Party Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(3877545031755475138)
,p_name=>'GSTIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GSTIN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'GSTIN'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(3877545174219475139)
,p_name=>'PartyName'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PartyName'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Party Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(3901940235231774190)
,p_name=>'TransactionType'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TransctionType'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Transction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>7
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
 p_id=>wwv_flow_imp.id(3901940411842774191)
,p_name=>'DocDate'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DocDate'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Doc.Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(3901940476152774192)
,p_name=>'DocNo'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DocNo'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Doc.No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(3901940533136774193)
,p_name=>'TaxInvoice'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TaxInvoice'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tax Invoice'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>11
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
 p_id=>wwv_flow_imp.id(3901940685819774194)
,p_name=>'SubType'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SubType'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sub Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>6
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
 p_id=>wwv_flow_imp.id(3901940730912774195)
,p_name=>'SupplyType'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SupplyType'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Supply Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>7
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
 p_id=>wwv_flow_imp.id(14398780456523283690)
,p_name=>'CIR_DISPLAY_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_DISPLAY_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
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
 p_id=>wwv_flow_imp.id(3901940840393774196)
,p_internal_uid=>457308673888416844
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_no_data_found_message=>'Custom Invoice Report is not generated <br>or<br> Costing of the order is modified after the Custom Invoice Report was generated'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>true
,p_download_formats=>'CSV'
,p_enable_mail_download=>false
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'  var $ = apex.jQuery,',
'    toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),',
'    toolbarGroup = toolbarData.toolbarFind("actions1");',
'',
'  toolbarGroup.controls.push( {',
'    type: "BUTTON",',
'    hot: true,',
'    action: "show-download-dialog",',
'    iconBeforeLabel: true',
'  });',
'  config.toolbarData = toolbarData;',
'  return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3877539324778474271)
,p_interactive_grid_id=>wwv_flow_imp.id(3901940840393774196)
,p_static_id=>'123088'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>15
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3877539239592474271)
,p_report_id=>wwv_flow_imp.id(3877539324778474271)
,p_view_type=>'GRID'
,p_stretch_columns=>false
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877044187442359290)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(3877543488037475122)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877527783343474232)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(3877543565695475123)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877528225827474233)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(3877543615886475124)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877528772055474235)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(3877543741825475125)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877529247121474236)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3877543881317475126)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877529778895474237)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3877543970515475127)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877530298472474239)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3877544070743475128)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877530797928474240)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3877544164634475129)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877531216752474242)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3877544296144475130)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877531754941474243)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3877544387846475131)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877532263681474244)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3877544475240475132)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877532803692474246)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3877544572478475133)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877533272357474247)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3877544692177475134)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877533762686474249)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3877544772143475135)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>367
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877534216867474250)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3877544833941475136)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>328
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877534765897474251)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3877544952992475137)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>143
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877535234904474253)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3877545031755475138)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>167
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877535777410474254)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3877545174219475139)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>164
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877536288787474255)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3901940235231774190)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877536762031474257)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3901940411842774191)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877537228879474258)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3901940476152774192)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877537721241474260)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3901940533136774193)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877538293507474261)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3901940685819774194)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3877538794815474265)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3901940730912774195)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14398774544728280383)
,p_view_id=>wwv_flow_imp.id(3877539239592474271)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(14398780456523283690)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15423614191571379383)
,p_plug_name=>'EWayBill'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Outward'' "SupplyType",',
'''EXPORT'' "SubType",',
'''Tax Invoice'' "TaxInvoice",',
'eom_invoice_no "DocNo",',
'sysdate "DocDate",',
'''Regular'' "TransctionType",',
'''JANUZ UNIVERSAL'' "PartyName",',
'''27AAHFJ9563G1ZY'' "GSTIN", -- Needs to be driven from setup',
'cm_name "ToPartyName",',
'CIR_PRODUCT_NAME "Product",',
'CIR_PRODUCT_NAME "Description",',
'CIR_HSN_CODE "HSN",',
'upper(decode(pm_uom,''ctns'',''CARTONS'',pm_uom)) "Unit",',
'CIR_QTY "Qty",',
'CIR_TAX_VALUE "AssessableValue",',
'''0+0+''||CIR_IGST_RATE||''+0+0'' "TaxRate",',
'''0.00'' "CGSTAMT",',
'''0.00'' "SGSTAMT",',
'CIR_IGST_AMOUNT "IGSTAMT",',
'''0.00'' "CessAMT",',
'''0.00'' "CessNonAdvAMT",',
'''0.00'' "Others",',
'CIR_TAX_VALUE + CIR_IGST_AMOUNT "InvoiceValue",',
'CIR_IGST_RATE',
'from V_CUSTOM_INVOICE_REPORT,V_ENQUIRIES_ORDERS_MST, V_PRODUCT_MASTER, V_CUSTOMER_MASTER',
'where cir_enq_id = eom_enq_id',
'and cir_product_id = pm_id',
'and eom_customer_id = cm_id',
'and cir_enq_id = :P10_ENQ_ID',
'and cir_category = ''GD''',
'and eom_custom_inv_amt = (select max(cir_amount)',
'                          from V_CUSTOM_INVOICE_REPORT',
'                          where cir_enq_id = :P10_ENQ_ID',
'                          and cir_category = ''TOT''',
'                          ) ;'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15423611676415379358)
,p_name=>'CIR_IGST_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIR_IGST_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'IGST Rate%'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
 p_id=>wwv_flow_imp.id(15423611776481379359)
,p_name=>'InvoiceValue'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'InvoiceValue'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Invoice Value'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>230
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
 p_id=>wwv_flow_imp.id(15423611881212379360)
,p_name=>'Others'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Others'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Others'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(15423611940119379361)
,p_name=>'CessNonAdvAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CessNonAdvAMT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cess Non Adv. Amt.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(15423612040607379362)
,p_name=>'CessAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CessAMT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cess Amt.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(15423612209692379363)
,p_name=>'IGSTAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IGSTAMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'IGST Amt.'
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
 p_id=>wwv_flow_imp.id(15423612221421379364)
,p_name=>'SGSTAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SGSTAMT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'SGST Amt.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(15423612348015379365)
,p_name=>'CGSTAMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CGSTAMT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'CGST Amt.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4
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
 p_id=>wwv_flow_imp.id(15423612432992379366)
,p_name=>'TaxRate'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TaxRate'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tax Rate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>48
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
 p_id=>wwv_flow_imp.id(15423612541827379367)
,p_name=>'AssessableValue'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AssessableValue'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Assessable Value'
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
 p_id=>wwv_flow_imp.id(15423612637720379368)
,p_name=>'Qty'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Qty'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty.'
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
 p_id=>wwv_flow_imp.id(15423612801282379369)
,p_name=>'Unit'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Unit'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(15423612849116379370)
,p_name=>'HSN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HSN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'HSN'
,p_heading_alignment=>'LEFT'
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15423613001198379371)
,p_name=>'Description'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Description'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15423613113016379372)
,p_name=>'Product'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Product'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Product'
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
 p_id=>wwv_flow_imp.id(15423613179139379373)
,p_name=>'ToPartyName'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ToPartyName'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'To Party Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(15423613287035379374)
,p_name=>'GSTIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GSTIN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'GSTIN'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(15423613346406379375)
,p_name=>'PartyName'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PartyName'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Party Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>15
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
 p_id=>wwv_flow_imp.id(15423613452019379376)
,p_name=>'TransactionType'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TransctionType'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Transction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>7
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
 p_id=>wwv_flow_imp.id(15423613528833379377)
,p_name=>'DocDate'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DocDate'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Doc.Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(15423613688739379378)
,p_name=>'DocNo'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DocNo'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Doc.No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(15423613768474379379)
,p_name=>'TaxInvoice'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TaxInvoice'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tax Invoice'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>11
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
 p_id=>wwv_flow_imp.id(15423613866524379380)
,p_name=>'SubType'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SubType'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sub Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>6
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
 p_id=>wwv_flow_imp.id(15423613952616379381)
,p_name=>'SupplyType'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SupplyType'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Supply Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>7
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(15423614050483379382)
,p_internal_uid=>1493632363866678809
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_no_data_found_message=>'Custom Invoice Report is not generated <br>or<br> Costing of the order is modified after the Custom Invoice Report was generated'
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>true
,p_download_formats=>'CSV'
,p_enable_mail_download=>false
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'  var $ = apex.jQuery,',
'    toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),',
'    toolbarGroup = toolbarData.toolbarFind("actions1");',
'',
'  toolbarGroup.controls.push( {',
'    type: "BUTTON",',
'    hot: true,',
'    action: "show-download-dialog",',
'    iconBeforeLabel: true',
'  });',
'  config.toolbarData = toolbarData;',
'  return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(14717080285130909012)
,p_interactive_grid_id=>wwv_flow_imp.id(15423614050483379382)
,p_static_id=>'123087'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(14717080119598909011)
,p_report_id=>wwv_flow_imp.id(14717080285130909012)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716676648120908440)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(15423611676415379358)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716677188278908441)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(15423611776481379359)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716677637330908442)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(15423611881212379360)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716678207338908444)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(15423611940119379361)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716678636834908445)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(15423612040607379362)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716679144012908447)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(15423612209692379363)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716679641971908448)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(15423612221421379364)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716680123447908450)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(15423612348015379365)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716680706371908451)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(15423612432992379366)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716681212174908461)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(15423612541827379367)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716781158990908558)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(15423612637720379368)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716881093870908607)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(15423612801282379369)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716975552610908648)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(15423612849116379370)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716976044682908689)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(15423613001198379371)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716976499541908720)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(15423613113016379372)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716976927107908747)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(15423613179139379373)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716977417860908773)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(15423613287035379374)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716977924100908799)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(15423613346406379375)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716978373662908821)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(15423613452019379376)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716978859959908844)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(15423613528833379377)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716979365359908870)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(15423613688739379378)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716979870688908897)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(15423613768474379379)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716980306558908926)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(15423613866524379380)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14716980738832908953)
,p_view_id=>wwv_flow_imp.id(14717080119598909011)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(15423613952616379381)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124921435815275367)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(159399841055478486)
,p_button_name=>'SAVE_CI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P10_OM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124915189466988440)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(159399841055478486)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(162854211087780734)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(162853821170780732)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124915505824988440)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(159399841055478486)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_OUTPUT_TYPE'
,p_button_condition2=>'CI'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(162853595666780732)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(162853821170780732)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_database_action=>'UPDATE'
,p_button_comment=>'Server contd - Item not null P10_OM_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70570888816196085)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(159399841055478486)
,p_button_name=>'NEXT_Questions_For_Output'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_OUTPUT_TYPE'
,p_button_condition2=>'CI'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(162853492369780732)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(162853821170780732)
,p_button_name=>'GEN_OUTPUT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Output'
,p_button_position=>'NEXT'
,p_button_condition=>'P10_OUTPUT_TYPE'
,p_button_condition2=>'EWB:PBS'
,p_button_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_database_action=>'INSERT'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'P10_OM_ID is null',
''))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(124913322441975541)
,p_branch_name=>'Go To Page 90'
,p_branch_action=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:RP,90:P90_CIR_ENQ_ID,P90_CIR_ADDITIONAL_DETAILS:&P10_ENQ_ID.,'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(124915505824988440)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(70571012686196086)
,p_branch_name=>'Go To Page 97'
,p_branch_action=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:RP,97:P97_TYPE_ID,P97_OUTPUT_TYPE,P97_CALLING_FROM:&P10_ENQ_ID.,&P10_OUTPUT_TYPE.,&P10_CALLING_FROM.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(70570888816196085)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21663177597725975)
,p_name=>'P10_PREVIEW_PDF_LINK_TXT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(164521206011619528)
,p_use_cache_before_default=>'NO'
,p_source=>'''f?''||''p=&APP_ID.:&APP_PAGE_ID.:&SESSION.:APPLICATION_PROCESS=download_pdf_file:::APP_OM_ID:''||:APP_OM_ID'
,p_source_type=>'EXPRESSION'
,p_source_language=>'SQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27614935791485770)
,p_name=>'P10_OUTPUT_TYPE_PO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(164521206011619528)
,p_prompt=>'Output Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Purchase Order;PO'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when_type=>'NEVER'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Proforma'',''ENQ''',
'from dual',
'union ',
'select ''Custom Invoice'',''CI''',
'from dual',
'union ',
'select ''PO'',''PO''',
'from dual',
'where nvl(:P10_TITLE,''NA'') = ''Purchase Order''',
'union ',
'select ''Bill Of Lading'',''BOL''',
'from dual',
'union ',
'select ''Container Gross Mass'',''GM''',
'from dual',
'union ',
'select ''Commercial Invoice'',''COMINV''',
'from dual;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125198678022174301)
,p_name=>'P10_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(164521206011619528)
,p_item_source_plug_id=>wwv_flow_imp.id(164521206011619528)
,p_prompt=>'Remarks'
,p_source=>'OM_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_item_comment=>'Server side contd - Item not null - P10_OM_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132379401397992586)
,p_name=>'P10_DISPLAY_OTHER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(164521206011619528)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Additional Details to be displayed'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_OUTPUT_DISPLAY_ATTR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ST_NAME d, ST_CODE r ',
'FROM V_SETUP_TABLE',
'WHERE ST_TYPE = ''OUTPUT_DISPLAY_ATTR''',
'and st_parent_id = :P10_OUTPUT_TYPE',
'and nvl(st_display,''Y'') = ''Y''',
'ORDER BY ST_DISPLAY_ORDER'))
,p_lov_cascade_parent_items=>'P10_OUTPUT_TYPE'
,p_ajax_items_to_submit=>'P10_OUTPUT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_begin_on_new_line=>'N'
,p_display_when=>'P10_OUTPUT_TYPE'
,p_display_when2=>'GM:EWB'
,p_display_when_type=>'VALUE_OF_ITEM_IN_CONDITION_NOT_IN_COLON_DELIMITED_LIST'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_item_comment=>'Server Side contd original list - CI:GM:EWB'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162806947581512874)
,p_name=>'P10_ENQ_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(164521206011619528)
,p_prompt=>'Enq Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162856649463780787)
,p_name=>'P10_OM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(164521206011619528)
,p_item_source_plug_id=>wwv_flow_imp.id(164521206011619528)
,p_source=>'OM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164498204632844835)
,p_name=>'P10_OUTPUT_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(164521206011619528)
,p_prompt=>'Output Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_OUTPUT_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''OUTPUT_TYPE''',
' and st_extra2 = :P10_CALLING_FROM',
' --and st_code <> ''PO''  Commented by Rahul on 28-Feb to drive the logic from Extra2 settings of master setup',
' --PO is excluded as PO output are generated based on POM_ID and not ENQ_ID like other outputs',
' --We will use Static LOV on page where ever PO output to be displayed',
' order by st_display_order'))
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Proforma'',''ENQ''',
'from dual',
'union ',
'select ''Custom Invoice'',''CI''',
'from dual',
'union ',
'select ''PO'',''PO''',
'from dual',
'where nvl(:P10_TITLE,''NA'') = ''Purchase Order''',
'union ',
'select ''Bill Of Lading'',''BOL''',
'from dual',
'union ',
'select ''Container Gross Mass'',''GM''',
'from dual',
'union ',
'select ''Commercial Invoice'',''COMINV''',
'from dual;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164498552135888787)
,p_name=>'P10_CALLING_FROM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(164521206011619528)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(124921499439275368)
,p_validation_name=>'HSN Code validation'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_cnt number;',
'begin',
'    select count(1) into v_cnt',
'    from V_ENQUIRIES_ORDERS_DETAILS',
'    where EOD_ENQ_ID = :P10_ENQ_ID',
'    and EOD_HSN_CODE is null;',
'    ',
'    if v_cnt > 0 then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'    ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'HSN Code is not associated to one or more product(s) of this enquiry. Kindly review and update it to proceed further.'
,p_validation_condition=>'NEXT'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(83673816346942794)
,p_validation_name=>'Validate Custom Rate'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_cnt number;',
'begin',
'    select count(1) into v_cnt',
'    from V_ENQUIRIES_ORDERS_MST',
'    where EOM_ENQ_ID = :P10_ENQ_ID',
'    and EOM_REALISE_RATE is null;',
'    ',
'    if v_cnt > 0 then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'    ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please enter Custom Rate in the Order Details region'
,p_validation_condition=>'NEXT'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3877543371356475121)
,p_validation_name=>'Validate Net/ Gross Wt.'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_cnt number;',
'begin',
'    select count(1) into v_cnt',
'    from V_ENQUIRIES_ORDERS_DETAILS',
'    where eod_enq_id = :P10_ENQ_ID',
'    and (EOD_GROSS_WT is null or EOD_NET_WT is null);',
'    ',
'    if v_cnt > 0 then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'    ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Gross/ Net Weight is not associated to one or more product(s) of this enquiry. Kindly review and update it to proceed further.'
,p_validation_condition=>'NEXT,GEN_OUTPUT'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(83673707743942793)
,p_validation_name=>'Validate Authorize To Sign'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_cnt number;',
'begin',
'    select count(1) into v_cnt',
'    from V_ENQUIRIES_ORDERS_MST',
'    where EOM_ENQ_ID = :P10_ENQ_ID',
'    and EOM_ANALYST_ID is null;',
'    ',
'    if v_cnt > 0 then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'    ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please select Authorized To Sign from Other Details region'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_validation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Request is contained in value - NEXT,REGENERATE_CI',
'Modified to never on 19-Sep-20 as Authorised to sign not mandate'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(162854352508780734)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(162854211087780734)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(162855124755780768)
,p_event_id=>wwv_flow_imp.id(162854352508780734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(162868236391780889)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(162860184353780839)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(162868720755780892)
,p_event_id=>wwv_flow_imp.id(162868236391780889)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(162860184353780839)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(125416859151564091)
,p_name=>'New'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexbeforepagesubmit'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125416911410564092)
,p_event_id=>wwv_flow_imp.id(125416859151564091)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.widget.waitPopup();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21663723456725980)
,p_name=>'Set Value for PDF Link'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(148461546357250872)
,p_triggering_element=>'PDF'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21663791695725981)
,p_event_id=>wwv_flow_imp.id(21663723456725980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_PREVIEW_PDF_LINK_TXT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''f?''||''p=&APP_ID.:&APP_PAGE_ID.:&SESSION.:APPLICATION_PROCESS=download_pdf_file:::APP_OM_ID:''|| :OM_ID',
'from dual'))
,p_attribute_07=>'OM_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21663947069725982)
,p_event_id=>wwv_flow_imp.id(21663723456725980)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21663359619725977)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(162858295413780819)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(164521206011619528)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from V_OUTPUT_MASTER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>162909445044609315
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(162858732197780829)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P10_OM_ID is null then',
'        select SEQ_OM_ID.nextval',
'          into :P10_OM_ID',
'          from dual;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(162853492369780732)
,p_process_when_type=>'NEVER'
,p_internal_uid=>162909881828609325
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(162775967826891625)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Excel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_success_failure varchar2(2);',
'  v_error_msg varchar2(4000);',
'   gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT) || ''.'';',
'   l_scope logger_logs.scope%type := gc_scope_prefix || ''generae_excel'';',
'	l_params logger.tab_param;',
'begin',
'',
'  --gen_excel(:P10_ENQ_ID,v_success_failure,v_error_msg);',
'  PKG_GENERATE_OUTPUT.initialize(:P10_OUTPUT_TYPE,:P10_ENQ_ID,v_success_failure,v_error_msg,:P10_DISPLAY_OTHER);',
'',
'if v_success_failure = ''99'' then',
'apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );',
'end if;	',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_imp.id(162853492369780732)
,p_internal_uid=>162827117457720121
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(162957612538112699)
,p_process_sequence=>15
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  /*',
'  if (:P10_OUTPUT_TYPE = ''ENQ'' or :P10_OUTPUT_TYPE = ''ORD'') then',
'      delete from ENQUIRY_OUTPUTS where eo_id = :P10_OM_ID;',
'  elsif :P10_OUTPUT_TYPE = ''PO'' then',
'      delete from PO_OUTPUTS where po_id = :P10_OM_ID;',
'  end if;',
'  */',
'',
'  delete from V_OUTPUT_MASTER where om_id = :P10_OM_ID;',
'',
'--exception when others then',
'  --  null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Record deleted successfully.'
,p_internal_uid=>163008762168941195
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(162859095624780830)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(164521206011619528)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of V_OUTPUT_MASTER'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE,SAVE_CI'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>162910245255609326
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(124913964530977962)
,p_process_sequence=>36
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert CI HSN Details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_success_failure     number;',
'    v_cnt                 number;',
'    v_err_message         varchar2(4000);',
'begin',
'    --proc_custom_invoice (:P10_ENQ_ID,v_success_failure,v_err_message);',
'',
'  /*      INSERT INTO V_CUSTOM_INVOICE_HSN_DETAILS ',
'        (',
'            CIHD_ID,            ',
'            CIHD_ENQ_ID,',
'            CIHD_HSN_CODE,',
'            CIHD_HSN_DESC,',
'            CIHD_GST_PERC,',
'            CIHD_END_USE_CODE,',
'            CIHD_CHAPTER',
'        )',
'        SELECT SEQ_CIHD_ID.NEXTVAL,:P10_ENQ_ID,HCM_CODE,HCM_DESCRIPTION,EOD_TOTAL_GST_PERC,HCM_END_USE_CODE,HCM_CHAPTER',
'        FROM (',
'        SELECT 	DISTINCT HCM_CODE,',
'                HCM_DESCRIPTION,',
'                EOD_TOTAL_GST_PERC,',
'                HCM_END_USE_CODE,',
'                HCM_CHAPTER',
'        FROM V_ENQUIRIES_ORDERS_DETAILS,V_PRODUCT_MASTER,V_HSN_CODE_MASTER',
'            WHERE EOD_PRODUCT_ID = PM_ID ',
'            AND EOD_ENQ_ID = :P10_ENQ_ID ',
'            AND EOD_HSN_CODE = HCM_CODE (+)',
'            AND NVL(EOD_TOTAL_GST_PERC,0) IN ( SELECT DISTINCT NVL(EOD_TOTAL_GST_PERC,0) GST_PERC',
'                                                FROM V_ENQUIRIES_ORDERS_DETAILS',
'                                                WHERE EOD_ENQ_ID = :P10_ENQ_ID));',
'     --end if;',
'     */',
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
'                                AND EOD_ENQ_ID = :P10_ENQ_ID ',
'                                AND EOD_HSN_CODE = HCM_CODE (+)',
'                                AND NVL(EOD_TOTAL_GST_PERC,0) IN ( SELECT DISTINCT NVL(EOD_TOTAL_GST_PERC,0) GST_PERC',
'                                                                    FROM V_ENQUIRIES_ORDERS_DETAILS',
'                                                                    WHERE EOD_ENQ_ID = :P10_ENQ_ID)',
'                            ORDER BY EOD_TOTAL_GST_PERC, EOD_HSN_CODE)',
'            SELECT HCM_CODE,HCM_DESCRIPTION',
'					,EOD_TOTAL_GST_PERC,HCM_END_USE_CODE',
'                    ,HCM_CHAPTER,EOD_ENQ_ID',
'					,EOD_HSN_CODE,ROWNUM DISPLAY_ORDER',
'            FROM qsort) iq ',
'    ON (nvl(cihd.CIHD_HSN_CODE,0)  = nvl(iq.HCM_CODE,0) ',
'        and nvl(cihd.CIHD_GST_PERC,0) = nvl(iq.EOD_TOTAL_GST_PERC,0) ',
'        and iq.EOD_ENQ_ID = cihd.CIHD_ENQ_ID)',
'    WHEN MATCHED THEN ',
'        UPDATE SET  cihd.CIHD_DISPLAY_ORDER = iq.DISPLAY_ORDER',
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
'                ',
'        ',
'        DELETE FROM V_CUSTOM_INVOICE_HSN_DETAILS ',
'		WHERE CIHD_ENQ_ID = :P10_ENQ_ID ',
'		AND NOT EXISTS (select 1 ',
'						from V_ENQUIRIES_ORDERS_DETAILS ',
'						where EOD_HSN_CODE = CIHD_HSN_CODE ',
'						AND NVL(EOD_TOTAL_GST_PERC,0) = nvl(CIHD_GST_PERC,0)',
'						AND EOD_ENQ_ID = :P10_ENQ_ID );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(124915505824988440)
,p_process_when_type=>'NEVER'
,p_internal_uid=>124965114161806458
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from V_CUSTOM_INVOICE_HSN_DETAILS',
'where CIHD_ENQ_ID = :P10_ENQ_ID',
'',
'18-Sep-24 - Rahul',
'This logic is moved to new page 90 in its Pre rending section.'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(162859515441780831)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P10_OM_ID,APP_OM_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SAVE,DELETE,SAVE_CI,P10_OUTPUT_TYPE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>162910665072609327
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(162859903318780832)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>162911052949609328
,p_process_comment=>'CREATE,SAVE,DELETE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(143015496610343583)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(148461546357250872)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Output Master Report - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>143066646241172079
);
wwv_flow_imp.component_end;
end;
/
