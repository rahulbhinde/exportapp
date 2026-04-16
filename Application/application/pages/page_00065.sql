prompt --application/pages/page_00065
begin
--   Manifest
--     PAGE: 00065
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
 p_id=>65
,p_name=>'Custom Invoice - Grouping'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124639637556004895)
,p_plug_name=>'Custom Invoice Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        cirs_id,',
'        cirs_enq_id,',
'        cirs_eod_id,',
'        cirs_product_id,',
'        cirs_product_name,',
'        cirs_product_packing,',
'        cirs_product_display_name,',
'        cirs_qty,',
'        cirs_unit_rate,',
'        cirs_amount,',
'        cirs_tax_value,',
'        cirs_igst_rate,',
'        cirs_igst_amount,',
'        cirs_dis_amount,',
'        cirs_dis_tax_value,',
'        cirs_dis_unit_rate,',
'        cirs_dis_igst_amount,',
'        cirs_hsn_code,',
'        cirs_gross_wt,',
'        cirs_net_wt,',
'        cirs_uom,',
'       -- cirs_manual_grp_product_id,',
'        cirs_foc_flag,',
'        cirs_created_by,',
'        cirs_created_on,',
'        cirs_updated_by,',
'        cirs_updated_on,',
'        cirs_manual_ci_grp_cirs_id,',
'        case when (:P65_CIR_ADDITIONAL_DETAILS like ''%SUPM_DET%'') then',
'             (select  ''<span style="color:#0076df;">'' || CIHD_HSN_DESC  || ''</span>'' ',
'            || '' ; '' || '' CH: '' || CIHD_CHAPTER ',
'            || '' ;''|| '' HS CODE: '' || ''<span style="color:#0076df;font-weight:bold">'' || CIHD_HSN_CODE  || ''</span>'' ',
'            || '' ; GST: '' || ''<span style="color:#0076df;font-weight:bold">'' || CIHD_GST_PERC || ''%</span>'' ',
'            || '' ; Packing: '' || ''<span style="color:#0076df;font-weight:bold">'' || cirs_product_packing   || ''</span>''  || '' ; State Code: '' || ''<span style="color:#0076df;font-weight:normal">'' || supm_det.state_code || '' ('' || supm_det.state || '') '
||'</span>'' || '' ; District Code: '' || ''<span style="color:#0076df;font-weight:normal">'' || supm_det.district_code|| '' ('' || supm_det.district  || '') </span>'' ',
'             from V_CUSTOM_INVOICE_HSN_DETAILS ',
'             ,  (                            ',
'                            select eom_enq_id,id_max.pod_product_id, district.st_name district , state.st_name state, id_max.pom_supplier_id, state.st_extra1 state_code, district.st_extra1 district_code',
'                            from  V_ENQUIRIES_ORDERS_MST, V_SETUP_TABLE state',
'                            ,V_SETUP_TABLE district,',
'                            (',
'                                select  supm_id, supm_district supm_district, supm_state supm_state',
'                                from V_SUPPLIER_MASTER',
'                            ) sm,',
'                             (',
'                                select pod_product_id,pom_enq_id,max(pom_supplier_id) pom_supplier_id',
'                                from V_PURCHASE_ORDER_MASTER, V_PURCHASE_ORDER_DETAILS, V_ENQUIRIES_ORDERS_DETAILS',
'                                where pom_enq_id = :P65_CIR_ENQ_ID',
'                                and pom_status not in (''IP'',''RJ'')',
'                                and pom_id = pod_pom_id',
'                                and pod_product_id = eod_product_id',
'                                and pom_enq_id = eod_enq_id',
'                                group by pod_product_id,pom_enq_id',
'                            ) id_max',
'                            where eom_enq_id = :P65_CIR_ENQ_ID',
'                            and id_max.pom_supplier_id = sm.supm_id    ',
'                            and  sm.supm_district  =  district.st_code',
'                            and sm.supm_state = state.st_code',
'                            and district.st_type = ''DISTRICT''',
'                            and state.st_type = ''STATE''',
'                       ) supm_det  --Added by Rahul on 09-May-2024 to display supplier details',
'             where cirs_enq_id = cihd_enq_id',
'            AND     cirs_hsn_code = cihd_hsn_code',
'            AND     cirs_igst_rate = cihd_gst_perc',
'            and     cirs_enq_id = supm_det.eom_enq_id(+)',
'            and     cirs_product_id = supm_det.pod_product_id(+)',
'            and     cihd_enq_id = supm_det.eom_enq_id(+) --Added by Rahul on 30-May-24 as HSN details were not fetched if district is missing',
'            --and rownum = 1 Not added rownum as we have taken care in the supplier query to return 1 row for 1 product and supplier info of 1 enq',
'            AND     cirs_cihd_id = cihd_id   --Added by Rahul on 16-Sep24 for manual split groups JDCorp',
'            )     ',
'        else',
'             (select  ''<span style="color:#0076df;">'' || CIHD_HSN_DESC  || ''</span>'' ',
'            || '' ; '' || '' CH: '' || CIHD_CHAPTER ',
'            || '' ;''|| '' HS CODE: '' || ''<span style="color:#0076df;font-weight:bold">'' || CIHD_HSN_CODE  || ''</span>'' ',
'            || '' ; GST: '' || ''<span style="color:#0076df;font-weight:bold">'' || CIHD_GST_PERC || ''%</span>'' ',
'            || '' ; Packing: '' || ''<span style="color:#0076df;font-weight:bold">'' || cirs_product_packing   || ''</span>''',
'             from V_CUSTOM_INVOICE_HSN_DETAILS where cirs_enq_id = cihd_enq_id',
'            AND     cirs_hsn_code = cihd_hsn_code',
'            AND     cirs_igst_rate = cihd_gst_perc',
'            AND     cirs_cihd_id = cihd_id   --Added by Rahul on 16-Sep24 for manual split groups JDCorp',
'            )     ',
'        end hsn_packing,',
'             (select  to_number(cihd_display_order)',
'         from V_CUSTOM_INVOICE_HSN_DETAILS where cirs_enq_id = cihd_enq_id',
'        AND     cirs_hsn_code = cihd_hsn_code',
'        AND     cirs_igst_rate = cihd_gst_perc',
'        AND     cirs_cihd_id = cihd_id   --Added by Rahul on 16-Sep24 for manual split groups JDCorp',
'        )     cihd_display_order,',
'        --added below to filter records in Manual product lov',
'        CIRS_PRODUCT_PACKING CIRS_PRODUCT_PACKING_hdn,',
'        CIRS_IGST_RATE CIRS_IGST_RATE_hdn,',
'        CIRS_HSN_CODE CIRS_HSN_CODE_hdn        ',
'FROM V_CUSTOM_INVOICE_REPORT_STAGING  ',
'WHERE   cirs_enq_id = :P65_CIR_ENQ_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_header=>'<span style="color:red">*Note - Users can edit the Group column to group or rename the products in Custom Invoice</span>'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Bkp on 09-May-24 before supplier details changes',
'SELECT',
'        cirs_id,',
'        cirs_enq_id,',
'        cirs_eod_id,',
'        cirs_product_id,',
'        cirs_product_name,',
'        cirs_product_packing,',
'        cirs_product_display_name,',
'        cirs_qty,',
'        cirs_unit_rate,',
'        cirs_amount,',
'        cirs_tax_value,',
'        cirs_igst_rate,',
'        cirs_igst_amount,',
'        cirs_dis_amount,',
'        cirs_dis_tax_value,',
'        cirs_dis_unit_rate,',
'        cirs_dis_igst_amount,',
'        cirs_hsn_code,',
'        cirs_gross_wt,',
'        cirs_net_wt,',
'        cirs_uom,',
'       -- cirs_manual_grp_product_id,',
'        cirs_foc_flag,',
'        cirs_created_by,',
'        cirs_created_on,',
'        cirs_updated_by,',
'        cirs_updated_on,',
'        cirs_manual_ci_grp_cirs_id,',
'         (select  ''<span style="color:#0076df;">'' || CIHD_HSN_DESC  || ''</span>'' ',
'        || '' ; '' || '' CH: '' || CIHD_CHAPTER ',
'        || '' ;''|| '' HS CODE: '' || ''<span style="color:#0076df;font-weight:bold">'' || CIHD_HSN_CODE  || ''</span>'' ',
'        || '' ; GST: '' || ''<span style="color:#0076df;font-weight:bold">'' || CIHD_GST_PERC || ''%</span>'' ',
'        || '' ; Packing: '' || ''<span style="color:#0076df;font-weight:bold">'' || cirs_product_packing   || ''</span>''',
'         from V_CUSTOM_INVOICE_HSN_DETAILS where cirs_enq_id = cihd_enq_id',
'        AND     cirs_hsn_code = cihd_hsn_code',
'        AND     cirs_igst_rate = cihd_gst_perc)     hsn_packing,',
'             (select  to_number(cihd_display_order)',
'         from V_CUSTOM_INVOICE_HSN_DETAILS where cirs_enq_id = cihd_enq_id',
'        AND     cirs_hsn_code = cihd_hsn_code',
'        AND     cirs_igst_rate = cihd_gst_perc)     cihd_display_order,',
'        --added below to filter records in Manual product lov',
'        CIRS_PRODUCT_PACKING CIRS_PRODUCT_PACKING_hdn,',
'        CIRS_IGST_RATE CIRS_IGST_RATE_hdn,',
'        CIRS_HSN_CODE CIRS_HSN_CODE_hdn   ',
'FROM V_CUSTOM_INVOICE_REPORT_STAGING',
'WHERE   cirs_enq_id = :P65_CIR_ENQ_ID;'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(82484054964714195)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(82484096828714196)
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
 p_id=>wwv_flow_imp.id(3143070533579255784)
