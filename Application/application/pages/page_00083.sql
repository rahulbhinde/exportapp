prompt --application/pages/page_00083
begin
--   Manifest
--     PAGE: 00083
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
 p_id=>83
,p_name=>'Stock Details'
,p_alias=>'STOCK-DETAILS'
,p_step_title=>'Stock Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12693150445838787314)
,p_plug_name=>'Stock Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SD_ID,',
'       SD_REF_STOCK_ID,',
'       SD_ENQ_ID,',
'       SD_ORD_ID,',
'       SD_PO_ID,',
'       SD_ID_ID,',
'       SD_PRODUCT_ID,',
'       SD_DELIVERY_LOCATION,',
'       decode(SD_TYPE,''OUT'',-1*SD_QUANTITY,SD_QUANTITY) SD_QUANTITY,',
'       SD_TYPE,',
'       SD_REMARKS,',
'       SD_CREATED_BY,',
'       SD_CREATED_ON,',
'       SD_UPDATED_BY,',
'       SD_UPDATED_ON,',
'       SD_BATCH_NO,',
'       SD_PACKING_DATE,',
'       SD_EXPIRY_DATE,',
'       SD_LENGTH,',
'       SD_BREADTH,',
'       SD_HEIGHT,',
'       SD_GROSS_WEIGHT,',
'       SD_CUBIC_SPACE,',
'       SD_DIRECT_STOCK,',
'       SD_PACKING_MATERIAL_ID,',
'       SD_RATE,',
'       decode(SD_PACKING_MATERIAL_ID,null,''PRODUCT'',''PACKING_MATERIAL'') type_of_product,',
'       sd_user_remarks user_remarks ',
'  from V_STOCK_DETAILS',
'  where nvl(SD_DIRECT_STOCK,''N'') = ''Y''',
'  and sd_id_id is null',
'  and ((sd_type = ''OUT'' and sd_remarks is null) or (sd_type = ''IN'' and FN_STOCK_BALANCE(SD_ID) > 0));'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Stock Details'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12693150309544787314)
,p_name=>'Stock Details'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'There are no record(s) for Stock. Kindly click on "Create" to add new Stock entry.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_SD_ID,P28_PRODUCT_PPM:#SD_ID#,#TYPE_OF_PRODUCT#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'RANU'
,p_internal_uid=>996833769019526552
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693149935515787306)
,p_db_column_name=>'SD_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sd Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693149569231787300)
,p_db_column_name=>'SD_REF_STOCK_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sd Ref Stock Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693149141884787300)
,p_db_column_name=>'SD_ENQ_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Sd Enq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693148717853787300)
,p_db_column_name=>'SD_ORD_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sd Ord Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693148368227787300)
,p_db_column_name=>'SD_PO_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Sd Po Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693147940071787300)
,p_db_column_name=>'SD_ID_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Sd Id Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693147505914787299)
,p_db_column_name=>'SD_PRODUCT_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Product'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(11504197761410516)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693147080104787298)
,p_db_column_name=>'SD_DELIVERY_LOCATION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Delivery Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693146703444787298)
,p_db_column_name=>'SD_QUANTITY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693146350523787298)
,p_db_column_name=>'SD_TYPE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693145962817787298)
,p_db_column_name=>'SD_REMARKS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693145537305787297)
,p_db_column_name=>'SD_CREATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693145088417787297)
,p_db_column_name=>'SD_CREATED_ON'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693144778271787297)
,p_db_column_name=>'SD_UPDATED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693144311583787297)
,p_db_column_name=>'SD_UPDATED_ON'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693143967253787297)
,p_db_column_name=>'SD_BATCH_NO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Batch No.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693143498574787297)
,p_db_column_name=>'SD_PACKING_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Packing Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693143126992787296)
,p_db_column_name=>'SD_EXPIRY_DATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Expiry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693142687933787296)
,p_db_column_name=>'SD_LENGTH'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Length'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693142293264787296)
,p_db_column_name=>'SD_BREADTH'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Breadth'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693141884253787295)
,p_db_column_name=>'SD_HEIGHT'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Height'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693141523315787295)
,p_db_column_name=>'SD_GROSS_WEIGHT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Gross Weight'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693141084777787295)
,p_db_column_name=>'SD_CUBIC_SPACE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Cubic Space'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12693140730172787295)
,p_db_column_name=>'SD_DIRECT_STOCK'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Direct Stock'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101764941261300105)
,p_db_column_name=>'SD_PACKING_MATERIAL_ID'
,p_display_order=>34
,p_column_identifier=>'Y'
,p_column_label=>'Packing Material'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(101724189269231035)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101764782662300104)
,p_db_column_name=>'SD_RATE'
,p_display_order=>44
,p_column_identifier=>'Z'
,p_column_label=>'Rate (&APP_LOCAL_CURR_SYMBOL.)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101764695584300103)
,p_db_column_name=>'TYPE_OF_PRODUCT'
,p_display_order=>54
,p_column_identifier=>'AA'
,p_column_label=>'Type Of Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(101763893839300095)
,p_db_column_name=>'USER_REMARKS'
,p_display_order=>64
,p_column_identifier=>'AB'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12693140292005785878)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'9968438'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TYPE_OF_PRODUCT:SD_PRODUCT_ID:SD_PACKING_MATERIAL_ID:SD_RATE:SD_DELIVERY_LOCATION:SD_QUANTITY:SD_TYPE:SD_BATCH_NO:SD_PACKING_DATE:SD_EXPIRY_DATE:USER_REMARKS:SD_CREATED_BY:SD_CREATED_ON:'
,p_sort_column_1=>'SD_CREATED_ON'
,p_sort_direction_1=>'DESC'
,p_break_on=>'TYPE_OF_PRODUCT:0:0:0:0:0'
,p_break_enabled_on=>'TYPE_OF_PRODUCT:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12727447923264822623)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12693150445838787314)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_SD_ID:'
,p_icon_css_classes=>'fa-file-plus'
);
wwv_flow_imp.component_end;
end;
/
