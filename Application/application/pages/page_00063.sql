prompt --application/pages/page_00063
begin
--   Manifest
--     PAGE: 00063
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
 p_id=>63
,p_name=>'Data Load Results'
,p_step_title=>'Data Load Results'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* apply u-Report--dataLoad CSS class to Data Load Report and hide empty columns */',
'apex.jQuery("table.standardLook").addClass("u-Report u-Report--standardLook");',
'apex.jQuery("table.u-Report--standardLook tr:nth-child(1) td:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").each( function (idx, elem) { apex.jQuery("table.u-Report--standardLook tr td[headers=\""+apex.jQuery(elem).attr(''id'')+"\"]").css("display", "none");});'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109515176595271365)
,p_plug_name=>'&nbsp;&nbsp;&nbsp;&nbsp;Proforma Bulk Data Upload'
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_translate_title=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(86508026094902504)
,p_plug_name=>'Enquiry Details Uploaded'
,p_region_name=>'EODIG'
,p_parent_plug_id=>wwv_flow_imp.id(109515176595271365)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'	eod_id               ,',
'	eod_product_id       ,',
'	eod_quantity         ,',
'	pm_brand || nvl2(pm_brand,'' '','''') || eod_product_name || '' '' || pm_packing   eod_product_name   ,',
'	eod_lbh              ,',
'	eod_total_cubic      ,',
'	eod_stw_rnd_20       ,',
'	eod_mrp              ,',
'	eod_purchase_amt     ,',
'	eod_scheme_perc      ,',
'	eod_scheme_amt       ,',
'	eod_discount_perc    ,',
'	eod_discount_amt     ,',
'	eod_total_gst_perc   ,',
'	eod_gst_perc         ,',
'	eod_gst_amt          ,',
'	eod_trans_charges    ,',
'	eod_bags_ctns        ,',
'	eod_extra            ,',
'	eod_repacking        ,',
'	eod_net_purchase_val ,',
'	eod_vol_fob_amt      ,',
'	eod_vol_fob_exp      ,',
'	eod_profit_perc      ,',
'	eod_profit_amt       ,',
'	eod_income_tax_perc  ,',
'	eod_income_tax       ,',
'	eod_duty_perc        ,',
'	eod_duty_amt         ,',
'	eod_ecgc_perc        ,',
'	eod_ecgc             ,',
'	eod_bank_comm_perc   ,',
'	eod_bank_comm        ,',
'	eod_interest_perc    ,',
'	eod_interest_amt     ,',
'	eod_fob_rs           ,',
'	eod_exchange_rate    ,',
'    eod_fob_doll         ,	',
'    eod_fob_doll_rnd     ,',
'    eod_manufac_id       ,',
'    PM_BABY_BOX_UNIT     ,   ',
'    PM_PACKAGE           ,',
'    PM_PACKAGE_1         ,',
'    PM_PRODUCT_UNIT      ,',
'    PM_PACKAGE_2         ,',
'    PM_PACKAGE_UNIT',
'FROM V_TEMP_PROFORMA',
'WHERE eod_created_by = :APP_USER'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Enquiry Details Uploaded'
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
 p_id=>wwv_flow_imp.id(83748316572693130)
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
 p_id=>wwv_flow_imp.id(83748431163693131)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83748467877693132)
,p_name=>'EOD_FOB_DOLL_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_FOB_DOLL_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB $ Round'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>410
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83748591110693133)
,p_name=>'EOD_FOB_DOLL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_FOB_DOLL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB $'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>400
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83748722162693134)
,p_name=>'EOD_LBH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_LBH'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'LBH'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(83748738582693135)
,p_name=>'EOD_TOTAL_CUBIC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_TOTAL_CUBIC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Cubic'
,p_heading_alignment=>'CENTER'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83749161962693139)
,p_name=>'EOD_GST_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_GST_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(83749602974693143)
,p_name=>'EOD_STW_RND_20'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_STW_RND_20'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stowage'
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
 p_id=>wwv_flow_imp.id(83749702127693144)
,p_name=>'EOD_SCHEME_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_SCHEME_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(83749874044693096)
,p_name=>'EOD_PROFIT_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PROFIT_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
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
 p_id=>wwv_flow_imp.id(83749958374693097)
,p_name=>'EOD_MRP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_MRP'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(83750119537693098)
,p_name=>'EOD_INTEREST_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_INTEREST_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>370
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
 p_id=>wwv_flow_imp.id(83750199876693099)
,p_name=>'EOD_INCOME_TAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_INCOME_TAX'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
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
 p_id=>wwv_flow_imp.id(83750412404693101)
,p_name=>'EOD_ECGC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ECGC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>330
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
 p_id=>wwv_flow_imp.id(83750515706693102)
,p_name=>'EOD_DUTY_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_DUTY_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
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
 p_id=>wwv_flow_imp.id(83750582933693103)
,p_name=>'EOD_DISCOUNT_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_DISCOUNT_AMT'
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
 p_id=>wwv_flow_imp.id(83751009708693107)
,p_name=>'EOD_BANK_COMM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_BANK_COMM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
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
 p_id=>wwv_flow_imp.id(83751229727693109)
,p_name=>'EOD_TOTAL_GST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_TOTAL_GST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(83753117070693128)
,p_name=>'EOD_FOB_RS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_FOB_RS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB Rs.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>380
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83753203015693129)
,p_name=>'EOD_EXCHANGE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_EXCHANGE_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Exchange Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>390
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83753317285693130)
,p_name=>'EOD_INTEREST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_INTEREST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>360
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
 p_id=>wwv_flow_imp.id(83753403199693131)
,p_name=>'EOD_BANK_COMM_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_BANK_COMM_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
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
 p_id=>wwv_flow_imp.id(83753489881693132)
,p_name=>'EOD_ECGC_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ECGC_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>320
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
 p_id=>wwv_flow_imp.id(83753634484693133)
,p_name=>'EOD_DUTY_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_DUTY_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
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
 p_id=>wwv_flow_imp.id(83753685354693134)
,p_name=>'EOD_INCOME_TAX_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_INCOME_TAX_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
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
 p_id=>wwv_flow_imp.id(83753802545693135)
,p_name=>'EOD_PROFIT_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PROFIT_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
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
 p_id=>wwv_flow_imp.id(83753858148693136)
,p_name=>'EOD_VOL_FOB_EXP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_VOL_FOB_EXP'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83753975994693137)
,p_name=>'EOD_VOL_FOB_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_VOL_FOB_AMT'
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
 p_id=>wwv_flow_imp.id(83754127645693138)
,p_name=>'EOD_NET_PURCHASE_VAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_NET_PURCHASE_VAL'
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
 p_id=>wwv_flow_imp.id(83754234685693139)
,p_name=>'EOD_EXTRA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_EXTRA'
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
 p_id=>wwv_flow_imp.id(83754292503693140)
,p_name=>'EOD_REPACKING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_REPACKING'
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
 p_id=>wwv_flow_imp.id(83754354893693141)
,p_name=>'EOD_BAGS_CTNS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_BAGS_CTNS'
,p_data_type=>'NUMBER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83754523564693142)
,p_name=>'EOD_TRANS_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_TRANS_CHARGES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(83754595034693143)
,p_name=>'EOD_GST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_GST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(83754645345693144)
,p_name=>'EOD_DISCOUNT_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_DISCOUNT_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(83754808223693145)
,p_name=>'EOD_SCHEME_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_SCHEME_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(86507189796902496)
,p_name=>'EOD_PURCHASE_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PURCHASE_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(86507253232902497)
,p_name=>'EOD_PRODUCT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PRODUCT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(86507420683902498)
,p_name=>'EOD_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(86507508913902499)
,p_name=>'EOD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Select Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
,p_lov_id=>wwv_flow_imp.id(11504197761410516)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Product -'
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
 p_id=>wwv_flow_imp.id(86507824317902502)
,p_name=>'EOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ID'
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
 p_id=>wwv_flow_imp.id(431551851302413580)
,p_name=>'EOD_MANUFAC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_MANUFAC_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Select Manufacturer<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down'' style="color:red"></span></butto'
||'n>'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>420
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
,p_lov_id=>wwv_flow_imp.id(32900552390934131126)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Manufacturer -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'EOD_MANUFAC_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(440834081781295975)
,p_name=>'PM_BABY_BOX_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_BABY_BOX_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Baby Box Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>430
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
 p_id=>wwv_flow_imp.id(440834203133295976)
,p_name=>'PM_PACKAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_PACKAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Baby Box'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>440
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
 p_id=>wwv_flow_imp.id(440834289529295977)
,p_name=>'PM_PACKAGE_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_PACKAGE_1'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Package 1'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>450
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
 p_id=>wwv_flow_imp.id(440834409196295978)
,p_name=>'PM_PRODUCT_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_PRODUCT_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Package1 Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>460
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
 p_id=>wwv_flow_imp.id(440834519699295979)
,p_name=>'PM_PACKAGE_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_PACKAGE_2'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>' Package 2'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>470
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
 p_id=>wwv_flow_imp.id(440834618770295980)
,p_name=>'PM_PACKAGE_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_PACKAGE_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Package2 Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>480
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(86507919645902503)
,p_internal_uid=>14730918007680443
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
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
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
'  ',
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
'      ',
'        actions.add({',
'            name: "selection-copy-down",',
'            label: "Copy Down", ',
'            action: function(event, el) {',
'                var i, col, sel, model, val, colName,',
'                    colHeader$ = $(el).closest(".a-GV-header"),',
'                    ig$ = $(actions.context),',
'                    view = ig$.interactiveGrid("getCurrentView");',
'                    apex.region("EODIG").widget().interactiveGrid("getActions").set("edit", false);',
'                if ( view.internalIdentifier === "grid" ) {',
'                    col = view.view$.grid("getColumns")[colHeader$.attr("data-idx")];',
'                    sel = view.view$.grid("getSelectedRecords");',
'                    if ( sel.length > 1) {',
'                        colName = col.property;',
'                        model = view.model;',
'                        val = model.getValue(sel[0], colName);',
'                        console.log(">> copy down ", colName, val);                        ',
'                        for( i = 1; i < sel.length; i++) {',
'                            if ( model.allowEdit( sel[i]) ) {',
'                                model.setValue(sel[i], colName, val);',
'                              //  finitialize_cd(sel[i],model);',
'                              //  fcalc_base_price();                             ',
'                            }',
'						}',
'                    } }                }',
'                            ',
'        })',
'		',
'    }    ',
'   ',
'console.log(config);',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(83744313050692051)
,p_interactive_grid_id=>wwv_flow_imp.id(86507919645902503)
,p_static_id=>'123189'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(83744198827692050)
,p_report_id=>wwv_flow_imp.id(83744313050692051)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83710305963691937)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(83748738582693135)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83712291036691943)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(83749161962693139)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83714287014691950)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(83749602974693143)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83714746212691951)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(83749702127693144)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83715676155691954)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(83749874044693096)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83716173058691956)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(83749958374693097)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83716655068691957)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(83750119537693098)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83717179222691959)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(83750199876693099)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83718195568691963)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(83750412404693101)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83718703007691964)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(83750515706693102)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83719148104691966)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(83750582933693103)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83721187384691972)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(83751009708693107)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83722212559691975)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(83751229727693109)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83731703876692004)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(83753117070693128)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87.3613
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83732209931692006)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(83753203015693129)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83732670392692007)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(83753317285693130)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83733186815692009)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(83753403199693131)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83733654704692010)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(83753489881693132)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83734186760692012)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(83753634484693133)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83734721683692013)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(83753685354693134)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83735209974692015)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(83753802545693135)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83735726805692017)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(83753858148693136)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83736214318692018)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(83753975994693137)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83736701766692020)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(83754127645693138)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83737224468692021)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(83754234685693139)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83737723000692023)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(83754292503693140)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83738206674692024)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(83754354893693141)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83738684107692026)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(83754523564693142)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83739230631692027)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(83754595034693143)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83739699034692029)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(83754645345693144)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83740141221692030)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(83754808223693145)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83740731900692032)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(86507189796902496)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83741148432692033)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(86507253232902497)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>400
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83741671846692035)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(86507420683902498)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83742231696692036)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(86507508913902499)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>400
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83743681303692046)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(86507824317902502)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101179718134379289)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(83748431163693131)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101210044600390540)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(83748467877693132)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101210625278390542)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(83748591110693133)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84.0566
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101211268880390544)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(83748722162693134)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(431558023111505732)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(431551851302413580)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>268
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(440840015583296958)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(440834081781295975)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103.998
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(440840916584296970)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(440834203133295976)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(440841782384296974)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(440834289529295977)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(440842706078296978)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(440834409196295978)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102.998
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(440843613509296982)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(440834519699295979)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(440844537763296986)
,p_view_id=>wwv_flow_imp.id(83744198827692050)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(440834618770295980)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109515427061271365)
,p_plug_name=>'Data Load Results'
,p_parent_plug_id=>wwv_flow_imp.id(109515176595271365)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(109517864932271366)
,p_name=>'Failed Records'
,p_parent_plug_id=>wwv_flow_imp.id(109515176595271365)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_css_classes=>'data-upload-result'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       c049 as action,',
'       c048 as error,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c047 in (''FAILED'') ',
' order by seq_id'))
,p_display_when_condition=>'P63_ERROR_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_lazy_loading=>false
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109518506527271368)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109518954119271368)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109519354905271368)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109519725825271368)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109520150556271368)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109520517170271369)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109520957901271369)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109521384554271369)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109521733060271369)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109522152353271369)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109522555479271369)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109522993315271370)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109523339566271370)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109523789023271370)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109524118262271370)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109524551469271371)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109524932106271371)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109525392647271371)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109525695527271371)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109526109810271371)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109526541430271371)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109526976089271371)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109527339367271372)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109527702959271372)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109528157632271372)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109528555362271372)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109528982380271373)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109529380259271373)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109529701812271373)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109530150287271373)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109530549497271373)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109530949907271373)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109531324663271373)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109531784920271374)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109532119805271374)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109532546274271374)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109532969190271374)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109533296958271375)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109533721142271375)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109534181516271375)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109534526559271375)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109534932153271375)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109535312992271375)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109535701240271375)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109536176880271376)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109536507132271376)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109536992184271376)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(109537644805271377)
,p_name=>'Records Changed by Another User.'
,p_parent_plug_id=>wwv_flow_imp.id(109515176595271365)
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_css_classes=>'data-upload-result'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       c049 as action,',
'       c048 as error,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c049 in (''REVIEW'') ',
' order by seq_id'))
,p_display_when_condition=>'P63_REVIEW_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_lazy_loading=>false
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109538351950271378)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109538734039271378)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109539129274271379)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109539575519271379)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109539922452271379)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109540305253271379)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109540790498271379)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109541160458271379)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109541561472271379)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109541950835271380)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109542330918271380)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109542699553271380)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109543177977271380)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109543536106271381)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109543929314271381)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109544360453271381)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109544725722271381)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109545161429271381)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109545546329271381)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109545989828271381)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109546329094271382)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109546721227271382)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109547099514271382)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109547533896271382)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109547898408271383)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109548354254271383)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109548728419271383)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109549194421271383)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109549573167271383)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109549917315271384)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109550304706271384)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109550745482271384)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109551125802271384)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109551532714271384)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109551895153271385)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109552310103271385)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109552744164271385)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109553103225271385)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109553517007271385)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109553923575271386)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109554372414271386)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109554717933271386)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109555104233271386)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109555500094271387)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109555986401271387)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109556357162271387)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109556734930271387)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(99737362973555123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109515176595271365)
,p_button_name=>'CreateProducts'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Missing Products'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109515815967271365)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(109515176595271365)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(83747846437693126)
,p_branch_name=>'Goto Page 23'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23:P23_EOM_ENQ_ID:&P63_ENQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_DISPLAYING_INLINE_VALIDATION_ERRORS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83747955399693127)
,p_name=>'P63_ENQ_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(86508026094902504)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enquiry#/ Invoice#'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EOM_ENQ_NO || case when EOM_INVOICE_NO is not null then '' /'' || EOM_INVOICE_NO end,',
'        EOM_ENQ_ID',
'from V_ENQUIRIES_ORDERS_MST',
'where EOM_ENQ_STATUS != ''RJ''',
'and EOM_CUSTOMER_ID = :P63_CUST_ID',
'order by 2 desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Enquiry# -'
,p_lov_cascade_parent_items=>'P63_CUST_ID'
,p_ajax_items_to_submit=>'P63_CUST_ID,P63_ENQ_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(99737465727555124)
,p_name=>'P63_MANUFACTURER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(86508026094902504)
,p_prompt=>'Manufacturer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_MANUFACTURER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supm_name as d,',
'       supm_id as r',
'  from V_SUPPLIER_MASTER',
' where nvl(supm_active,''Y'') = ''Y''',
'   and supm_supplier_type = ''MANUFACTURER''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Manufacturer - '
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(109516300248271365)
,p_name=>'P63_INSERT_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(109515427061271365)
,p_item_default=>'0'
,p_prompt=>'Inserted Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109516705443271366)
,p_name=>'P63_UPDATE_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(109515427061271365)
,p_item_default=>'0'
,p_prompt=>'Updated Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109517162882271366)
,p_name=>'P63_ERROR_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(109515427061271365)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Failed Row(s):'
,p_source=>'select count(*) c from apex_collections where collection_name = ''LOAD_CONTENT'' and c047 = ''FAILED'''
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109517520704271366)
,p_name=>'P63_REVIEW_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(109515427061271365)
,p_item_default=>'0'
,p_prompt=>'To be Reviewed Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116617572293787252)
,p_name=>'P63_CUST_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(86508026094902504)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CUSTOMER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cm_name as d,',
'       cm_id as r',
'  from V_CUSTOMER_MASTER',
' where nvl(cm_active,''Y'') = ''Y''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Customer -'
,p_cSize=>30
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(99737194980555121)
,p_name=>'CreateProductMaster'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(99737362973555123)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(99737127024555120)
,p_event_id=>wwv_flow_imp.id(99737194980555121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Create Product Master'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'cursor lst_missing_products is   ',
'select EOD_ID,EOD_PRODUCT_NAME,EOD_TOTAL_GST_PERC,EOD_HSN_CODE,EOD_STW_RND_20,EOD_LENGTH, EOD_BREADTH, EOD_HEIGHT,PM_UOM,EOD_STW_RND_40, EOD_STW_RND_40HC',
',PM_PACKAGE, PM_BABY_BOX_UNIT, PM_PACKAGE_1, PM_PRODUCT_UNIT, PM_PACKAGE_2, PM_PACKAGE_UNIT,',
'nvl(EOD_TOTAL_CUBIC,(select MAX(round(decode(ST_EXTRA2,''20'',ST_CODE)/nvl(EOD_STW_RND_20,1),2)) stw_20 ',
' from V_SETUP_TABLE   where st_type= ''CONTAINER_SIZE'')) EOD_TOTAL_CUBIC,',
'( select round((nvl(PM_PACKAGE,1) * nvl(PM_PACKAGE_1,1) * nvl(PM_PACKAGE_2,1))/to_number(nvl(ST_EXTRA1,1)),3) net_wt',
'from V_SETUP_TABLE  where st_type= ''PACKAGE_UOM'' and upper(ST_CODE) = upper(PM_PACKAGE_UNIT)) net_wt,',
'(select round(((nvl(PM_PACKAGE,1) * nvl(PM_PACKAGE_1,1) * nvl(PM_PACKAGE_2,1))/to_number(nvl(a.ST_EXTRA1,1)))  +  to_number(nvl(b.ST_EXTRA1,1)),3) ',
'from V_SETUP_TABLE a,V_SETUP_TABLE b where b.st_type= ''PRODUCT_UNIT'' and upper(b.ST_CODE) = upper(nvl(PM_PRODUCT_UNIT,''BAGS''))  AND a.st_type= ''PACKAGE_UOM'' and upper(a.ST_CODE) = upper(PM_PACKAGE_UNIT)) gross_wt',
',pm_brand,eod_manufac_id',
'from V_TEMP_PROFORMA',
'where EOD_PRODUCT_ID is null',
'and EOD_CREATED_BY = :APP_USER;',
'',
'Begin',
'',
'--IF :P63_MANUFACTURER IS NOT NULL THEN',
'',
'for i in lst_missing_products loop',
'',
'if i.eod_manufac_id is not null then ',
'    INSERT INTO V_PRODUCT_MASTER (',
'    pm_id,',
'    pm_name,',
'    pm_manufac_id,',
'    pm_category,',
'    pm_alias,',
'    pm_uom,',
'    pm_length,',
'    pm_breadth,',
'    pm_height,',
'    pm_cubic_space,',
'    pm_net_weight,',
'    pm_gross_weight,',
'    pm_package_1,',
'    pm_package_2,',
'    pm_package_unit,',
'    pm_stw_20,',
'    pm_stw_40,',
'    pm_stw_40hc,',
'    pm_stw_rnd_20,',
'    pm_stw_rnd_40,',
'    pm_stw_rnd_40hc,        ',
'    pm_hsn_code,    ',
'    pm_verified,    ',
'    pm_product_unit,    ',
'    pm_package,',
'    pm_sgst_perc,',
'    pm_cgst_perc,',
'    pm_total_gst_perc,    ',
'    pm_category_type,    ',
'    pm_baby_box_unit,',
'    pm_costing_remarks,',
'    pm_active,        ',
'    pm_igst_perc,',
'    pm_brand    ',
') VALUES (',
'    SEQ_PM_ID.nextval,',
'    i.EOD_PRODUCT_NAME,',
'    i.eod_manufac_id, --:P63_MANUFACTURER,',
'    5,',
'    NULL,',
'    i.PM_UOM,',
'    i.EOD_LENGTH,',
'	i.EOD_BREADTH,',
'	i.EOD_HEIGHT,',
'    i.EOD_TOTAL_CUBIC,  ',
'    i.net_wt,   --to be calculated as per packing net wt',
'    i.gross_wt,	--to be calculated as per packing gross wt',
'    i.pm_package_1,',
'    i.pm_package_2,',
'    i.pm_package_unit,',
'    i.EOD_STW_RND_20,',
'    i.EOD_STW_RND_40,',
'	i.EOD_STW_RND_40HC,',
'    i.EOD_STW_RND_20,',
'    i.EOD_STW_RND_40,',
'	i.EOD_STW_RND_40HC,           ',
'    i.EOD_HSN_CODE,    ',
'    ''N'',    ',
'    i.pm_product_unit,    ',
'    i.pm_package,',
'    nvl(i.EOD_TOTAL_GST_PERC,0)/2,',
'    nvl(i.EOD_TOTAL_GST_PERC,0)/2,',
'    i.EOD_TOTAL_GST_PERC,    ',
'    ''RODTEP'',    ',
'    i.pm_baby_box_unit,',
'    ''Bulk Uploaded - ''||sysdate,',
'    ''Y'',    ',
'    i.EOD_TOTAL_GST_PERC,',
'    i.pm_brand',
');',
'',
'update V_TEMP_PROFORMA',
'set EOD_PRODUCT_ID = SEQ_PM_ID.currval',
'where eod_id = i.eod_id;',
'',
'ELSE  ',
'null;',
'/*apex_error.add_error (',
'    p_message          => ''Kindly select manufacturer'',',
'    p_display_location => apex_error.c_inline_in_notification );*/',
'',
'END IF;',
'',
'end loop;',
'',
'',
'',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300381901941045910)
,p_event_id=>wwv_flow_imp.id(99737194980555121)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'refresh product details region'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(86508026094902504)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(431551896219413581)
,p_name=>'SetManufacturer'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(86508026094902504)
,p_triggering_element=>'EOD_PRODUCT_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EOD_PRODUCT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(431552021159413582)
,p_event_id=>wwv_flow_imp.id(431551896219413581)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EOD_MANUFAC_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pm_manufac_id',
'from V_PRODUCT_MASTER ',
'where pm_id = :EOD_PRODUCT_ID'))
,p_attribute_07=>'EOD_PRODUCT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(431552283108413585)
,p_event_id=>wwv_flow_imp.id(431551896219413581)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EOD_MANUFAC_ID,PM_PACKAGE,PM_BABY_BOX_UNIT,PM_PACKAGE_1,PM_PRODUCT_UNIT,PM_PACKAGE_2,PM_PACKAGE_UNIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(431552202751413584)
,p_event_id=>wwv_flow_imp.id(431551896219413581)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EOD_MANUFAC_ID,PM_PACKAGE,PM_BABY_BOX_UNIT,PM_PACKAGE_1,PM_PRODUCT_UNIT,PM_PACKAGE_2,PM_PACKAGE_UNIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(440834727958295981)
,p_event_id=>wwv_flow_imp.id(431551896219413581)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EOD_MANUFAC_ID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(83748228672693129)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(86508026094902504)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'EOD Uploaded - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'FINISH'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_exec_cond_for_each_row=>'Y'
,p_only_for_changed_rows=>'N'
,p_internal_uid=>83799378303521625
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85085600218363108)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Products in EOD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE ',
'v_error_msg varchar2(4000);',
'l_scope logger_logs.scope%type := ''Upload Proforma'';',
'l_params logger.tab_param;',
'l_costing_type VARCHAR2(100);',
'',
'    cursor lst_products is',
'    select FN_Convert_Amt_Unitwise(eod_id, EOD_CALC_AMT_UNITWISE_RND) unit_amt,EOD_ID, EOD_PRODUCT_ID',
'    from V_ENQUIRIES_ORDERS_DETAILS',
'    where eod_enq_id = :P63_ENQ_ID',
'    and eod_created_by = :APP_USER;',
'',
'BEGIN',
'logger.LOG(''START'', l_scope);',
'',
'    select eom_costing_type',
'    into l_costing_type',
'    from V_ENQUIRIES_ORDERS_MST',
'    where eom_enq_id = :P63_ENQ_ID;',
'    ',
'',
'    UPDATE V_TEMP_PROFORMA ',
'    SET (eod_cir_display_name,eod_hsn_code,EOD_LENGTH, EOD_BREADTH, EOD_HEIGHT, EOD_TOTAL_CUBIC, EOD_NET_WT,EOD_GROSS_WT)',
'    = (SELECT pm_cir_display_name,nvl(eod_hsn_code,pm_hsn_code),nvl(EOD_LENGTH,pm_LENGTH), nvl(EOD_BREADTH,pm_BREADTH), nvl(EOD_HEIGHT,pm_HEIGHT), nvl(EOD_TOTAL_CUBIC,pm_CUBIC_SPACE),nvl(EOD_NET_WT,PM_NET_WEIGHT),nvl(EOD_GROSS_WT,PM_GROSS_WEIGHT)',
'        FROM V_PRODUCT_MASTER pm',
'        WHERE eod_product_id = pm_id',
'		)',
'    ,EOD_ENQ_ID = :P63_ENQ_ID',
'    WHERE eod_created_by = :APP_USER;',
'    ',
'    ',
'    ',
'    INSERT INTO V_ENQUIRIES_ORDERS_DETAILS',
'    (eod_id               ,',
'    eod_enq_id           ,',
'    eod_manufac_id       ,',
'	eod_product_id       ,',
'	eod_quantity         ,',
'	eod_stw_rnd_20       ,',
'	eod_mrp              ,',
'	eod_purchase_amt     ,',
'	eod_scheme_perc      ,',
'	eod_scheme_amt       ,',
'	eod_discount_perc    ,',
'	eod_discount_amt     ,',
'	eod_total_gst_perc   ,',
'	eod_gst_perc         ,',
'	eod_gst_amt          ,',
'	eod_trans_charges    ,',
'	eod_bags_ctns        ,',
'	eod_extra            ,',
'	eod_repacking        ,',
'	eod_net_purchase_val ,',
'	eod_vol_fob_amt      ,',
'	eod_vol_fob_exp      ,',
'	eod_profit_perc      ,',
'	eod_profit_amt       ,',
'	eod_income_tax_perc  ,',
'	eod_income_tax       ,',
'	eod_duty_perc        ,',
'	eod_duty_amt         ,',
'	eod_ecgc_perc        ,',
'	eod_ecgc             ,',
'	eod_bank_comm_perc   ,',
'	eod_bank_comm        ,',
'	eod_interest_perc    ,',
'	eod_interest_amt     ,',
'	eod_fob_rs           ,',
'	eod_exchange_rate    ,',
'    eod_fob_doll         ,	',
'    eod_fob_doll_rnd	 ,',
'	eod_trade_price		 ,',
'	eod_recov_on_frt	 ,',
'	eod_fobc_amt		 ,',
'	eod_costing_type	 ,',
'	eod_sgst_perc		,',
'	eod_cgst_perc		, ',
'	eod_costing_remarks ,',
'    eod_hsn_code,',
'    EOD_LENGTH, EOD_BREADTH, EOD_HEIGHT, EOD_CUBIC_SPACE, --Added by Rahul as cubic space has not null constraint 17-Oct-24',
'    EOD_COSTING_UNIT, EOD_CALC_AMT_UNITWISE,EOD_CALC_AMT_UNITWISE_RND, EOD_GODOWN_CHARGES, EOD_TESTING_CHARGES,EOD_OCEAN_FRT, EOD_FRT_PER_CTN,EOD_CANDF_AMT,EOD_COMMISSION_PERC,EOD_STW_RND_40,EOD_STW_RND_40HC,EOD_NET_WT,EOD_GROSS_WT ',
'    )',
'    (SELECT ',
'    seq_eod_id.nextval   ,',
'    eod_enq_id           ,',
'    eod_manufac_id       ,',
'	eod_product_id       ,',
'	eod_quantity         ,',
'	eod_stw_rnd_20       ,',
'	eod_mrp              ,',
'	eod_purchase_amt     ,',
'	eod_scheme_perc      ,',
'	eod_scheme_amt       ,',
'	eod_discount_perc    ,',
'	eod_discount_amt     ,',
'	eod_total_gst_perc   ,',
'	eod_gst_perc         ,',
'	eod_gst_amt          ,',
'	eod_trans_charges    ,',
'	eod_bags_ctns        ,',
'	eod_extra            ,',
'	eod_repacking        ,',
'	eod_net_purchase_val ,',
'	eod_vol_fob_amt      ,',
'	eod_vol_fob_exp      ,',
'	eod_profit_perc      ,',
'	eod_profit_amt       ,',
'	eod_income_tax_perc  ,',
'	eod_income_tax       ,',
'	eod_duty_perc        ,',
'	eod_duty_amt         ,',
'	eod_ecgc_perc        ,',
'	eod_ecgc             ,',
'	eod_bank_comm_perc   ,',
'	eod_bank_comm        ,',
'	eod_interest_perc    ,',
'	eod_interest_amt     ,',
'	eod_fob_rs           ,',
'	eod_exchange_rate    ,',
'    eod_fob_doll         ,	',
'    eod_fob_doll_rnd	 ,',
'	0					 ,',
'	0	 				 ,',
'	0		 			 ,',
'	l_costing_type	     ,',
'	eod_total_gst_perc/2		,',
'	eod_total_gst_perc/2		, --eod_total_gst_perc/2',
'	''Uploaded '' || to_char(sysdate,''DD-MON-RRRR'') ,',
'     eod_hsn_code,',
'     EOD_LENGTH, EOD_BREADTH, EOD_HEIGHT, nvl(EOD_TOTAL_CUBIC, (select MAX(round(decode(ST_EXTRA2,''20'',ST_CODE)/nvl(eod_stw_rnd_20,1),5)) stw_20',
'                                              from V_SETUP_TABLE   where st_type= ''CONTAINER_SIZE'' and ST_EXTRA2 = ''20'')), --Added by Rahul as cubic space has not null constraint 17-Oct-24',
'     EOD_COSTING_UNIT, EOD_CALC_AMT_UNITWISE,EOD_CALC_AMT_UNITWISE, EOD_GODOWN_CHARGES, EOD_TESTING_CHARGES,EOD_OCEAN_FRT, EOD_FRT_PER_CTN,EOD_CANDF_AMT,EOD_COMMISSION_PERC,EOD_STW_RND_40,EOD_STW_RND_40HC,EOD_NET_WT,EOD_GROSS_WT',
'    FROM V_TEMP_PROFORMA',
'    WHERE eod_created_by = :APP_USER',
'    and eod_product_id IS NOT NULL);',
'    ',
'    ',
'    insert into error_log(el_text) values (''inside proforma upload page process l_costing_type - '' || l_costing_type);',
'',
'for i in lst_products loop',
'    if l_costing_type = ''FOB'' then',
'        update V_ENQUIRIES_ORDERS_DETAILS',
'        set EOD_FOB_DOLL_RND  =   i.unit_amt',
'           ,EOD_FOBC_AMT = (select EOD_FOBC_AMT from V_TEMP_PROFORMA tp where tp.eod_product_id = i.eod_product_id  and eod_created_by = :APP_USER)',
'        where EOD_ID = i.EOD_ID; ',
'    elsif  l_costing_type = ''C&F'' then',
'        update V_ENQUIRIES_ORDERS_DETAILS',
'        set EOD_CANDF_AMT_RND  =   i.unit_amt',
'       ,EOD_CANDFC_AMT = (select EOD_FOBC_AMT from V_TEMP_PROFORMA tp where tp.eod_product_id = i.eod_product_id  and eod_created_by = :APP_USER)',
'        where  EOD_ID = i.EOD_ID; ',
'    elsif l_costing_type = ''CIF'' then',
'        update V_ENQUIRIES_ORDERS_DETAILS',
'        set EOD_CIF_AMT_RND  =   i.unit_amt',
'       ,EOD_CIFC_AMT = (select EOD_FOBC_AMT from V_TEMP_PROFORMA tp where tp.eod_product_id = i.eod_product_id  and eod_created_by = :APP_USER)       ',
'        where  EOD_ID = i.EOD_ID; ',
'    elsif l_costing_type = ''C&I'' then',
'        update V_ENQUIRIES_ORDERS_DETAILS',
'        set EOD_CNI_AMT_RND  =   i.unit_amt',
'       ,EOD_CNIC_AMT = (select EOD_FOBC_AMT from V_TEMP_PROFORMA tp where tp.eod_product_id = i.eod_product_id and eod_created_by = :APP_USER)',
'        where  EOD_ID = i.EOD_ID;        ',
'     end if;',
'',
'end loop;',
'',
'  --  INSERT INTO V_TEMP_PROFORMA_HISTORY (select * from V_TEMP_PROFORMA WHERE eod_created_by = :APP_USER and eod_product_id IS NOT NULL);',
'',
'    ',
'INSERT INTO V_TEMP_PROFORMA_HISTORY (',
'    EOD_TOTAL_CUBIC,',
'    EOD_CIR_DISPLAY_NAME,',
'    EOD_LENGTH,',
'    EOD_BREADTH,',
'    EOD_HEIGHT,',
'    EOD_CUBIC_SPACE,',
'    EOD_COSTING_UNIT,',
'    EOD_CALC_AMT_UNITWISE,',
'    EOD_GODOWN_CHARGES,',
'    EOD_TESTING_CHARGES,',
'    PM_UOM,',
'    EOD_STW_RND_40,',
'    EOD_STW_RND_40HC,',
'    PM_PACKING,',
'    PM_PACKAGE,',
'    PM_BABY_BOX_UNIT,',
'    PM_PACKAGE_1,',
'    PM_PRODUCT_UNIT,',
'    PM_PACKAGE_2,',
'    PM_PACKAGE_UNIT,',
'    EOD_NET_WT,',
'    EOD_GROSS_WT,',
'    PM_BRAND,',
'    EOD_TENANT_ID,',
'    EOD_ID,',
'    EOD_ENQ_ID,',
'    EOD_MANUFAC_ID,',
'    EOD_PRODUCT_ID,',
'    EOD_QUANTITY,',
'    EOD_PRODUCT_NAME,',
'    EOD_PURCHASE_AMT,',
'    EOD_SCHEME_PERC,',
'    EOD_DISCOUNT_PERC,',
'    EOD_GST_PERC,',
'    EOD_TRANS_CHARGES,',
'    EOD_BAGS_CTNS,',
'    EOD_REPACKING,',
'    EOD_EXTRA,',
'    EOD_NET_PURCHASE_VAL,',
'    EOD_VOL_FOB_AMT,',
'    EOD_VOL_FOB_EXP,',
'    EOD_PROFIT_PERC,',
'    EOD_INCOME_TAX_PERC,',
'    EOD_DUTY_PERC,',
'    EOD_ECGC_PERC,',
'    EOD_BANK_COMM_PERC,',
'    EOD_INTEREST_PERC,',
'    EOD_EXCHANGE_RATE,',
'    EOD_FOB_RS,',
'    EOD_FOB_DOLL,',
'    EOD_COMMISSION_PERC,',
'    EOD_FOBC_AMT,',
'    EOD_FOB_DOLL_RND,',
'    EOD_OCEAN_FRT,',
'    EOD_FRT_PER_CTN,',
'    EOD_CANDF_AMT,',
'    EOD_CANDFC_AMT,',
'    EOD_CANDF_AMT_RND,',
'    EOD_INSURANCE_AMT,',
'    EOD_CIF_AMT,',
'    EOD_CIFC_AMT,',
'    EOD_CIF_AMT_RND,',
'    EOD_CNI_AMT,',
'    EOD_CNIC_AMT,',
'    EOD_CNI_AMT_RND,',
'    EOD_COSTING_TYPE,',
'    EOD_SGST_PERC,',
'    EOD_TOTAL_GST_PERC,',
'    EOD_INSURANCE_PERC,',
'    EOD_BANK_COMM,',
'    EOD_CGST_PERC,',
'  --  EOD_CREATED_BY,',
'  --  EOD_CREATED_ON,',
'    EOD_DISCOUNT_AMT,',
'    EOD_DUTY_AMT,',
'    EOD_ECGC,',
'    EOD_HSN_CODE,',
'    EOD_INCOME_TAX,',
'    EOD_INTEREST_AMT,',
'    EOD_MRP,',
'    EOD_PROFIT_AMT,',
'    EOD_RECOV_ON_FRT,',
'    EOD_SCHEME_AMT,',
'    EOD_STW_RND_20,',
'    EOD_TRADE_PRICE,',
'   -- EOD_UPDATED_BY,',
'   -- EOD_UPDATED_ON,',
'    EOD_GST_AMT,',
'    EOD_LBH',
') ( SELECT',
'    EOD_TOTAL_CUBIC,        ',
'    EOD_CIR_DISPLAY_NAME,',
'    EOD_LENGTH,',
'    EOD_BREADTH,',
'    EOD_HEIGHT,',
'    EOD_CUBIC_SPACE,',
'    EOD_COSTING_UNIT,',
'    EOD_CALC_AMT_UNITWISE,',
'    EOD_GODOWN_CHARGES,',
'    EOD_TESTING_CHARGES,',
'    PM_UOM,',
'    EOD_STW_RND_40,',
'    EOD_STW_RND_40HC,',
'    PM_PACKING,',
'    PM_PACKAGE,',
'    PM_BABY_BOX_UNIT,',
'    PM_PACKAGE_1,',
'    PM_PRODUCT_UNIT,',
'    PM_PACKAGE_2,',
'    PM_PACKAGE_UNIT,',
'    EOD_NET_WT,',
'    EOD_GROSS_WT,',
'    PM_BRAND,',
'    EOD_TENANT_ID,',
'    EOD_ID,',
'    EOD_ENQ_ID,',
'    EOD_MANUFAC_ID,',
'    EOD_PRODUCT_ID,',
'    EOD_QUANTITY,',
'    EOD_PRODUCT_NAME,',
'    EOD_PURCHASE_AMT,',
'    EOD_SCHEME_PERC,',
'    EOD_DISCOUNT_PERC,',
'    EOD_GST_PERC,',
'    EOD_TRANS_CHARGES,',
'    EOD_BAGS_CTNS,',
'    EOD_REPACKING,',
'    EOD_EXTRA,',
'    EOD_NET_PURCHASE_VAL,',
'    EOD_VOL_FOB_AMT,',
'    EOD_VOL_FOB_EXP,',
'    EOD_PROFIT_PERC,',
'    EOD_INCOME_TAX_PERC,',
'    EOD_DUTY_PERC,',
'    EOD_ECGC_PERC,',
'    EOD_BANK_COMM_PERC,',
'    EOD_INTEREST_PERC,',
'    EOD_EXCHANGE_RATE,',
'    EOD_FOB_RS,',
'    EOD_FOB_DOLL,',
'    EOD_COMMISSION_PERC,',
'    EOD_FOBC_AMT,',
'    EOD_FOB_DOLL_RND,',
'    EOD_OCEAN_FRT,',
'    EOD_FRT_PER_CTN,',
'    EOD_CANDF_AMT,',
'    EOD_CANDFC_AMT,',
'    EOD_CANDF_AMT_RND,',
'    EOD_INSURANCE_AMT,',
'    EOD_CIF_AMT,',
'    EOD_CIFC_AMT,',
'    EOD_CIF_AMT_RND,',
'    EOD_CNI_AMT,',
'    EOD_CNIC_AMT,',
'    EOD_CNI_AMT_RND,',
'    EOD_COSTING_TYPE,',
'    EOD_SGST_PERC,',
'    EOD_TOTAL_GST_PERC,',
'    EOD_INSURANCE_PERC,',
'    EOD_BANK_COMM,',
'    EOD_CGST_PERC,',
'   -- EOD_CREATED_BY,',
'   -- EOD_CREATED_ON,',
'    EOD_DISCOUNT_AMT,',
'    EOD_DUTY_AMT,',
'    EOD_ECGC,',
'    EOD_HSN_CODE,',
'    EOD_INCOME_TAX,',
'    EOD_INTEREST_AMT,',
'    EOD_MRP,',
'    EOD_PROFIT_AMT,',
'    EOD_RECOV_ON_FRT,',
'    EOD_SCHEME_AMT,',
'    EOD_STW_RND_20,',
'    EOD_TRADE_PRICE,',
'   -- EOD_UPDATED_BY,',
'   -- EOD_UPDATED_ON,',
'    EOD_GST_AMT,',
'	EOD_LBH',
'    from V_TEMP_PROFORMA',
'    WHERE eod_created_by = :APP_USER and eod_product_id IS NOT NULL);',
'    ',
'    DELETE FROM V_TEMP_PROFORMA WHERE eod_created_by = :APP_USER  and eod_product_id IS NOT NULL;',
'    ',
'    v_error_msg := fn_update_container_summary(:P63_ENQ_ID);',
' ',
' logger.LOG(''After inserting products in EOD from Upload Proforma '', l_scope, NULL, l_params);',
' logger.log(''END'', l_scope, null, l_params);',
'     ',
'EXCEPTION WHEN OTHERS THEN',
' v_error_msg := ''Error in inserting products in EOD from Upload Proforma  - '' || substr(sqlerrm,1,2000);',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
' logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'',
'apex_error.add_error (',
'    p_message          => ''Kindly select the correct product in below report'',',
'    p_display_location => apex_error.c_inline_in_notification );',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(109515815967271365)
,p_internal_uid=>85136749849191604
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(123541750491495608)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Product IDs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'cursor lst_products IS   ',
'select eod_product_name ,  eod_id, PM_PACKING, pm_brand',
'from V_TEMP_PROFORMA',
'where eod_product_id is null',
'and EOD_CREATED_BY = :APP_USER;',
'',
'/* Query modified by Rahul to handle NCF packing ',
'cursor lst_missing_products IS   ',
'WITH products AS (',
'   SELECT',
'    REPLACE(UPPER(pm_packing), ''X'', '''') AS input_text, eod_id',
'  FROM  V_TEMP_PROFORMA',
'  WHERE eod_product_id is null',
'  and EOD_CREATED_BY = :APP_USER',
'  and PM_PACKAGE_2 is null and PM_PACKAGE_UNIT is null ',
'',
'),',
'cleaned AS (',
'  SELECT ',
'    UPPER(REPLACE(REPLACE(REPLACE(input_text, ''X'', '' ''), ''  '', '' ''), ''  '', '' '')) AS clean_text',
'    , eod_id',
'  FROM products',
'),',
'pair_extracted AS (',
'  SELECT',
'    clean_text,',
'    REGEXP_SUBSTR(clean_text, ''\d+\s*[A-Z]{2,}'', 1, 1) AS pair1,',
'    REGEXP_SUBSTR(clean_text, ''\d+\s*[A-Z]{2,}'', 1, 2) AS pair2,',
'    REGEXP_SUBSTR(clean_text, ''\d+\s*[A-Z]{2,}'', 1, 3) AS pair3',
'    , eod_id',
'  FROM cleaned',
'),',
'split AS (',
'  SELECT',
'    clean_text,',
'    REGEXP_SUBSTR(pair1, ''\d+'') AS q1,',
'    REGEXP_SUBSTR(pair1, ''[A-Z]{2,}'') AS u1,',
'    REGEXP_SUBSTR(pair2, ''\d+'') AS q2,',
'    REGEXP_SUBSTR(pair2, ''[A-Z]{2,}'') AS u2,',
'    REGEXP_SUBSTR(pair3, ''\d+'') AS q3,',
'    REGEXP_SUBSTR(pair3, ''[A-Z]{2,}'') AS u3',
'    , eod_id',
'  FROM pair_extracted',
'),',
'aligned AS (',
'  SELECT',
'    clean_text,',
'    q1, u1, q2, u2, q3, u3,',
'    CASE',
'      WHEN q3 IS NOT NULL THEN 3',
'      WHEN q2 IS NOT NULL THEN 2',
'      WHEN q1 IS NOT NULL THEN 1',
'      ELSE 0',
'    END AS pair_count',
'    , eod_id',
'  FROM split',
'),',
'final AS (',
'  SELECT',
'    clean_text,',
'   ',
'    CASE WHEN pair_count = 3 THEN q1 ELSE NULL END AS qty1,',
'    CASE WHEN pair_count = 3 THEN u1 ELSE NULL END AS unit1,',
'',
'    CASE ',
'      WHEN pair_count = 3 THEN q2',
'      WHEN pair_count = 2 THEN q1',
'      ELSE NULL',
'    END AS qty2,',
'',
'    CASE ',
'      WHEN pair_count = 3 THEN u2',
'      WHEN pair_count = 2 THEN u1',
'      ELSE NULL',
'    END AS unit2,',
'',
'    CASE ',
'      WHEN pair_count = 3 THEN q3',
'      WHEN pair_count = 2 THEN q2',
'      WHEN pair_count = 1 THEN q1',
'      ELSE NULL',
'    END AS qty3,',
'',
'    CASE ',
'      WHEN pair_count = 3 THEN u3',
'      WHEN pair_count = 2 THEN u2',
'      WHEN pair_count = 1 THEN u1',
'      ELSE NULL',
'    END AS unit3',
', eod_id',
'  FROM aligned',
')',
'SELECT',
'  eod_id,',
'  clean_text, ',
'  qty1, unit1, ',
'  qty2, unit2, ',
'  qty3, unit3 ',
'FROM final;',
'*/',
'',
'cursor lst_missing_products IS',
'WITH data AS (',
'   SELECT',
'    REPLACE(UPPER(pm_packing), ''X'', '''') AS input_text, eod_id',
'  FROM  V_TEMP_PROFORMA',
'  WHERE eod_product_id is null',
'  and EOD_CREATED_BY = :APP_USER',
'  and PM_PACKAGE_2 is null and PM_PACKAGE_UNIT is null ',
'),',
'',
'segments AS (',
'    SELECT',
'        input_text,',
'        REGEXP_SUBSTR(input_text, ''[^X ]+'', 1, 1) AS seg1,',
'        REGEXP_SUBSTR(input_text, ''[^X ]+'', 1, 2) AS seg2,',
'        REGEXP_SUBSTR(input_text, ''[^X ]+'', 1, 3) AS seg3,',
'        (CASE ',
'            WHEN REGEXP_SUBSTR(input_text, ''[^X ]+'', 1, 3) IS NOT NULL THEN 3',
'            WHEN REGEXP_SUBSTR(input_text, ''[^X ]+'', 1, 2) IS NOT NULL THEN 2',
'            ELSE 1',
'         END) AS seg_count',
'         , eod_id',
'    FROM data',
'),',
'',
'mapped AS (',
'    SELECT',
'        input_text,',
'',
'        /* --- Special case: 3 tokens but pattern = number number alpha (e.g. ''12 1 LT'')',
'           In that case we SHIFT RIGHT: qty1/unit1 = NULL,',
'           qty2 = seg1, qty3 = seg2, unit3 = seg3',
'        */',
'        CASE ',
'          WHEN seg_count = 3',
'               AND REGEXP_LIKE(seg1, ''^\d+$'')',
'               AND REGEXP_LIKE(seg2, ''^\d+$'')',
'               AND REGEXP_LIKE(seg3, ''^[A-Za-z]+$'')',
'          THEN NULL',
'          WHEN seg_count = 3 THEN REGEXP_SUBSTR(seg1, ''^\d+'')',
'          ELSE NULL',
'        END AS qty1,',
'',
'        CASE',
'          WHEN seg_count = 3',
'               AND REGEXP_LIKE(seg1, ''^\d+$'')',
'               AND REGEXP_LIKE(seg2, ''^\d+$'')',
'               AND REGEXP_LIKE(seg3, ''^[A-Za-z]+$'')',
'          THEN NULL',
'          WHEN seg_count = 3 THEN REGEXP_SUBSTR(seg1, ''[A-Za-z]+$'')',
'          ELSE NULL',
'        END AS unit1,',
'',
'        /* qty2 / unit2 */',
'        CASE',
'          WHEN seg_count = 3',
'               AND REGEXP_LIKE(seg1, ''^\d+$'')',
'               AND REGEXP_LIKE(seg2, ''^\d+$'')',
'               AND REGEXP_LIKE(seg3, ''^[A-Za-z]+$'')',
'            THEN REGEXP_SUBSTR(seg1,''^\d+'') -- special: seg1 -> qty2',
'          WHEN seg_count = 3 THEN REGEXP_SUBSTR(seg2,''^\d+'')',
'          WHEN seg_count = 2 THEN REGEXP_SUBSTR(seg1,''^\d+'')',
'          ELSE NULL',
'        END AS qty2,',
'',
'        CASE',
'          WHEN seg_count = 3',
'               AND REGEXP_LIKE(seg1, ''^\d+$'')',
'               AND REGEXP_LIKE(seg2, ''^\d+$'')',
'               AND REGEXP_LIKE(seg3, ''^[A-Za-z]+$'')',
'            THEN NULL',
'          WHEN seg_count = 3 THEN REGEXP_SUBSTR(seg2,''[A-Za-z]+$'')',
'          WHEN seg_count = 2 THEN REGEXP_SUBSTR(seg1,''[A-Za-z]+$'')',
'          ELSE NULL',
'        END AS unit2,',
'',
'        /* qty3 / unit3: last meaningful segment (with shift-right for the special case) */',
'        CASE',
'          WHEN seg_count = 3',
'               AND REGEXP_LIKE(seg1, ''^\d+$'')',
'               AND REGEXP_LIKE(seg2, ''^\d+$'')',
'               AND REGEXP_LIKE(seg3, ''^[A-Za-z]+$'')',
'            THEN REGEXP_SUBSTR(seg2,''^\d+'')   -- special: seg2 -> qty3',
'          WHEN seg_count = 3 THEN REGEXP_SUBSTR(seg3,''^\d+'')',
'          WHEN seg_count = 2 THEN REGEXP_SUBSTR(seg2,''^\d+'')',
'          ELSE REGEXP_SUBSTR(seg1,''^\d+'')',
'        END AS qty3,',
'',
'        CASE',
'          WHEN seg_count = 3',
'               AND REGEXP_LIKE(seg1, ''^\d+$'')',
'               AND REGEXP_LIKE(seg2, ''^\d+$'')',
'               AND REGEXP_LIKE(seg3, ''^[A-Za-z]+$'')',
'            THEN REGEXP_SUBSTR(seg3,''[A-Za-z]+$'') -- special: seg3 -> unit3',
'          WHEN seg_count = 3 THEN REGEXP_SUBSTR(seg3,''[A-Za-z]+$'')',
'          WHEN seg_count = 2 THEN REGEXP_SUBSTR(seg2,''[A-Za-z]+$'')',
'          ELSE REGEXP_SUBSTR(seg1,''[A-Za-z]+$'')',
'        END AS unit3',
'        , eod_id',
'    FROM segments',
')',
'',
'SELECT',
'  eod_id,',
'  input_text, ',
'  qty1, unit1, ',
'  qty2, unit2, ',
'  qty3, unit3 ',
'FROM mapped;',
'',
'',
'',
'v_product_id number;',
'v_manufac_id number;',
'v_error_msg varchar2(4000);',
'l_scope logger_logs.scope%type := ''Upload Proforma'';',
'l_params logger.tab_param;',
'',
'BEGIN',
'insert into error_log (el_text) values (''rahul temp proforma begin process '');',
'for i in lst_products loop',
'insert into error_log (el_text) values (''rahul temp proforma inside first loop to update product id'');',
'begin',
'select pm_id ,pm_manufac_id',
'into v_product_id, v_manufac_id',
'from V_PRODUCT_MASTER ',
'where lower(replace(replace(replace(replace(trim(pm_brand)||trim(replace(lower(pm_name),lower(pm_brand),''''))|| nvl2(PM_PACKAGE,''~'','''')  ||PM_PACKAGE || '''' || pm_baby_box_unit ||nvl2(PM_PACKAGE,''~'' ,'''')  ||   PM_PACKAGE_1',
'  ||'''' || PM_PRODUCT_UNIT  || ''~'' ||   PM_PACKAGE_2 || '''' ',
'  ||  PM_PACKAGE_UNIT,'' '',''''),''~~'',''x''),''~~'',''x''),''~'',''x''))  = replace(trim(lower(replace(i.pm_brand||i.EOD_PRODUCT_NAME || i.PM_PACKING,'' '',''''))),''(localpack)'','''');',
'exception when others then',
'    v_product_id := '''';',
'end;',
'',
'--insert into error_log(el_text) values (''v_product_id - '' || v_product_id || ''i.eod_id - '' || i.eod_id );',
'',
'',
'if v_product_id is not null then',
'    update V_TEMP_PROFORMA',
'    set eod_product_id = v_product_id,',
'        eod_manufac_id = v_manufac_id',
'    where eod_id = i.eod_id;',
'end if;',
'',
'end loop;',
'',
'insert into error_log (el_text) values (''rahul before loop of temp proforma'');',
'for j in lst_missing_products loop',
'insert into error_log (el_text) values (''rahul temp proforma upload id - '' || j.eod_id);',
'',
'begin',
'  update V_TEMP_PROFORMA',
'   set PM_BABY_BOX_UNIT  = j.qty1,   ',
'    PM_PACKAGE   = j.unit1,',
'    PM_PACKAGE_1 = j.qty2,',
'    PM_PRODUCT_UNIT =  j.unit2,',
'    PM_PACKAGE_2 = j.qty3,',
'    PM_PACKAGE_UNIT = j.unit3',
'    where eod_id = j.eod_id;',
'exception when others then',
'   logger.log_error(''Error spliting packing during proforma upload for id - '' || j.eod_id , l_scope, null, l_params);',
'end;',
'end loop;',
'',
'',
'exception when others then',
' v_error_msg := ''Error in mapping products from product master from Upload Proforma  - '' || substr(sqlerrm,1,2000);',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
' logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>174407868595325339
);
wwv_flow_imp.component_end;
end;
/