,p_name=>'CIRS_HSN_CODE_HDN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_HSN_CODE_HDN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3143070641002255785)
,p_name=>'CIRS_IGST_RATE_HDN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_IGST_RATE_HDN'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3143070729094255786)
,p_name=>'CIRS_PRODUCT_PACKING_HDN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_PRODUCT_PACKING_HDN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>330
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3143070986126255788)
,p_name=>'CIHD_DISPLAY_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_DISPLAY_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'No.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>320
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3143071402985255792)
,p_name=>'HSN_PACKING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HSN_PACKING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'HSN Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML')).to_clob
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
 p_id=>wwv_flow_imp.id(3143071570418255794)
,p_name=>'CIRS_MANUAL_CI_GRP_CIRS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_MANUAL_CI_GRP_CIRS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Manual Group with Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
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
'       CIRS_ID as r',
'  from V_PRODUCT_MASTER, V_CUSTOM_INVOICE_REPORT_STAGING',
' where CIRS_PRODUCT_ID = pm_id',
' and cirs_enq_id = :P65_CIR_ENQ_ID',
' and (CIRS_PRODUCT_PACKING <> :CIRS_PRODUCT_PACKING_HDN',
' or CIRS_IGST_RATE <> :CIRS_IGST_RATE_HDN',
' or CIRS_HSN_CODE <> :CIRS_HSN_CODE_HDN)',
' order by 1'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Product -'
,p_lov_cascade_parent_items=>'CIRS_PRODUCT_PACKING_HDN,CIRS_IGST_RATE_HDN,CIRS_HSN_CODE_HDN'
,p_ajax_items_to_submit=>'CIRS_PRODUCT_PACKING_HDN,CIRS_IGST_RATE_HDN,CIRS_HSN_CODE_HDN'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3143071689019255795)
,p_name=>'CIRS_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
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
 p_id=>wwv_flow_imp.id(3143071788737255796)
