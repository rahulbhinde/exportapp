prompt --application/pages/page_00093
begin
--   Manifest
--     PAGE: 00093
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
 p_id=>93
,p_name=>'Forward Booking'
,p_alias=>'FORWARD-BOOKING'
,p_step_title=>'Forward Booking'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1049372229729031)
,p_plug_name=>'Forward Booking'
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FB_ID,',
'       FB_BOOKING_REF_NO,',
'       FB_BOOKING_DATE,',
'       FB_CURRENCY,',
'       FB_AMOUNT,',
'       FB_UTILIZED_AMOUNT,',
'       FB_EXCHANGE_RATE,',
'       FB_LOCAL_CURR_AMOUNT,',
'       FB_FROM_DATE,',
'       FB_TO_DATE,',
'       FB_REMARKS,',
'       FB_CREATED_ON,',
'       FB_CREATED_BY,',
'       FB_UPDATED_ON,',
'       FB_UPDATED_BY,',
'       FB_TENANT_ID,',
'       FB_ENQ_IDS',
'  from V_FORWARD_BOOKINGS',
'  where to_char(FB_BOOKING_DATE,''YYYYMM'') between  :P93_FROM_FY and :P93_TO_FY'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P93_FROM_FY,P93_TO_FY'
,p_prn_page_header=>'Forward Booking'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1049481694729031)
,p_name=>'Forward Booking'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.:CR,96:P96_FB_ID:#FB_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'RANU@DEV'
,p_internal_uid=>25959116305494037
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1008090650619223)
,p_db_column_name=>'FB_ID'
,p_display_order=>10
,p_column_identifier=>'Q'
,p_column_label=>'Fb Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1008170903619224)
,p_db_column_name=>'FB_BOOKING_REF_NO'
,p_display_order=>20
,p_column_identifier=>'R'
,p_column_label=>'Booking#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1008337944619225)
,p_db_column_name=>'FB_BOOKING_DATE'
,p_display_order=>30
,p_column_identifier=>'S'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1008450756619226)
,p_db_column_name=>'FB_CURRENCY'
,p_display_order=>40
,p_column_identifier=>'T'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1008554923619227)
,p_db_column_name=>'FB_AMOUNT'
,p_display_order=>50
,p_column_identifier=>'U'
,p_column_label=>'Amount'
,p_column_html_expression=>'#FB_CURRENCY# #FB_AMOUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1008665055619228)
,p_db_column_name=>'FB_UTILIZED_AMOUNT'
,p_display_order=>60
,p_column_identifier=>'V'
,p_column_label=>'Utilized<br>Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1008762522619229)
,p_db_column_name=>'FB_EXCHANGE_RATE'
,p_display_order=>70
,p_column_identifier=>'W'
,p_column_label=>'Exch.<br>Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1008856468619230)
,p_db_column_name=>'FB_LOCAL_CURR_AMOUNT'
,p_display_order=>80
,p_column_identifier=>'X'
,p_column_label=>'Value (&APP_LOCAL_CURR_SYMBOL.)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1008875458619231)
,p_db_column_name=>'FB_FROM_DATE'
,p_display_order=>90
,p_column_identifier=>'Y'
,p_column_label=>'From Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1008996197619232)
,p_db_column_name=>'FB_TO_DATE'
,p_display_order=>100
,p_column_identifier=>'Z'
,p_column_label=>'To Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1009134548619233)
,p_db_column_name=>'FB_REMARKS'
,p_display_order=>110
,p_column_identifier=>'AA'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1009179959619234)
,p_db_column_name=>'FB_CREATED_ON'
,p_display_order=>120
,p_column_identifier=>'AB'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1009319816619235)
,p_db_column_name=>'FB_CREATED_BY'
,p_display_order=>130
,p_column_identifier=>'AC'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1009461086619236)
,p_db_column_name=>'FB_UPDATED_ON'
,p_display_order=>140
,p_column_identifier=>'AD'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1009527046619237)
,p_db_column_name=>'FB_UPDATED_BY'
,p_display_order=>150
,p_column_identifier=>'AE'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1009652619619238)
,p_db_column_name=>'FB_TENANT_ID'
,p_display_order=>160
,p_column_identifier=>'AF'
,p_column_label=>'Fb Tenant Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1009723650619239)
,p_db_column_name=>'FB_ENQ_IDS'
,p_display_order=>170
,p_column_identifier=>'AG'
,p_column_label=>'Enq Ids'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1068786169731404)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'259785'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FB_BOOKING_REF_NO:FB_BOOKING_DATE:FB_AMOUNT:FB_UTILIZED_AMOUNT:FB_EXCHANGE_RATE:FB_LOCAL_CURR_AMOUNT:FB_FROM_DATE:FB_TO_DATE:FB_REMARKS:FB_CREATED_BY:FB_CREATED_ON:FB_UPDATED_BY:FB_UPDATED_ON:APXWS_CC_001:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3040180018125402)
,p_report_id=>wwv_flow_imp.id(1068786169731404)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'APXWS_CC_001'
,p_operator=>'!='
,p_expr=>'0'
,p_condition_sql=>' (case when ((#APXWS_CC_EXPR#) != to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# != #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#ffffff'
,p_row_font_color=>'#f44336'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(3040588503125404)
,p_report_id=>wwv_flow_imp.id(1068786169731404)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'nvl(U,0)  -  nvl(V,0) '
,p_format_mask=>'999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Balance'
,p_report_label=>'Balance'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2516898835135460)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1049372229729031)
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--large:t-Button--iconLeft:t-Button--hoverIconPush:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_icon_css_classes=>'fa-window-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1056660526729076)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1049372229729031)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:96:&APP_SESSION.::&DEBUG.:96::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2402253790255356)
,p_name=>'P93_FROM_FY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1049372229729031)
,p_item_default=>'select substr(AS_GOVT_FY,1,4) || ''04'' from V_ACCOUNTING_SETUP where trunc(sysdate) between AS_OPEN_DATE and AS_CLOSE_DATE'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'From FY'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'--regexp_replace(AS_YEAR_MONTH, ''([0-9]{4})([0-9]{2})'', ''\1-\2'')  d',
'to_char(AS_OPEN_DATE,''Mon-YYYY'')  d,',
'AS_YEAR_MONTH r',
'from V_ACCOUNTING_SETUP',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select From Year-Month -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2402492740256938)
,p_name=>'P93_TO_FY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1049372229729031)
,p_item_default=>'TO_CHAR(SYSDATE,''YYYYMM'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To FY'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'--regexp_replace(AS_YEAR_MONTH, ''([0-9]{4})([0-9]{2})'', ''\1-\2'') d, ',
'to_char(AS_OPEN_DATE,''Mon-YYYY'')  d,',
'AS_YEAR_MONTH r',
'from V_ACCOUNTING_SETUP',
'where AS_YEAR_MONTH  >= :P93_FROM_FY',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select To Year-Month -'
,p_lov_cascade_parent_items=>'P93_FROM_FY'
,p_ajax_items_to_submit=>'P93_FROM_FY'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp.component_end;
end;
/
