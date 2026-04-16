prompt --application/pages/page_00087
begin
--   Manifest
--     PAGE: 00087
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
 p_id=>87
,p_name=>'HSN Code Verification'
,p_alias=>'HSN-CODE-VERIFICATION'
,p_page_mode=>'MODAL'
,p_step_title=>'HSN Code Verification'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22467912750736730540)
,p_plug_name=>'Verification'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22467912173828730534)
,p_plug_name=>'HSN Codes not present in HSN Master'
,p_parent_plug_id=>wwv_flow_imp.id(22467912750736730540)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select              EOM_ENQ_ID, ',
'                    EOM_ORD_ID, ',
'                    EOM_SHIPPING_DATE, ',
'                    EOM_PORT_OF_LOADING, ',
'                    EOM_PORT_OF_DISCHARGE, ',
'                    EOD_ID, ',
'                    EOD_PRODUCT_ID,',
'                    EOD_CIR_DISPLAY_NAME,',
'                    PM_PACKAGE_2,',
'                    PM_PACKAGE_UNIT,',
'                    (EOD_NET_WT*EOD_QUANTITY) BRD_WT_QTY_EXPORTED,',
'                    round(EOD_FOB_DOLL_RND*EOD_QUANTITY*EOM_REALISE_RATE,2) BRD_FOB_VALUE,',
'                    round((EOD_FOB_DOLL_RND*EOD_QUANTITY*EOM_REALISE_RATE)/(EOD_NET_WT*EOD_QUANTITY),2) BRD_FOB_UNIT_VALUE,',
'                    round((EOD_FOB_DOLL_RND*EOD_QUANTITY*EOM_REALISE_RATE*EOD_TOTAL_GST_PERC)/100,2) BRD_CESS_PAID,',
'                    /*round(EOD_FOB_DOLL_RND*EOD_QUANTITY*EOM_REALISE_RATE,3) - ',
'                    round((EOD_FOB_DOLL_RND*EOD_QUANTITY*EOM_REALISE_RATE*EOD_GST_PERC)/100,3) BRD_PURCHASE_VALUE,',
'                    */',
'                    round(eod_net_purchase_val*EOD_QUANTITY,2) BRD_PURCHASE_VALUE,',
'                    EOM_REALISE_RATE,',
'                    EOD_HSN_CODE,',
'                    EOM_INVOICE_NO',
'          from    V_ENQUIRIES_ORDERS_MST,',
'                    V_ENQUIRIES_ORDERS_DETAILS,',
'                    V_PRODUCT_MASTER',
'                ',
'        where   eom_enq_id = eod_enq_id',
'        and     eod_product_id = pm_id',
'        and     eom_ord_id is not null',
'        and     (',
'            /*not exists (select 1 from V_HSN_CODE_MASTER',
'                        where  substr(trim(eod_hsn_code),1,4) = substr(trim(hcm_code),1,4)',
'                        )',
'                      or */',
'                    exists  (select 1 from V_HSN_CODE_MASTER',
'                        where substr(trim(eod_hsn_code),1,4) = substr(trim(hcm_code),1,4)',
'                          and nvl(hcm_spices_flag,''N'') = ''N''   ',
'                          and nvl(HCM_APEDA_FLAG,''N'')  = ''N''  ',
'                          and nvl(HCM_TEA_FLAG,''N'')  = ''N''  ',
'                          and nvl(HCM_TOBACCO_FLAG,''N'')  = ''N''  ))',
'        and     trunc(eom_invoice_date) between trunc(to_date(:P87_BRM_FROM_DATE,''DD-MON-RRRR'')) and trunc(to_date(:P87_BRM_TO_DATE,''DD-MON-RRRR''))',
'        and     EOD_QUANTITY is not null'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'HSN Codes not present in HSN Master'
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
 p_id=>wwv_flow_imp.id(22467910228599730515)
,p_name=>'EOM_INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_INVOICE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Invoice#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_EOM_ENQ_ID:&EOM_ENQ_ID.'
,p_link_text=>'&EOM_INVOICE_NO.'
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
 p_id=>wwv_flow_imp.id(22467910335311730516)
,p_name=>'EOD_HSN_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_HSN_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'HSN Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22467910466175730517)
,p_name=>'EOM_REALISE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_REALISE_RATE'
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
 p_id=>wwv_flow_imp.id(22467910522265730518)
,p_name=>'BRD_PURCHASE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_PURCHASE_VALUE'
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
 p_id=>wwv_flow_imp.id(22467910660467730519)
,p_name=>'BRD_CESS_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_CESS_PAID'
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
 p_id=>wwv_flow_imp.id(22467910730133730520)
