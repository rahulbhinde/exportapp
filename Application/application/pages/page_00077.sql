prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_name=>'Inward Report'
,p_alias=>'INWARD-REPORT'
,p_step_title=>'Inward Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12738567767063931612)
,p_plug_name=>'Inward Master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IM_ID,',
'       IM_INWARD_NO,',
'       IM_INWARD_DATE,',
'       IM_DELIVERY_DATE,',
'       IM_CREATED_BY,',
'       IM_CREATED_ON,',
'       IM_UPDATED_BY,',
'       IM_UPDATED_ON,',
'       IM_STATUS,',
'       IM_ORD_STOCK_FLAG,',
'       IM_REMARKS,',
'       IM_STATUS IM_STATUS_FILTER,',
'       supplier.supm_name',
'  from V_INWARD_MASTER, (select distinct id_im_id, listagg(distinct supm_name,'', '') OVER(PARTITION BY id_im_id) supm_name',
'       from V_INWARD_DETAILS,V_SUPPLIER_MASTER ',
'        where id_supm_id = supm_id )supplier',
'    where im_id = supplier.id_im_id (+)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Inward Master'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(12738567305856931612)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:RP:P82_IM_ID:\#IM_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'RANU'
,p_internal_uid=>951416772707382254
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12738567187579931609)
,p_db_column_name=>'IM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12738566852390931605)
,p_db_column_name=>'IM_INWARD_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Inward#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12738566449164931605)
,p_db_column_name=>'IM_INWARD_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Inward Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12738566069187931604)
,p_db_column_name=>'IM_DELIVERY_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Delivery Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12738565603871931604)
,p_db_column_name=>'IM_CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12738565269066931604)
,p_db_column_name=>'IM_CREATED_ON'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12738564857371931604)
,p_db_column_name=>'IM_UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12738564471888931604)
,p_db_column_name=>'IM_UPDATED_ON'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12738563989840931604)
,p_db_column_name=>'IM_STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(142946820452443213)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12738563604853931603)
,p_db_column_name=>'IM_ORD_STOCK_FLAG'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Stock Flag'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12796070393215358538)
,p_db_column_name=>'IM_REMARKS'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12796070298531358537)
,p_db_column_name=>'IM_STATUS_FILTER'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Status Filter'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22346407693143018)
,p_db_column_name=>'SUPM_NAME'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'Supplier Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12738562705826930444)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9514214'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IM_ID:IM_INWARD_NO:IM_INWARD_DATE:IM_DELIVERY_DATE:SUPM_NAME:IM_CREATED_BY:IM_CREATED_ON:IM_UPDATED_BY:IM_UPDATED_ON:IM_STATUS:IM_ORD_STOCK_FLAG:IM_REMARKS:'
,p_sort_column_1=>'IM_ID'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(13164362918762738)
,p_report_id=>wwv_flow_imp.id(12738562705826930444)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IM_STATUS_FILTER'
,p_operator=>'='
,p_expr=>'IP'
,p_condition_sql=>'"IM_STATUS_FILTER" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''IP''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12707251607167824383)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12738567767063931612)
,p_button_name=>'IW_IP'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>In-Progress'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''IP'');'
,p_icon_css_classes=>'fa-cart-edit'
,p_button_cattributes=>'style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_IP. , &APP_COLOR_ENQ_IP. );color:#000000" title="Click to filter In-Progress Inwards"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12707251323726821338)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12738567767063931612)
,p_button_name=>'IW_CO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Closed'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''CO'');'
,p_icon_css_classes=>'fa-check-square-o'
,p_button_cattributes=>'title="Click to filter Closed Inwards" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_RC. , &APP_COLOR_ORD_SHP. );color:#000000"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12707250987947820086)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(12738567767063931612)
,p_button_name=>'CLEAR'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Clear'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit('''');'
,p_icon_css_classes=>'fa-times-square-o'
,p_button_cattributes=>'title="Click to clear all filter(s) applied for Inwards"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12738563088551931603)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(12738567767063931612)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.:82'
,p_icon_css_classes=>'fa-file-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12707250821885817958)
,p_branch_name=>'Status Branch - IR Filter'
,p_branch_action=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:RR,RIR:IR_IM_STATUS_FILTER:&REQUEST.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>50
,p_branch_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'URL Added - f?p=&APP_ID.:35:&APP_SESSION.:::RIR:IR_POM_STATUS:IP',
''))
);
wwv_flow_imp.component_end;
end;
/
