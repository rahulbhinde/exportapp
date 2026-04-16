prompt --application/pages/page_00091
begin
--   Manifest
--     PAGE: 00091
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
 p_id=>91
,p_name=>'Sales Contract List'
,p_alias=>'SALES-CONTRACT-LIST'
,p_step_title=>'Sales Contract List'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(833139061656893014)
,p_plug_name=>'Sales Contract List'
,p_title=>'Sales Contracts'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ML_ID,',
'       ML_CUSTOMER_ID,',
'       ML_NAME,',
'       ML_REMARKS,',
'       ML_IS_INTERNAL,',
'       ML_STATUS,',
'       ML_CREATED_ON,',
'       ML_CREATED_BY,',
'       ML_UPDATED_ON,',
'       ML_UPDATED_BY,',
'       ML_TYPE,',
'       ML_COSTING_TYPE,',
'       ML_SALES_CONTRACT_NO,',
'       ML_TENANT_ID,',
'       ML_CONTAINER_SIZE,',
'       ML_DATE,',
'       ML_ACC_YEAR,',
'       ML_PORT_OF_DISCHARGE,',
'       ML_PORT_OF_LOADING,',
'       ML_PAY_TERMS,',
'       ML_QUOTE_IN,',
'       ''#63BF9D'' color_status_1,',
'       ''#63BF9D'' color_status_2',
'  from V_MASTER_LIST',
' where ML_IS_INTERNAL = ''N'' and',
'ML_TYPE = ''SALES_CONTRACT'' '))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Master List'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(833138616179893014)
,p_name=>'Master List'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>913189459566528740
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(264584784842617661)
,p_db_column_name=>'ML_NAME'
,p_display_order=>60
,p_column_identifier=>'M'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(264587251031617686)
,p_db_column_name=>'ML_ID'
,p_display_order=>70
,p_is_primary_key=>'Y'
,p_column_identifier=>'N'
,p_column_label=>'Ml Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(264587398010617687)
,p_db_column_name=>'ML_CUSTOMER_ID'
,p_display_order=>80
,p_column_identifier=>'O'
,p_column_label=>'Customer'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(32895868083374039662)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(264587457343617688)
,p_db_column_name=>'ML_REMARKS'
,p_display_order=>90
,p_column_identifier=>'P'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(264587577730617689)
,p_db_column_name=>'ML_IS_INTERNAL'
,p_display_order=>100
,p_column_identifier=>'Q'
,p_column_label=>'Is Internal'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(264587699119617690)
,p_db_column_name=>'ML_STATUS'
,p_display_order=>110
,p_column_identifier=>'R'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(264587803774617691)
,p_db_column_name=>'ML_CREATED_ON'
,p_display_order=>120
,p_column_identifier=>'S'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(264587869191617692)
,p_db_column_name=>'ML_CREATED_BY'
,p_display_order=>130
,p_column_identifier=>'T'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(264587957263617693)
,p_db_column_name=>'ML_UPDATED_ON'
,p_display_order=>140
,p_column_identifier=>'U'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(264588059314617694)
,p_db_column_name=>'ML_UPDATED_BY'
,p_display_order=>150
,p_column_identifier=>'V'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(264588246372617695)
,p_db_column_name=>'ML_TYPE'
,p_display_order=>160
,p_column_identifier=>'W'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(264588259588617696)
,p_db_column_name=>'ML_SALES_CONTRACT_NO'
,p_display_order=>170
,p_column_identifier=>'X'
,p_column_label=>'Sales Contract No'
,p_column_link=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92:P92_ML_ID:#ML_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt=""> #ML_SALES_CONTRACT_NO#'
,p_column_link_attr=>'class="t-Button t-Button--stretch" style ="background-image: linear-gradient(to right, #COLOR_STATUS_2# ,#COLOR_STATUS_2#);color:#000000;"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1304109614249851)
,p_db_column_name=>'ML_COSTING_TYPE'
,p_display_order=>180
,p_column_identifier=>'Y'
,p_column_label=>'Costing Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1303976261249850)
,p_db_column_name=>'ML_TENANT_ID'
,p_display_order=>190
,p_column_identifier=>'Z'
,p_column_label=>'Ml Tenant Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1303897877249849)
,p_db_column_name=>'ML_CONTAINER_SIZE'
,p_display_order=>200
,p_column_identifier=>'AA'
,p_column_label=>'Container Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1303873667249848)
,p_db_column_name=>'ML_DATE'
,p_display_order=>210
,p_column_identifier=>'AB'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1303745382249847)
,p_db_column_name=>'ML_ACC_YEAR'
,p_display_order=>220
,p_column_identifier=>'AC'
,p_column_label=>'Acc Year'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1303577750249846)
,p_db_column_name=>'ML_PORT_OF_DISCHARGE'
,p_display_order=>230
,p_column_identifier=>'AD'
,p_column_label=>'Port Of Discharge'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1303533615249845)
,p_db_column_name=>'ML_PORT_OF_LOADING'
,p_display_order=>240
,p_column_identifier=>'AE'
,p_column_label=>'Port Of Loading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1303457409249844)
,p_db_column_name=>'ML_PAY_TERMS'
,p_display_order=>250
,p_column_identifier=>'AF'
,p_column_label=>'Pay Terms'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1303313892249843)
,p_db_column_name=>'ML_QUOTE_IN'
,p_display_order=>260
,p_column_identifier=>'AG'
,p_column_label=>'Quote In'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1303185068249842)
,p_db_column_name=>'COLOR_STATUS_1'
,p_display_order=>270
,p_column_identifier=>'AH'
,p_column_label=>'Color Status 1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1303092559249841)
,p_db_column_name=>'COLOR_STATUS_2'
,p_display_order=>280
,p_column_identifier=>'AI'
,p_column_label=>'Color Status 2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(833090276829891348)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'248337'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ML_SALES_CONTRACT_NO:ML_CUSTOMER_ID:ML_REMARKS:ML_CREATED_ON:ML_CREATED_BY:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(49363382515705326)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(833139061656893014)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92::'
,p_icon_css_classes=>'fa-file-plus'
);
wwv_flow_imp.component_end;
end;
/
