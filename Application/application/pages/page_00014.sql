prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>'Product'
,p_alias=>'PRODUCT'
,p_step_title=>'Product'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(28033356856220805)
,p_name=>'Search Results'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PM_ID, ',
'--PM_NAME || '' '' ||   PM_PACKAGE_1 ||'' '' || PM_PRODUCT_UNIT  || '' x '' ||   PM_PACKAGE_2 || '' '' ||  PM_PACKAGE_UNIT PM_NAME,',
'PM_NAME || '' '' ||PM_PACKAGE',
'          || '' '' || pm_baby_box_unit || '' ''  || nvl2(PM_PACKAGE, '' x '',NULL)||PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT PM_NAME,',
'PM_MANUFAC_ID,',
'SUPM_NAME,',
'PM_CATEGORY,',
'pc_name,',
'PM_ALIAS,',
'PM_UOM,',
'PM_LENGTH,',
'PM_BREADTH,',
'PM_HEIGHT,',
'PM_CUBIC_SPACE,',
'PM_NET_WEIGHT,',
'PM_GROSS_WEIGHT,',
'/*PM_PACKAGE_1,',
'PM_PACKAGE_2,',
'PM_PACKAGE_UNIT,',
'PM_STW_20,',
'PM_STW_40,',
'PM_STW_40HC,',
'PM_STW_RND_20,',
'PM_STW_RND_40,',
'PM_STW_RND_40HC,*/',
'PM_HSN_CODE PM_HS_CODE,',
'PM_MEIS_CODE,',
'PM_MEIS_DESC,',
'PM_VERIFIED,',
'PM_BRAND,',
''''' "Copy",',
'nvl(PM_ACTIVE,''Y'') PM_ACTIVE',
'from V_PRODUCT_MASTER',
'    ,V_SUPPLIER_MASTER',
'    ,V_PRODUCT_CATEGORY',
'where pm_manufac_id = supm_id    ',
'and SUPM_SUPPLIER_TYPE = ''MANUFACTURER''',
'and pm_category = pc_id'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28035298666220822)
,p_query_column_id=>1
,p_column_alias=>'PM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Pm Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28035742621220822)
,p_query_column_id=>2
,p_column_alias=>'PM_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Pm Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28036140709220823)
,p_query_column_id=>3
,p_column_alias=>'PM_MANUFAC_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Pm Manufac Id'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28036499584220823)
,p_query_column_id=>4
,p_column_alias=>'SUPM_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Supm Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28036911819220823)
,p_query_column_id=>5
,p_column_alias=>'PM_CATEGORY'
,p_column_display_sequence=>5
,p_column_heading=>'Pm Category'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28037377647220823)
,p_query_column_id=>6
,p_column_alias=>'PC_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Pc Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28037746138220824)
,p_query_column_id=>7
,p_column_alias=>'PM_ALIAS'
,p_column_display_sequence=>7
,p_column_heading=>'Pm Alias'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28038173828220824)
,p_query_column_id=>8
,p_column_alias=>'PM_UOM'
,p_column_display_sequence=>8
,p_column_heading=>'Pm Uom'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28038548906220824)
,p_query_column_id=>9
,p_column_alias=>'PM_LENGTH'
,p_column_display_sequence=>9
,p_column_heading=>'Pm Length'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28038921484220824)
,p_query_column_id=>10
,p_column_alias=>'PM_BREADTH'
,p_column_display_sequence=>10
,p_column_heading=>'Pm Breadth'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28039310496220825)
,p_query_column_id=>11
,p_column_alias=>'PM_HEIGHT'
,p_column_display_sequence=>11
,p_column_heading=>'Pm Height'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28039778678220825)
,p_query_column_id=>12
,p_column_alias=>'PM_CUBIC_SPACE'
,p_column_display_sequence=>12
,p_column_heading=>'Pm Cubic Space'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28040177997220825)
,p_query_column_id=>13
,p_column_alias=>'PM_NET_WEIGHT'
,p_column_display_sequence=>13
,p_column_heading=>'Pm Net Weight'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28040530128220825)
,p_query_column_id=>14
,p_column_alias=>'PM_GROSS_WEIGHT'
,p_column_display_sequence=>14
,p_column_heading=>'Pm Gross Weight'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28040972964220826)
,p_query_column_id=>15
,p_column_alias=>'PM_HS_CODE'
,p_column_display_sequence=>15
,p_column_heading=>'Pm Hs Code'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28041317189220826)
,p_query_column_id=>16
,p_column_alias=>'PM_MEIS_CODE'
,p_column_display_sequence=>16
,p_column_heading=>'Pm Meis Code'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28041728819220826)
,p_query_column_id=>17
,p_column_alias=>'PM_MEIS_DESC'
,p_column_display_sequence=>17
,p_column_heading=>'Pm Meis Desc'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28042181923220826)
,p_query_column_id=>18
,p_column_alias=>'PM_VERIFIED'
,p_column_display_sequence=>18
,p_column_heading=>'Pm Verified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28042576322220827)
,p_query_column_id=>19
,p_column_alias=>'PM_BRAND'
,p_column_display_sequence=>19
,p_column_heading=>'Pm Brand'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28042911235220827)
,p_query_column_id=>20
,p_column_alias=>'Copy'
,p_column_display_sequence=>20
,p_column_heading=>'Copy'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28043318706220827)
,p_query_column_id=>21
,p_column_alias=>'PM_ACTIVE'
,p_column_display_sequence=>21
,p_column_heading=>'Pm Active'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28033431245220805)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(28033356856220805)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'show_charts', 'N',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28034243512220809)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28034725241220809)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28034243512220809)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RR,14::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28033904995220808)
,p_name=>'P14_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28033431245220805)
,p_prompt=>'Search'
,p_source=>'PM_NAME,SUPM_NAME,PC_NAME,PM_ALIAS,PM_UOM,PM_HS_CODE,PM_MEIS_CODE,PM_MEIS_DESC,PM_VERIFIED,PM_BRAND'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28048560214234090)
,p_name=>'P14_BRAND'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28033431245220805)
,p_prompt=>'Brand'
,p_source=>'PM_BRAND'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_BRAND'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT PM_BRAND D, PM_BRAND R',
'FROM V_PRODUCT_MASTER',
'WHERE PM_BRAND IS NOT NULL',
'ORDER BY 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28048633818234091)
,p_name=>'P14_MANUFACTURER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(28033431245220805)
,p_prompt=>'Manufacturer'
,p_source=>'PM_MANUFAC_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MANUFACTURER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supm_name as d,',
'       supm_id as r',
'  from V_SUPPLIER_MASTER',
' where nvl(supm_active,''Y'') = ''Y''',
'   and supm_supplier_type = ''MANUFACTURER''',
' order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp.component_end;
end;
/
