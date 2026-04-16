prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_name=>'Issue PO'
,p_step_title=>'Issue PO'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>'.a-IRR-table td {padding: 0px 4px;!important} /*.a-IRR-table  td*/'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(164011091958015114)
,p_plug_name=>'Issue PO'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "POM_ID", ',
'cm_name,',
'supm_name,',
'ST_NAME,',
'eom_order_date,',
'"POM_DL_ID",',
'"POM_BL_ID",',
'"POM_DELIVERY_DATE",',
'"POM_DISCOUNT",',
'"POM_CREATED_BY",',
'"POM_CREATED_ON",',
'"POM_UPDATED_BY",',
'"POM_UPDATED_ON",',
''''' Download,',
'nvl(EOM_INVOICE_NO,EOM_ENQ_NO) EOM_INVOICE_NO,',
'EOM_ENQ_NO,',
'EOM_ENQ_NO EOM_ENQ_NO_BRK,',
'case when pom_status =''RJ'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_RJ /*#ED6647*/',
'			when pom_status =''IP'' and EOM_ORD_ID is not null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when pom_status =''OR'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_POI/*#0000FF #267DB3''*/',
'			when pom_status =''PDL'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_PR/*#0000FF #267DB3''*/',
'			when pom_status =''DL'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_RC/*#0000FF #267DB3''*/',
'	   end color_status_1',
'       ,case ',
'		    when pom_status =''RJ'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_RJ /*#ED6647*/',
'			when pom_status =''IP'' and EOM_ORD_ID is not null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when pom_status =''OR'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_PR/*#0000FF #267DB3''*/',
'			when pom_status =''PDL'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_RC/*#0000FF #267DB3''*/',
'			when pom_status =''DL'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_SHP/*#0000FF #267DB3''*/',
'	   end color_status_2,',
'       pom_status,',
'       nvl(pom_no,POM_ID) pom_no  --Added by Rahul 18-Nov-24 for Satkamal',
'	   /*colors mapped to Order_Status  as follows*',
'	   Partially Delivered	PDL		Partially Received PR',
'	   Delivered  			DL		Received RC',
'	   Ordered				OR		PO Issued POI',
'	   */',
'from V_PURCHASE_ORDER_MASTER,V_ENQUIRIES_ORDERS_MST,V_CUSTOMER_MASTER,V_SUPPLIER_MASTER,V_SETUP_TABLE',
'where  eom_customer_id = cm_id',
'and eom_type = ''ORDER''',
'and eom_ord_id = POM_ORD_ID',
'and POM_SUPPLIER_ID = supm_id',
'and ST_CODE = pom_status',
'and st_type = ''PO_STATUS''',
'and EOM_ORD_ACC_YEAR between :P35_FROM_FY and :P35_TO_FY;'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(164011499323015115)
,p_name=>'Issue PO'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'There are no Purchase Order(s).'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>11856921203816707
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164011676745015121)
,p_db_column_name=>'POM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'PO ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137022014742236152)
,p_db_column_name=>'CM_NAME'
,p_display_order=>11
,p_column_identifier=>'N'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27512976547570987)
,p_db_column_name=>'EOM_INVOICE_NO'
,p_display_order=>21
,p_column_identifier=>'W'
,p_column_label=>'Invoice#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164013956021015125)
,p_db_column_name=>'POM_DELIVERY_DATE'
,p_display_order=>31
,p_column_identifier=>'G'
,p_column_label=>'Delivery Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137022617312236588)
,p_db_column_name=>'SUPM_NAME'
,p_display_order=>41
,p_column_identifier=>'O'
,p_column_label=>'Supplier'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137023340133236588)
,p_db_column_name=>'ST_NAME'
,p_display_order=>51
,p_column_identifier=>'P'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137024041349236589)
,p_db_column_name=>'EOM_ORDER_DATE'
,p_display_order=>61
,p_column_identifier=>'Q'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47564120021591486)
,p_db_column_name=>'POM_DL_ID'
,p_display_order=>71
,p_column_identifier=>'T'
,p_column_label=>'Pom Dl Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47564158623591487)
,p_db_column_name=>'POM_BL_ID'
,p_display_order=>81
,p_column_identifier=>'U'
,p_column_label=>'Pom Bl Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164014354545015126)
,p_db_column_name=>'POM_DISCOUNT'
,p_display_order=>91
,p_column_identifier=>'H'
,p_column_label=>'Discount'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164251410705686020)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>101
,p_column_identifier=>'M'
,p_column_label=>'PO Output'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_ENQ_ID,P10_OUTPUT_TYPE,P10_CALLING_FROM,APP_OM_ID:#POM_ID#,PO,PO,'
,p_column_linktext=>'<i class="fa fa-file-excel-o" style="font-size:16px;color:#69C282"></i><i class="fa fa-file-pdf-o" style="font-size:16px;color:#ED6647"></i>'
,p_column_link_attr=>'title="Click"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164014708540015127)
,p_db_column_name=>'POM_CREATED_BY'
,p_display_order=>111
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47564232189591488)
,p_db_column_name=>'POM_CREATED_ON'
,p_display_order=>121
,p_column_identifier=>'V'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125660026840889694)
,p_db_column_name=>'POM_UPDATED_BY'
,p_display_order=>131
,p_column_identifier=>'R'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125660192234889695)
,p_db_column_name=>'POM_UPDATED_ON'
,p_display_order=>141
,p_column_identifier=>'S'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27614120779485762)
,p_db_column_name=>'COLOR_STATUS_1'
,p_display_order=>151
,p_column_identifier=>'X'
,p_column_label=>'Color Status 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27614222656485763)
,p_db_column_name=>'COLOR_STATUS_2'
,p_display_order=>161
,p_column_identifier=>'Y'
,p_column_label=>'Color Status 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3901943882588774226)
,p_db_column_name=>'EOM_ENQ_NO'
,p_display_order=>171
,p_column_identifier=>'Z'
,p_column_label=>'Enquiry #'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3901943780110774225)
,p_db_column_name=>'EOM_ENQ_NO_BRK'
,p_display_order=>181
,p_column_identifier=>'AA'
,p_column_label=>'Enquiry #'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3901943641537774224)
,p_db_column_name=>'POM_STATUS'
,p_display_order=>191
,p_column_identifier=>'AB'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(91368149916703176)
,p_db_column_name=>'POM_NO'
,p_display_order=>201
,p_column_identifier=>'AC'
,p_column_label=>'PO#'
,p_column_link=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:RP,72:P72_POM_ID:#POM_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt=""> #POM_NO#'
,p_column_link_attr=>'class="t-Button t-Button--stretch" style ="background-image: linear-gradient(to right, #COLOR_STATUS_1# ,#COLOR_STATUS_2#);color:#000000"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(164018617811017031)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'118641'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'POM_NO:CM_NAME:EOM_ENQ_NO:EOM_INVOICE_NO:EOM_ORDER_DATE:SUPM_NAME:POM_DELIVERY_DATE:POM_DISCOUNT:DOWNLOAD:POM_CREATED_BY:POM_CREATED_ON:POM_UPDATED_BY:POM_UPDATED_ON:'
,p_sort_column_1=>'EOM_ORDER_DATE'
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
 p_id=>wwv_flow_imp.id(3895240531868473310)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(164011091958015114)
