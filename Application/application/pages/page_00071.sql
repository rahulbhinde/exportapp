prompt --application/pages/page_00071
begin
--   Manifest
--     PAGE: 00071
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
 p_id=>71
,p_name=>'Custom Invoice HSN Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Custom Invoice HSN Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(110237711391847346)
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
 p_id=>wwv_flow_imp.id(72404012755703654)
,p_plug_name=>'Details'
,p_parent_plug_id=>wwv_flow_imp.id(110237711391847346)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH product_grp as (select max(nvl(EOD_QUANTITY,0)) grp_qty,eod_group_id grp_id ',
'					from V_ENQUIRIES_ORDERS_DETAILS b ',
'					where eod_enq_id = b.eod_enq_id',
'                    and b.eod_enq_id = :P71_CIR_ENQ_ID ',
'					group by b.eod_group_id)',
'select eod_id,eod_HSN_CODE,nvl(EOD_TOTAL_GST_PERC,0) total_gstperc,',
'--case when EOD_GROUP_ID is not null then '']'' end ||',
'LPAD(PM_PACKAGE,2,'' '') || '' '' || RPAD(PM_BABY_BOX_UNIT,4,'' '')',
'  ||nvl2(PM_PACKAGE, '' x '',null)||PM_PACKAGE_1 || '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'  || '' '' || PM_PACKAGE_UNIT packing,				  ',
'pm_name,',
' to_number(LPAD(CASE WHEN nvl(eod_quantity,0) = 0 THEN NULL ELSE eod_quantity END ,4,'' '')) qty,',
'CASE WHEN nvl(eod_quantity,0) = 0 THEN RPAD('' '',6,'' '') ELSE RPAD(pm_uom,6,'' '') END uom,',
'nvl(pm_net_weight,0) * eod_quantity net_wt,',
'nvl(pm_gross_weight,0) * eod_quantity gross_wt,',
'case when NVL(EOM_COSTING_TYPE,''FOB'') = ''FOB'' then NVL(EOD_FOB_DOLL_RND ,0)',
'		when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&F'' then nvl(EOD_CANDF_AMT_RND ,0)',
'		when NVL(EOM_COSTING_TYPE,''FOB'') = ''CIF'' then NVL(EOD_CIF_AMT_RND ,0)',
'		when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&I'' then nvl(EOD_CNI_AMT_RND ,0)',
' end rate,',
'round( (case when eod_group_id IS NULL then eod_quantity',
'			when eod_group_id IS NOT NULL then',
'			(select grp_qty from product_grp where grp_id = eod_group_id)',
'		end)',
'			*',
'		(case when NVL(EOM_COSTING_TYPE,''FOB'') = ''FOB'' then NVL(EOD_FOB_DOLL_RND ,0)',
'			when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&F'' then nvl(EOD_CANDF_AMT_RND ,0)',
'			when NVL(EOM_COSTING_TYPE,''FOB'') = ''CIF'' then NVL(EOD_CIF_AMT_RND ,0)',
'			when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&I'' then nvl(EOD_CNI_AMT_RND ,0)',
'		end)							',
'	,2) amt,',
'round(round( (case when eod_group_id IS NULL then eod_quantity',
'			when eod_group_id IS NOT NULL then',
'			(select grp_qty from product_grp where grp_id = eod_group_id)',
'		end)',
'			*',
'		(case when NVL(EOM_COSTING_TYPE,''FOB'') = ''FOB'' then NVL(EOD_FOB_DOLL_RND ,0)',
'			when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&F'' then nvl(EOD_CANDF_AMT_RND ,0)',
'			when NVL(EOM_COSTING_TYPE,''FOB'') = ''CIF'' then NVL(EOD_CIF_AMT_RND ,0)',
'			when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&I'' then nvl(EOD_CNI_AMT_RND ,0)',
'		end)							',
'	,2)*nvl(EOM_REALISE_RATE,EOD_EXCHANGE_RATE),2) tax_val,',
'nvl(EOD_TOTAL_GST_PERC,0) igst_rate,',
'round((round( (case when eod_group_id IS NULL then eod_quantity',
'			when eod_group_id IS NOT NULL then',
'			(select grp_qty from product_grp where grp_id = eod_group_id)',
'		end)',
'			*',
'		(case when NVL(EOM_COSTING_TYPE,''FOB'') = ''FOB'' then NVL(EOD_FOB_DOLL_RND ,0)',
'			when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&F'' then nvl(EOD_CANDF_AMT_RND ,0)',
'			when NVL(EOM_COSTING_TYPE,''FOB'') = ''CIF'' then NVL(EOD_CIF_AMT_RND ,0)',
'			when nvl(EOM_COSTING_TYPE,''FOB'') = ''C&I'' then nvl(EOD_CNI_AMT_RND ,0)',
'		end)							',
'	,2)*nvl(EOM_REALISE_RATE,EOD_EXCHANGE_RATE)*nvl(EOD_TOTAL_GST_PERC,0))/100,2) igst_amt,',
'EOD_GROUP_ID',
',EOD_PRODUCT_ID ',
'from V_ENQUIRIES_ORDERS_DETAILS,V_PRODUCT_MASTER,V_ENQUIRIES_ORDERS_MST',
'where eod_product_id = pm_id',
'and eom_enq_id = eod_enq_id',
'and eod_enq_id = :P71_CIR_ENQ_ID '))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(133463360787216907)
,p_ajax_items_to_submit=>'P71_CIR_ENQ_ID'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72404157021703656)
,p_name=>'PACKING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PACKING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Packing'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>313
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77143909627845228)
,p_name=>'EOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(77143974474845229)
,p_name=>'EOD_HSN_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_HSN_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(72402816385703642)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77144064784845230)
,p_name=>'TOTAL_GSTPERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_GSTPERC'
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(72403021196703644)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77144162229845231)
,p_name=>'PM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77144248323845232)
,p_name=>'QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(77144395113845233)
,p_name=>'UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>24
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
 p_id=>wwv_flow_imp.id(77144546727845234)
