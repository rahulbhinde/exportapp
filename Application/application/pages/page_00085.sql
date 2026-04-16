prompt --application/pages/page_00085
begin
--   Manifest
--     PAGE: 00085
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
 p_id=>85
,p_name=>'Board Return Master'
,p_alias=>'BOARD-RETURN-MASTER'
,p_step_title=>'Board Return Master'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22469700508544550379)
,p_plug_name=>'Board Return Master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BRM_ID,',
'       BRM_BOARD_CODE,',
'       BRM_FROM_DATE,',
'       BRM_TO_DATE,',
'       BRM_CREATED_BY,',
'       BRM_CREATED_ON,',
'       BRM_UPDATED_BY,',
'       BRM_UPDATED_ON,',
'        '''' "Download"',
'  from V_BOARD_RETURN_MASTER'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Board Return Master'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22469700176659550379)
,p_name=>'Board Return Master'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:RP:P86_BRM_ID:\#BRM_ID#\'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'RANU'
,p_internal_uid=>2909980000032561769
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22469700031005550376)
,p_db_column_name=>'BRM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Brm Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22469699578014550371)
,p_db_column_name=>'BRM_BOARD_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Board Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22469699263506550371)
,p_db_column_name=>'BRM_FROM_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'From Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22469698789443550371)
,p_db_column_name=>'BRM_TO_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'To Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22469698388599550371)
,p_db_column_name=>'BRM_CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22469698030277550370)
,p_db_column_name=>'BRM_CREATED_ON'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22469697583438550370)
,p_db_column_name=>'BRM_UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22469697263808550370)
,p_db_column_name=>'BRM_UPDATED_ON'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28933952300911406146)
,p_db_column_name=>'Download'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>' Output(s)'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_CALLING_FROM,P10_ENQ_ID,P10_OUTPUT_TYPE,APP_OM_ID:BOARD_RETURNS,#BRM_ID#,#BRM_BOARD_CODE#,'
,p_column_linktext=>'<i class="fa fa-file-excel-o" style="font-size:16px;color:#69C282"></i>'
,p_column_link_attr=>'title="Click to Open Outputs"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22469612875559546503)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'29100674'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BRM_BOARD_CODE:BRM_FROM_DATE:BRM_TO_DATE:Download:BRM_CREATED_BY:BRM_CREATED_ON:BRM_UPDATED_BY:BRM_UPDATED_ON:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22469696747306550369)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(22469700508544550379)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:86'
);
wwv_flow_imp.component_end;
end;
/