,p_name=>'CIRS_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
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
 p_id=>wwv_flow_imp.id(3143071890043255797)
,p_name=>'CIRS_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
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
 p_id=>wwv_flow_imp.id(3143071980513255798)
,p_name=>'CIRS_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
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
 p_id=>wwv_flow_imp.id(3143072063841255799)
,p_name=>'CIRS_FOC_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_FOC_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Free of Cost ?'
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
 p_id=>wwv_flow_imp.id(3143072282115255801)
,p_name=>'CIRS_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_UOM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'UOM'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3143072382732255802)
,p_name=>'CIRS_NET_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_NET_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Net Wt.'
,p_heading_alignment=>'LEFT'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3143072424661255803)
,p_name=>'CIRS_GROSS_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_GROSS_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Gross Wt.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(3143072511963255804)
,p_name=>'CIRS_HSN_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_HSN_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'HSN Code'
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
 p_id=>wwv_flow_imp.id(3143072642092255805)
,p_name=>'CIRS_DIS_IGST_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_DIS_IGST_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Disc. IGST Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(3143072714272255806)
,p_name=>'CIRS_DIS_UNIT_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_DIS_UNIT_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Disc. Unit Rate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(3143072838631255807)
,p_name=>'CIRS_DIS_TAX_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_DIS_TAX_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Disc. Tax Value'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(3143072976497255808)
,p_name=>'CIRS_DIS_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_DIS_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Disc. Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(3143073057295255809)
,p_name=>'CIRS_IGST_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_IGST_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'IGST Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(3143073174372255810)
,p_name=>'CIRS_IGST_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_IGST_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'IGST Rate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(3143073261325255811)
,p_name=>'CIRS_TAX_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_TAX_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Tax Value'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(3143073345130255812)
,p_name=>'CIRS_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(3143073503331255813)
,p_name=>'CIRS_UNIT_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_UNIT_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Unit Rate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(3143073524069255814)
,p_name=>'CIRS_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Qty.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(3143073701979255815)
,p_name=>'CIRS_PRODUCT_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_PRODUCT_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product CI Display Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(3143073741458255816)
,p_name=>'CIRS_PRODUCT_PACKING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_PRODUCT_PACKING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product Packing'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(3143073840711255817)
,p_name=>'CIRS_PRODUCT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_PRODUCT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(3143073969501255818)
,p_name=>'CIRS_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_PRODUCT_ID'
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
 p_id=>wwv_flow_imp.id(3143074106802255819)
,p_name=>'CIRS_EOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_EOD_ID'
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
 p_id=>wwv_flow_imp.id(3143074193302255820)
,p_name=>'CIRS_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_ENQ_ID'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3143074280646255821)
,p_name=>'CIRS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_ID'
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
 p_id=>wwv_flow_imp.id(124639835784004897)
