prompt --application/pages/page_00086
begin
--   Manifest
--     PAGE: 00086
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
 p_id=>86
,p_name=>'Board Return Details'
,p_alias=>'BOARD-RETURN-DETAILS'
,p_step_title=>'Board Return Details'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22047780289999672106)
,p_plug_name=>'HSN Codes To Be Updated'
,p_region_name=>'hsn_codes_ig'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select',
'distinct(EOD_HSN_CODE) hsn_code,  max(nvl(cihd_hsn_desc,pm_name)) name',
'    ,max(hcm_apeda_flag) apeda_flag ,max(hcm_spices_flag) spices_flag ,max(hcm_tobacco_flag) tobacco_flag ,max(hcm_tea_flag) tea_flag , max(cihd_end_use_code) end_use_code, max(cihd_chapter) chapter',
' ',
'          from    V_ENQUIRIES_ORDERS_MST,',
'                    V_ENQUIRIES_ORDERS_DETAILS,',
'                    V_PRODUCT_MASTER,',
'                    V_CUSTOM_INVOICE_HSN_DETAILS,',
'                    V_HSN_CODE_MASTER',
'        where   eom_enq_id = eod_enq_id',
'        and     eod_product_id = pm_id',
'        and     eom_ord_id is not null       ',
'        and     eod_enq_id = cihd_enq_id (+)',
'        and     eod_hsn_code = cihd_hsn_code (+)',
'        and     eod_hsn_code = hcm_code(+)',
'        and     (',
'            not exists (select 1 from V_HSN_CODE_MASTER',
'                        where  --substr(trim(eod_hsn_code),1,4) = substr(trim(hcm_code),1,4)',
'                        trim(eod_hsn_code) = trim(hcm_code) --Added by Rahul on 01-Jul-25',
'                        )',
'                      or ',
'                    exists  (select 1 from V_HSN_CODE_MASTER',
'                        where ',
'                        --substr(trim(eod_hsn_code),1,4) = substr(trim(hcm_code),1,4)',
'                        trim(eod_hsn_code) = trim(hcm_code) --Added by Rahul on 01-Jul-25',
'                          and (nvl(hcm_spices_flag,''X'') = ''X''   ',
'                          or nvl(HCM_APEDA_FLAG,''X'')  = ''X''  ',
'                          or nvl(HCM_TEA_FLAG,''X'')  = ''X''  ',
'                          or nvl(HCM_TOBACCO_FLAG,''X'')  = ''X''  )',
'                            )',
'                          )',
'        and     not exists (select 1 from V_BOARD_RETURN_DETAILS where brd_hsn_code = eod_hsn_code and brd_brm_id = :P86_BRM_ID)    --Added by Rahul on 19-Mar-2024 to exclude hsn codes which are already inserted in BRD                  ',
'        and     trunc(eom_shipping_date) between trunc(to_date(:P86_BRM_FROM_DATE,''DD-MON-RRRR'')) and trunc(to_date(:P86_BRM_TO_DATE,''DD-MON-RRRR''))',
'        and     EOD_QUANTITY is not null        ',
'        group by  EOD_HSN_CODE;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P86_BRM_FROM_DATE,P86_BRM_TO_DATE,P86_BRM_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'HSN Codes'
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
'Query backup before adding V_CUSTOM_INVOICE_HSN_DETAILS table',
'select      distinct(EOD_HSN_CODE) hsn_code,  max(pm_name) name',
'    ,null apeda_flag ,null spices_flag ,null tobacco_flag ,null tea_flag ',
'          from    V_ENQUIRIES_ORDERS_MST,',
'                    V_ENQUIRIES_ORDERS_DETAILS,',
'                    V_PRODUCT_MASTER                ',
'        where   eom_enq_id = eod_enq_id',
'        and     eod_product_id = pm_id',
'        and     eom_ord_id is not null',
'        and     (',
'            not exists (select 1 from V_HSN_CODE_MASTER',
'                        where  substr(trim(eod_hsn_code),1,4) = substr(trim(hcm_code),1,4)',
'                        )',
'                      or ',
'                    exists  (select 1 from V_HSN_CODE_MASTER',
'                        where substr(trim(eod_hsn_code),1,4) = substr(trim(hcm_code),1,4)',
'                          and nvl(hcm_spices_flag,''N'') = ''N''   ',
'                          and nvl(HCM_APEDA_FLAG,''N'')  = ''N''  ',
'                          and nvl(HCM_TEA_FLAG,''N'')  = ''N''  ',
'                          and nvl(HCM_TOBACCO_FLAG,''N'')  = ''N''  )',
'                          )',
'        and     trunc(eom_invoice_date) between trunc(to_date(:P86_BRM_FROM_DATE,''DD-MON-RRRR'')) and trunc(to_date(:P86_BRM_TO_DATE,''DD-MON-RRRR''))',
'        and     EOD_QUANTITY is not null',
'        group by  EOD_HSN_CODE;'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21855601325297687232)
,p_name=>'TEA_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEA_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Tea Flag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30621381686625309)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-Select-'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'tea_flag'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21855601394544687233)
,p_name=>'TOBACCO_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOBACCO_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Tobacco Flag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30621381686625309)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-Select-'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'tobacco_flag'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21855601527546687234)
,p_name=>'SPICES_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPICES_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Spices Flag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30621381686625309)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-Select-'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'spices_flag'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21855601857671687237)
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
 p_id=>wwv_flow_imp.id(21855601942397687238)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21855601989679687239)
