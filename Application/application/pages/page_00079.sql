prompt --application/pages/page_00079
begin
--   Manifest
--     PAGE: 00079
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
 p_id=>79
,p_name=>'Work Space Report'
,p_alias=>'WORK-SPACE-REPORT'
,p_step_title=>'Work Space Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29306757326414142)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 PK_WS,',
'        ''Work-Station'' SPACE_CATEGORY,',
'        ''Mumbai'' CITY,',
'        ''Mumbai - Goregaon'' BRANCH,',
'        ''21-JUL-20'' BOOKING_DATE,',
'        ''9:00 IST'' FROM_TIME,',
'        ''18:00 IST'' TO_TIME,',
'        ''NA'' ROOM_NAME,',
'        ''Access to Intranet application required'' REMARKS',
'from dual        ',
'union all',
'select 2,',
'        ''Meeting Room'' SPACE_CATEGORY,',
'        ''Mumbai'' CITY,',
'        ''Mumbai - Goregaon'' BRANCH,',
'        ''21-JUL-20'' BOOKING_DATE,',
'        ''10:00 IST'' FROM_TIME,',
'        ''11:00 IST'' TO_TIME,',
'        ''Kaveri'' ROOM_NAME,',
'        ''Demo with external party''',
'from dual',
'union all',
'select 3,',
'        ''Work-Station'' SPACE_CATEGORY,',
'        ''Mumbai'' CITY,',
'        ''Mumbai - Peninsula'' BRANCH,',
'        ''22-JUL-20'' BOOKING_DATE,',
'        ''9:00 IST'' FROM_TIME,',
'        ''18:00 IST'' TO_TIME,',
'        ''NA'' ROOM_NAME,',
'        ''Required to refer Internal system details''',
'from dual  ',
'union all',
'select 4,',
'        ''Cubical'' SPACE_CATEGORY,',
'        ''Mumbai'' CITY,',
'        ''Mumbai - Peninsula'' BRANCH,',
'        ''23-JUL-20'' BOOKING_DATE,',
'        ''9:00 IST'' FROM_TIME,',
'        ''18:00 IST'' TO_TIME,',
'        ''NA'' ROOM_NAME,',
'        ''Urgent issue of Customer ABC needs to be addressed''',
'from dual  '))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Report 1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(29307154155414142)
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
,p_detail_link=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:RP:P80_PK_WS:\#PK_WS#\'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'RANU'
,p_internal_uid=>11843164863644800
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29307218678414144)
,p_db_column_name=>'PK_WS'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Pk Ws'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29307590719414144)
,p_db_column_name=>'SPACE_CATEGORY'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Space Category'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29308033522414144)
,p_db_column_name=>'CITY'
,p_display_order=>22
,p_column_identifier=>'C'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29308454490414145)
,p_db_column_name=>'BRANCH'
,p_display_order=>32
,p_column_identifier=>'D'
,p_column_label=>'Branch'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29310061363414146)
,p_db_column_name=>'ROOM_NAME'
,p_display_order=>42
,p_column_identifier=>'H'
,p_column_label=>'Room Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29308823686414145)
,p_db_column_name=>'BOOKING_DATE'
,p_display_order=>52
,p_column_identifier=>'E'
,p_column_label=>'Booking Date'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29309233338414146)
,p_db_column_name=>'FROM_TIME'
,p_display_order=>62
,p_column_identifier=>'F'
,p_column_label=>'From Time'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(29309622700414146)
,p_db_column_name=>'TO_TIME'
,p_display_order=>72
,p_column_identifier=>'G'
,p_column_label=>'To Time'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28150818266058978)
,p_db_column_name=>'REMARKS'
,p_display_order=>82
,p_column_identifier=>'J'
,p_column_label=>'Reason for Visiting Office'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(29311291994414877)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'118474'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PK_WS:SPACE_CATEGORY:CITY:BRANCH:BOOKING_DATE:FROM_TIME:TO_TIME:ROOM_NAME:REMARKS'
,p_break_on=>'SPACE_CATEGORY:0:0:0:0:0'
,p_break_enabled_on=>'SPACE_CATEGORY:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29310926061414149)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(29306757326414142)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:80'
);
wwv_flow_imp.component_end;
end;
/