,p_internal_uid=>34306945334860931
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
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>false
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>false
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(124784310809369086)
,p_interactive_grid_id=>wwv_flow_imp.id(124639835784004897)
,p_static_id=>'123194'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>25
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(17464160955769350)
,p_report_id=>wwv_flow_imp.id(124784310809369086)
,p_view_type=>'CHART'
,p_chart_type=>'bar'
,p_chart_orientation=>'horizontal'
,p_chart_stack=>'on'
,p_axis_label=>'Products'
,p_axis_value=>'Quantity'
,p_axis_value_decimal_places=>2
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(124784423430369086)
,p_report_id=>wwv_flow_imp.id(124784310809369086)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83400640070329821)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(82484054964714195)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3044800699687566955)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(3143070533579255784)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3044801278245566957)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(3143070641002255785)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3044801766873566962)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(3143070729094255786)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3073701780511599734)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(3143070986126255788)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3074601793092986890)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(3143071402985255792)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441189418032053291)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(3143071570418255794)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>204
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441190046226053293)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(3143071689019255795)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441190611402053294)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(3143071788737255796)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441191200958053296)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(3143071890043255797)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441191867255053297)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(3143071980513255798)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441192435071053299)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(3143072063841255799)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441193585959053302)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(3143072282115255801)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441194186124053304)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(3143072382732255802)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441194784668053305)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3143072424661255803)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441195398196053307)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3143072511963255804)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441196068478053308)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3143072642092255805)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441196592681053310)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3143072714272255806)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441197171216053311)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3143072838631255807)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441197733153053313)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3143072976497255808)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441198271119053314)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3143073057295255809)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441198937217053316)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3143073174372255810)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441199484521053318)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3143073261325255811)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441200082934053319)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3143073345130255812)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441200733000053321)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3143073503331255813)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441201348899053323)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3143073524069255814)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441201961029053325)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3143073701979255815)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441202547738053328)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3143073741458255816)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441203157602053330)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3143073840711255817)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441203761192053331)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3143073969501255818)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441204360691053333)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3143074106802255819)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441204885781053335)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3143074193302255820)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3441205538111053339)
,p_view_id=>wwv_flow_imp.id(124784423430369086)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3143074280646255821)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159314969092425654)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-WizardSteps--displayLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(124817506615634011)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159315393073427633)
,p_plug_name=>'Step 3'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(159315736256429890)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3143070321067255782)
,p_plug_name=>'New test'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'        cirs_id,',
'        cirs_enq_id,',
'        cirs_eod_id,',
'        cirs_product_id,',
'        cirs_product_name,',
'        cirs_product_packing,',
'        cirs_product_display_name,',
'        cirs_qty,',
'        cirs_unit_rate,',
'        cirs_amount,',
'        cirs_tax_value,',
'        cirs_igst_rate,',
'        cirs_igst_amount,',
'        cirs_dis_amount,',
'        cirs_dis_tax_value,',
'        cirs_dis_unit_rate,',
'        cirs_dis_igst_amount,',
'        cirs_hsn_code,',
'        cirs_gross_wt,',
'        cirs_net_wt,',
'        cirs_uom,',
'       -- cirs_manual_grp_product_id,',
'        cirs_foc_flag,',
'        cirs_created_by,',
'        cirs_created_on,',
'        cirs_updated_by,',
'        cirs_updated_on,',
'        cirs_manual_ci_grp_cirs_id,',
'        (select  ''<span style="color:#0076df;">'' || CIHD_HSN_DESC  || ''</span>'' ',
'        || '' ; '' || '' CH: '' || CIHD_CHAPTER ',
'        || '' ;''|| '' HS CODE: '' || ''<span style="color:#0076df;font-weight:bold">'' || CIHD_HSN_CODE  || ''</span>'' ',
'        || '' ; GST: '' || ''<span style="color:#0076df;font-weight:bold">'' || CIHD_GST_PERC || ''%</span>'' ',
'        || '' ; Packing: '' || ''<span style="color:#0076df;font-weight:bold">'' || cirs_product_packing   || ''</span>''',
'         from V_CUSTOM_INVOICE_HSN_DETAILS where cirs_enq_id = cihd_enq_id',
'        AND     cirs_hsn_code = cihd_hsn_code',
'        AND     cirs_igst_rate = cihd_gst_perc)     hsn_packing,',
'             (select  to_number(cihd_display_order)',
'         from V_CUSTOM_INVOICE_HSN_DETAILS where cirs_enq_id = cihd_enq_id',
'        AND     cirs_hsn_code = cihd_hsn_code',
'        AND     cirs_igst_rate = cihd_gst_perc)     cihd_display_order        ',
'FROM V_CUSTOM_INVOICE_REPORT_STAGING',
'WHERE   cirs_enq_id = :P65_CIR_ENQ_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New test'
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
 p_id=>wwv_flow_imp.id(3042999513588138593)
,p_name=>'CIHD_DISPLAY_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIHD_DISPLAY_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cihd Display Order'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>310
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3042999617750138594)
,p_name=>'HSN_PACKING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HSN_PACKING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Hsn Packing'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3042999994407138597)
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
 p_id=>wwv_flow_imp.id(3043000022712138598)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3043000623260138604)
,p_name=>'CIRS_MANUAL_CI_GRP_CIRS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_MANUAL_CI_GRP_CIRS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Manual Ci Grp Cirs Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>290
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
 p_id=>wwv_flow_imp.id(3043000739108138605)
,p_name=>'CIRS_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Cirs Updated On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
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
 p_id=>wwv_flow_imp.id(3043000818482138606)
,p_name=>'CIRS_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Cirs Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
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
 p_id=>wwv_flow_imp.id(3043000989216138607)
,p_name=>'CIRS_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Cirs Created On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
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
 p_id=>wwv_flow_imp.id(3043001046286138608)
,p_name=>'CIRS_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Cirs Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
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
 p_id=>wwv_flow_imp.id(3043001139809138609)
