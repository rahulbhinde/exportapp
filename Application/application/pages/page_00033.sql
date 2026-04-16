prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_name=>'User Notes'
,p_step_title=>'User Notes'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(163887299987095534)
,p_plug_name=>'User Notes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select  UN_ID , ',
' UN_TYPE ,',
' (select 	  cm_name ||'' - '' || EOM_ENQ_DATE',
'from V_ENQUIRIES_ORDERS_MST,V_CUSTOMER_MASTER',
'where eom_customer_id = cm_id',
'--and EOM_ORD_ID is null',
'and EOM_ENQ_ID = UN_TYPE_ID) UN_TYPE_ID ,',
' UN_HEADING ,',
' UN_DETAILS ,',
' UN_DISPLAY ,',
' UN_ACTIVE ,',
' UN_CREATED_BY ,',
' UN_CREATED_ON ,',
' UN_UPDATED_BY ,',
' UN_UPDATED_ON ',
'from  V_USER_NOTES  ',
' where un_created_by = :APP_USER ',
' and UN_TYPE = ''ENQ''',
' ',
'  union',
'  */',
' select  UN_ID , ',
' UN_TYPE ,',
'(select 	  cm_name || decode(EOM_INVOICE_NO,'''','' - Enq.# - '','' - Inv.# - '') ||nvl(EOM_INVOICE_NO ,EOM_ENQ_NO)',
' --cm_name || decode(EOM_ORDER_DATE,'''','' - Enq. Dt. -'','' - Ord. Dt. - '') || nvl(EOM_ORDER_DATE ,EOM_ENQ_DATE)',
'from V_ENQUIRIES_ORDERS_MST',
'       ,V_CUSTOMER_MASTER',
'where eom_customer_id = cm_id',
'--and EOM_ORD_ID is not null',
'and EOM_ENQ_ID = UN_TYPE_ID) UN_TYPE_ID ,',
' UN_HEADING ,',
' UN_DETAILS ,',
' UN_DISPLAY ,',
' UN_ACTIVE ,',
' UN_CREATED_BY ,',
' UN_CREATED_ON ,',
' UN_UPDATED_BY ,',
' UN_UPDATED_ON ',
'from  V_USER_NOTES  ',
' where un_created_by = :APP_USER ',
' and UN_TYPE not in (''USER'')',
' union',
' select  UN_ID , ',
' UN_TYPE ,',
' UN_TYPE_ID ,',
' UN_HEADING ,',
' UN_DETAILS ,',
' UN_DISPLAY ,',
' UN_ACTIVE ,',
' UN_CREATED_BY ,',
' UN_CREATED_ON ,',
' UN_UPDATED_BY ,',
' UN_UPDATED_ON ',
'from  V_USER_NOTES  ',
' where un_created_by = :APP_USER ',
' and UN_TYPE = ''USER'''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(163887661936095548)
,p_name=>'User Notes'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::P34_UN_ID:#UN_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_icon_view_columns_per_row=>1
,p_owner=>'RANU'
,p_internal_uid=>11733083816897140
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163887731313095621)
,p_db_column_name=>'UN_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163888061884095653)
,p_db_column_name=>'UN_TYPE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163888805620095665)
,p_db_column_name=>'UN_HEADING'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Heading'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163889198395095666)
,p_db_column_name=>'UN_DETAILS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Details'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163889593670095667)
,p_db_column_name=>'UN_DISPLAY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Display'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163889988303095672)
,p_db_column_name=>'UN_ACTIVE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Active'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163890384341095675)
,p_db_column_name=>'UN_CREATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163890873303095676)
,p_db_column_name=>'UN_CREATED_ON'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163919619456220500)
,p_db_column_name=>'UN_TYPE_ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Type Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125660230882889696)
,p_db_column_name=>'UN_UPDATED_BY'
,p_display_order=>22
,p_column_identifier=>'M'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125660317036889697)
,p_db_column_name=>'UN_UPDATED_ON'
,p_display_order=>32
,p_column_identifier=>'N'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(163894361327097115)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'117398'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UN_TYPE:UN_TYPE_ID:UN_HEADING:UN_DETAILS:UN_DISPLAY:UN_ACTIVE:UN_CREATED_BY:UN_CREATED_ON::UN_UPDATED_BY:UN_UPDATED_ON'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163892952217095690)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(163887299987095534)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:34:P34_UN_TYPE:USER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163892075688095682)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(163887299987095534)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163892542685095690)
,p_event_id=>wwv_flow_imp.id(163892075688095682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(163887299987095534)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163893286241095691)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(163892952217095690)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163893815863095691)
,p_event_id=>wwv_flow_imp.id(163893286241095691)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(163887299987095534)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