,p_name=>'APEDA_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEDA_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Apeda Flag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30621381686625309)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-Select-'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'apeda_flag'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21855602167277687240)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Name'
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
,p_static_id=>'product_name'
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
 p_id=>wwv_flow_imp.id(21855602179777687241)
,p_name=>'HSN_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HSN_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Hsn Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
,p_static_id=>'hsn_code'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28933952548486406149)
,p_name=>'CHAPTER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHAPTER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Chapter'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(28933952659006406150)
,p_name=>'END_USE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_USE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'End Use Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(21855602326969687242)
,p_internal_uid=>3524077849722424906
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
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
 p_id=>wwv_flow_imp.id(21855588980572637714)
,p_interactive_grid_id=>wwv_flow_imp.id(21855602326969687242)
,p_static_id=>'123230'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(21855588889872637713)
,p_report_id=>wwv_flow_imp.id(21855588980572637714)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21853405290917195570)
,p_view_id=>wwv_flow_imp.id(21855588889872637713)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(21855601325297687232)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21855578813109462782)
,p_view_id=>wwv_flow_imp.id(21855588889872637713)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(21855601394544687233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21855579445282462783)
,p_view_id=>wwv_flow_imp.id(21855588889872637713)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(21855601527546687234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21855584514190633180)
,p_view_id=>wwv_flow_imp.id(21855588889872637713)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(21855601942397687238)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21855587414815637708)
,p_view_id=>wwv_flow_imp.id(21855588889872637713)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(21855601989679687239)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21855587917109637710)
,p_view_id=>wwv_flow_imp.id(21855588889872637713)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(21855602167277687240)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21855588401393637712)
,p_view_id=>wwv_flow_imp.id(21855588889872637713)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(21855602179777687241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28907757249730138359)
,p_view_id=>wwv_flow_imp.id(21855588889872637713)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(28933952548486406149)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28907757726478138364)
,p_view_id=>wwv_flow_imp.id(21855588889872637713)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(28933952659006406150)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22469696298536550369)
,p_plug_name=>'&P86_BRM_BOARD_CODE. Board Return Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BRD_ID,',
'       BRD_BRM_ID,',
'       BRD_EOM_ID,',
'       BRD_ORD_ID,',
'       BRD_SHIPMENT_DATE,',
'       BRD_PORT_OF_LOADING,',
'       BRD_PORT_OF_DISCHARGE,',
'       BRD_EOD_ID,',
'       BRD_PRODUCT_ID,',
'       BRD_PRODUCT_NAME,',
'       BRD_PACKING_SIZE || '' '' || BRD_PACKING_UNIT BRD_PACKING_SIZE,',
'       BRD_WT_QTY_EXPORTED,',
'       BRD_FOB_VALUE,',
'       BRD_FOB_UNIT_VALUE,',
'       BRD_CESS_PAID,',
'       BRD_PURCHASE_VALUE,',
'       BRD_CUSTOM_RATE,',
'       BRD_HSN_CODE,',
'       BRD_EXCLUDE_YN,',
'       BRD_CREATED_BY,',
'       BRD_CREATED_ON,',
'       BRD_UPDATED_BY,',
'       BRD_UPDATED_ON',
'       , (select eom_invoice_no from V_ENQUIRIES_ORDERS_MST where eom_ord_id = brd_ord_id) invoice_no',
'  from V_BOARD_RETURN_DETAILS',
' where BRD_BRM_ID = :P86_BRM_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P86_BRM_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P86_BRM_ID'
,p_prn_page_header=>'Board Return Details'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469680198993550356)
,p_name=>'BRD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469680861832550356)
,p_name=>'BRD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469681427987550356)
,p_name=>'BRD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469682033961550356)
,p_name=>'BRD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469682603032550356)
,p_name=>'BRD_EXCLUDE_YN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_EXCLUDE_YN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Exclude Y/N'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30621381686625309)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-Select-'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469683266026550356)
,p_name=>'BRD_HSN_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_HSN_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'HSN Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469683826849550357)
,p_name=>'BRD_CUSTOM_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_CUSTOM_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Custom Exchange Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469684399062550357)
,p_name=>'BRD_PURCHASE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_PURCHASE_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Purchase Value'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469685631376550357)
,p_name=>'BRD_CESS_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_CESS_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cess Paid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469686204143550357)
,p_name=>'BRD_FOB_UNIT_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_FOB_UNIT_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB Unit Value'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469686785350550358)
,p_name=>'BRD_FOB_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_FOB_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB Value'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469687440123550358)
,p_name=>'BRD_WT_QTY_EXPORTED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_WT_QTY_EXPORTED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty. Exported'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469687998973550358)
,p_name=>'BRD_PACKING_SIZE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_PACKING_SIZE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Packing Size'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469688584226550358)
,p_name=>'BRD_PRODUCT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_PRODUCT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469689227549550358)
,p_name=>'BRD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_PRODUCT_ID'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469689831815550358)
,p_name=>'BRD_EOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_EOD_ID'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469690460833550359)
,p_name=>'BRD_PORT_OF_DISCHARGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_PORT_OF_DISCHARGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Port Of Discharge'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(21846006078433071639)
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469690985772550359)
,p_name=>'BRD_PORT_OF_LOADING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_PORT_OF_LOADING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Port Of Loading'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(125445073747185185)
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469691577316550359)
,p_name=>'BRD_SHIPMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_SHIPMENT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Shipment Date'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469692220622550360)
,p_name=>'BRD_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_ORD_ID'
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
 p_id=>wwv_flow_imp.id(22469692806745550360)