,p_name=>'CIRS_FOC_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_FOC_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cirs Foc Flag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3043001286663138610)
,p_name=>'CIRS_UOM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_UOM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Cirs Uom'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
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
 p_id=>wwv_flow_imp.id(3043001346033138611)
,p_name=>'CIRS_NET_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_NET_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Net Wt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>220
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
 p_id=>wwv_flow_imp.id(3043001507415138612)
,p_name=>'CIRS_GROSS_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_GROSS_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Gross Wt'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(3043001578452138613)
,p_name=>'CIRS_HSN_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_HSN_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cirs Hsn Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
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
 p_id=>wwv_flow_imp.id(3043001627601138614)
,p_name=>'CIRS_DIS_IGST_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_DIS_IGST_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Dis Igst Amount'
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
 p_id=>wwv_flow_imp.id(3043001756168138615)
,p_name=>'CIRS_DIS_UNIT_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_DIS_UNIT_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Dis Unit Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(3043001847414138616)
,p_name=>'CIRS_DIS_TAX_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_DIS_TAX_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Dis Tax Value'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3043001991870138617)
,p_name=>'CIRS_DIS_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_DIS_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Dis Amount'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3043002099355138618)
,p_name=>'CIRS_IGST_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_IGST_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Igst Amount'
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
 p_id=>wwv_flow_imp.id(3043002209613138619)
,p_name=>'CIRS_IGST_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_IGST_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Igst Rate'
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
 p_id=>wwv_flow_imp.id(3043002310396138620)
,p_name=>'CIRS_TAX_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_TAX_VALUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Tax Value'
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
 p_id=>wwv_flow_imp.id(3043002400867138621)
,p_name=>'CIRS_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Amount'
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
 p_id=>wwv_flow_imp.id(3043002422922138622)
,p_name=>'CIRS_UNIT_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_UNIT_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Unit Rate'
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
 p_id=>wwv_flow_imp.id(3143069448441255773)
,p_name=>'CIRS_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Qty'
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
 p_id=>wwv_flow_imp.id(3143069564010255774)
,p_name=>'CIRS_PRODUCT_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_PRODUCT_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Cirs Product Display Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(3143069636667255775)
,p_name=>'CIRS_PRODUCT_PACKING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_PRODUCT_PACKING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Cirs Product Packing'
,p_heading_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(3143069780557255776)
,p_name=>'CIRS_PRODUCT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_PRODUCT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Cirs Product Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(3143069848750255777)
,p_name=>'CIRS_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Product Id'
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
 p_id=>wwv_flow_imp.id(3143069914027255778)