,p_name=>'NET_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NET_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net Wt'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77144612110845235)
,p_name=>'GROSS_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GROSS_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Gross Wt'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77144739389845236)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
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
 p_id=>wwv_flow_imp.id(77144787442845237)
,p_name=>'AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77144856715845238)
,p_name=>'TAX_VAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAX_VAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Tax Val'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(77144983916845239)
,p_name=>'IGST_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IGST_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'IGST Amount'
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
 p_id=>wwv_flow_imp.id(77145091842845240)
,p_name=>'EOD_GROUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_GROUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Group'
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
 p_id=>wwv_flow_imp.id(77145178401845241)
,p_name=>'EOD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77145326488845242)
,p_name=>'IGST_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IGST_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'IGST Rate'
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(72404052253703655)
,p_internal_uid=>4133703975920037
,p_is_editable=>false
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
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(77131130717762333)
,p_interactive_grid_id=>wwv_flow_imp.id(72404052253703655)
,p_static_id=>'123201'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>5
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(77131219912762334)
,p_report_id=>wwv_flow_imp.id(77131130717762333)
,p_view_type=>'GRID'
,p_stretch_columns=>false
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77131736768762340)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(72404157021703656)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>186.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77151974248896637)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(77143909627845228)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77152468423896641)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(77143974474845229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77153030949896643)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(77144064784845230)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77153460313896645)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(77144162229845231)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>271.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77154046015896647)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(77144248323845232)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>49.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77154545691896649)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(77144395113845233)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77154982206896650)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(77144546727845234)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77155480106896652)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(77144612110845235)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77158167571913603)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(77144739389845236)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77158710402913605)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(77144787442845237)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77159081823913607)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(77144856715845238)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77159587374913609)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(77144983916845239)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77160057912913611)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(77145091842845240)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106.25
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77160643374913613)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(77145178401845241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77162505395919270)
,p_view_id=>wwv_flow_imp.id(77131219912762334)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(77145326488845242)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82.25
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(133463360787216907)
,p_plug_name=>'Unique HSN Code & GST% of Enquiry Product(s)'
,p_parent_plug_id=>wwv_flow_imp.id(110237711391847346)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
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
'        CIHD_DISPLAY_ORDER',
'from 	V_CUSTOM_INVOICE_HSN_DETAILS ',
'where 	CIHD_ENQ_ID = :P71_CIR_ENQ_ID  '))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72402816385703642)
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
 p_id=>wwv_flow_imp.id(72402897475703643)
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
 p_id=>wwv_flow_imp.id(72403021196703644)
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
 p_id=>wwv_flow_imp.id(72403075663703645)
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
 p_id=>wwv_flow_imp.id(72403214900703646)
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
 p_id=>wwv_flow_imp.id(72403644043703650)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(72403655894703651)
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
 p_id=>wwv_flow_imp.id(72403934936703653)
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
 p_id=>wwv_flow_imp.id(77145440703845243)
