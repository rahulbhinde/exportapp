prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Contacts'
,p_step_title=>'Contacts'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32823780135526881147)
,p_plug_name=>'Contact'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CTM_ID, ',
'case when ctm_cm_id is not null then',
' (   select cm_name',
'    from V_CUSTOMER_MASTER',
'    where cm_id = ctm_cm_id )',
'    else null',
'    end customer_name,',
'case when ctm_sup_id is not null then',
' (   select supm_name',
'    from V_SUPPLIER_MASTER',
'    where supm_id = ctm_sup_id )',
'    else null',
'    end supplier_name,',
'CTM_NAME,',
'CTM_TEL1,',
'CTM_TEL2,',
'CTM_ADDRESS1,',
'CTM_ADDRESS2,',
'--Commented by Ranu for Country/State changes on 11-Aug-25',
'--stc.st_name CTM_COUNTRY,',
'--sts.st_name CTM_STATE,',
'CTM_COUNTRY,',
'CTM_STATE,',
'CTM_CITY,',
'CTM_ZIP,',
'CTM_ANNIVERSARY,',
'CTM_BIRTHDAY,',
'CTM_REMARKS,',
'CTM_CREATED_BY,',
'CTM_CREATED_ON,',
'CTM_UPDATED_BY,',
'CTM_UPDATED_ON,',
'CTM_ACTIVE',
'from V_CONTACTS_MASTER',
'  /* ,V_SETUP_TABLE stc',
'    ,V_SETUP_TABLE  sts',
'where ctm_country = stc.st_id',
'and stc.st_type = ''COUNTRY''',
'and stc.st_code = sts.st_parent_id',
'and ctm_state = sts.st_id ',
'and sts.st_type = ''STATE''',
'and nvl(ctm_active,''Y'') = ''Y''*/;    '))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
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
,p_prn_header_font_color=>'#ffffff'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(32823780562685881147)
,p_name=>'Contact'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_CTM_ID:#CTM_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'BHINDE.RAHUL@GMAIL.COM'
,p_internal_uid=>32671625984566682739
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32823780674546881148)
,p_db_column_name=>'CTM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32823781779329881150)
,p_db_column_name=>'CTM_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Contact'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32823783028361881152)
,p_db_column_name=>'CTM_ADDRESS1'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Address 1'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32823783451944881152)
,p_db_column_name=>'CTM_ADDRESS2'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Address 2'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32823784644543881160)
,p_db_column_name=>'CTM_CITY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32823785013805881160)
,p_db_column_name=>'CTM_ZIP'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Zip'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32823785436397881160)
,p_db_column_name=>'CTM_ANNIVERSARY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Anniversary'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32823786117505881161)
,p_db_column_name=>'CTM_REMARKS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32823786502485881162)
,p_db_column_name=>'CTM_CREATED_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32823786906061881162)
,p_db_column_name=>'CTM_CREATED_ON'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32823787321329881163)
,p_db_column_name=>'CTM_UPDATED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32823787763157881163)
,p_db_column_name=>'CTM_UPDATED_ON'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32823788122808881164)
,p_db_column_name=>'CTM_ACTIVE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Active'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32898794988959885971)
,p_db_column_name=>'CTM_BIRTHDAY'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Birthday'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158289744418039787)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158290450124039789)
,p_db_column_name=>'SUPPLIER_NAME'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Supplier'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158291090014039790)
,p_db_column_name=>'CTM_COUNTRY'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3872441928882845350)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158291788169039790)
,p_db_column_name=>'CTM_STATE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(97962225364857513)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93969525671336810)
,p_db_column_name=>'CTM_TEL1'
,p_display_order=>35
,p_column_identifier=>'Z'
,p_column_label=>'Ctm Tel1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(93969591359336811)
,p_db_column_name=>'CTM_TEL2'
,p_display_order=>45
,p_column_identifier=>'AA'
,p_column_label=>'Ctm Tel2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32823792198050882711)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'326716377'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CTM_NAME:CUSTOMER_NAME:SUPPLIER_NAME:CTM_ADDRESS1:CTM_ADDRESS2:CTM_COUNTRY:CTM_STATE:CTM_CITY:CTM_ZIP'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32823789537370881168)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(32823780135526881147)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create '
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5::'
,p_icon_css_classes=>'fa-user-plus'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32823788560639881164)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(32823780135526881147)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32823789146609881167)
,p_event_id=>wwv_flow_imp.id(32823788560639881164)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32823780135526881147)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32823789940781881168)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32823789537370881168)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32823790456612881169)
,p_event_id=>wwv_flow_imp.id(32823789940781881168)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32823780135526881147)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