,p_name=>'CIRS_EOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_EOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Eod Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(3143070047336255779)
,p_name=>'CIRS_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Enq Id'
,p_heading_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(3143070183353255780)
,p_name=>'CIRS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CIRS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cirs Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3143070274056255781)
,p_internal_uid=>298136937622800842
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
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3042996908056138446)
,p_interactive_grid_id=>wwv_flow_imp.id(3143070274056255781)
,p_static_id=>'123193'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3042996715703138445)
,p_report_id=>wwv_flow_imp.id(3042996908056138446)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042601191968999218)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(3042999513588138593)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042601783710999221)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(3042999617750138594)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042979056344134420)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3043000022712138598)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042983309466138389)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(3043000623260138604)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042983806045138391)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(3043000739108138605)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042984213754138392)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(3043000818482138606)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042984809473138393)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(3043000989216138607)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042985219867138394)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(3043001046286138608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042985745554138395)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(3043001139809138609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042986279484138396)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(3043001286663138610)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042986746474138398)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(3043001346033138611)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042987278634138399)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3043001507415138612)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042987746455138400)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3043001578452138613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042988212615138401)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3043001627601138614)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042988770350138403)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3043001756168138615)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042989307155138404)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3043001847414138616)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042989732551138406)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3043001991870138617)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042990257022138410)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3043002099355138618)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042990792201138413)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3043002209613138619)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042991257589138417)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3043002310396138620)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042991800638138421)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3043002400867138621)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042992282413138423)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3043002422922138622)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042992718653138425)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3143069448441255773)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042993307478138427)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3143069564010255774)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042993773654138431)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3143069636667255775)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042994229565138432)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3143069780557255776)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042994743397138434)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3143069848750255777)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042995261313138435)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3143069914027255778)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042995782931138437)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3143070047336255779)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3042996286319138441)
,p_view_id=>wwv_flow_imp.id(3042996715703138445)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3143070183353255780)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124830678190939835)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(159315736256429890)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124831033882939849)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(159315736256429890)
,p_button_name=>'Next'
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
 p_id=>wwv_flow_imp.id(124833201646974941)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(159315736256429890)
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
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(124831473219948424)
,p_branch_name=>'Go To Page 73'
,p_branch_action=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:RP,73:P73_CIR_ENQ_ID:&P65_CIR_ENQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(124831033882939849)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(124807683262470070)
,p_branch_name=>'Go To Page 90'
,p_branch_action=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:RP,90:P90_CIR_ENQ_ID:&P65_CIR_ENQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(124833201646974941)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124638088170004879)
,p_name=>'P65_CIR_ENQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124639637556004895)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21924410187311197202)
,p_name=>'P65_CIR_ADDITIONAL_DETAILS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(124639637556004895)
,p_prompt=>'ADDITIONAL DETAILS'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(22047783547871672138)
,p_computation_sequence=>10
,p_computation_item=>'P65_CIR_ADDITIONAL_DETAILS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P10_DISPLAY_OTHER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124835232084017981)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124830678190939835)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124835647014017986)
,p_event_id=>wwv_flow_imp.id(124835232084017981)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3042999885626138596)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(124639637556004895)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'New - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(124831033882939849)
,p_internal_uid=>3043051035256967092
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(124874733677959242)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert_upd_grp_summary GD records'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'MERGE INTO V_CUSTOM_INVOICE_REPORT cir',
'    USING (SELECT cirs_id,',
'					cirs_enq_id,',
'					cirs_eod_id,',
'					cirs_product_id,',
'					cirs_product_name,',
'					cirs_product_packing,',
'					cirs_product_display_name,',
'					cirs_qty,',
'					cirs_unit_rate,',
'					cirs_amount,',
'					cirs_tax_value,',
'					cirs_igst_rate,',
'					cirs_igst_amount,',
'					/*cirs_dis_amount,',
'					cirs_dis_tax_value,',
'					cirs_dis_unit_rate,',
'					cirs_dis_igst_amount,*/',
'					cirs_hsn_code,',
'					cirs_gross_wt,',
'					cirs_net_wt,',
'					cirs_uom,',
'				   -- cirs_manual_grp_product_id,',
'					cirs_foc_flag,',
'					cirs_created_by,',
'					cirs_created_on,',
'					cirs_updated_by,',
'					cirs_updated_on,',
'					cirs_manual_ci_grp_cirs_id,',
'					cihd_hsn_desc    ',
'					|| '' ; '' || '' CH: '' || CIHD_CHAPTER ',
'					|| '' ;''|| '' HS CODE: ''  || CIHD_HSN_CODE   hsn_packing,',
'					to_number(cihd_display_order) cihd_display_order',
'			FROM',
'					V_CUSTOM_INVOICE_REPORT_STAGING,',
'					V_CUSTOM_INVOICE_HSN_DETAILS',
'			WHERE   cirs_enq_id = cihd_enq_id',
'			AND     cirs_hsn_code = cihd_hsn_code',
'			AND     cirs_igst_rate = cihd_gst_perc',
'			AND     cirs_enq_id = :P65_CIR_ENQ_ID',
'			AND		cirs_manual_ci_grp_cirs_id is null',
'			UNION ALL',
'			SELECT grp_prod.cirs_id,',
'					grp_prod.cirs_enq_id,',
'					grp_prod.cirs_eod_id,',
'					grp_prod.cirs_product_id,',
'					grp_prod.cirs_product_name,',
'					org_prod.cirs_product_packing,',
'					org_prod.cirs_product_display_name,',
'					grp_prod.cirs_qty,',
'					grp_prod.cirs_unit_rate,',
'					grp_prod.cirs_amount,',
'					grp_prod.cirs_tax_value,',
'					org_prod.cirs_igst_rate,',
'					grp_prod.cirs_tax_value * org_prod.cirs_igst_rate/100 cirs_igst_amount,',
'					/*cirs_dis_amount,',
'					cirs_dis_tax_value,',
'					cirs_dis_unit_rate,',
'					cirs_dis_igst_amount,*/',
'					org_prod.cirs_hsn_code,',
'					grp_prod.cirs_gross_wt,',
'					grp_prod.cirs_net_wt,',
'					grp_prod.cirs_uom,',
'				   -- cirs_manual_grp_product_id,',
'					grp_prod.cirs_foc_flag,',
'					grp_prod.cirs_created_by,',
'					grp_prod.cirs_created_on,',
'					grp_prod.cirs_updated_by,',
'					grp_prod.cirs_updated_on,',
'					grp_prod.cirs_manual_ci_grp_cirs_id,',
'					cihd_hsn_desc    ',
'					|| '' ; '' || '' CH: '' || CIHD_CHAPTER ',
'					|| '' ;''|| '' HS CODE: ''  || CIHD_HSN_CODE   hsn_packing,',
'					to_number(cihd_display_order) cihd_display_order',
'			FROM',
'					V_CUSTOM_INVOICE_REPORT_STAGING org_prod,',
'					V_CUSTOM_INVOICE_REPORT_STAGING grp_prod,',
'					V_CUSTOM_INVOICE_HSN_DETAILS',
'			WHERE   org_prod.cirs_id = grp_prod.cirs_manual_ci_grp_cirs_id',
'			AND		grp_prod.cirs_enq_id = cihd_enq_id',
'			AND     org_prod.cirs_hsn_code = cihd_hsn_code',
'			AND     org_prod.cirs_igst_rate = cihd_gst_perc',
'			AND     org_prod.cirs_enq_id = :P65_CIR_ENQ_ID',
'			AND		grp_prod.cirs_manual_ci_grp_cirs_id is not null',
'       ) cirs',
'	ON (cir.cir_enq_id = cirs.cirs_enq_id',
'        AND cir.cir_cirs_id = cirs.cirs_id',
'		AND cir.cir_enq_id = :P65_CIR_ENQ_ID',
'       )	   ',
'',
'   WHEN MATCHED THEN',
'      UPDATE SET',
'	  	cir_display_name		= cirs.cirs_product_display_name,',
'		cir_hsn_code			= cirs.cirs_hsn_code,',
'		cir_uom					= cirs.cirs_uom,',
'		cir_igst_rate			= cirs.cirs_igst_rate,',
'		cir_description			= cirs.cirs_product_packing,',
'        cir_qty       			= cirs.cirs_qty,',
'        cir_unit_rate 			= cirs.cirs_unit_rate,',
'        cir_amount 				= cirs.cirs_amount,',
'        cir_tax_value 			= cirs.cirs_tax_value,',
'        cir_igst_amount 		= cirs.cirs_igst_amount,',
'        cir_gross_wt 			= cirs.cirs_gross_wt,',
'        cir_net_wt 				= cirs.cirs_net_wt,',
'        --cir_display_order 	= cirs.cihd_display_order,',
'        cir_group 				= cirs.hsn_packing,',
'		cir_hsn_group_order		= cirs.cihd_display_order,',
'		cir_manual_grp_product	= cirs.cirs_manual_ci_grp_cirs_id',
'',
'',
'    WHEN NOT MATCHED THEN',
'      INSERT (cir_product_id,',
'              cir_display_name,',
'              cir_hsn_code,',
'              cir_uom,',
'              cir_igst_rate,',
'              cir_description,',
'              cir_qty,       	',
'              cir_unit_rate, 	',
'              cir_amount, 		',
'              cir_tax_value, 	',
'              cir_igst_amount, ',
'              cir_gross_wt, 	',
'              cir_net_wt,',
'              cir_category,',
'              cir_enq_id,',
'              --cir_display_order,',
'              cir_group,',
'			  cir_hsn_group_order,',
'			  cir_cirs_id,',
'			  cir_product_name,',
'              cir_manual_grp_product',
'             )',
'      VALUES (cirs.cirs_product_id,',
'              cirs.cirs_product_display_name,',
'              cirs.cirs_hsn_code,',
'              cirs.cirs_uom,',
'              cirs.cirs_igst_rate,',
'              cirs.cirs_product_packing,',
'              cirs.cirs_qty,       	',
'              cirs.cirs_unit_rate, 	',
'              cirs.cirs_amount, 		',
'              cirs.cirs_tax_value, 	',
'              cirs.cirs_igst_amount, ',
'              cirs.cirs_gross_wt, 	',
'              cirs.cirs_net_wt,',
'              ''GD'',',
'              :P65_CIR_ENQ_ID,',
'              --b.CIR_DISPLAY_ORDER,',
'              cirs.hsn_packing,',
'			  cirs.cihd_display_order,',
'			  cirs.cirs_id,',
'			  cirs.cirs_product_name,',
'              cirs.cirs_manual_ci_grp_cirs_id',
'			  );',
'  ',
'  ',
'/*delete from V_CUSTOM_INVOICE_REPORT a',
'where a.cir_enq_id = :P65_CIR_ENQ_ID',
'and a.cir_category = ''GDH''',
'and not exists (',
'                    select 1 ',
'                    from V_CUSTOM_INVOICE_REPORT b',
'                    where a.cir_enq_id = b.cir_enq_id',
'                    and b.CIR_CATEGORY = ''GD''',
'                    and upper(b.CIR_DISPLAY_NAME) = upper(a.CIR_DISPLAY_NAME)',
'                    and b.CIR_DESCRIPTION = a.CIR_DESCRIPTION --Added by Rahul on 23082019',
'                );             ',
'  */            ',
'exception when others then',
'        null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to Process Grouping Information'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(124831033882939849)
,p_process_when_type=>'NEVER'
,p_internal_uid=>124925883308787738
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3143070843955255787)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert_upd_grp_summary GDH records'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'--Added CIR_DESCRIPTION column in the Partition by clause by Rahul on 23082019 to group the products on the basis of their packing as well.',
'MERGE INTO V_CUSTOM_INVOICE_REPORT a',
'    USING (select cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION,CIR_DISPLAY_ORDER,CIR_GROUP,',
'           SUM_QTY,rnk,round(SUM_AMT/SUM_QTY,2) SUM_UNIT_RATE,SUM_AMT,SUM_TAX_VALUE,SUM_IGST_AMT,SUM_GROSS_WT,SUM_NET_WT',
'           from ',
'(',
'select cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION,CIR_DISPLAY_ORDER,CIR_GROUP,',
'sum(CIR_QTY) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION) AS SUM_QTY ,',
'rank() over (PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION order by cir_id) rnk,',
'--sum(CIR_UNIT_RATE) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE) AS SUM_UNIT_RATE,',
'sum(CIR_AMOUNT) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION) AS SUM_AMT,',
'sum(CIR_TAX_VALUE) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION) AS SUM_TAX_VALUE,',
'sum(CIR_IGST_AMOUNT) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION) AS SUM_IGST_AMT,',
'sum(CIR_GROSS_WT) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION) AS SUM_GROSS_WT,',
'sum(CIR_NET_WT) OVER(PARTITION BY cir_display_name,CIR_HSN_CODE,CIR_UOM,CIR_IGST_RATE,CIR_DESCRIPTION) AS SUM_NET_WT',
'from V_CUSTOM_INVOICE_REPORT',
'where cir_enq_id = :P65_CIR_ENQ_ID',
'and cir_display_name is not null',
'--and CIR_MANUAL_GRP_PRODUCT is null',
'and cir_category != ''GDH''',
')',
'where rnk = 1            ',
'          ) b',
'    ON (a.cir_display_name = b.cir_display_name',
'        and a.CIR_DESCRIPTION = b.CIR_DESCRIPTION    --Added by Rahul on 23082019',
'        and a.cir_enq_id = :P65_CIR_ENQ_ID',
'        and a.cir_category = ''GDH''',
'       )',
'    WHEN MATCHED THEN',
'      UPDATE SET',
'        CIR_QTY       = b.SUM_QTY,',
'        CIR_UNIT_RATE = b.SUM_UNIT_RATE,',
'        CIR_AMOUNT = b.SUM_AMT,',
'        CIR_TAX_VALUE = b.SUM_TAX_VALUE,',
'        CIR_IGST_AMOUNT = b.SUM_IGST_AMT,',
'        CIR_GROSS_WT = b.SUM_GROSS_WT,',
'        CIR_NET_WT = b.SUM_NET_WT,',
'        CIR_DISPLAY_ORDER = b.CIR_DISPLAY_ORDER,',
'        CIR_GROUP = b.CIR_GROUP',
'      WHERE a.cir_enq_id = :P65_CIR_ENQ_ID',
'        and a.cir_category = ''GDH''',
'        and a.cir_display_name = b.cir_display_name',
'        and a.CIR_DESCRIPTION = b.CIR_DESCRIPTION ',
'    WHEN NOT MATCHED THEN',
'      INSERT (cir_display_name,',
'              CIR_HSN_CODE,',
'              CIR_UOM,',
'              CIR_IGST_RATE,',
'              CIR_DESCRIPTION,',
'              CIR_QTY,       	',
'              CIR_UNIT_RATE, 	',
'              CIR_AMOUNT, 		',
'              CIR_TAX_VALUE, 	',
'              CIR_IGST_AMOUNT, ',
'              CIR_GROSS_WT, 	',
'              CIR_NET_WT,',
'              cir_category,',
'              CIR_ENQ_ID,',
'              CIR_DISPLAY_ORDER,',
'              CIR_GROUP',
'             )',
'      VALUES (b.cir_display_name,',
'              b.CIR_HSN_CODE,',
'              b.CIR_UOM,',
'              b.CIR_IGST_RATE,',
'              b.CIR_DESCRIPTION,',
'              b.SUM_QTY,       	',
'              b.SUM_UNIT_RATE, 	',
'              b.SUM_AMT, 		',
'              b.SUM_TAX_VALUE, 	',
'              b.SUM_IGST_AMT, ',
'              b.SUM_GROSS_WT, 	',
'              b.SUM_NET_WT,',
'              ''GDH'',',
'              :P65_CIR_ENQ_ID,',
'              b.CIR_DISPLAY_ORDER,',
'              b.CIR_GROUP);',
'  ',
'  ',
'delete from V_CUSTOM_INVOICE_REPORT a',
'where a.cir_enq_id = :P65_CIR_ENQ_ID',
'and a.cir_category = ''GDH''',
'and not exists (',
'                    select 1 ',
'                    from V_CUSTOM_INVOICE_REPORT b',
'                    where a.cir_enq_id = b.cir_enq_id',
'                    and b.CIR_CATEGORY = ''GD''',
'                    and upper(b.CIR_DISPLAY_NAME) = upper(a.CIR_DISPLAY_NAME)',
'                    and b.CIR_DESCRIPTION = a.CIR_DESCRIPTION --Added by Rahul on 23082019',
'                );             ',
'              ',
'exception when others then',
'        null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to Process Grouping Information'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(124831033882939849)
,p_process_when_type=>'NEVER'
,p_internal_uid=>3143121993586084283
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3042999373530138591)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate CIR - GD, GDH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_success_failure VARCHAR2(10);',
'v_error_msg       VARCHAR2(4000); ',
'BEGIN',
'',
'    PKG_CUSTOM_INVOICE.populate_cir_gd (:P65_CIR_ENQ_ID,v_success_failure,v_error_msg,:P65_CIR_ADDITIONAL_DETAILS);  --Added by Rahul on 08-May-24 to pass additional details to display supplier details',
'	',
'	PKG_CUSTOM_INVOICE.populate_cir_gdh (:P65_CIR_ENQ_ID,v_success_failure,v_error_msg);',
'    ',
'    PKG_CUSTOM_INVOICE.populate_cir_summary (:P65_CIR_ENQ_ID,v_success_failure,v_error_msg,:P65_CIR_ADDITIONAL_DETAILS);  --Added by Rahul on 16-Jan-24 to pass additional details',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to Process Grouping Information'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(124831033882939849)
,p_internal_uid=>3043050523160967087
);
wwv_flow_imp.component_end;
end;
/