,p_name=>'CIHD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
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
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77145524891845244)
,p_name=>'CIHD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77145623449845245)
,p_name=>'CIHD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
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
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(77145734639845246)
,p_name=>'CIHD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3143071239265255791)
,p_name=>'CIHD_DISPLAY_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_DISPLAY_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(72402033410703634)
,p_internal_uid=>4131685132920016
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
 p_id=>wwv_flow_imp.id(77002299216344345)
,p_interactive_grid_id=>wwv_flow_imp.id(72402033410703634)
,p_static_id=>'123202'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(77002446827344346)
,p_report_id=>wwv_flow_imp.id(77002299216344345)
,p_view_type=>'GRID'
,p_stretch_columns=>false
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77091661843465604)
,p_view_id=>wwv_flow_imp.id(77002446827344346)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(72402816385703642)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77092129375465608)
,p_view_id=>wwv_flow_imp.id(77002446827344346)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(72402897475703643)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>360
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77092622128465610)
,p_view_id=>wwv_flow_imp.id(77002446827344346)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(72403021196703644)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77093084905465611)
,p_view_id=>wwv_flow_imp.id(77002446827344346)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(72403075663703645)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77093586139465612)
,p_view_id=>wwv_flow_imp.id(77002446827344346)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(72403214900703646)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77123382825711268)
,p_view_id=>wwv_flow_imp.id(77002446827344346)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(72403644043703650)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77127620259721145)
,p_view_id=>wwv_flow_imp.id(77002446827344346)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(72403934936703653)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77203366638243706)
,p_view_id=>wwv_flow_imp.id(77002446827344346)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(77145440703845243)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77203786107243709)
,p_view_id=>wwv_flow_imp.id(77002446827344346)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(77145524891845244)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77204296535243710)
,p_view_id=>wwv_flow_imp.id(77002446827344346)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(77145623449845245)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(77204799295243713)
,p_view_id=>wwv_flow_imp.id(77002446827344346)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(77145734639845246)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3074301886514889460)
,p_view_id=>wwv_flow_imp.id(77002446827344346)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3143071239265255791)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168025691463840813)
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
 p_id=>wwv_flow_imp.id(168026115444842792)
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
 p_id=>wwv_flow_imp.id(168026458627845049)
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
 p_id=>wwv_flow_imp.id(76991049353198847)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(168026458627845049)
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
 p_id=>wwv_flow_imp.id(77171124546962930)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(168026458627845049)
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
 p_id=>wwv_flow_imp.id(76991542353198847)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(168026458627845049)
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
 p_id=>wwv_flow_imp.id(76990742628198846)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(168026458627845049)
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
 p_id=>wwv_flow_imp.id(76994568455198861)