,p_button_name=>'PO_IP'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>In-Progress'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''IP'');'
,p_icon_css_classes=>'fa-ship'
,p_button_cattributes=>'style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_IP. , &APP_COLOR_ENQ_IP. );color:#000000" '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3895240255389472004)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(164011091958015114)
,p_button_name=>'PO_ORDERED'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Ordered'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''OR'');'
,p_icon_css_classes=>'fa-cart-edit'
,p_button_cattributes=>'style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_POI. , &APP_COLOR_ORD_PR. );color:#000000" '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3895239976683470872)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(164011091958015114)
,p_button_name=>'PO_PARTIAL_DEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Partially Del.'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''PDL'');'
,p_icon_css_classes=>'fa-cart-edit'
,p_button_cattributes=>'style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_PR. , &APP_COLOR_ORD_RC. );color:#000000" '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3895239685429469827)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(164011091958015114)
,p_button_name=>'PO_DEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Delivered'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''DL'');'
,p_icon_css_classes=>'fa-ship'
,p_button_cattributes=>'style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_RC. , &APP_COLOR_ORD_SHP. );color:#000000" '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3895239404384468650)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(164011091958015114)
,p_button_name=>'PO_REJECTED'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Rejected'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''RJ'');'
,p_icon_css_classes=>'fa-ship'
,p_button_cattributes=>'style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_RJ. , &APP_COLOR_ENQ_RJ. );color:#000000"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3895239048506467523)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(164011091958015114)
,p_button_name=>'CLEAR_PO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Clear'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit('''');'
,p_icon_css_classes=>'fa-times-square-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164017197489015132)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(164011091958015114)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:72:&SESSION.:RP:&DEBUG.:72::'
,p_icon_css_classes=>'fa-file-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3901943317521774221)
,p_branch_name=>'Status Branch - IR Filter'
,p_branch_action=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:RIR:IR_POM_STATUS:&REQUEST.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_branch_condition=>'P35_FROM_FY,P35_TO_FY'
,p_branch_comment=>'URL Added - f?p=&APP_ID.:35:&APP_SESSION.:::RIR:IR_POM_STATUS:IP'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3897837782777172813)
,p_name=>'P35_PO_FLOW'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(164011091958015114)
,p_prompt=>'Enq Flow'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_IP. , &APP_COLOR_ENQ_IP. );color:#000000" href="javascript:apex.submit(''IP'')">PO In-Progress</a>',
'',
'   <span style="font-weight:bold;font-size:20px">	&#11166;</span>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_PPO. , &APP_COLOR_ORD_POI. );color:#000000" href="javascript:apex.submit(''PPO'')">Partial PO</a>',
'',
'    <span style="font-weight:bold;font-size:20px">	&#11166;</span>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_POI. , &APP_COLOR_ORD_PR. );color:#000000" href="javascript:apex.submit(''POI'')">PO Issued</a>',
'',
'    <span style="font-weight:bold;font-size:20px">	&#11166;</span>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_PR. , &APP_COLOR_ORD_RC. );color:#000000" href="javascript:apex.submit(''PDL'')">Partially Delivered</a>',
'',
'    <span style="font-weight:bold;font-size:20px">	&#11166;</span>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_RC. , &APP_COLOR_ORD_SHP. );color:#000000" href="javascript:apex.submit(''DL'')">Delivered</a> ',
'    ',
'',
'    ',
'    <a class="t-Button t-Button" style ="background-image: linear-gradient(to right, #f44336 , #f44336 );color:#ffffff" href="javascript:apex.submit('''')">Clear Status Filter</a> ',
'',
'</center>'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3897944764274279424)
,p_name=>'P35_TO_FY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(164011091958015114)
,p_item_default=>'TO_CHAR(SYSDATE,''YYYYMM'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To FY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select regexp_replace(AS_YEAR_MONTH, ''([0-9]{4})([0-9]{2})'', ''\1-\2'') d, AS_YEAR_MONTH r',
'from V_ACCOUNTING_SETUP',
'where AS_YEAR_MONTH  >= :P35_FROM_FY',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select To Year-Month -'
,p_lov_cascade_parent_items=>'P35_FROM_FY'
,p_ajax_items_to_submit=>'P35_FROM_FY'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3897945067318281250)
,p_name=>'P35_FROM_FY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(164011091958015114)
,p_item_default=>'202004'
,p_prompt=>'From FY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select regexp_replace(AS_YEAR_MONTH, ''([0-9]{4})([0-9]{2})'', ''\1-\2'')  d, AS_YEAR_MONTH r',
'from V_ACCOUNTING_SETUP',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select From Year-Month -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164016286001015130)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(164011091958015114)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164016874337015131)
,p_event_id=>wwv_flow_imp.id(164016286001015130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(164011091958015114)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164017594450015132)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164017197489015132)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164018083346015133)
,p_event_id=>wwv_flow_imp.id(164017594450015132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(164011091958015114)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