,p_name=>'BRD_FOB_UNIT_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_FOB_UNIT_VALUE'
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
 p_id=>wwv_flow_imp.id(22467910856481730521)
,p_name=>'BRD_FOB_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_FOB_VALUE'
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
 p_id=>wwv_flow_imp.id(22467910896156730522)
,p_name=>'BRD_WT_QTY_EXPORTED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_WT_QTY_EXPORTED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty Exported <br>(kgs)'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(22467911069438730523)
,p_name=>'PM_PACKAGE_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_PACKAGE_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Pkg Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(22467911151121730524)
,p_name=>'PM_PACKAGE_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_PACKAGE_2'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pkg'
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
 p_id=>wwv_flow_imp.id(22467911257227730525)
,p_name=>'EOD_CIR_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_CIR_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Product'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(22467911333918730526)
,p_name=>'EOD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(22467911464730730527)
,p_name=>'EOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ID'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22467911529236730528)
,p_name=>'EOM_PORT_OF_DISCHARGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_PORT_OF_DISCHARGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Port Of Discharge'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22467911601956730529)
,p_name=>'EOM_PORT_OF_LOADING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_PORT_OF_LOADING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Port Of Loading'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22467911696182730530)
,p_name=>'EOM_SHIPPING_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_SHIPPING_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Shipping Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(22467911799239730531)
,p_name=>'EOM_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ORD_ID'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22467911901401730532)
,p_name=>'EOM_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_ID'
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
 p_id=>wwv_flow_imp.id(22467911988695730533)
,p_internal_uid=>2911768187996381615
,p_is_editable=>false
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
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(22406212337478649711)
,p_interactive_grid_id=>wwv_flow_imp.id(22467911988695730533)
,p_static_id=>'123232'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(22406212202186649710)
,p_report_id=>wwv_flow_imp.id(22406212337478649711)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406011966857563659)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(22467910228599730515)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406203738827649678)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(22467910335311730516)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>63
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406204263123649679)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(22467910466175730517)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406204689472649681)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(22467910522265730518)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406205226078649682)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(22467910660467730519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406205749394649684)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(22467910730133730520)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97.0833
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406206249964649685)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(22467910856481730521)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406206767729649687)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(22467910896156730522)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406207218184649688)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(22467911069438730523)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406207758944649690)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(22467911151121730524)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406208184352649692)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(22467911257227730525)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>248
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406208714233649693)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(22467911333918730526)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406209236394649695)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(22467911464730730527)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406209736019649696)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(22467911529236730528)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406210212283649698)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(22467911601956730529)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>144
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406210681030649699)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(22467911696182730530)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406211268958649701)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(22467911799239730531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22406211690713649706)
,p_view_id=>wwv_flow_imp.id(22406212202186649710)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(22467911901401730532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22467910128146730514)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22467912173828730534)
,p_button_name=>'ADD_HSN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add HSN Code Master'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select              1',
'          from    V_ENQUIRIES_ORDERS_MST,',
'                    V_ENQUIRIES_ORDERS_DETAILS,',
'                    V_PRODUCT_MASTER',
'                ',
'        where   eom_enq_id = eod_enq_id',
'        and     eod_product_id = pm_id',
'        and     eom_ord_id is not null',
'        and     (not exists (select 1 from V_HSN_CODE_MASTER',
'                        where  substr(trim(eod_hsn_code),1,4) = substr(trim(hcm_code),1,4)',
'                        )',
'                      or exists',
'                      (select 1 from V_HSN_CODE_MASTER',
'                        where substr(trim(eod_hsn_code),1,4) = substr(trim(hcm_code),1,4)',
'                          and hcm_spices_flag = ''N''   ',
'                          and HCM_APEDA_FLAG  = ''N''  ',
'                          and HCM_TEA_FLAG  = ''N''  ',
'                          and HCM_TOBACCO_FLAG  = ''N''  ))',
'        and     trunc(eom_invoice_date) between trunc(to_date(:P87_BRM_FROM_DATE,''DD-MON-RRRR'')) and trunc(to_date(:P87_BRM_TO_DATE,''DD-MON-RRRR''))',
'        and     EOD_QUANTITY is not null'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22409012730881911195)
,p_name=>'P87_BRM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22467912750736730540)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22467912306068730536)
,p_name=>'P87_BRM_TO_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22467912750736730540)
,p_prompt=>'Brm From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22467912463288730537)
,p_name=>'P87_BRM_FROM_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22467912750736730540)
,p_prompt=>'Brm From Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22467912516635730538)
,p_name=>'P87_BRM_BOARD_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22467912750736730540)
,p_prompt=>'Brm Board Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp.component_end;
end;
/