,p_branch_name=>'Go To Page 65'
,p_branch_action=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:RP,65:P90_CIR_ENQ_ID:&P71_CIR_ENQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'NEXT,REGENERATE_CI'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(76994201310198860)
,p_branch_name=>'Go To Page 10'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_ENQ_ID,P10_OUTPUT_TYPE:&P71_CIR_ENQ_ID.,CI&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(76991542353198847)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76989441665198842)
,p_name=>'P71_CIR_ENQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(133463360787216907)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22047784158352672144)
,p_name=>'P71_CIR_ADDITIONAL_DETAILS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(133463360787216907)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(22047783991651672143)
,p_computation_sequence=>10
,p_computation_item=>'P71_CIR_ADDITIONAL_DETAILS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P10_DISPLAY_OTHER'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4113236361580968706)
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
'where cihd_enq_id = :P71_CIR_ENQ_ID',
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
,p_when_button_pressed=>wwv_flow_imp.id(76991049353198847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76993236386198859)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76990742628198846)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76993689863198859)
,p_event_id=>wwv_flow_imp.id(76993236386198859)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(72403817458703652)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(133463360787216907)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Groups of Custom Invoice - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>72454967089532148
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77170694770957553)
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
'                            and eod_enq_id = :P71_CIR_ENQ_ID',
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
'and eod_enq_id = :P71_CIR_ENQ_ID) b',
'ON (	a.cirs_product_id = b.eod_product_id',
'		and a.cirs_eod_id = b.eod_id',
'		and a.cirs_enq_id = b.eod_enq_id',
'        and a.cirs_enq_id = :P71_CIR_ENQ_ID',
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
'        and a.cirs_enq_id = :P71_CIR_ENQ_ID',
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
'                                            where b.eod_enq_id = :P71_CIR_ENQ_ID',
'                                            and a.CIRS_MANUAL_CI_GRP_CIRS_ID = c.cirs_id',
'                                            and c.cirs_product_id = b.eod_product_id',
'                                            and c.cirs_eod_id = b.eod_id',
'                                        )',
'AND a.cirs_enq_id = :P71_CIR_ENQ_ID',
'AND a.CIRS_MANUAL_CI_GRP_CIRS_ID is not null;   ',
'',
'',
'delete from V_CUSTOM_INVOICE_REPORT_STAGING a',
'where a.cirs_eod_id not in (',
'                    select eod_id ',
'                    from V_ENQUIRIES_ORDERS_DETAILS b',
'                    where b.eod_enq_id = :P71_CIR_ENQ_ID',
'                    );   ',
'                ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(76991049353198847)
,p_process_when_type=>'NEVER'
,p_internal_uid=>77221844401786049
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--When No Rows returned condition removed on 12Sep20',
'select 1 ',
'from V_CUSTOM_INVOICE_REPORT',
'where CIR_ENQ_ID= :P71_CIR_ENQ_ID'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3042999472759138592)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate CI - by CI package'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_success_failure VARCHAR2(10);',
'v_error_msg       VARCHAR2(4000); ',
'BEGIN',
'    PKG_CUSTOM_INVOICE.populate_staging (:P71_CIR_ENQ_ID,v_success_failure,v_error_msg,:P71_CIR_ADDITIONAL_DETAILS); --Aditional Details parameter added by Rahul on 14-Dec-23 to pass flags for split frt/insurance',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(76991049353198847)
,p_internal_uid=>3043050622389967088
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--When No Rows returned condition removed on 12Sep20',
'select 1 ',
'from V_CUSTOM_INVOICE_REPORT',
'where CIR_ENQ_ID= :P71_CIR_ENQ_ID'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77171253311964914)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Regenerate CI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_success_failure number;',
'    v_err_message     varchar2(4000);',
'begin',
'    proc_custom_invoice (:P71_CIR_ENQ_ID,v_success_failure,v_err_message);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(77171124546962930)
,p_process_when_type=>'NEVER'
,p_internal_uid=>77222402942793410
);
wwv_flow_imp.component_end;
end;
/