,p_name=>'BRD_EOM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_EOM_ID'
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
 p_id=>wwv_flow_imp.id(22469693428733550360)
,p_name=>'BRD_BRM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_BRM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P86_BRM_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469694053479550361)
,p_name=>'BRD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BRD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469694596745550364)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22469695148563550365)
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
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28891057057874952772)
,p_name=>'INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Invoice#'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(22469695783220550368)
,p_internal_uid=>2909984393471561780
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
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
 p_id=>wwv_flow_imp.id(22469695403592550367)
,p_interactive_grid_id=>wwv_flow_imp.id(22469695783220550368)
,p_static_id=>'123229'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(22469695370788550366)
,p_report_id=>wwv_flow_imp.id(22469695403592550367)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469679792458550355)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(22469680198993550356)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469680435265550356)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(22469680861832550356)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469681010396550356)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(22469681427987550356)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469681634556550356)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(22469682033961550356)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469682241611550356)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(22469682603032550356)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469682862701550356)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(22469683266026550356)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469683433454550357)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(22469683826849550357)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469684060218550357)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(22469684399062550357)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469685221867550357)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(22469685631376550357)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469685791232550357)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(22469686204143550357)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469686458026550357)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(22469686785350550358)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469687062461550358)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(22469687440123550358)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469687621459550358)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(22469687998973550358)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469688194667550358)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(22469688584226550358)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>192
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469688790589550358)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(22469689227549550358)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469689399228550358)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(22469689831815550358)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469690059372550358)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(22469690460833550359)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469690610091550359)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(22469690985772550359)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>159
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469691194079550359)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(22469691577316550359)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469691865884550359)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(22469692220622550360)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469692447481550360)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(22469692806745550360)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469693033594550360)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(22469693428733550360)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469693615189550360)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(22469694053479550361)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22469694265938550363)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(22469694596745550364)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28891051003671948994)
,p_view_id=>wwv_flow_imp.id(22469695370788550366)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(28891057057874952772)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22469713302209550402)
,p_plug_name=>'Board Return Master'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'V_BOARD_RETURN_MASTER'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'BRM_ID'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22467912916781730542)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_button_name=>'Test'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Test'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22469704311177550383)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P86_BRM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22469705494583550386)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22469703918507550383)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P86_BRM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22469704691278550384)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P86_BRM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22469703575069550383)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_button_name=>'GET_NEXT_BRM_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P86_BRM_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22469703580017550383)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_button_name=>'GET_PREVIOUS_BRM_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P86_BRM_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22469701988150550382)
,p_branch_name=>'Go To Page 87'
,p_branch_action=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.::P87_BRM_ID,P87_BRM_BOARD_CODE,P87_BRM_FROM_DATE,P87_BRM_TO_DATE:&P86_BRM_ID.,&P86_BRM_BOARD_CODE.,&P86_BRM_FROM_DATE.,&P86_BRM_TO_DATE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(22467912916781730542)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22469702365608550382)
,p_branch_action=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.::P86_BRM_ID:&P86_BRM_ID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(22469703580017550383)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22469702690107550382)
,p_branch_action=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.::P86_BRM_ID:&P86_BRM_ID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(22469703575069550383)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22469705863261550386)
,p_name=>'P86_BRM_ID_COUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_tag_attributes=>'class="fielddata"'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22469709337712550389)
,p_name=>'P86_BRM_UPDATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_item_source_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_prompt=>'Updated On'
,p_source=>'BRM_UPDATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(22469709691016550389)
,p_name=>'P86_BRM_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_item_source_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_prompt=>'Updated By'
,p_source=>'BRM_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(22469710114941550389)
,p_name=>'P86_BRM_CREATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_item_source_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_prompt=>'Created On'
,p_source=>'BRM_CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(22469710528969550390)
,p_name=>'P86_BRM_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_item_source_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_prompt=>'Created By'
,p_source=>'BRM_CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(22469710972678550390)
,p_name=>'P86_BRM_TO_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_item_source_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_prompt=>'To Date'
,p_source=>'BRM_TO_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22469711341159550390)
,p_name=>'P86_BRM_FROM_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_item_source_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_prompt=>'From Date'
,p_source=>'BRM_FROM_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22469711739470550393)
,p_name=>'P86_BRM_BOARD_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_item_source_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_prompt=>'Board Code'
,p_source=>'BRM_BOARD_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_BOARD_RETURNS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''BOARD_RETURNS''',
' order by ST_DISPLAY_ORDER'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Board Returns -'
,p_cSize=>60
,p_cMaxlength=>500
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22469712105768550394)
,p_name=>'P86_BRM_ID_NEXT'
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22469712572117550394)
,p_name=>'P86_BRM_ID_PREV'
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22469712947977550398)
,p_name=>'P86_BRM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_item_source_plug_id=>wwv_flow_imp.id(22469713302209550402)
,p_item_default=>'SEQ_BRM_ID'
,p_item_default_type=>'SEQUENCE'
,p_source=>'BRM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22469701098866550380)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(22469713302209550402)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on V_BOARD_RETURN_MASTER'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22469752248497378876
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22469679611974550355)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(22469696298536550369)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Board Return Details - Save Interactive Grid Data'
,p_attribute_01=>'TABLE'
,p_attribute_03=>'V_BOARD_RETURN_DETAILS'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22469730761605378851
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22467912845837730541)
,p_process_sequence=>45
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Board Returns Details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_error_msg varchar2(4000);',
'	v_success_failure  varchar2(4000);',
'begin',
'PKG_GENERATE_BOARD_RETURN.initialize(:P86_BRM_ID,:P86_BRM_BOARD_CODE,:P86_BRM_FROM_DATE,:P86_BRM_TO_DATE,v_success_failure,v_error_msg);',
'--PKG_GENERATE_BOARD_RETURN.populate_new_hsn_code(:P86_BRM_FROM_DATE,:P86_BRM_TO_DATE,v_success_failure,v_error_msg);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22469704311177550383)
,p_internal_uid=>22467963995468559037
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21855601704529687236)
,p_process_sequence=>55
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(22047780289999672106)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'HSN Codes - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_scope logger_logs.scope%type := lower($$PLSQL_UNIT);',
'gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT) || ''.''; ',
'l_params logger.tab_param;',
'v_error_msg varchar2(4000);',
'v_success_failure  varchar2(4000);',
'begin',
' l_scope := gc_scope_prefix || l_scope;',
' logger.append_param(l_params, ''P86_BRM_ID'', :P86_BRM_ID);',
' logger.append_param(l_params, ''P86_BRM_BOARD_CODE'', :P86_BRM_BOARD_CODE);',
' logger.append_param(l_params, ''P86_BRM_FROM_DATE'', :P86_BRM_FROM_DATE);',
' logger.append_param(l_params, ''P86_BRM_TO_DATE'', :P86_BRM_TO_DATE);',
'   ',
' logger.LOG(''START Update/Insert of HSN Codes'', l_scope, NULL, l_params);',
' logger.LOG('' hsn code - '' || :hsn_code, l_scope, NULL, l_params);',
'  ',
'         MERGE INTO V_HSN_CODE_MASTER a',
'         USING',
'         (',
'             select :HSN_CODE HSN_CODE, :APEDA_FLAG APEDA_FLAG,',
'                :SPICES_FLAG SPICES_FLAG,',
'                :TEA_FLAG TEA_FLAG,',
'                :TOBACCO_FLAG TOBACCO_FLAG,',
'                :NAME name,',
'                :END_USE_CODE end_use_code             ',
'             from dual',
'         ) b',
'        ON',
'        (a.HCM_CODE = b.HSN_CODE)',
'        WHEN MATCHED THEN',
'        UPDATE SET',
'        hcm_apeda_flag = b.APEDA_FLAG,',
'        hcm_spices_flag = b.SPICES_FLAG,',
'        hcm_tea_flag = b.TEA_FLAG,',
'        hcm_tobacco_flag = b.TOBACCO_FLAG,',
'        hcm_end_use_code = b.end_use_code,',
'        hcm_description = b.name',
'        ',
'        WHEN NOT MATCHED THEN',
'        INSERT   (',
'                hcm_id,',
'                hcm_code,',
'                hcm_description,',
'                HCM_CHAPTER,',
'                HCM_END_USE_CODE,',
'                hcm_apeda_flag,',
'                hcm_spices_flag,',
'                hcm_tea_flag,',
'                hcm_tobacco_flag',
'            ) ',
'            VALUES (',
'                SEQ_HCM_ID.nextval,',
'                b.HSN_CODE,',
'                b.name,',
'                substr(b.HSN_CODE,1,2),',
'                b.end_use_code,',
'                b.APEDA_FLAG,',
'                b.SPICES_FLAG,',
'                b.TEA_FLAG,',
'                b.TOBACCO_FLAG',
'            );',
'',
'PKG_GENERATE_BOARD_RETURN.initialize(:P86_BRM_ID,:P86_BRM_BOARD_CODE,:P86_BRM_FROM_DATE,:P86_BRM_TO_DATE,v_success_failure,v_error_msg);',
'',
'exception',
'      when others then        ',
'      logger.log_error(sqlerrm, l_scope, null, l_params);',
'        apex_error.add_error(',
'            p_message => sqlerrm,',
'            p_display_location => apex_error.c_inline_with_field_and_notif',
'        );',
'        RAISE;',
'end;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>21855652854160515732
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Code bkp before doing changes of description - ',
'',
'declare',
'',
'l_scope logger_logs.scope%type := lower($$PLSQL_UNIT);',
'gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT) || ''.''; ',
'l_params logger.tab_param;',
'v_error_msg varchar2(4000);',
'v_success_failure  varchar2(4000);',
'begin',
' l_scope := gc_scope_prefix || l_scope;',
' logger.append_param(l_params, ''P86_BRM_ID'', :P86_BRM_ID);',
' logger.append_param(l_params, ''P86_BRM_BOARD_CODE'', :P86_BRM_BOARD_CODE);',
' logger.append_param(l_params, ''P86_BRM_FROM_DATE'', :P86_BRM_FROM_DATE);',
' logger.append_param(l_params, ''P86_BRM_TO_DATE'', :P86_BRM_TO_DATE);',
'   ',
' logger.LOG(''START Update/Insert of HSN Codes'', l_scope, NULL, l_params);',
' logger.LOG('' hsn code - '' || :hsn_code, l_scope, NULL, l_params);',
'  ',
'         MERGE INTO V_HSN_CODE_MASTER a',
'         USING',
'         (',
'             select :HSN_CODE HSN_CODE, :APEDA_FLAG APEDA_FLAG,',
'                :SPICES_FLAG SPICES_FLAG,',
'                :TEA_FLAG TEA_FLAG,',
'                :TOBACCO_FLAG TOBACCO_FLAG',
'             from dual',
'         ) b',
'        ON',
'        (a.HCM_CODE = b.HSN_CODE)',
'        WHEN MATCHED THEN',
'        UPDATE SET',
'        hcm_apeda_flag = b.APEDA_FLAG,',
'        hcm_spices_flag = b.SPICES_FLAG,',
'        hcm_tea_flag = b.TEA_FLAG,',
'        hcm_tobacco_flag = b.TOBACCO_FLAG',
'        ',
'        WHEN NOT MATCHED THEN',
'        INSERT   (',
'                hcm_id,',
'                hcm_code,',
'                hcm_description,',
'                HCM_CHAPTER,',
'                HCM_END_USE_CODE,',
'                hcm_apeda_flag,',
'                hcm_spices_flag,',
'                hcm_tea_flag,',
'                hcm_tobacco_flag',
'            ) ',
'            VALUES (',
'                SEQ_HCM_ID.nextval,',
'                b.HSN_CODE,',
'                ''Description to be updated'',',
'                substr(b.HSN_CODE,1,2),',
'                ''CODE'',',
'                b.APEDA_FLAG,',
'                b.SPICES_FLAG,',
'                b.TEA_FLAG,',
'                b.TOBACCO_FLAG',
'            );',
'',
'PKG_GENERATE_BOARD_RETURN.initialize(:P86_BRM_ID,:P86_BRM_BOARD_CODE,:P86_BRM_FROM_DATE,:P86_BRM_TO_DATE,v_success_failure,v_error_msg);',
'',
'exception',
'      when others then        ',
'      logger.log_error(sqlerrm, l_scope, null, l_params);',
'	  ',
'end;',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22469701503962550381)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(22469713302209550402)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on V_BOARD_RETURN_MASTER'
,p_attribute_01=>'P86_BRM_ID_NEXT'
,p_attribute_02=>'P86_BRM_ID_PREV'
,p_attribute_03=>'P86_BRM_ID_COUNT'
,p_internal_uid=>22469752653593378877
);
wwv_flow_imp.component_end;
end;
/
