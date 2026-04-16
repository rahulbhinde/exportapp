prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_name=>'Test Add Products'
,p_step_title=>'Test Add Products'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script src="#APP_IMAGES#jQuery.js" type="text/javascript"></script>',
'<script src="#APP_IMAGES#multislider.js" type="text/javascript"></script>',
'<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">',
'<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">',
'<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">',
'',
'<script>',
'		$(''#mixedSlider'').multislider({',
'			duration: 750,',
'			interval: 3000',
'		});',
'</script>',
'',
'<script>',
'function setBrand(vBrand)',
'    {',
'        alert(vBrand);',
'        $s("P21_BRAND",vBrand);',
'    }',
'</script>',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-table tr.selected td {',
'    background-color: #2d7bbb;',
'    color: #fff;',
'}',
'.a-IRR-table tr.selected:hover td {',
'    background-color: #399bea;',
'    color: #fff;',
'}',
'',
'',
'/*Slider CSS*/',
'.container { margin:150px auto;}',
'#mixedSlider {',
'  position: relative;',
'}',
'#mixedSlider .MS-content {',
'  white-space: nowrap;',
'  overflow: hidden;',
'  margin: 0 5%;',
'}',
'#mixedSlider .MS-content .item {',
'  display: inline-block;',
'  width: 33.3333%;',
'  position: relative;',
'  vertical-align: top;',
'  overflow: hidden;',
'  height: 100%;',
'  white-space: normal;',
'  padding: 0 10px;',
'}',
'@media (max-width: 991px) {',
'  #mixedSlider .MS-content .item {',
'    width: 50%;',
'  }',
'}',
'@media (max-width: 767px) {',
'  #mixedSlider .MS-content .item {',
'    width: 100%;',
'  }',
'}',
'#mixedSlider .MS-content .item .imgTitle {',
'  position: relative;',
'}',
'#mixedSlider .MS-content .item .imgTitle .blogTitle {',
'  margin: 0;',
'  text-align: left;',
'  letter-spacing: 2px;',
'  color: #252525;',
'  font-style: italic;',
'  position: absolute;',
'  background-color: rgba(255, 255, 255, 0.5);',
'  width: 100%;',
'  bottom: 0;',
'  font-weight: bold;',
'  padding: 0 0 2px 10px;',
'}',
'#mixedSlider .MS-content .item .imgTitle img {',
'  height: auto;',
'  width: 100%;',
'}',
'#mixedSlider .MS-content .item p {',
'  font-size: 16px;',
'  margin: 2px 10px 0 5px;',
'  text-indent: 15px;',
'}',
'#mixedSlider .MS-content .item a {',
'  float: right;',
'  margin: 0 20px 0 0;',
'  font-size: 16px;',
'  font-style: italic;',
'  color: rgba(173, 0, 0, 0.82);',
'  font-weight: bold;',
'  letter-spacing: 1px;',
'  transition: linear 0.1s;',
'}',
'#mixedSlider .MS-content .item a:hover {',
'  text-shadow: 0 0 1px grey;',
'}',
'#mixedSlider .MS-controls button {',
'  position: absolute;',
'  border: none;',
'  background-color: transparent;',
'  outline: 0;',
'  font-size: 50px;',
'  top: 95px;',
'  color: rgba(0, 0, 0, 0.4);',
'  transition: 0.15s linear;',
'}',
'#mixedSlider .MS-controls button:hover {',
'  color: rgba(0, 0, 0, 0.8);',
'}',
'@media (max-width: 992px) {',
'  #mixedSlider .MS-controls button {',
'    font-size: 30px;',
'  }',
'}',
'@media (max-width: 767px) {',
'  #mixedSlider .MS-controls button {',
'    font-size: 20px;',
'  }',
'}',
'#mixedSlider .MS-controls .MS-left {',
'  left: 0px;',
'}',
'@media (max-width: 767px) {',
'  #mixedSlider .MS-controls .MS-left {',
'    left: -10px;',
'  }',
'}',
'#mixedSlider .MS-controls .MS-right {',
'  right: 0px;',
'}',
'@media (max-width: 767px) {',
'  #mixedSlider .MS-controls .MS-right {',
'    right: -10px;',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'<script src="#APP_IMAGES#jquery-migrate-3.0.0.min.js" type="text/javascript"></script>'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(96623433371980844)
,p_name=>'New'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ST_ID ,',
'        ST_NAME ,',
'        ''javascript:setBrand('''''' ||ST_CODE || '''''')'' link,',
'       dbms_lob.getlength("ST_IMAGE") "ST_IMAGE"',
'from V_SETUP_TABLE',
'where st_type = ''PRODUCT_BRAND''',
'or dbms_lob.getlength("ST_IMAGE") <> 0'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="mixedSlider">',
'<div class="MS-content">'))
,p_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<div class="MS-controls">',
'<button class="MS-left"><i class="fa fa-angle-left" aria-hidden="true"></i></button>',
'<button class="MS-right"><i class="fa fa-angle-right" aria-hidden="true"></i></button>',
'</div>',
'</div>'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(91812080886354951)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92494229455060890)
,p_query_column_id=>1
,p_column_alias=>'ST_ID'
,p_column_display_sequence=>1
,p_column_heading=>'St Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92494617686060890)
,p_query_column_id=>2
,p_column_alias=>'ST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'St Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92493871221060887)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>4
,p_column_heading=>'Link'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(92495068606060891)
,p_query_column_id=>4
,p_column_alias=>'ST_IMAGE'
,p_column_display_sequence=>3
,p_column_heading=>'St Image'
,p_column_format=>'IMAGE:V_SETUP_TABLE:ST_IMAGE:ST_ID::::::::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(168285942268824237)
,p_plug_name=>'Products'
,p_region_name=>'myreport'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'case when instr(:P69_SELECTED_PRODUCTS, ''|'' || c001 || ''|'') > 0 then ',
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
''''' Del',
'from APEX_COLLECTIONS col',
'WHERE COLLECTION_NAME=''PRODUCTS'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P69_SELECTED_PRODUCTS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(168286211111824247)
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
,p_internal_uid=>80854235154017705
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92495724542060898)
,p_db_column_name=>'PM_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92496869182060905)
,p_db_column_name=>'PM_ALIAS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Alias'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92496025094060905)
,p_db_column_name=>'PM_UOM'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'UOM'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92496377569060905)
,p_db_column_name=>'PC_NAME'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92497224669060905)
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
 p_id=>wwv_flow_imp.id(92497612200060906)
,p_db_column_name=>'PM_ID'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'<input type="checkbox" value="all">'
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
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92497999672060906)
,p_db_column_name=>'PM_CATEGORY'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Pm Category'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92498440292060906)
,p_db_column_name=>'PM_LENGTH'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Pm Length'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92498807167060907)
,p_db_column_name=>'PM_BREADTH'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Pm Breadth'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92499202929060907)
,p_db_column_name=>'PM_HEIGHT'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Pm Height'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92499624765060907)
,p_db_column_name=>'PM_NET_WEIGHT'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Pm Net Weight'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92500030912060907)
,p_db_column_name=>'PM_GROSS_WEIGHT'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Pm Gross Weight'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92500382924060907)
,p_db_column_name=>'DEL'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Del'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(92500802692060908)
,p_db_column_name=>'SELECTED'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Selected'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(168293585061824258)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'50692'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PM_ID:PM_NAME:PC_NAME:PM_UOM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32192305529891476794)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>5
,p_plug_display_point=>'REGION_POSITION_01'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(92501934468060912)
,p_button_sequence=>35
,p_button_plug_id=>wwv_flow_imp.id(32192305529891476794)
,p_button_name=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Products'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(92507864560060939)
,p_branch_name=>'close_after_save'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(92501934468060912)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(92508274444060939)
,p_branch_name=>'clr_sel_products'
,p_branch_action=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.::P69_SELECTED_PRODUCTS:'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92502329740060915)
,p_name=>'P69_MANUFACTURER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(32192305529891476794)
,p_prompt=>'Manufacturer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MANUFACTURER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supm_name as d,',
'       supm_id as r',
'  from V_SUPPLIER_MASTER',
' where nvl(supm_active,''Y'') = ''Y''',
'   and supm_supplier_type = ''MANUFACTURER''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Manufacturer -'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Default value removed as when null selected to select any product then it again fetchs default value',
'declare ',
'v_supm_id number;',
'begin',
'',
'select supm_id into v_supm_id from (',
'select supm_id --into v_supm_id',
'  from V_SUPPLIER_MASTER',
' where nvl(supm_active,''Y'') = ''Y''',
'   and supm_supplier_type = ''MANUFACTURER''',
'   ',
'order by supm_name)',
'where rownum =1;',
'',
'return v_supm_id;',
'',
'exception when others then',
'return 1;',
'end;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92502768570060918)
,p_name=>'P69_BRAND'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(32192305529891476794)
,p_item_default=>'ALL'
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_BRAND'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT PM_BRAND D, PM_BRAND R',
'FROM V_PRODUCT_MASTER',
'WHERE PM_BRAND IS NOT NULL',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Brand -'
,p_lov_null_value=>'ALL'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Default value removed as when null selected to select any product then it again fetchs default value',
'declare ',
'v_supm_id number;',
'begin',
'',
'select supm_id into v_supm_id from (',
'select supm_id --into v_supm_id',
'  from V_SUPPLIER_MASTER',
' where nvl(supm_active,''Y'') = ''Y''',
'   and supm_supplier_type = ''MANUFACTURER''',
'   ',
'order by supm_name)',
'where rownum =1;',
'',
'return v_supm_id;',
'',
'exception when others then',
'return 1;',
'end;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92503116915060919)
,p_name=>'P69_LATEST_COSTING'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(32192305529891476794)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSTEM'
,p_prompt=>'Latest costing'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:@ System Level;SYSTEM,@ Customer Level;CUSTOMER'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92503530133060919)
,p_name=>'P69_ENQ_ID'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_imp.id(32192305529891476794)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92503971959060920)
,p_name=>'P69_SELECTED_PRODUCTS'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_imp.id(32192305529891476794)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92505948560060936)
,p_name=>'selectProducts'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(168285942268824237)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92506452232060937)
,p_event_id=>wwv_flow_imp.id(92505948560060936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var cb$, checked, allRows$,',
'    sel$ = $("#P69_SELECTED_PRODUCTS"),',
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
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92506870244060938)
,p_name=>'afterrefresh'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(168285942268824237)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92507297915060938)
,p_event_id=>wwv_flow_imp.id(92506870244060938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var checked,',
'    allRows$ = $("#myreport").find("td input");',
'allRows$.filter(":checked").closest("tr").addClass("selected");',
'checked = (allRows$.length === allRows$.filter(":checked").length);',
'$("#myreport").find("th input")[0].checked = checked;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92505102900060934)
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
'              PM_NAME || '' '' ||   PM_PACKAGE',
'          || '' '' ||nvl2(PM_PACKAGE, '' x '',NULL)||PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT PM_NAME, ',
'				PM_MANUFAC_ID,',
'				PM_CATEGORY,',
'				pc_name,',
'				PM_ALIAS,',
'				PM_UOM,',
'				PM_LENGTH,',
'				PM_BREADTH,',
'				PM_HEIGHT,',
'				--PM_CUBIC_SPACE,',
'				PM_NET_WEIGHT,',
'				PM_GROSS_WEIGHT',
'				from V_PRODUCT_MASTER',
'					,V_PRODUCT_CATEGORY',
'				where pm_category = pc_id',
'				and ( DECODE(:P69_BRAND,''ALL'',''ALL'','''',''ALL'',NVL(PM_BRAND,''ALL'')) = nvl(:P69_BRAND,''ALL''))) loop',
'                --(PM_MANUFAC_ID = nvl(:P69_MANUFACTURER,PM_MANUFAC_ID)) or',
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
'				p_c012 =>i.PM_GROSS_WEIGHT',
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
'				p_c012 =>i.PM_GROSS_WEIGHT',
'				);',
'		END IF;',
'    END LOOP;	',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>92556252530889430
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92505484574060935)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert_products'
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
'insert into error_log (el_text) values ('':P69_SELECTED_PRODUCTS - '' || :P69_SELECTED_PRODUCTS);',
'if :P69_SELECTED_PRODUCTS is not null and :P69_SELECTED_PRODUCTS != ''|'' then',
'	 	',
'	v_product_id := ''('' || trim('','' from replace(:P69_SELECTED_PRODUCTS,''|'', '','')) || '')'';',
'	',
'	insert into error_log (el_text) values (''inside of if block of EOD insert - '' || v_product_id);',
' ',
'	dbms_output.put_line (''inside of if block of EOD insert - '' || v_product_id);',
'  IF :P69_LATEST_COSTING = ''CUSTOMER'' THEN',
'    SELECT MAX(eom_ord_id)',
'  INTO v_ord_id',
'  FROM V_ENQUIRIES_ORDERS_MST',
'  WHERE eom_type       = ''ORDER''',
'  AND eom_order_status = ''IP''',
'  AND eom_customer_id  =',
'    (SELECT eom_customer_id',
'    FROM V_ENQUIRIES_ORDERS_MST',
'    WHERE eom_enq_id = :P69_ENQ_ID',
'    );',
'  ',
'  v_insert_stmt := ''insert into V_ENQUIRIES_ORDERS_DETAILS',
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
'	  EOD_INSURANCE_AMT,',
'	  EOD_CIF_AMT,',
'	  EOD_CIFC_AMT,',
'	  EOD_CIF_AMT_RND,',
'	  EOD_CNI_AMT,',
'	  EOD_CNIC_AMT,',
'	  EOD_CNI_AMT_RND,',
'	  EOD_COSTING_TYPE,',
'      EOD_STW_RND_20,',
'	  EOD_HSN_CODE)',
'    (',
'    SELECT ',
'	  seq_eod_id.nextval,''||',
'	  :P69_ENQ_ID ||'',',
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
'	  EOD_INSURANCE_AMT,',
'	  EOD_CIF_AMT,',
'	  EOD_CIFC_AMT,',
'	  EOD_CIF_AMT_RND,',
'	  EOD_CNI_AMT,',
'	  EOD_CNIC_AMT,',
'	  EOD_CNI_AMT_RND,',
'	  nvl(EOD_COSTING_TYPE,''''FOB''''),',
'      EOD_STW_RND_20,',
'	  EOD_HSN_CODE',
'      from V_ENQUIRIES_ORDERS_MST, V_ENQUIRIES_ORDERS_DETAILS',
'where eom_enq_id = eod_enq_id',
'and eom_type = ''''ORDER''''',
'and eom_ord_id = '' || v_ord_id ||''',
'and eod_product_id in'' || v_product_id ||''',
'	  )'';',
' ',
'   insert into error_log (el_text) values (''v_insert_stmt latest order - '' || v_insert_stmt);',
'	 dbms_output.put_line (''v_insert_stmt order - '' || v_insert_stmt);',
'   ',
'    execute immediate v_insert_stmt;',
'	',
' END IF; -- Latest Costing Customer Specific       ',
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
'	  EOD_INSURANCE_AMT,',
'	  EOD_CIF_AMT,',
'	  EOD_CIFC_AMT,',
'	  EOD_CIF_AMT_RND,',
'	  EOD_CNI_AMT,',
'	  EOD_CNIC_AMT,',
'	  EOD_CNI_AMT_RND,',
'	  EOD_COSTING_TYPE,',
'      EOD_STW_RND_20,',
'	  EOD_HSN_CODE)',
'	',
'	  (',
'		SELECT ',
'	  seq_eod_id.nextval,''||',
'	  :P69_ENQ_ID ||'',',
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
'	  PM_INSURANCE_AMT,',
'	  PM_CIF_AMT,',
'	  PM_CIFC_AMT,',
'	  PM_CIF_AMT_RND,',
'	  PM_CNI_AMT,',
'	  PM_CNIC_AMT,',
'	  PM_CNI_AMT_RND,',
'	  nvl(PM_COSTING_TYPE,''''FOB''''),',
'      PM_STW_RND_20,',
'	  PM_HSN_CODE',
'	FROM V_PRODUCT_MASTER',
'	WHERE PM_ID in'' || v_product_id ||''',
'	  and pm_id not in (select eod_product_id',
'                    from V_ENQUIRIES_ORDERS_DETAILS',
'                    where eod_enq_id = '' ||:P69_ENQ_ID||''',
'                    ))'';',
'	 ',
'    insert into error_log (el_text) values (''v_insert_stmt from product master - '' || v_insert_stmt);',
'	 dbms_output.put_line (''v_insert_stmt from product masterv- '' || v_insert_stmt);',
'   ',
'    execute immediate v_insert_stmt;',
'	  ',
'	   insert into error_log (el_text) values (''After insert of products in EOD from product master'');',
'',
'ELSE',
'          v_error_msg := ''Please select atleast one or more product(s) to be added to the enquiry'';',
'          apex_error.add_error (',
'                p_message          => v_error_msg,',
'                p_display_location => apex_error.c_inline_in_notification );  ',
'END IF;  ',
'  ',
' EXCEPTION ',
'',
'when  DUP_VAL_ON_INDEX then',
'    v_error_msg := ''Duplicate product(s) cannot be added to the enquiry'';',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );  ',
'          ',
'when others then',
'    v_error_msg := ''Error:Adding Products to Enquiry'' || SQLERRM;',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );',
'                    ',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(92501934468060912)
,p_internal_uid=>92556634204889431
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92504276127060934)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(92501934468060912)
,p_internal_uid=>92555425757889430
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(92504736564060934)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(92501934468060912)
,p_internal_uid=>92555886194889430
);
wwv_flow_imp.component_end;
end;
/
