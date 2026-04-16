prompt --application/pages/page_00039
begin
--   Manifest
--     PAGE: 00039
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
 p_id=>39
,p_name=>'Output Form Master'
,p_step_title=>'Output Form Master'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(164295801053489004)
,p_plug_name=>'Output Form Master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "OFM_ID", ',
'"OFM_NAME",',
'"OFM_CREATED_BY",',
'"OFM_CREATED_ON",',
'"OFM_MODIFIED_BY",',
'"OFM_MODIFIED_ON"',
'from "#OWNER#"."V_OUTPUT_FORMS_MASTER" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(164296172019489006)
,p_name=>'Output Form Master'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:40:&APP_SESSION.::::P40_OFM_ID:#OFM_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'RAHUL'
,p_internal_uid=>12141593900290598
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164296203351489034)
,p_db_column_name=>'OFM_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Ofm Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164296641520489050)
,p_db_column_name=>'OFM_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Ofm Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164297003818489052)
,p_db_column_name=>'OFM_CREATED_BY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ofm Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164297437711489056)
,p_db_column_name=>'OFM_CREATED_ON'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ofm Created On'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164297792531489057)
,p_db_column_name=>'OFM_MODIFIED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Ofm Modified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164298191898489059)
,p_db_column_name=>'OFM_MODIFIED_ON'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Ofm Modified On'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(164316750830528286)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'121622'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OFM_ID:OFM_NAME:OFM_CREATED_BY:OFM_CREATED_ON:OFM_MODIFIED_BY:OFM_MODIFIED_ON'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164299508480489065)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(164295801053489004)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:40'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164298660019489061)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(164295801053489004)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164299146464489065)
,p_event_id=>wwv_flow_imp.id(164298660019489061)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(164295801053489004)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164299897215489067)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(164299508480489065)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164300433113489068)
,p_event_id=>wwv_flow_imp.id(164299897215489067)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(164295801053489004)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
