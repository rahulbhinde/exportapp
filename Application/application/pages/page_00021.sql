prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_name=>'Add Products'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Products'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-table tr.selected td {',
'    background-color: #2d7bbb;',
'    color: #fff;',
'}',
'.a-IRR-table tr.selected:hover td {',
'    background-color: #399bea;',
'    color: #fff;',
'}',
'/*Added for Get Ordered/All Products button alignment next to IR Search button*/',
'.a-IRR-toolbar {',
'  display: flex;',
'}',
'',
'.a-IRR-buttons {',
'  display: flex;',
'  flex-grow: 1;',
'  justify-content: flex-start;',
'}'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script src="#APP_IMAGES#jquery-migrate-3.0.0.min.js" type="text/javascript"></script>',
'--------',
'Changed the Enable Page Duplicate Submission option to No-Prevent by Rahul on 07-Mar-2022'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68075924354552420)
,p_plug_name=>'Select Costing Type for the Product(s)'
,p_icon_css_classes=>'fa-cart-plus'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--customIcons:t-Alert--success'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If you click on "Customer Level" then all the selected Product(s) which are shipped before will be added with the latest costing provided to the customer.',
'<br>',
'If you click on "System Level" then all the selected Product(s) which are shipped before will be added with the latest costing irrespective of the customer.'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(72657029119483995)
,p_plug_name=>'Selected Product(s) Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_1'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'	c001 PM_ID,',
'	c002 PM_NAME,',
'	c003 PM_MANUFAC_ID,',
'	c004 PM_CATEGORY,',
'	c005 PM_ALIAS,',
'	c006 PM_UOM,',
'	c007 PM_LENGTH,',
'	c008 PM_BREADTH,',
'	c009 PM_HEIGHT,',
'	c010 PM_NET_WEIGHT,',
'	c011 PM_GROSS_WEIGHT,',
'	c012 PM_BRAND',
'	from APEX_COLLECTIONS col',
'	WHERE COLLECTION_NAME=''PRODUCTS_SEL'''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_plug_header=>'<center><b>List of Selected Product(s)</b></center>'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(72657108767483996)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>13456963448993208
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72657163876483997)
,p_db_column_name=>'PM_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72657261475483998)
,p_db_column_name=>'PM_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72657381863483999)
,p_db_column_name=>'PM_MANUFAC_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Manufac Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72657521151484000)
,p_db_column_name=>'PM_CATEGORY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72657582719484001)
,p_db_column_name=>'PM_ALIAS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Alias'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72657743017484002)
,p_db_column_name=>'PM_UOM'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'UOM'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72657799647484003)
,p_db_column_name=>'PM_LENGTH'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Length'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72657872696484004)
,p_db_column_name=>'PM_BREADTH'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Breadth'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72658018747484005)
,p_db_column_name=>'PM_HEIGHT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Height'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72658062041484006)
,p_db_column_name=>'PM_NET_WEIGHT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Net Weight'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72658177525484007)
,p_db_column_name=>'PM_GROSS_WEIGHT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Gross Weight'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(72658306628484008)
,p_db_column_name=>'PM_BRAND'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(73202538204016318)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'140024'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PM_BRAND:PM_NAME:PM_UOM:PM_LENGTH:PM_BREADTH:PM_HEIGHT:PM_NET_WEIGHT:PM_GROSS_WEIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(163224828553569938)
,p_plug_name=>'Products'
,p_region_name=>'myreport'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>5
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'case when instr(:P21_SELECTED_PRODUCTS, ''|'' || c001 || ''|'') > 0 then ',
'      ''checked'' ',
'    else ',
'      '''' ',
'    end as selected,',
'SEQ_ID,',
'c001 PM_ID,',
'c002 PM_NAME,',
'--c003 PM_MANUFAC_ID,',
'c004 PM_CATEGORY,',
'c005 pc_name,',
'c006 PM_ALIAS,',
'c007 PM_UOM,',
'c008 PM_LENGTH,',
'c009 PM_BREADTH,',
'c010 PM_HEIGHT,',
'c011 PM_NET_WEIGHT,',
'c012 PM_GROSS_WEIGHT,',
'c013 PM_BRAND,',
'c014 PM_CREATED_BY,',
'to_date(c015,''DD-MON-RRRR'') PM_CREATED_ON,',
'c016 PM_UPDATED_BY,',
'to_date(c017,''DD-MON-RRRR'')  PM_UPDATED_ON,',
''''' Del,',
'case when instr(:P21_SELECTED_PRODUCTS, ''|'' || c001 || ''|'') > 0 then ',
'      ''#0000FF'' ',
'    else ',
'      ''#000000'' ',
'    end  as color_status',
'from APEX_COLLECTIONS col',
'WHERE COLLECTION_NAME=''PRODUCTS''',
'ORDER BY to_number(PM_ID) desc--,PM_BRAND, PM_NAME'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P21_SELECTED_PRODUCTS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(163225097396569948)
,p_name=>'Products'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No Products for the selected Manufacturer.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'BHINDE.RAHUL@GMAIL.COM'
,p_internal_uid=>11070519277371540
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163225612601569953)
,p_db_column_name=>'PM_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product'
,p_column_html_expression=>'<span style="color:#COLOR_STATUS#">#PM_NAME#</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163230070267569956)
,p_db_column_name=>'PM_ALIAS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Alias'
,p_column_html_expression=>'<span style="color:#COLOR_STATUS#">#PM_ALIAS#</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163227630237569954)
,p_db_column_name=>'PM_UOM'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'UOM'
,p_column_html_expression=>'<span style="color:#COLOR_STATUS#">#PM_UOM#</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163228840193569955)
,p_db_column_name=>'PC_NAME'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Category'
,p_column_html_expression=>'<span style="color:#COLOR_STATUS#">#PC_NAME#</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163241592617894486)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163242318074894488)
,p_db_column_name=>'PM_ID'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'<center><input type="checkbox" value="all"></center>'
,p_column_html_expression=>'<input type="checkbox" #SELECTED# value="#PM_ID#">'
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
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163243678640894489)
,p_db_column_name=>'PM_CATEGORY'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Category'
,p_column_html_expression=>'<span style="color:#COLOR_STATUS#">#PM_CATEGORY#</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163244470662894489)
,p_db_column_name=>'PM_LENGTH'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Length'
,p_column_html_expression=>'<span style="color:#COLOR_STATUS#">#PM_LENGTH#</span>'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163245135391894493)
,p_db_column_name=>'PM_BREADTH'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Breadth'
,p_column_html_expression=>'<span style="color:#COLOR_STATUS#">#PM_BREADTH#</span>'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163245871119894493)
,p_db_column_name=>'PM_HEIGHT'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Height'
,p_column_html_expression=>'<span style="color:#COLOR_STATUS#">#PM_HEIGHT#</span>'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163246535622894494)
,p_db_column_name=>'PM_NET_WEIGHT'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Net Wt.'
,p_column_html_expression=>'<span style="color:#COLOR_STATUS#">#PM_NET_WEIGHT#</span>'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163247216156894495)
,p_db_column_name=>'PM_GROSS_WEIGHT'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Gross Wt.'
,p_column_html_expression=>'<span style="color:#COLOR_STATUS#">#PM_GROSS_WEIGHT#</span>'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163247952246894495)
,p_db_column_name=>'DEL'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Del'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163274703907526896)
,p_db_column_name=>'SELECTED'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Selected'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68075650556552418)
,p_db_column_name=>'PM_BRAND'
,p_display_order=>94
,p_column_identifier=>'CG'
,p_column_label=>'Brand'
,p_column_html_expression=>'<span style="color:#COLOR_STATUS#">#PM_BRAND#</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71784585378130727)
,p_db_column_name=>'COLOR_STATUS'
,p_display_order=>104
,p_column_identifier=>'CH'
,p_column_label=>'Color Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42739797876603138)
,p_db_column_name=>'PM_CREATED_BY'
,p_display_order=>114
,p_column_identifier=>'CI'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(42739609416603136)
,p_db_column_name=>'PM_UPDATED_BY'
,p_display_order=>134
,p_column_identifier=>'CK'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2012351805367739773)
,p_db_column_name=>'PM_CREATED_ON'
,p_display_order=>154
,p_column_identifier=>'CM'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2012351658138739772)
,p_db_column_name=>'PM_UPDATED_ON'
,p_display_order=>164
,p_column_identifier=>'CN'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(163232471346569959)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'110779'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PM_ID:PM_BRAND:PM_NAME:PM_UOM:PM_LENGTH:PM_BREADTH:PM_HEIGHT:PM_GROSS_WEIGHT:PM_NET_WEIGHT:PM_CREATED_ON:PM_CREATED_BY:PM_UPDATED_ON:PM_UPDATED_BY:'
,p_sort_column_1=>'PM_UPDATED_ON'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68076004642552421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(72657029119483995)
,p_button_name=>'CUSTOMER_LEVEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Customer Level'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-users'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(72656468193483990)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(163224828553569938)
,p_button_name=>'ORDERED_PRODUCTS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'&P21_BTN_LABEL.'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68076144744552422)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(72657029119483995)
,p_button_name=>'SYSTEM_LEVEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'System Level'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-gear'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68077227285552433)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(72657029119483995)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163236572117681711)
,p_button_sequence=>35
,p_button_plug_id=>wwv_flow_imp.id(163224828553569938)
,p_button_name=>'ADD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Products'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71782325777130704)
,p_name=>'P21_CUST_ID'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(163224828553569938)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72656360195483989)
,p_name=>'P21_BTN_LABEL'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_imp.id(163224828553569938)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(163236312934672419)
,p_name=>'P21_ENQ_ID'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(163224828553569938)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(163270183090506400)
,p_name=>'P21_SELECTED_PRODUCTS'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(163224828553569938)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460412685727736316)
,p_name=>'P21_MASTER_LIST_ID'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_imp.id(163224828553569938)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(460412740581736317)
,p_name=>'P21_CALLING_FROM'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(163224828553569938)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163285601961769110)
,p_name=>'selectProducts'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(163224828553569938)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163286047747769119)
,p_event_id=>wwv_flow_imp.id(163285601961769110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var cb$, checked, allRows$,',
'    sel$ = $("#P21_SELECTED_PRODUCTS"),',
'    event = this.browserEvent,',
'    target$ = $(event.target),',
'    th$ = target$.closest("th"),',
'    tr$ = target$.closest("tr");',
'',
'if (th$.length) {',
'    // the click was on the "select all"',
'    // checkbox or checkbox cell',
'    cb$ = th$.find("input");',
'    if (cb$.length && cb$.val() === "all") {',
'        checked = cb$[0].checked;',
'        if (target$[0].nodeName !== ''INPUT'') {',
'            // only do this if the click was not on the checkbox',
'            // because the checkbox will check itself',
'            checked = cb$[0].checked = !checked;',
'        }',
'        if (sel$.val() === "") {',
'            sel$.val("|");',
'        }',
'        $("#myreport").find("td input").each(function() {',
'            this.checked = checked;',
'            // give a visual style to the [un]selected row',
'            $(this).closest("tr").toggleClass("selected", checked);',
'            // update the hidden selected item',
'            sel$.val(sel$.val().replace("|" + this.value + "|", "|"));',
'            if (checked) {',
'                sel$.val(sel$.val() + this.value + "|");',
'            }',
'        });',
'    }',
'         if (sel$.val() == "|") {',
'            sel$.val("");',
'        }',
'} else if (tr$.length) {',
'    // the click was on some other data row',
'    cb$ = tr$.find("td").first().find("input");',
'    checked = cb$[0].checked;',
'    if (target$[0].nodeName !== ''INPUT'') {',
'        // only do this if the click was not on the checkbox',
'        // because the checkbox will check itself',
'        checked = cb$[0].checked = !checked;',
'    }',
'    // give a visual style to the [un]selected row',
'    tr$.toggleClass("selected", checked);',
'    // update the hidden selected item',
'    if (checked) {',
'        if (sel$.val() === "") {',
'            sel$.val("|");',
'        }',
'        sel$.val(sel$.val() + cb$.val() + "|");',
'    } else {',
'        sel$.val(sel$.val().replace("|" + cb$.val() + "|", "|"));        ',
'    }',
'    // update the select all checkbox state',
'    allRows$ = $("#myreport").find("td input");',
'    checked = (allRows$.length === allRows$.filter(":checked").length);',
'    $("#myreport").find("th input")[0].checked = checked;',
'     if (sel$.val() == "|") {',
'            sel$.val("");',
'        }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68076196920552423)
,p_name=>'clickAdd_Hide_IR_Show_Alert'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(163236572117681711)
,p_condition_element=>'P21_SELECTED_PRODUCTS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68076290802552424)
,p_event_id=>wwv_flow_imp.id(68076196920552423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68075924354552420)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68076485387552426)
,p_event_id=>wwv_flow_imp.id(68076196920552423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(163224828553569938)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72658481078484010)
,p_event_id=>wwv_flow_imp.id(68076196920552423)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72657029119483995)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72658558892484011)
,p_event_id=>wwv_flow_imp.id(68076196920552423)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''PRODUCTS_SEL'' ) ',
'	THEN',
'	APEX_COLLECTION.TRUNCATE_COLLECTION (p_collection_name => ''PRODUCTS_SEL'');',
'    APEX_COLLECTION.DELETE_COLLECTION(',
'        p_collection_name => ''PRODUCTS_SEL'');',
'	END IF;',
'END;',
'',
'DECLARE',
'  V_SEL_PRODUCTS VARCHAR2(4000):= ''('' || trim('','' from replace(:P21_SELECTED_PRODUCTS,''|'', '','')) || '')'';',
'  V_SQL_STMT VARCHAR2(4000);',
'BEGIN',
'    V_SQL_STMT := ''select PM_ID, ',
'		PM_NAME || '''' '''' ||PM_PACKAGE',
'		|| '''' '''' || pm_baby_box_unit || '''' ''''  || nvl2(PM_PACKAGE, '''' x '''',NULL)||PM_PACKAGE_1|| '''' '''' || PM_PRODUCT_UNIT || '''' x '''' || PM_PACKAGE_2',
'		|| '''' '''' || PM_PACKAGE_UNIT PM_NAME,',
'		PM_MANUFAC_ID,',
'		PM_CATEGORY,',
'		PM_ALIAS,',
'		PM_UOM,',
'		PM_LENGTH,',
'		PM_BREADTH,',
'		PM_HEIGHT,',
'		--PM_CUBIC_SPACE,',
'		PM_NET_WEIGHT,',
'		PM_GROSS_WEIGHT,',
'		PM_BRAND',
'		from V_PRODUCT_MASTER',
'				where PM_ID  IN ''|| V_SEL_PRODUCTS ||''',
'                ORDER BY PM_BRAND, PM_NAME'';',
'                ',
'                  APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY (',
'',
'        p_collection_name => ''PRODUCTS_SEL'', ',
'',
'        p_query => V_SQL_STMT,',
'',
'        p_generate_md5 => ''YES'');',
'',
'END;'))
,p_attribute_02=>'P21_SELECTED_PRODUCTS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72658710909484012)
,p_event_id=>wwv_flow_imp.id(68076196920552423)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72657029119483995)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71781333852130694)
,p_name=>'clickAdd_noProductSelected'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(163236572117681711)
,p_condition_element=>'P21_SELECTED_PRODUCTS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71781428784130695)
,p_event_id=>wwv_flow_imp.id(71781333852130694)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.alert(''Please select atleast one or more product(s) to be added to the enquiry.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68076681253552428)
,p_name=>'Hide_Alert'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68076785301552429)
,p_event_id=>wwv_flow_imp.id(68076681253552428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68075924354552420)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72658406319484009)
,p_event_id=>wwv_flow_imp.id(68076681253552428)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72657029119483995)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68077511467552436)
,p_name=>'clickBack_Show_IR_Hide_Alert'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68077227285552433)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68077593821552437)
,p_event_id=>wwv_flow_imp.id(68077511467552436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(163224828553569938)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68077710823552438)
,p_event_id=>wwv_flow_imp.id(68077511467552436)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68075924354552420)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72658750798484013)
,p_event_id=>wwv_flow_imp.id(68077511467552436)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(72657029119483995)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71782395357130705)
,p_name=>'onncheckGetOrderedProducts'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_REORDER_PRODUCTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71782481265130706)
,p_event_id=>wwv_flow_imp.id(71782395357130705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72656781868483993)
,p_name=>'onclickofGetOrderedProducts'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(72656468193483990)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72656881594483994)
,p_event_id=>wwv_flow_imp.id(72656781868483993)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_BTN_LABEL'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P21_BTN_LABEL") == "Get All Products")',
'{ ',
'  $s("P21_BTN_LABEL","Get Ordered Products");',
'  apex.submit();',
'}',
'else',
'{ ',
'  $s("P21_BTN_LABEL","Get All Products"); ',
'  apex.submit();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163236867059869748)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load_Product_Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''PRODUCTS'' ) ',
'	THEN',
'	APEX_COLLECTION.TRUNCATE_COLLECTION (p_collection_name => ''PRODUCTS'');',
'	END IF;',
'END;',
'',
'BEGIN',
'	for i in ( select PM_ID, ',
'				--PM_NAME || '' '' ||   PM_PACKAGE_1 ||'' '' || PM_PRODUCT_UNIT  || '' x '' ||   PM_PACKAGE_2 || '' '' ||  PM_PACKAGE_UNIT PM_NAME, ',
'             /* PM_NAME || '' '' ||   PM_PACKAGE',
'          || '' '' ||nvl2(PM_PACKAGE, '' x '',NULL)||PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT PM_NAME, */',
'              PM_NAME || '' '' ||PM_PACKAGE',
'          || '' '' || pm_baby_box_unit || '' ''  || nvl2(PM_PACKAGE, '' x '',NULL)||PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT PM_NAME,',
'				PM_MANUFAC_ID,   ',
'				PM_CATEGORY,',
'				pc_name,',
'				PM_ALIAS,',
'				PM_UOM,',
'				PM_LENGTH,',
'				PM_BREADTH,',
'				PM_HEIGHT,',
'				--PM_CUBIC_SPACE,',
'				PM_NET_WEIGHT,',
'				PM_GROSS_WEIGHT,',
'                PM_BRAND,',
'                PM_CREATED_BY,',
'                PM_CREATED_ON,',
'                PM_UPDATED_BY,',
'                PM_UPDATED_ON',
'				from V_PRODUCT_MASTER',
'					,V_PRODUCT_CATEGORY',
'				where pm_category = pc_id',
'				/*commented by Ranu on 251219 as BRAND LOV removed and added as Report column',
'              and ( DECODE(:P21_BRAND,''ALL'',''ALL'','''',''ALL'',NVL(PM_BRAND,''ALL'')) = nvl(:P21_BRAND,''ALL''))*/',
'              /*added below on 28Dec19 to fetch ordered products if label is ''Get All Products'' as when Get ordered product button is clicked its label is changed to Get All Products*/',
'              /*note condition is reverse*/',
'              and decode(:P21_BTN_LABEL,''Get All Products'',pm_id,-1) in (select distinct decode(:P21_BTN_LABEL,''Get All Products'', eod_product_id,-1)',
'                                                                    from V_ENQUIRIES_ORDERS_DETAILS',
'                                                                        ,V_ENQUIRIES_ORDERS_MST',
'                                                                    where eod_enq_id = eom_enq_id ',
'                                                                        and EOM_TYPE =  ''ORDER'' ',
'                                                                        and EOM_ENQ_STATUS =  ''AP''',
'                                                                        and EOM_CUSTOMER_ID =  :P21_CUST_ID',
'                                                                    union',
'                                                                    -- this is added to handle when data is not present for a customer',
'                                                                    select -1 from dual',
'                                                                    )',
'             ) loop',
'               ',
'',
'		IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''PRODUCTS'' ) THEN',
'		--DEBUG_LOG_PROC (:P141_TRANS_ID || '':P141_TRANS_ID'');',
'				APEX_COLLECTION.ADD_MEMBER(',
'				p_collection_name =>''PRODUCTS'',',
'				p_c001 =>i.PM_ID,',
'				p_c002 =>i.PM_NAME,',
'				p_c003 =>i.PM_MANUFAC_ID,',
'				p_c004 =>i.PM_CATEGORY,',
'				p_c005 =>i.pc_name,',
'				p_c006 =>i.PM_ALIAS,',
'				p_c007 =>i.PM_UOM,',
'				p_c008 =>i.PM_LENGTH,',
'				p_c009 =>i.PM_BREADTH,',
'				p_c010 =>i.PM_HEIGHT,',
'				p_c011 =>i.PM_NET_WEIGHT,',
'				p_c012 =>i.PM_GROSS_WEIGHT,',
'                p_c013 =>i.PM_BRAND,',
'                p_c014 =>i.PM_CREATED_BY,',
'                p_c015 =>i.PM_CREATED_ON,',
'                p_c016 =>i.PM_UPDATED_BY,',
'                p_c017 =>i.PM_UPDATED_ON',
'				);',
'',
'		ELSE       ',
'				APEX_COLLECTION.CREATE_COLLECTION(p_collection_name =>''PRODUCTS'');',
'				APEX_COLLECTION.ADD_MEMBER(',
'				p_collection_name =>''PRODUCTS'',',
'				p_c001 =>i.PM_ID,',
'				p_c002 =>i.PM_NAME,',
'				p_c003 =>i.PM_MANUFAC_ID,',
'				p_c004 =>i.PM_CATEGORY,',
'				p_c005 =>i.pc_name,',
'				p_c006 =>i.PM_ALIAS,',
'				p_c007 =>i.PM_UOM,',
'				p_c008 =>i.PM_LENGTH,',
'				p_c009 =>i.PM_BREADTH,',
'				p_c010 =>i.PM_HEIGHT,',
'				p_c011 =>i.PM_NET_WEIGHT,',
'				p_c012 =>i.PM_GROSS_WEIGHT,',
'                p_c013 =>i.PM_BRAND,',
'                p_c014 =>i.PM_CREATED_BY,',
'                p_c015 =>i.PM_CREATED_ON,',
'                p_c016 =>i.PM_UPDATED_BY,',
'                p_c017 =>i.PM_UPDATED_ON',
'				);',
'		END IF;',
'    END LOOP;	',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>163288016690698244
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163343175505309289)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert_products'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	v_product_id varchar2(4000);',
'	v_insert_stmt varchar2(4000);',
'    v_insert_stmt1 varchar2(4000);',
'	v_error_msg varchar2(4000);',
'	v_ord_id number;',
'     v_BANK_COMM_PERC  number;',
'	 v_INCOME_TAX_PERC number;',
'	 v_EOD_DUTY_PERC number;',
'	 v_ECGC_PERC number;',
'	 v_INSURANCE_PERC number;',
'     v_fob number;',
'     v_success_failure varchar2(4000);',
'	 ',
'	 CURSOR cur_ord_prod( var_prod_id VARCHAR2) IS ',
'	 SELECT nvl(MAX(eom_ord_id),0) cur_ord_id, eod_product_id cur_prod_id',
'		--  INTO v_ord_id',
'		  FROM V_ENQUIRIES_ORDERS_MST, V_ENQUIRIES_ORDERS_DETAILS',
'		  WHERE eom_enq_id = eod_enq_id',
'		  AND eom_type       = ''ORDER''',
'		  AND eom_order_status != ''RJ''',
'		  AND eom_customer_id  = :P21_CUST_ID',
'		  and eod_product_id in (select REGEXP_SUBSTR (var_prod_id, ''[^,]+'', 1, level)',
'                         from dual',
'                         connect by level <= length(regexp_replace(var_prod_id,''[^,]*''))+1)',
'		  group by eod_product_id;',
'BEGIN',
'',
'    begin',
'      select to_number(st_code)  into v_fob',
'      from V_SETUP_TABLE',
'      where st_type=''FOB''',
'    and st_name = ''Total'';',
'     -- return v_fob;',
'    exception when others then',
'        v_fob := 0;',
'     --return 0;',
'    end;',
'',
' begin',
'         select ST_CODE',
'        into v_BANK_COMM_PERC',
'        from V_SETUP_TABLE',
'        where ST_TYPE = ''PROD_CALC_MST''',
'        AND ST_NAME IN (''BANK_COMM'');',
'    --return v_BANK_COMM_PERC;',
'    exception when others then        ',
'    v_BANK_COMM_PERC := 0;',
'    --return v_BANK_COMM_PERC;',
'    end;    ',
'',
'  begin',
'       select ST_CODE',
'      into v_INCOME_TAX_PERC',
'      from V_SETUP_TABLE',
'      where ST_TYPE = ''PROD_CALC_MST''',
'      AND ST_NAME IN (''INCOME_TAX_PERC'');',
'    --return  v_INCOME_TAX_PERC;',
'    exception when others then        ',
'      v_INCOME_TAX_PERC := 0;',
'      --return v_INCOME_TAX_PERC;',
' end;     ',
' ',
'	 begin',
'	   select ST_CODE',
'	  into v_EOD_DUTY_PERC',
'	  from V_SETUP_TABLE',
'	  where ST_TYPE = ''PROD_CALC_MST''',
'	  AND ST_NAME = ''DUTY_PERC'';',
'',
'	--return v_EOD_DUTY_PERC;',
'',
'	exception when others then        ',
'	  v_EOD_DUTY_PERC := 0;',
'	end;   ',
' ',
' begin',
'        select ST_CODE',
'        into v_ECGC_PERC',
'        from V_SETUP_TABLE',
'        where ST_TYPE = ''PROD_CALC_MST''',
'        AND ST_NAME IN (''ECGC'');',
'    --return v_ECGC_PERC;',
' exception when others then        ',
'        v_ECGC_PERC := 0;',
'        --return v_ECGC_PERC;',
' end;',
' ',
'  begin',
'        select ST_CODE',
'        into v_INSURANCE_PERC',
'        from V_SETUP_TABLE',
'        where ST_TYPE = ''PROD_CALC_MST''',
'        AND ST_NAME IN (''INSURANCE_PERC'');',
'    --return v_INSURANCE_PERC;',
' exception when others then        ',
'        v_INSURANCE_PERC := 0;',
'        --return v_INSURANCE_PERC;',
' end;',
' ',
'insert into error_log (el_text) values ('':P21_SELECTED_PRODUCTS - '' || :P21_SELECTED_PRODUCTS);',
'if :P21_SELECTED_PRODUCTS is not null and :P21_SELECTED_PRODUCTS != ''|'' then',
'	 	',
'	v_product_id := ''('' || trim('','' from replace(:P21_SELECTED_PRODUCTS,''|'', '','')) || '')'';',
'	',
'	insert into error_log (el_text) values (''inside of if block of EOD insert - '' || v_product_id);',
' ',
'	dbms_output.put_line (''inside of if block of EOD insert - '' || v_product_id);',
' -- ranu IF :P21_LATEST_COSTING = ''CUSTOMER'' THEN',
' insert into error_log (el_text) values ('':REQUEST - '' || :REQUEST);',
'',
' IF :P21_CALLING_FROM = ''ENQUIRY'' THEN',
' ',
'	IF :REQUEST = ''CUSTOMER_LEVEL'' THEN',
'	  insert into error_log (el_text) values (''inside if :REQUEST - '' || :REQUEST);',
'	  ',
'	 /* SELECT nvl(MAX(eom_ord_id),0)',
'	  INTO v_ord_id',
'	  FROM V_ENQUIRIES_ORDERS_MST',
'	  WHERE eom_type       = ''ORDER''',
'	  AND eom_order_status = ''IP''',
'	  AND eom_customer_id  = :P21_CUST_ID;*/',
'   /*  Commented by Rahul on 18-Oct-2017 to use page hidden item of customer id which is passed in the link',
'   (SELECT eom_customer_id',
'    FROM V_ENQUIRIES_ORDERS_MST',
'    WHERE eom_enq_id = :P21_ENQ_ID',
'    );',
'	*/',
' --Added by Rahul on 18-OCT-2020 IF condition of Calling From to utilize same page from Enquiries and Master List screens to add products  ',
'		for i in cur_ord_prod(trim('','' from replace(:P21_SELECTED_PRODUCTS,''|'', '',''))) loop',
' ',
' ',
' ',
'	v_insert_stmt := ''insert into V_ENQUIRIES_ORDERS_DETAILS',
'	 (',
'	  EOD_ID,',
'	  EOD_ENQ_ID,',
'      EOD_PRODUCT_ID,',
'      EOD_MANUFAC_ID,',
'	  EOD_MRP,',
'	  EOD_TRADE_PRICE,    ',
'	  EOD_PURCHASE_AMT,',
'	  EOD_SCHEME_PERC,',
'	  EOD_SCHEME_AMT,',
'	  EOD_DISCOUNT_PERC,',
'	  EOD_DISCOUNT_AMT,',
'	  EOD_GST_PERC,',
'	  EOD_GST_AMT,',
'      EOD_SGST_PERC,',
'      EOD_CGST_PERC,',
'      EOD_TOTAL_GST_PERC,',
'	  EOD_TRANS_CHARGES,',
'	  EOD_BAGS_CTNS,',
'	  EOD_RECOV_ON_FRT,',
'	  EOD_REPACKING,',
'	  EOD_EXTRA,',
'	  EOD_NET_PURCHASE_VAL,',
'	  EOD_VOL_FOB_AMT,',
'	  EOD_VOL_FOB_EXP,',
'	  EOD_PROFIT_PERC,',
'	  EOD_PROFIT_AMT,',
'	  EOD_INCOME_TAX_PERC,',
'	  EOD_INCOME_TAX,',
'	  EOD_DUTY_PERC,',
'	  EOD_DUTY_AMT,',
'	  EOD_ECGC_PERC,',
'	  EOD_ECGC,',
'	  EOD_BANK_COMM_PERC,',
'	  EOD_BANK_COMM,',
'	  EOD_INTEREST_PERC,',
'	  EOD_INTEREST_AMT,',
'	  EOD_EXCHANGE_RATE,',
'	  EOD_FOB_RS,',
'	  EOD_FOB_DOLL,',
'	  EOD_COMMISSION_PERC,',
'	  EOD_FOBC_AMT,',
'	  EOD_FOB_DOLL_RND,',
'	  EOD_OCEAN_FRT,',
'	  EOD_FRT_PER_CTN,',
'	  EOD_CANDF_AMT,',
'	  EOD_CANDFC_AMT,',
'	  EOD_CANDF_AMT_RND,',
'	  EOD_INSURANCE_PERC,',
'	  EOD_INSURANCE_AMT,',
'	  EOD_CIF_AMT,',
'	  EOD_CIFC_AMT,',
'	  EOD_CIF_AMT_RND,',
'	  EOD_CNI_AMT,',
'	  EOD_CNIC_AMT,',
'	  EOD_CNI_AMT_RND,',
'	  EOD_COSTING_TYPE,',
'      EOD_STW_RND_20,',
'	  EOD_HSN_CODE,',
'	  EOD_COSTING_REMARKS,',
'      EOD_CIR_DISPLAY_NAME,',
'	  EOD_GROSS_WT,',
'	  EOD_NET_WT,',
'      EOD_LENGTH,		',
'      EOD_BREADTH,		',
'      EOD_HEIGHT,		',
'      EOD_CUBIC_SPACE,',
'	  EOD_STW_RND_40,		--Added by Rahul on 27-Jun-24 for Satkamal Costing Changes',
'	  EOD_STW_RND_40HC,		--Added by Rahul on 27-Jun-24 for Satkamal Costing Changes',
'      EOD_GODOWN_CHARGES, 	 --Fields from gowdown charges to calc amt unitwise rnd added by Rahul on 11-Sep-24',
'      EOD_TESTING_CHARGES, 		',
'      EOD_CALC_AMT_UNITWISE, 	',
'      EOD_COSTING_UNIT,',
'      EOD_CALC_AMT_UNITWISE_RND',
'     ,EOD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
'     ,EOD_PROFIT_PERC_GST_PURCHASE  --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
' ',
')'';',
'   v_insert_stmt1 := '' (',
'    SELECT ',
'	  seq_eod_id.nextval,''||',
'	  :P21_ENQ_ID ||'',',
'      EOD_PRODUCT_ID,',
'      EOD_MANUFAC_ID,',
'	  EOD_MRP,',
'	  EOD_TRADE_PRICE,    ',
'	  EOD_PURCHASE_AMT,',
'	  EOD_SCHEME_PERC,',
'	  EOD_SCHEME_AMT,',
'	  EOD_DISCOUNT_PERC,',
'	  EOD_DISCOUNT_AMT,',
'	  EOD_GST_PERC,',
'	  EOD_GST_AMT,',
'      EOD_SGST_PERC,',
'      EOD_CGST_PERC,',
'      EOD_TOTAL_GST_PERC,',
'	  EOD_TRANS_CHARGES,',
'	  EOD_BAGS_CTNS,',
'	  EOD_RECOV_ON_FRT,',
'	  EOD_REPACKING,',
'	  EOD_EXTRA,',
'	  EOD_NET_PURCHASE_VAL,',
'	  case when nvl(EOD_VOL_FOB_AMT,0) = 0 then '' || v_fob || '' else EOD_VOL_FOB_AMT end EOD_VOL_FOB_AMT,',
'	  EOD_VOL_FOB_EXP,',
'	  EOD_PROFIT_PERC,',
'	  EOD_PROFIT_AMT,',
'	  case when nvl(EOD_INCOME_TAX_PERC,0) = 0 then '' || v_INCOME_TAX_PERC || '' else EOD_INCOME_TAX_PERC end  EOD_INCOME_TAX_PERC,',
'	  EOD_INCOME_TAX,',
'	  case when nvl(EOD_DUTY_PERC,0) = 0 then '' || v_EOD_DUTY_PERC || '' else EOD_DUTY_PERC end  EOD_DUTY_PERC,',
'	  EOD_DUTY_AMT,',
'	  case when nvl(EOD_ECGC_PERC,0) = 0 then '' || v_ECGC_PERC || '' else EOD_ECGC_PERC end EOD_ECGC_PERC,',
'	  EOD_ECGC,',
'	  case when nvl(EOD_BANK_COMM_PERC,0) = 0 then '' || v_BANK_COMM_PERC || '' else EOD_BANK_COMM_PERC end  EOD_BANK_COMM_PERC,',
'	  EOD_BANK_COMM,',
'	  EOD_INTEREST_PERC,',
'	  EOD_INTEREST_AMT,',
'	  EOD_EXCHANGE_RATE,',
'	  EOD_FOB_RS,',
'	  EOD_FOB_DOLL,',
'	  EOD_COMMISSION_PERC,',
'	  EOD_FOBC_AMT,',
'	  EOD_FOB_DOLL_RND,',
'	  EOD_OCEAN_FRT,',
'	  EOD_FRT_PER_CTN,',
'	  EOD_CANDF_AMT,',
'	  EOD_CANDFC_AMT,',
'	  EOD_CANDF_AMT_RND,',
'	  case when nvl(EOD_INSURANCE_PERC,0) = 0 then '' || v_INSURANCE_PERC || '' else EOD_INSURANCE_PERC end  EOD_INSURANCE_PERC,',
'	  EOD_INSURANCE_AMT,',
'	  EOD_CIF_AMT,',
'	  EOD_CIFC_AMT,',
'	  EOD_CIF_AMT_RND,',
'	  EOD_CNI_AMT,',
'	  EOD_CNIC_AMT,',
'	  EOD_CNI_AMT_RND,',
'	  nvl(EOD_COSTING_TYPE,''''FOB''''),',
'      PM_STW_RND_20, 	---Ranu',
'	  EOD_HSN_CODE,',
'	  EOD_COSTING_REMARKS,',
'      EOD_CIR_DISPLAY_NAME,',
'	  --EOD_GROSS_WT,   Commented Gross and Net Wt by Rahul on 11-Sep-24 as we need to fetch latest weights from product master',
'	  --EOD_NET_WT,',
'      PM_GROSS_WEIGHT,      --Added Gross and Net Wt by Rahul on 11-Sep-24',
'      PM_NET_WEIGHT,',
'      PM_LENGTH,		---Ranu		',
'      PM_BREADTH,		---Ranu	',
'      PM_HEIGHT,		---Ranu	',
'      PM_CUBIC_SPACE, 	---Ranu',
'	  PM_STW_RND_40,    --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes',
'	  PM_STW_RND_40HC,  --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes',
'      PM_GODOWN_CHARGES, 	 --Fields from gowdown charges to calc amt unitwise rnd added by Rahul on 11-Sep-24',
'      PM_TESTING_CHARGES, 		',
'      PM_CALC_AMT_UNITWISE, 	',
'      PM_COSTING_UNIT,',
'      PM_CALC_AMT_UNITWISE_RND',
'     ,EOD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
'     ,EOD_PROFIT_PERC_GST_PURCHASE --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
'      from V_ENQUIRIES_ORDERS_MST, V_ENQUIRIES_ORDERS_DETAILS, V_PRODUCT_MASTER',
'	where eom_enq_id = eod_enq_id',
'	and eom_type = ''''ORDER''''',
'	and pm_id = eod_product_id',
'	and eom_ord_id = '' || i.cur_ord_id ||''',
'	and eod_product_id = '' || i.cur_prod_id ||''',
'		  )'';',
'	 ',
'	 --  insert into error_log (el_text) values (''v_insert_stmt latest order - '' || v_insert_stmt);',
'		-- dbms_output.put_line (''v_insert_stmt order - '' || v_insert_stmt);',
'	  ',
'		execute immediate v_insert_stmt || v_insert_stmt1;',
'	end loop;',
'	',
'	END IF; -- Latest Costing Customer Specific       ',
'        ',
'	   insert into error_log (el_text) values (''After insert of products in EOD from latest order'');',
'       ',
'  --Add NULL in manufac id in the below query so that when product is added for the first time it will be null and user can select vendor by Rahul on 15-Mar-2024',
'  ',
'	v_insert_stmt := ''insert into V_ENQUIRIES_ORDERS_DETAILS',
'	 (',
'	  EOD_ID,',
'	  EOD_ENQ_ID,',
'      EOD_PRODUCT_ID,',
'      EOD_MANUFAC_ID,',
'	  EOD_MRP,',
'	  EOD_TRADE_PRICE,    ',
'	  EOD_PURCHASE_AMT,',
'	  EOD_SCHEME_PERC,',
'	  EOD_SCHEME_AMT,',
'	  EOD_DISCOUNT_PERC,',
'	  EOD_DISCOUNT_AMT,',
'	  EOD_GST_PERC,',
'	  EOD_GST_AMT,',
'      EOD_SGST_PERC,',
'      EOD_CGST_PERC,',
'      EOD_TOTAL_GST_PERC,',
'	  EOD_TRANS_CHARGES,',
'	  EOD_BAGS_CTNS,',
'	  EOD_RECOV_ON_FRT,',
'	  EOD_REPACKING,',
'	  EOD_EXTRA,',
'	  EOD_NET_PURCHASE_VAL,',
'	  EOD_VOL_FOB_AMT,',
'	  EOD_VOL_FOB_EXP,',
'	  EOD_PROFIT_PERC,',
'	  EOD_PROFIT_AMT,',
'	  EOD_INCOME_TAX_PERC,',
'	  EOD_INCOME_TAX,',
'	  EOD_DUTY_PERC,',
'	  EOD_DUTY_AMT,',
'	  EOD_ECGC_PERC,',
'	  EOD_ECGC,',
'	  EOD_BANK_COMM_PERC,',
'	  EOD_BANK_COMM,',
'	  EOD_INTEREST_PERC,',
'	  EOD_INTEREST_AMT,',
'	  EOD_EXCHANGE_RATE,',
'	  EOD_FOB_RS,',
'	  EOD_FOB_DOLL,',
'	  EOD_COMMISSION_PERC,',
'	  EOD_FOBC_AMT,',
'	  EOD_FOB_DOLL_RND,',
'	  EOD_OCEAN_FRT,',
'	  EOD_FRT_PER_CTN,',
'	  EOD_CANDF_AMT,',
'	  EOD_CANDFC_AMT,',
'	  EOD_CANDF_AMT_RND,',
'	  EOD_INSURANCE_PERC,',
'	  EOD_INSURANCE_AMT,',
'	  EOD_CIF_AMT,',
'	  EOD_CIFC_AMT,',
'	  EOD_CIF_AMT_RND,',
'	  EOD_CNI_AMT,',
'	  EOD_CNIC_AMT,',
'	  EOD_CNI_AMT_RND,',
'	  EOD_COSTING_TYPE,',
'      EOD_STW_RND_20,',
'	  EOD_HSN_CODE,',
'	  EOD_COSTING_REMARKS,',
'      EOD_CIR_DISPLAY_NAME,',
'	  EOD_GROSS_WT,',
'	  EOD_NET_WT,',
'      EOD_LENGTH,		',
'      EOD_BREADTH,		',
'      EOD_HEIGHT,		',
'      EOD_CUBIC_SPACE,',
'	  EOD_STW_RND_40,		--Added by Rahul on 27-Jun-24 for Satkamal Costing Changes',
'	  EOD_STW_RND_40HC,		--Added by Rahul on 27-Jun-24 for Satkamal Costing Changes',
'      EOD_GODOWN_CHARGES, 	 --Fields from gowdown charges to calc amt unitwise rnd added by Rahul on 11-Sep-24',
'      EOD_TESTING_CHARGES, 		',
'      EOD_CALC_AMT_UNITWISE, 	',
'      EOD_COSTING_UNIT,',
'      EOD_CALC_AMT_UNITWISE_RND',
'     ,EOD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
'     ,EOD_PROFIT_PERC_GST_PURCHASE  --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
'	  )',
'	'';',
'   v_insert_stmt1 := '' ',
'	  (',
'		SELECT ',
'	  seq_eod_id.nextval,''||',
'	  :P21_ENQ_ID ||'',',
'      PM_ID,',
'      NULL PM_MANUFAC_ID,',
'	  PM_MRP,',
'	  PM_TRADE_PRICE,',
'	  PM_PURCHASE_AMT,',
'	  PM_SCHEME_PERC,',
'	  PM_SCHEME_AMT,',
'	  PM_DISCOUNT_PERC,',
'	  PM_DISCOUNT_AMT,',
'	  PM_GST_PERC,',
'	  PM_GST_AMT,',
'      PM_SGST_PERC,',
'      PM_CGST_PERC,',
'      PM_TOTAL_GST_PERC,    ',
'	  PM_TRANS_CHARGES,',
'	  PM_BAGS_CTNS,',
'	  PM_RECOV_ON_FRT,',
'	  PM_REPACKING,',
'	  PM_EXTRA,',
'	  PM_NET_PURCHASE_VAL,',
'	  case when nvl(PM_VOL_FOB_AMT,0) = 0 then '' || v_fob || '' else PM_VOL_FOB_AMT end PM_VOL_FOB_AMT,',
'	  PM_VOL_FOB_EXP,',
'	  PM_PROFIT_PERC,',
'	  PM_PROFIT_AMT,',
'	  case when nvl(PM_INCOME_TAX_PERC,0) = 0 then ''|| v_INCOME_TAX_PERC || '' else PM_INCOME_TAX_PERC end  PM_INCOME_TAX_PERC ,',
'	  PM_INCOME_TAX,',
'	  case when nvl(PM_DUTY_PERC,0) = 0 then ''|| v_EOD_DUTY_PERC || '' else PM_DUTY_PERC end PM_DUTY_PERC,',
'	  PM_DUTY_AMT,',
'	  case when nvl(PM_ECGC_PERC,0) = 0 then ''|| v_ECGC_PERC || '' else PM_ECGC_PERC end PM_ECGC_PERC,',
'	  PM_ECGC,',
'	  case when nvl(PM_BANK_COMM_PERC,0) = 0 then ''|| v_BANK_COMM_PERC || '' else PM_BANK_COMM_PERC end  PM_BANK_COMM_PERC ,',
'	  PM_BANK_COMM,',
'	  PM_INTEREST_PERC,',
'	  PM_INTEREST_AMT,',
'	  PM_EXCHANGE_RATE,',
'	  PM_FOB_RS,',
'	  PM_FOB_DOLL,',
'	  PM_COMMISSION_PERC,',
'	  PM_FOBC_AMT,',
'	  PM_FOB_DOLL_RND,',
'	  PM_OCEAN_FRT,',
'	  PM_FRT_PER_CTN,',
'	  PM_CANDF_AMT,',
'	  PM_CANDFC_AMT,',
'	  PM_CANDF_AMT_RND,',
'	  case when nvl(PM_INSURANCE_PERC,0) = 0 then '' || v_INSURANCE_PERC || '' else PM_INSURANCE_PERC end  PM_INSURANCE_PERC ,',
'	  PM_INSURANCE_AMT,',
'	  PM_CIF_AMT,',
'	  PM_CIFC_AMT,',
'	  PM_CIF_AMT_RND,',
'	  PM_CNI_AMT,',
'	  PM_CNIC_AMT,',
'	  PM_CNI_AMT_RND,',
'	  nvl(PM_COSTING_TYPE,''''FOB''''),',
'      PM_STW_RND_20,',
'	  PM_HSN_CODE,',
'	  PM_COSTING_REMARKS,',
'      PM_CIR_DISPLAY_NAME,',
'	  PM_GROSS_WEIGHT,',
'	  PM_NET_WEIGHT,',
'      PM_LENGTH,',
'      PM_BREADTH,',
'      PM_HEIGHT,',
'      PM_CUBIC_SPACE,',
' 	  PM_STW_RND_40,    ',
'	  PM_STW_RND_40HC,',
'      PM_GODOWN_CHARGES, 	 --Fields from gowdown charges to calc amt unitwise rnd added by Rahul on 11-Sep-24',
'      PM_TESTING_CHARGES, 		',
'      PM_CALC_AMT_UNITWISE, 	',
'      PM_COSTING_UNIT,',
'      PM_CALC_AMT_UNITWISE_RND',
'     ,PM_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient ',
'     ,PM_EOD_PROFIT_PERC_GST_PURCHASE --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF  ',
'	FROM V_PRODUCT_MASTER',
'	WHERE PM_ID in'' || v_product_id ||''',
'	  and pm_id not in (select eod_product_id',
'                    from V_ENQUIRIES_ORDERS_DETAILS',
'                    where eod_enq_id = '' ||:P21_ENQ_ID||''',
'                    ))''; ',
'	 ',
'  --  insert into error_log (el_text) values (''v_insert_stmt from product master - '' || v_insert_stmt);',
'--	 dbms_output.put_line (''v_insert_stmt from product masterv- '' || v_insert_stmt);',
'   ',
'    execute immediate v_insert_stmt || v_insert_stmt1;',
'',
'ELSIF :P21_CALLING_FROM = ''MASTER_LIST'' THEN',
'',
'	IF :REQUEST = ''CUSTOMER_LEVEL'' THEN',
'	  insert into error_log (el_text) values (''inside if :REQUEST from MLD - '' || :REQUEST);',
'	  ',
'	 /* SELECT nvl(MAX(eom_ord_id),0)',
'	  INTO v_ord_id',
'	  FROM V_ENQUIRIES_ORDERS_MST',
'	  WHERE eom_type       = ''ORDER''',
'	  AND eom_order_status = ''IP''',
'	  AND eom_customer_id  = :P21_CUST_ID;*/ ---Ranu',
'	  ',
'	  for i in cur_ord_prod(trim('','' from replace(:P21_SELECTED_PRODUCTS,''|'', '',''))) loop',
'	  ',
'	v_insert_stmt := ''INSERT INTO V_MASTER_LIST_DETAILS',
'	 (',
'	MLD_ID,',
'    MLD_ML_ID,',
'    MLD_PRODUCT_ID,',
'    MLD_MANUFAC_ID,',
'    MLD_MRP,',
'    MLD_TRADE_PRICE,',
'    MLD_PURCHASE_AMT,',
'    MLD_SCHEME_PERC,',
'    MLD_SCHEME_AMT,',
'    MLD_DISCOUNT_PERC,',
'    MLD_DISCOUNT_AMT,',
'    MLD_GST_PERC,',
'    MLD_GST_AMT,',
'	MLD_SGST_PERC,',
'    MLD_CGST_PERC,',
'    MLD_TOTAL_GST_PERC,',
'    MLD_TRANS_CHARGES,',
'    MLD_BAGS_CTNS,',
'    MLD_RECOV_ON_FRT,',
'    MLD_REPACKING,',
'    MLD_EXTRA,',
'    MLD_NET_PURCHASE_VAL,',
'    MLD_VOL_FOB_AMT,',
'    MLD_VOL_FOB_EXP,',
'    MLD_PROFIT_PERC,',
'    MLD_PROFIT_AMT,',
'	MLD_INCOME_TAX_PERC,',
'    MLD_INCOME_TAX,',
'    MLD_DUTY_PERC,',
'    MLD_DUTY_AMT,',
'	MLD_ECGC_PERC,',
'    MLD_ECGC,',
'	MLD_BANK_COMM_PERC,',
'    MLD_BANK_COMM,',
'    MLD_INTEREST_PERC,',
'    MLD_INTEREST_AMT,',
'    MLD_EXCHANGE_RATE,',
'    MLD_FOB_RS,',
'    MLD_FOB_DOLL,',
'    MLD_COMMISSION_PERC,',
'    MLD_FOBC_AMT,',
'    MLD_FOB_DOLL_RND,',
'    MLD_OCEAN_FRT,',
'    MLD_FRT_PER_CTN,',
'    MLD_CANDF_AMT,',
'    MLD_CANDFC_AMT,',
'    MLD_CANDF_AMT_RND,',
'	MLD_INSURANCE_PERC,',
'    MLD_INSURANCE_AMT,',
'    MLD_CIF_AMT,',
'    MLD_CIFC_AMT,',
'    MLD_CIF_AMT_RND,',
'    MLD_CNI_AMT,',
'    MLD_CNIC_AMT,',
'    MLD_CNI_AMT_RND,',
'    MLD_COSTING_TYPE,',
'	MLD_STW_RND_20,',
'    MLD_HSN_CODE,',
'    MLD_COSTING_REMARKS,',
'    MLD_CIR_DISPLAY_NAME,',
'	MLD_GROSS_WT,',
'	MLD_NET_WT,',
'    MLD_LENGTH,',
'    MLD_BREADTH,',
'    MLD_HEIGHT,',
'    MLD_CUBIC_SPACE,',
'    MLD_STW_RND_40,			--Added by Rahul on 27-Jun-24 for Satkamal Costing Changes',
'	MLD_STW_RND_40HC,		--Added by Rahul on 27-Jun-24 for Satkamal Costing Changes',
'    MLD_GODOWN_CHARGES, 	 --Fields from gowdown charges to calc amt unitwise rnd added by Rahul on 11-Sep-24',
'    MLD_TESTING_CHARGES, 		',
'    MLD_CALC_AMT_UNITWISE, 	',
'    MLD_COSTING_UNIT,',
'    MLD_CALC_AMT_UNITWISE_RND  ',
'   ,MLD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list  ',
'   ,MLD_PROFIT_PERC_GST_PURCHASE  --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
'',
'	)'';',
'',
'    v_insert_stmt1 := ''(',
'    SELECT ',
'	  seq_mld_id.nextval,''||',
'	  :P21_MASTER_LIST_ID ||'',',
'      EOD_PRODUCT_ID,',
'      EOD_MANUFAC_ID,',
'	  EOD_MRP,',
'	  EOD_TRADE_PRICE,    ',
'	  EOD_PURCHASE_AMT,',
'	  EOD_SCHEME_PERC,',
'	  EOD_SCHEME_AMT,',
'	  EOD_DISCOUNT_PERC,',
'	  EOD_DISCOUNT_AMT,',
'	  EOD_GST_PERC,',
'	  EOD_GST_AMT,',
'      EOD_SGST_PERC,',
'      EOD_CGST_PERC,',
'      EOD_TOTAL_GST_PERC,',
'	  EOD_TRANS_CHARGES,',
'	  EOD_BAGS_CTNS,',
'	  EOD_RECOV_ON_FRT,',
'	  EOD_REPACKING,',
'	  EOD_EXTRA,',
'	  EOD_NET_PURCHASE_VAL,',
'	  case when nvl(EOD_VOL_FOB_AMT,0) = 0 then '' || v_fob || '' else EOD_VOL_FOB_AMT end EOD_VOL_FOB_AMT,',
'	  EOD_VOL_FOB_EXP,',
'	  EOD_PROFIT_PERC,',
'	  EOD_PROFIT_AMT,',
'	  case when nvl(EOD_INCOME_TAX_PERC,0) = 0 then '' || v_INCOME_TAX_PERC || '' else EOD_INCOME_TAX_PERC end  EOD_INCOME_TAX_PERC,',
'	  EOD_INCOME_TAX,',
'	  case when nvl(EOD_DUTY_PERC,0) = 0 then '' || v_EOD_DUTY_PERC || '' else EOD_DUTY_PERC end  EOD_DUTY_PERC,',
'	  EOD_DUTY_AMT,',
'	  case when nvl(EOD_ECGC_PERC,0) = 0 then '' || v_ECGC_PERC || '' else EOD_ECGC_PERC end EOD_ECGC_PERC,',
'	  EOD_ECGC,',
'	  case when nvl(EOD_BANK_COMM_PERC,0) = 0 then '' || v_BANK_COMM_PERC || '' else EOD_BANK_COMM_PERC end  EOD_BANK_COMM_PERC,',
'	  EOD_BANK_COMM,',
'	  EOD_INTEREST_PERC,',
'	  EOD_INTEREST_AMT,',
'	  EOD_EXCHANGE_RATE,',
'	  EOD_FOB_RS,',
'	  EOD_FOB_DOLL,',
'	  EOD_COMMISSION_PERC,',
'	  EOD_FOBC_AMT,',
'	  EOD_FOB_DOLL_RND,',
'	  EOD_OCEAN_FRT,',
'	  EOD_FRT_PER_CTN,',
'	  EOD_CANDF_AMT,',
'	  EOD_CANDFC_AMT,',
'	  EOD_CANDF_AMT_RND,',
'	  case when nvl(EOD_INSURANCE_PERC,0) = 0 then '' || v_INSURANCE_PERC || '' else EOD_INSURANCE_PERC end  EOD_INSURANCE_PERC,',
'	  EOD_INSURANCE_AMT,',
'	  EOD_CIF_AMT,',
'	  EOD_CIFC_AMT,',
'	  EOD_CIF_AMT_RND,',
'	  EOD_CNI_AMT,',
'	  EOD_CNIC_AMT,',
'	  EOD_CNI_AMT_RND,',
'	  nvl(EOD_COSTING_TYPE,''''FOB''''),',
'      PM_STW_RND_20,',
'	  EOD_HSN_CODE,',
'	  EOD_COSTING_REMARKS,',
'      EOD_CIR_DISPLAY_NAME,',
'	 -- EOD_GROSS_WT,    Commented by Rahul on 9-Sep-24 to fetch latest wt from product master',
'	 -- EOD_NET_WT,',
'      PM_GROSS_WEIGHT,       --Added by Rahul on 9-Sep-24 to fetch gross and net wt from product master',
'      PM_NET_WEIGHT,',
'      PM_LENGTH,		',
'      PM_BREADTH,		',
'      PM_HEIGHT,		',
'      PM_CUBIC_SPACE,',
'  	  PM_STW_RND_40,    --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes',
'	  PM_STW_RND_40HC,   --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes',
'      EOD_GODOWN_CHARGES, 	 --Fields from gowdown charges to calc amt unitwise rnd added by Rahul on 11-Sep-24',
'      EOD_TESTING_CHARGES, 		',
'      EOD_CALC_AMT_UNITWISE, 	',
'      EOD_COSTING_UNIT,',
'      EOD_CALC_AMT_UNITWISE_RND',
'     ,EOD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
'     ,EOD_PROFIT_PERC_GST_PURCHASE  --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF  ',
'      from V_ENQUIRIES_ORDERS_MST, V_ENQUIRIES_ORDERS_DETAILS, V_PRODUCT_MASTER',
'	where eom_enq_id = eod_enq_id',
'	and eom_type = ''''ORDER''''',
'	and pm_id = eod_product_id',
'	and eom_ord_id = '' || i.cur_ord_id ||''',
'	and eod_product_id ='' || i.cur_prod_id ||''',
'		  )'';',
'	 execute immediate v_insert_stmt || v_insert_stmt1;',
'	end loop;',
'	END IF; -- Latest Costing Customer Specific of Master List     ',
'        ',
'	 insert into error_log (el_text) values (''After insert of products in MLD from latest order'');',
'	',
'	v_insert_stmt := ''INSERT INTO V_MASTER_LIST_DETAILS',
'	 (',
'	MLD_ID,',
'    MLD_ML_ID,',
'    MLD_PRODUCT_ID,',
'    MLD_MANUFAC_ID,',
'    MLD_MRP,',
'    MLD_TRADE_PRICE,',
'    MLD_PURCHASE_AMT,',
'    MLD_SCHEME_PERC,',
'    MLD_SCHEME_AMT,',
'    MLD_DISCOUNT_PERC,',
'    MLD_DISCOUNT_AMT,',
'    MLD_GST_PERC,',
'    MLD_GST_AMT,',
'	MLD_SGST_PERC,',
'    MLD_CGST_PERC,',
'    MLD_TOTAL_GST_PERC,',
'    MLD_TRANS_CHARGES,',
'    MLD_BAGS_CTNS,',
'    MLD_RECOV_ON_FRT,',
'    MLD_REPACKING,',
'    MLD_EXTRA,',
'    MLD_NET_PURCHASE_VAL,',
'    MLD_VOL_FOB_AMT,',
'    MLD_VOL_FOB_EXP,',
'    MLD_PROFIT_PERC,',
'    MLD_PROFIT_AMT,',
'	MLD_INCOME_TAX_PERC,',
'    MLD_INCOME_TAX,',
'    MLD_DUTY_PERC,',
'    MLD_DUTY_AMT,',
'	MLD_ECGC_PERC,',
'    MLD_ECGC,',
'	MLD_BANK_COMM_PERC,',
'    MLD_BANK_COMM,',
'    MLD_INTEREST_PERC,',
'    MLD_INTEREST_AMT,',
'    MLD_EXCHANGE_RATE,',
'    MLD_FOB_RS,',
'    MLD_FOB_DOLL,',
'    MLD_COMMISSION_PERC,',
'    MLD_FOBC_AMT,',
'    MLD_FOB_DOLL_RND,',
'    MLD_OCEAN_FRT,',
'    MLD_FRT_PER_CTN,',
'    MLD_CANDF_AMT,',
'    MLD_CANDFC_AMT,',
'    MLD_CANDF_AMT_RND,',
'	MLD_INSURANCE_PERC,',
'    MLD_INSURANCE_AMT,',
'    MLD_CIF_AMT,',
'    MLD_CIFC_AMT,',
'    MLD_CIF_AMT_RND,',
'    MLD_CNI_AMT,',
'    MLD_CNIC_AMT,',
'    MLD_CNI_AMT_RND,',
'    MLD_COSTING_TYPE,',
'	MLD_STW_RND_20,',
'    MLD_HSN_CODE,',
'    MLD_COSTING_REMARKS,',
'    MLD_CIR_DISPLAY_NAME,',
'	MLD_GROSS_WT,',
'	MLD_NET_WT,',
'    MLD_LENGTH,',
'    MLD_BREADTH,',
'    MLD_HEIGHT,',
'    MLD_CUBIC_SPACE,',
'    MLD_STW_RND_40,			--Added by Rahul on 27-Jun-24 for Satkamal Costing Changes',
'	MLD_STW_RND_40HC,		--Added by Rahul on 27-Jun-24 for Satkamal Costing Changes',
'    MLD_GODOWN_CHARGES, 	 --Fields from gowdown charges to calc amt unitwise rnd added by Rahul on 11-Sep-24',
'    MLD_TESTING_CHARGES, 		',
'    MLD_CALC_AMT_UNITWISE, 	',
'    MLD_COSTING_UNIT,',
'    MLD_CALC_AMT_UNITWISE_RND    ',
'   ,MLD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
'   ,MLD_PROFIT_PERC_GST_PURCHASE  --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF  ',
'	)'';',
'',
'    v_insert_stmt1 := ''(',
'		SELECT ',
'	  seq_mld_id.nextval,''||',
'	  :P21_MASTER_LIST_ID ||'',',
'      PM_ID,',
'      PM_MANUFAC_ID,',
'	  PM_MRP,',
'	  PM_TRADE_PRICE,',
'	  PM_PURCHASE_AMT,',
'	  PM_SCHEME_PERC,',
'	  PM_SCHEME_AMT,',
'	  PM_DISCOUNT_PERC,',
'	  PM_DISCOUNT_AMT,',
'	  PM_GST_PERC,',
'	  PM_GST_AMT,',
'      PM_SGST_PERC,',
'      PM_CGST_PERC,',
'      PM_TOTAL_GST_PERC,    ',
'	  PM_TRANS_CHARGES,',
'	  PM_BAGS_CTNS,',
'	  PM_RECOV_ON_FRT,',
'	  PM_REPACKING,',
'	  PM_EXTRA,',
'	  PM_NET_PURCHASE_VAL,',
'	  case when nvl(PM_VOL_FOB_AMT,0) = 0 then '' || v_fob || '' else PM_VOL_FOB_AMT end PM_VOL_FOB_AMT,',
'	  PM_VOL_FOB_EXP,',
'	  PM_PROFIT_PERC,',
'	  PM_PROFIT_AMT,',
'	  case when nvl(PM_INCOME_TAX_PERC,0) = 0 then ''|| v_INCOME_TAX_PERC || '' else PM_INCOME_TAX_PERC end  PM_INCOME_TAX_PERC ,',
'	  PM_INCOME_TAX,',
'	  case when nvl(PM_DUTY_PERC,0) = 0 then ''|| v_EOD_DUTY_PERC || '' else PM_DUTY_PERC end PM_DUTY_PERC,',
'	  PM_DUTY_AMT,',
'	  case when nvl(PM_ECGC_PERC,0) = 0 then ''|| v_ECGC_PERC || '' else PM_ECGC_PERC end PM_ECGC_PERC,',
'	  PM_ECGC,',
'	  case when nvl(PM_BANK_COMM_PERC,0) = 0 then ''|| v_BANK_COMM_PERC || '' else PM_BANK_COMM_PERC end  PM_BANK_COMM_PERC ,',
'	  PM_BANK_COMM,',
'	  PM_INTEREST_PERC,',
'	  PM_INTEREST_AMT,',
'	  PM_EXCHANGE_RATE,',
'	  PM_FOB_RS,',
'	  PM_FOB_DOLL,',
'	  PM_COMMISSION_PERC,',
'	  PM_FOBC_AMT,',
'	  PM_FOB_DOLL_RND,',
'	  PM_OCEAN_FRT,',
'	  PM_FRT_PER_CTN,',
'	  PM_CANDF_AMT,',
'	  PM_CANDFC_AMT,',
'	  PM_CANDF_AMT_RND,',
'	  case when nvl(PM_INSURANCE_PERC,0) = 0 then ''|| v_INSURANCE_PERC || '' else PM_INSURANCE_PERC end  PM_INSURANCE_PERC ,',
'	  PM_INSURANCE_AMT,',
'	  PM_CIF_AMT,',
'	  PM_CIFC_AMT,',
'	  PM_CIF_AMT_RND,',
'	  PM_CNI_AMT,',
'	  PM_CNIC_AMT,',
'	  PM_CNI_AMT_RND,',
'	  nvl(PM_COSTING_TYPE,''''FOB''''),',
'      PM_STW_RND_20,',
'	  PM_HSN_CODE,',
'	  PM_COSTING_REMARKS,',
'      PM_CIR_DISPLAY_NAME,',
'	  PM_GROSS_WEIGHT,',
'	  PM_NET_WEIGHT,',
'      PM_LENGTH,',
'      PM_BREADTH,',
'      PM_HEIGHT,',
'      PM_CUBIC_SPACE,',
'	  PM_STW_RND_40,    ',
'	  PM_STW_RND_40HC,',
'      PM_GODOWN_CHARGES, 	 --Fields from gowdown charges to calc amt unitwise rnd added by Rahul on 11-Sep-24',
'      PM_TESTING_CHARGES, 		',
'      PM_CALC_AMT_UNITWISE, 	',
'      PM_COSTING_UNIT,',
'      PM_CALC_AMT_UNITWISE_RND',
'     ,PM_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
'     ,PM_EOD_PROFIT_PERC_GST_PURCHASE  --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF   ',
'	FROM V_PRODUCT_MASTER',
'	WHERE PM_ID in'' || v_product_id ||''',
'	  and pm_id not in (select mld_product_id',
'                    from V_MASTER_LIST_DETAILS',
'                    where MLD_ML_ID = '' ||:P21_MASTER_LIST_ID||''',
'                    ))'';',
'	',
'	insert into error_log (el_text) values (''v_insert_stmt from product master into MLD - '' || v_insert_stmt);',
'	 dbms_output.put_line (''v_insert_stmt from product master into MLD- '' || v_insert_stmt);',
'   ',
'    execute immediate v_insert_stmt || v_insert_stmt1;',
' END IF;',
'	',
'	   insert into error_log (el_text) values (''After insert of products in MLD from product master'');',
'       ',
'    --Commented by Rahul for testing to address data version conflict issue   pkg_status.update_status(''ORD_STATUS'',:P21_ENQ_ID,null,v_error_msg,v_success_failure);',
'',
'ELSE',
'          v_error_msg := ''Please select atleast one or more product(s) to be added to the enquiry'';',
'          apex_error.add_error (',
'                p_message          => v_error_msg,',
'                p_display_location => ''ON_ERROR_PAGE'' );  ',
'END IF;  ',
'  ',
' EXCEPTION ',
'',
'when  DUP_VAL_ON_INDEX then',
'    v_error_msg := ''Duplicate product(s) cannot be added to the enquiry'';',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => ''ON_ERROR_PAGE''  );  ',
'          ',
'when others then',
'    v_error_msg := ''Error:Adding Products to Enquiry'' || SQLERRM;',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => ''ON_ERROR_PAGE''  );',
'                    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CUSTOMER_LEVEL,SYSTEM_LEVEL'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>163394325136137785
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8224589250642906743)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert_products - Backup'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	v_product_id varchar2(4000);',
'	v_insert_stmt varchar2(4000);',
'	v_error_msg varchar2(4000);',
'	v_ord_id number;',
'     v_BANK_COMM_PERC  number;',
'	 v_INCOME_TAX_PERC number;',
'	 v_EOD_DUTY_PERC number;',
'	 v_ECGC_PERC number;',
'	 v_INSURANCE_PERC number;',
'     v_fob number;',
'     v_success_failure varchar2(4000);',
'BEGIN',
'',
'    begin',
'      select to_number(st_code)  into v_fob',
'      from V_SETUP_TABLE',
'      where st_type=''FOB''',
'    and st_name = ''Total'';',
'     -- return v_fob;',
'    exception when others then',
'        v_fob := 0;',
'     --return 0;',
'    end;',
'',
' begin',
'         select ST_CODE',
'        into v_BANK_COMM_PERC',
'        from V_SETUP_TABLE',
'        where ST_TYPE = ''PROD_CALC_MST''',
'        AND ST_NAME IN (''BANK_COMM'');',
'    --return v_BANK_COMM_PERC;',
'    exception when others then        ',
'    v_BANK_COMM_PERC := 0;',
'    --return v_BANK_COMM_PERC;',
'    end;    ',
'',
'  begin',
'       select ST_CODE',
'      into v_INCOME_TAX_PERC',
'      from V_SETUP_TABLE',
'      where ST_TYPE = ''PROD_CALC_MST''',
'      AND ST_NAME IN (''INCOME_TAX_PERC'');',
'    --return  v_INCOME_TAX_PERC;',
'    exception when others then        ',
'      v_INCOME_TAX_PERC := 0;',
'      --return v_INCOME_TAX_PERC;',
' end;     ',
' ',
'	 begin',
'	   select ST_CODE',
'	  into v_EOD_DUTY_PERC',
'	  from V_SETUP_TABLE',
'	  where ST_TYPE = ''PROD_CALC_MST''',
'	  AND ST_NAME = ''DUTY_PERC'';',
'',
'	--return v_EOD_DUTY_PERC;',
'',
'	exception when others then        ',
'	  v_EOD_DUTY_PERC := 0;',
'	end;   ',
' ',
' begin',
'        select ST_CODE',
'        into v_ECGC_PERC',
'        from V_SETUP_TABLE',
'        where ST_TYPE = ''PROD_CALC_MST''',
'        AND ST_NAME IN (''ECGC'');',
'    --return v_ECGC_PERC;',
' exception when others then        ',
'        v_ECGC_PERC := 0;',
'        --return v_ECGC_PERC;',
' end;',
' ',
'  begin',
'        select ST_CODE',
'        into v_INSURANCE_PERC',
'        from V_SETUP_TABLE',
'        where ST_TYPE = ''PROD_CALC_MST''',
'        AND ST_NAME IN (''INSURANCE_PERC'');',
'    --return v_INSURANCE_PERC;',
' exception when others then        ',
'        v_INSURANCE_PERC := 0;',
'        --return v_INSURANCE_PERC;',
' end;',
' ',
'insert into error_log (el_text) values ('':P21_SELECTED_PRODUCTS - '' || :P21_SELECTED_PRODUCTS);',
'if :P21_SELECTED_PRODUCTS is not null and :P21_SELECTED_PRODUCTS != ''|'' then',
'	 	',
'	v_product_id := ''('' || trim('','' from replace(:P21_SELECTED_PRODUCTS,''|'', '','')) || '')'';',
'	',
'	insert into error_log (el_text) values (''inside of if block of EOD insert - '' || v_product_id);',
' ',
'	dbms_output.put_line (''inside of if block of EOD insert - '' || v_product_id);',
' -- ranu IF :P21_LATEST_COSTING = ''CUSTOMER'' THEN',
' insert into error_log (el_text) values ('':REQUEST - '' || :REQUEST);',
'',
' IF :P21_CALLING_FROM = ''ENQUIRY'' THEN',
' ',
'	IF :REQUEST = ''CUSTOMER_LEVEL'' THEN',
'	  insert into error_log (el_text) values (''inside if :REQUEST - '' || :REQUEST);',
'	  ',
'	  SELECT nvl(MAX(eom_ord_id),0)',
'	  INTO v_ord_id',
'	  FROM V_ENQUIRIES_ORDERS_MST',
'	  WHERE eom_type       = ''ORDER''',
'	  AND eom_order_status = ''IP''',
'	  AND eom_customer_id  = :P21_CUST_ID;',
'   /*  Commented by Rahul on 18-Oct-2017 to use page hidden item of customer id which is passed in the link',
'   (SELECT eom_customer_id',
'    FROM V_ENQUIRIES_ORDERS_MST',
'    WHERE eom_enq_id = :P21_ENQ_ID',
'    );',
'	*/',
' --Added by Rahul on 18-OCT-2020 IF condition of Calling From to utilize same page from Enquiries and Master List screens to add products  ',
' ',
'	v_insert_stmt := ''insert into V_ENQUIRIES_ORDERS_DETAILS',
'	 (',
'	  EOD_ID,',
'	  EOD_ENQ_ID,',
'      EOD_PRODUCT_ID,',
'      EOD_MANUFAC_ID,',
'	  EOD_MRP,',
'	  EOD_TRADE_PRICE,    ',
'	  EOD_PURCHASE_AMT,',
'	  EOD_SCHEME_PERC,',
'	  EOD_SCHEME_AMT,',
'	  EOD_DISCOUNT_PERC,',
'	  EOD_DISCOUNT_AMT,',
'	  EOD_GST_PERC,',
'	  EOD_GST_AMT,',
'      EOD_SGST_PERC,',
'      EOD_CGST_PERC,',
'      EOD_TOTAL_GST_PERC,',
'	  EOD_TRANS_CHARGES,',
'	  EOD_BAGS_CTNS,',
'	  EOD_RECOV_ON_FRT,',
'	  EOD_REPACKING,',
'	  EOD_EXTRA,',
'	  EOD_NET_PURCHASE_VAL,',
'	  EOD_VOL_FOB_AMT,',
'	  EOD_VOL_FOB_EXP,',
'	  EOD_PROFIT_PERC,',
'	  EOD_PROFIT_AMT,',
'	  EOD_INCOME_TAX_PERC,',
'	  EOD_INCOME_TAX,',
'	  EOD_DUTY_PERC,',
'	  EOD_DUTY_AMT,',
'	  EOD_ECGC_PERC,',
'	  EOD_ECGC,',
'	  EOD_BANK_COMM_PERC,',
'	  EOD_BANK_COMM,',
'	  EOD_INTEREST_PERC,',
'	  EOD_INTEREST_AMT,',
'	  EOD_EXCHANGE_RATE,',
'	  EOD_FOB_RS,',
'	  EOD_FOB_DOLL,',
'	  EOD_COMMISSION_PERC,',
'	  EOD_FOBC_AMT,',
'	  EOD_FOB_DOLL_RND,',
'	  EOD_OCEAN_FRT,',
'	  EOD_FRT_PER_CTN,',
'	  EOD_CANDF_AMT,',
'	  EOD_CANDFC_AMT,',
'	  EOD_CANDF_AMT_RND,',
'	  EOD_INSURANCE_PERC,',
'	  EOD_INSURANCE_AMT,',
'	  EOD_CIF_AMT,',
'	  EOD_CIFC_AMT,',
'	  EOD_CIF_AMT_RND,',
'	  EOD_CNI_AMT,',
'	  EOD_CNIC_AMT,',
'	  EOD_CNI_AMT_RND,',
'	  EOD_COSTING_TYPE,',
'      EOD_STW_RND_20,',
'	  EOD_HSN_CODE,',
'	  EOD_COSTING_REMARKS,',
'      EOD_CIR_DISPLAY_NAME,',
'	  EOD_GROSS_WT,',
'	  EOD_NET_WT,',
'      EOD_LENGTH,		',
'      EOD_BREADTH,		',
'      EOD_HEIGHT,		',
'      EOD_CUBIC_SPACE',
')',
'    (',
'    SELECT ',
'	  seq_eod_id.nextval,''||',
'	  :P21_ENQ_ID ||'',',
'      EOD_PRODUCT_ID,',
'      EOD_MANUFAC_ID,',
'	  EOD_MRP,',
'	  EOD_TRADE_PRICE,    ',
'	  EOD_PURCHASE_AMT,',
'	  EOD_SCHEME_PERC,',
'	  EOD_SCHEME_AMT,',
'	  EOD_DISCOUNT_PERC,',
'	  EOD_DISCOUNT_AMT,',
'	  EOD_GST_PERC,',
'	  EOD_GST_AMT,',
'      EOD_SGST_PERC,',
'      EOD_CGST_PERC,',
'      EOD_TOTAL_GST_PERC,',
'	  EOD_TRANS_CHARGES,',
'	  EOD_BAGS_CTNS,',
'	  EOD_RECOV_ON_FRT,',
'	  EOD_REPACKING,',
'	  EOD_EXTRA,',
'	  EOD_NET_PURCHASE_VAL,',
'	  case when nvl(EOD_VOL_FOB_AMT,0) = 0 then '' || v_fob || '' else EOD_VOL_FOB_AMT end EOD_VOL_FOB_AMT,',
'	  EOD_VOL_FOB_EXP,',
'	  EOD_PROFIT_PERC,',
'	  EOD_PROFIT_AMT,',
'	  case when nvl(EOD_INCOME_TAX_PERC,0) = 0 then '' || v_INCOME_TAX_PERC || '' else EOD_INCOME_TAX_PERC end  EOD_INCOME_TAX_PERC,',
'	  EOD_INCOME_TAX,',
'	  case when nvl(EOD_DUTY_PERC,0) = 0 then '' || v_EOD_DUTY_PERC || '' else EOD_DUTY_PERC end  EOD_DUTY_PERC,',
'	  EOD_DUTY_AMT,',
'	  case when nvl(EOD_ECGC_PERC,0) = 0 then '' || v_ECGC_PERC || '' else EOD_ECGC_PERC end EOD_ECGC_PERC,',
'	  EOD_ECGC,',
'	  case when nvl(EOD_BANK_COMM_PERC,0) = 0 then '' || v_BANK_COMM_PERC || '' else EOD_BANK_COMM_PERC end  EOD_BANK_COMM_PERC,',
'	  EOD_BANK_COMM,',
'	  EOD_INTEREST_PERC,',
'	  EOD_INTEREST_AMT,',
'	  EOD_EXCHANGE_RATE,',
'	  EOD_FOB_RS,',
'	  EOD_FOB_DOLL,',
'	  EOD_COMMISSION_PERC,',
'	  EOD_FOBC_AMT,',
'	  EOD_FOB_DOLL_RND,',
'	  EOD_OCEAN_FRT,',
'	  EOD_FRT_PER_CTN,',
'	  EOD_CANDF_AMT,',
'	  EOD_CANDFC_AMT,',
'	  EOD_CANDF_AMT_RND,',
'	  EOD_INSURANCE_PERC,',
'	  EOD_INSURANCE_AMT,',
'	  EOD_CIF_AMT,',
'	  EOD_CIFC_AMT,',
'	  EOD_CIF_AMT_RND,',
'	  EOD_CNI_AMT,',
'	  EOD_CNIC_AMT,',
'	  EOD_CNI_AMT_RND,',
'	  nvl(EOD_COSTING_TYPE,''''FOB''''),',
'      EOD_STW_RND_20,',
'	  EOD_HSN_CODE,',
'	  EOD_COSTING_REMARKS,',
'      EOD_CIR_DISPLAY_NAME,',
'	  EOD_GROSS_WT,',
'	  EOD_NET_WT,',
'      EOD_LENGTH,		',
'      EOD_BREADTH,		',
'      EOD_HEIGHT,		',
'      EOD_CUBIC_SPACE',
'      from V_ENQUIRIES_ORDERS_MST, V_ENQUIRIES_ORDERS_DETAILS',
'	where eom_enq_id = eod_enq_id',
'	and eom_type = ''''ORDER''''',
'	and eom_ord_id = '' || v_ord_id ||''',
'	and eod_product_id in'' || v_product_id ||''',
'		  )'';',
'	 ',
'	   insert into error_log (el_text) values (''v_insert_stmt latest order - '' || v_insert_stmt);',
'		 dbms_output.put_line (''v_insert_stmt order - '' || v_insert_stmt);',
'	  ',
'		execute immediate v_insert_stmt;',
'	',
'	END IF; -- Latest Costing Customer Specific       ',
'        ',
'	   insert into error_log (el_text) values (''After insert of products in EOD from latest order'');',
'  ',
'	v_insert_stmt := ''insert into V_ENQUIRIES_ORDERS_DETAILS',
'	 (',
'	  EOD_ID,',
'	  EOD_ENQ_ID,',
'      EOD_PRODUCT_ID,',
'      EOD_MANUFAC_ID,',
'	  EOD_MRP,',
'	  EOD_TRADE_PRICE,    ',
'	  EOD_PURCHASE_AMT,',
'	  EOD_SCHEME_PERC,',
'	  EOD_SCHEME_AMT,',
'	  EOD_DISCOUNT_PERC,',
'	  EOD_DISCOUNT_AMT,',
'	  EOD_GST_PERC,',
'	  EOD_GST_AMT,',
'      EOD_SGST_PERC,',
'      EOD_CGST_PERC,',
'      EOD_TOTAL_GST_PERC,',
'	  EOD_TRANS_CHARGES,',
'	  EOD_BAGS_CTNS,',
'	  EOD_RECOV_ON_FRT,',
'	  EOD_REPACKING,',
'	  EOD_EXTRA,',
'	  EOD_NET_PURCHASE_VAL,',
'	  EOD_VOL_FOB_AMT,',
'	  EOD_VOL_FOB_EXP,',
'	  EOD_PROFIT_PERC,',
'	  EOD_PROFIT_AMT,',
'	  EOD_INCOME_TAX_PERC,',
'	  EOD_INCOME_TAX,',
'	  EOD_DUTY_PERC,',
'	  EOD_DUTY_AMT,',
'	  EOD_ECGC_PERC,',
'	  EOD_ECGC,',
'	  EOD_BANK_COMM_PERC,',
'	  EOD_BANK_COMM,',
'	  EOD_INTEREST_PERC,',
'	  EOD_INTEREST_AMT,',
'	  EOD_EXCHANGE_RATE,',
'	  EOD_FOB_RS,',
'	  EOD_FOB_DOLL,',
'	  EOD_COMMISSION_PERC,',
'	  EOD_FOBC_AMT,',
'	  EOD_FOB_DOLL_RND,',
'	  EOD_OCEAN_FRT,',
'	  EOD_FRT_PER_CTN,',
'	  EOD_CANDF_AMT,',
'	  EOD_CANDFC_AMT,',
'	  EOD_CANDF_AMT_RND,',
'	  EOD_INSURANCE_PERC,',
'	  EOD_INSURANCE_AMT,',
'	  EOD_CIF_AMT,',
'	  EOD_CIFC_AMT,',
'	  EOD_CIF_AMT_RND,',
'	  EOD_CNI_AMT,',
'	  EOD_CNIC_AMT,',
'	  EOD_CNI_AMT_RND,',
'	  EOD_COSTING_TYPE,',
'      EOD_STW_RND_20,',
'	  EOD_HSN_CODE,',
'	  EOD_COSTING_REMARKS,',
'      EOD_CIR_DISPLAY_NAME,',
'	  EOD_GROSS_WT,',
'	  EOD_NET_WT,',
'      EOD_LENGTH,		',
'      EOD_BREADTH,		',
'      EOD_HEIGHT,		',
'      EOD_CUBIC_SPACE)',
'	',
'	  (',
'		SELECT ',
'	  seq_eod_id.nextval,''||',
'	  :P21_ENQ_ID ||'',',
'      PM_ID,',
'      PM_MANUFAC_ID,',
'	  PM_MRP,',
'	  PM_TRADE_PRICE,',
'	  PM_PURCHASE_AMT,',
'	  PM_SCHEME_PERC,',
'	  PM_SCHEME_AMT,',
'	  PM_DISCOUNT_PERC,',
'	  PM_DISCOUNT_AMT,',
'	  PM_GST_PERC,',
'	  PM_GST_AMT,',
'      PM_SGST_PERC,',
'      PM_CGST_PERC,',
'      PM_TOTAL_GST_PERC,    ',
'	  PM_TRANS_CHARGES,',
'	  PM_BAGS_CTNS,',
'	  PM_RECOV_ON_FRT,',
'	  PM_REPACKING,',
'	  PM_EXTRA,',
'	  PM_NET_PURCHASE_VAL,',
'	  case when nvl(PM_VOL_FOB_AMT,0) = 0 then '' || v_fob || '' else PM_VOL_FOB_AMT end PM_VOL_FOB_AMT,',
'	  PM_VOL_FOB_EXP,',
'	  PM_PROFIT_PERC,',
'	  PM_PROFIT_AMT,',
'	  case when nvl(PM_INCOME_TAX_PERC,0) = 0 then ''|| v_INCOME_TAX_PERC || '' else PM_INCOME_TAX_PERC end  PM_INCOME_TAX_PERC ,',
'	  PM_INCOME_TAX,',
'	  case when nvl(PM_DUTY_PERC,0) = 0 then ''|| v_EOD_DUTY_PERC || '' else PM_DUTY_PERC end PM_DUTY_PERC,',
'	  PM_DUTY_AMT,',
'	  case when nvl(PM_ECGC_PERC,0) = 0 then ''|| v_ECGC_PERC || '' else PM_ECGC_PERC end PM_ECGC_PERC,',
'	  PM_ECGC,',
'	  case when nvl(PM_BANK_COMM_PERC,0) = 0 then ''|| v_BANK_COMM_PERC || '' else PM_BANK_COMM_PERC end  PM_BANK_COMM_PERC ,',
'	  PM_BANK_COMM,',
'	  PM_INTEREST_PERC,',
'	  PM_INTEREST_AMT,',
'	  PM_EXCHANGE_RATE,',
'	  PM_FOB_RS,',
'	  PM_FOB_DOLL,',
'	  PM_COMMISSION_PERC,',
'	  PM_FOBC_AMT,',
'	  PM_FOB_DOLL_RND,',
'	  PM_OCEAN_FRT,',
'	  PM_FRT_PER_CTN,',
'	  PM_CANDF_AMT,',
'	  PM_CANDFC_AMT,',
'	  PM_CANDF_AMT_RND,',
'	  PM_INSURANCE_PERC,',
'	  PM_INSURANCE_AMT,',
'	  PM_CIF_AMT,',
'	  PM_CIFC_AMT,',
'	  PM_CIF_AMT_RND,',
'	  PM_CNI_AMT,',
'	  PM_CNIC_AMT,',
'	  PM_CNI_AMT_RND,',
'	  nvl(PM_COSTING_TYPE,''''FOB''''),',
'      PM_STW_RND_20,',
'	  PM_HSN_CODE,',
'	  PM_COSTING_REMARKS,',
'      PM_CIR_DISPLAY_NAME,',
'	  PM_GROSS_WEIGHT,',
'	  PM_NET_WEIGHT,',
'      PM_LENGTH,',
'      PM_BREADTH,',
'      PM_HEIGHT,',
'      PM_CUBIC_SPACE',
'	FROM V_PRODUCT_MASTER',
'	WHERE PM_ID in'' || v_product_id ||''',
'	  and pm_id not in (select eod_product_id',
'                    from V_ENQUIRIES_ORDERS_DETAILS',
'                    where eod_enq_id = '' ||:P21_ENQ_ID||''',
'                    ))'';',
'	 ',
'    insert into error_log (el_text) values (''v_insert_stmt from product master - '' || v_insert_stmt);',
'	 dbms_output.put_line (''v_insert_stmt from product masterv- '' || v_insert_stmt);',
'   ',
'    execute immediate v_insert_stmt;',
'',
'ELSIF :P21_CALLING_FROM = ''V_MASTER_LIST'' THEN',
'',
'	IF :REQUEST = ''CUSTOMER_LEVEL'' THEN',
'	  insert into error_log (el_text) values (''inside if :REQUEST from MLD - '' || :REQUEST);',
'	  ',
'	  SELECT nvl(MAX(eom_ord_id),0)',
'	  INTO v_ord_id',
'	  FROM V_ENQUIRIES_ORDERS_MST',
'	  WHERE eom_type       = ''ORDER''',
'	  AND eom_order_status = ''IP''',
'	  AND eom_customer_id  = :P21_CUST_ID;',
'	  ',
'	v_insert_stmt := ''INSERT INTO V_MASTER_LIST_DETAILS',
'	 (',
'	MLD_ID,',
'    MLD_ML_ID,',
'    MLD_PRODUCT_ID,',
'    MLD_MANUFAC_ID,',
'    MLD_MRP,',
'    MLD_TRADE_PRICE,',
'    MLD_PURCHASE_AMT,',
'    MLD_SCHEME_PERC,',
'    MLD_SCHEME_AMT,',
'    MLD_DISCOUNT_PERC,',
'    MLD_DISCOUNT_AMT,',
'    MLD_GST_PERC,',
'    MLD_GST_AMT,',
'	MLD_SGST_PERC,',
'    MLD_CGST_PERC,',
'    MLD_TOTAL_GST_PERC,',
'    MLD_TRANS_CHARGES,',
'    MLD_BAGS_CTNS,',
'    MLD_RECOV_ON_FRT,',
'    MLD_REPACKING,',
'    MLD_EXTRA,',
'    MLD_NET_PURCHASE_VAL,',
'    MLD_VOL_FOB_AMT,',
'    MLD_VOL_FOB_EXP,',
'    MLD_PROFIT_PERC,',
'    MLD_PROFIT_AMT,',
'	MLD_INCOME_TAX_PERC,',
'    MLD_INCOME_TAX,',
'    MLD_DUTY_PERC,',
'    MLD_DUTY_AMT,',
'	MLD_ECGC_PERC,',
'    MLD_ECGC,',
'	MLD_BANK_COMM_PERC,',
'    MLD_BANK_COMM,',
'    MLD_INTEREST_PERC,',
'    MLD_INTEREST_AMT,',
'    MLD_EXCHANGE_RATE,',
'    MLD_FOB_RS,',
'    MLD_FOB_DOLL,',
'    MLD_COMMISSION_PERC,',
'    MLD_FOBC_AMT,',
'    MLD_FOB_DOLL_RND,',
'    MLD_OCEAN_FRT,',
'    MLD_FRT_PER_CTN,',
'    MLD_CANDF_AMT,',
'    MLD_CANDFC_AMT,',
'    MLD_CANDF_AMT_RND,',
'	MLD_INSURANCE_PERC,',
'    MLD_INSURANCE_AMT,',
'    MLD_CIF_AMT,',
'    MLD_CIFC_AMT,',
'    MLD_CIF_AMT_RND,',
'    MLD_CNI_AMT,',
'    MLD_CNIC_AMT,',
'    MLD_CNI_AMT_RND,',
'    MLD_COSTING_TYPE,',
'	MLD_STW_RND_20,',
'    MLD_HSN_CODE,',
'    MLD_COSTING_REMARKS,',
'    MLD_CIR_DISPLAY_NAME,',
'	MLD_GROSS_WT,',
'	MLD_NET_WT,',
'    MLD_LENGTH,',
'    MLD_BREADTH,',
'    MLD_HEIGHT,',
'    MLD_CUBIC_SPACE    ',
'	)',
'    (',
'    SELECT ',
'	  seq_mld_id.nextval,''||',
'	  :P21_MASTER_LIST_ID ||'',',
'      EOD_PRODUCT_ID,',
'      EOD_MANUFAC_ID,',
'	  EOD_MRP,',
'	  EOD_TRADE_PRICE,    ',
'	  EOD_PURCHASE_AMT,',
'	  EOD_SCHEME_PERC,',
'	  EOD_SCHEME_AMT,',
'	  EOD_DISCOUNT_PERC,',
'	  EOD_DISCOUNT_AMT,',
'	  EOD_GST_PERC,',
'	  EOD_GST_AMT,',
'      EOD_SGST_PERC,',
'      EOD_CGST_PERC,',
'      EOD_TOTAL_GST_PERC,',
'	  EOD_TRANS_CHARGES,',
'	  EOD_BAGS_CTNS,',
'	  EOD_RECOV_ON_FRT,',
'	  EOD_REPACKING,',
'	  EOD_EXTRA,',
'	  EOD_NET_PURCHASE_VAL,',
'	  case when nvl(EOD_VOL_FOB_AMT,0) = 0 then '' || v_fob || '' else EOD_VOL_FOB_AMT end EOD_VOL_FOB_AMT,',
'	  EOD_VOL_FOB_EXP,',
'	  EOD_PROFIT_PERC,',
'	  EOD_PROFIT_AMT,',
'	  case when nvl(EOD_INCOME_TAX_PERC,0) = 0 then '' || v_INCOME_TAX_PERC || '' else EOD_INCOME_TAX_PERC end  EOD_INCOME_TAX_PERC,',
'	  EOD_INCOME_TAX,',
'	  case when nvl(EOD_DUTY_PERC,0) = 0 then '' || v_EOD_DUTY_PERC || '' else EOD_DUTY_PERC end  EOD_DUTY_PERC,',
'	  EOD_DUTY_AMT,',
'	  case when nvl(EOD_ECGC_PERC,0) = 0 then '' || v_ECGC_PERC || '' else EOD_ECGC_PERC end EOD_ECGC_PERC,',
'	  EOD_ECGC,',
'	  case when nvl(EOD_BANK_COMM_PERC,0) = 0 then '' || v_BANK_COMM_PERC || '' else EOD_BANK_COMM_PERC end  EOD_BANK_COMM_PERC,',
'	  EOD_BANK_COMM,',
'	  EOD_INTEREST_PERC,',
'	  EOD_INTEREST_AMT,',
'	  EOD_EXCHANGE_RATE,',
'	  EOD_FOB_RS,',
'	  EOD_FOB_DOLL,',
'	  EOD_COMMISSION_PERC,',
'	  EOD_FOBC_AMT,',
'	  EOD_FOB_DOLL_RND,',
'	  EOD_OCEAN_FRT,',
'	  EOD_FRT_PER_CTN,',
'	  EOD_CANDF_AMT,',
'	  EOD_CANDFC_AMT,',
'	  EOD_CANDF_AMT_RND,',
'	  EOD_INSURANCE_PERC,',
'	  EOD_INSURANCE_AMT,',
'	  EOD_CIF_AMT,',
'	  EOD_CIFC_AMT,',
'	  EOD_CIF_AMT_RND,',
'	  EOD_CNI_AMT,',
'	  EOD_CNIC_AMT,',
'	  EOD_CNI_AMT_RND,',
'	  nvl(EOD_COSTING_TYPE,''''FOB''''),',
'      EOD_STW_RND_20,',
'	  EOD_HSN_CODE,',
'	  EOD_COSTING_REMARKS,',
'      EOD_CIR_DISPLAY_NAME,',
'	  EOD_GROSS_WT,',
'	  EOD_NET_WT,',
'      EOD_LENGTH,		',
'      EOD_BREADTH,		',
'      EOD_HEIGHT,		',
'      EOD_CUBIC_SPACE',
'      from V_ENQUIRIES_ORDERS_MST, V_ENQUIRIES_ORDERS_DETAILS',
'	where eom_enq_id = eod_enq_id',
'	and eom_type = ''''ORDER''''',
'	and eom_ord_id = '' || v_ord_id ||''',
'	and eod_product_id in'' || v_product_id ||''',
'		  )'';',
'	 execute immediate v_insert_stmt;',
'	',
'	END IF; -- Latest Costing Customer Specific of Master List     ',
'        ',
'	 insert into error_log (el_text) values (''After insert of products in MLD from latest order'');',
'	',
'	v_insert_stmt := ''INSERT INTO V_MASTER_LIST_DETAILS',
'	 (',
'	MLD_ID,',
'    MLD_ML_ID,',
'    MLD_PRODUCT_ID,',
'    MLD_MANUFAC_ID,',
'    MLD_MRP,',
'    MLD_TRADE_PRICE,',
'    MLD_PURCHASE_AMT,',
'    MLD_SCHEME_PERC,',
'    MLD_SCHEME_AMT,',
'    MLD_DISCOUNT_PERC,',
'    MLD_DISCOUNT_AMT,',
'    MLD_GST_PERC,',
'    MLD_GST_AMT,',
'	MLD_SGST_PERC,',
'    MLD_CGST_PERC,',
'    MLD_TOTAL_GST_PERC,',
'    MLD_TRANS_CHARGES,',
'    MLD_BAGS_CTNS,',
'    MLD_RECOV_ON_FRT,',
'    MLD_REPACKING,',
'    MLD_EXTRA,',
'    MLD_NET_PURCHASE_VAL,',
'    MLD_VOL_FOB_AMT,',
'    MLD_VOL_FOB_EXP,',
'    MLD_PROFIT_PERC,',
'    MLD_PROFIT_AMT,',
'	MLD_INCOME_TAX_PERC,',
'    MLD_INCOME_TAX,',
'    MLD_DUTY_PERC,',
'    MLD_DUTY_AMT,',
'	MLD_ECGC_PERC,',
'    MLD_ECGC,',
'	MLD_BANK_COMM_PERC,',
'    MLD_BANK_COMM,',
'    MLD_INTEREST_PERC,',
'    MLD_INTEREST_AMT,',
'    MLD_EXCHANGE_RATE,',
'    MLD_FOB_RS,',
'    MLD_FOB_DOLL,',
'    MLD_COMMISSION_PERC,',
'    MLD_FOBC_AMT,',
'    MLD_FOB_DOLL_RND,',
'    MLD_OCEAN_FRT,',
'    MLD_FRT_PER_CTN,',
'    MLD_CANDF_AMT,',
'    MLD_CANDFC_AMT,',
'    MLD_CANDF_AMT_RND,',
'	MLD_INSURANCE_PERC,',
'    MLD_INSURANCE_AMT,',
'    MLD_CIF_AMT,',
'    MLD_CIFC_AMT,',
'    MLD_CIF_AMT_RND,',
'    MLD_CNI_AMT,',
'    MLD_CNIC_AMT,',
'    MLD_CNI_AMT_RND,',
'    MLD_COSTING_TYPE,',
'	MLD_STW_RND_20,',
'    MLD_HSN_CODE,',
'    MLD_COSTING_REMARKS,',
'    MLD_CIR_DISPLAY_NAME,',
'	MLD_GROSS_WT,',
'	MLD_NET_WT,',
'    MLD_LENGTH,',
'    MLD_BREADTH,',
'    MLD_HEIGHT,',
'    MLD_CUBIC_SPACE  )',
'	(',
'		SELECT ',
'	  seq_mld_id.nextval,''||',
'	  :P21_MASTER_LIST_ID ||'',',
'      PM_ID,',
'      PM_MANUFAC_ID,',
'	  PM_MRP,',
'	  PM_TRADE_PRICE,',
'	  PM_PURCHASE_AMT,',
'	  PM_SCHEME_PERC,',
'	  PM_SCHEME_AMT,',
'	  PM_DISCOUNT_PERC,',
'	  PM_DISCOUNT_AMT,',
'	  PM_GST_PERC,',
'	  PM_GST_AMT,',
'      PM_SGST_PERC,',
'      PM_CGST_PERC,',
'      PM_TOTAL_GST_PERC,    ',
'	  PM_TRANS_CHARGES,',
'	  PM_BAGS_CTNS,',
'	  PM_RECOV_ON_FRT,',
'	  PM_REPACKING,',
'	  PM_EXTRA,',
'	  PM_NET_PURCHASE_VAL,',
'	  case when nvl(PM_VOL_FOB_AMT,0) = 0 then '' || v_fob || '' else PM_VOL_FOB_AMT end PM_VOL_FOB_AMT,',
'	  PM_VOL_FOB_EXP,',
'	  PM_PROFIT_PERC,',
'	  PM_PROFIT_AMT,',
'	  case when nvl(PM_INCOME_TAX_PERC,0) = 0 then ''|| v_INCOME_TAX_PERC || '' else PM_INCOME_TAX_PERC end  PM_INCOME_TAX_PERC ,',
'	  PM_INCOME_TAX,',
'	  case when nvl(PM_DUTY_PERC,0) = 0 then ''|| v_EOD_DUTY_PERC || '' else PM_DUTY_PERC end PM_DUTY_PERC,',
'	  PM_DUTY_AMT,',
'	  case when nvl(PM_ECGC_PERC,0) = 0 then ''|| v_ECGC_PERC || '' else PM_ECGC_PERC end PM_ECGC_PERC,',
'	  PM_ECGC,',
'	  case when nvl(PM_BANK_COMM_PERC,0) = 0 then ''|| v_BANK_COMM_PERC || '' else PM_BANK_COMM_PERC end  PM_BANK_COMM_PERC ,',
'	  PM_BANK_COMM,',
'	  PM_INTEREST_PERC,',
'	  PM_INTEREST_AMT,',
'	  PM_EXCHANGE_RATE,',
'	  PM_FOB_RS,',
'	  PM_FOB_DOLL,',
'	  PM_COMMISSION_PERC,',
'	  PM_FOBC_AMT,',
'	  PM_FOB_DOLL_RND,',
'	  PM_OCEAN_FRT,',
'	  PM_FRT_PER_CTN,',
'	  PM_CANDF_AMT,',
'	  PM_CANDFC_AMT,',
'	  PM_CANDF_AMT_RND,',
'	  PM_INSURANCE_PERC,',
'	  PM_INSURANCE_AMT,',
'	  PM_CIF_AMT,',
'	  PM_CIFC_AMT,',
'	  PM_CIF_AMT_RND,',
'	  PM_CNI_AMT,',
'	  PM_CNIC_AMT,',
'	  PM_CNI_AMT_RND,',
'	  nvl(PM_COSTING_TYPE,''''FOB''''),',
'      PM_STW_RND_20,',
'	  PM_HSN_CODE,',
'	  PM_COSTING_REMARKS,',
'      PM_CIR_DISPLAY_NAME,',
'	  PM_GROSS_WEIGHT,',
'	  PM_NET_WEIGHT,',
'      PM_LENGTH,',
'      PM_BREADTH,',
'      PM_HEIGHT,',
'      PM_CUBIC_SPACE',
'	FROM V_PRODUCT_MASTER',
'	WHERE PM_ID in'' || v_product_id ||''',
'	  and pm_id not in (select mld_product_id',
'                    from V_MASTER_LIST_DETAILS',
'                    where MLD_ML_ID = '' ||:P21_MASTER_LIST_ID||''',
'                    ))'';',
'	',
'	insert into error_log (el_text) values (''v_insert_stmt from product master into MLD - '' || v_insert_stmt);',
'	 dbms_output.put_line (''v_insert_stmt from product master into MLD- '' || v_insert_stmt);',
'   ',
'    execute immediate v_insert_stmt;',
' END IF;',
'	',
'	   insert into error_log (el_text) values (''After insert of products in MLD from product master'');',
'       ',
'    --Commented by Rahul for testing to address data version conflict issue   pkg_status.update_status(''ORD_STATUS'',:P21_ENQ_ID,null,v_error_msg,v_success_failure);',
'',
'ELSE',
'          v_error_msg := ''Please select atleast one or more product(s) to be added to the enquiry'';',
'          apex_error.add_error (',
'                p_message          => v_error_msg,',
'                p_display_location => ''ON_ERROR_PAGE'' );  ',
'END IF;  ',
'  ',
' EXCEPTION ',
'',
'when  DUP_VAL_ON_INDEX then',
'    v_error_msg := ''Duplicate product(s) cannot be added to the enquiry'';',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => ''ON_ERROR_PAGE''  );  ',
'          ',
'when others then',
'    v_error_msg := ''Error:Adding Products to Enquiry'' || SQLERRM;',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => ''ON_ERROR_PAGE''  );',
'                    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>8224640400273735239
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(103525595984947394)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CUSTOMER_LEVEL,SYSTEM_LEVEL'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>103576745615775890
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(103525907185948881)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CUSTOMER_LEVEL,SYSTEM_LEVEL'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>103577056816777377
);
wwv_flow_imp.component_end;
end;
/
