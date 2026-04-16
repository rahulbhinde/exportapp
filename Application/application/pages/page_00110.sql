prompt --application/pages/page_00110
begin
--   Manifest
--     PAGE: 00110
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
 p_id=>110
,p_name=>'Expense'
,p_alias=>'EXPENSE'
,p_step_title=>'Expense'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54354780380088997)
,p_plug_name=>'Edit Multiple Invoices'
,p_region_name=>'MultipleInvoices'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cm_name,EOM_ENQ_NO,EOM_INVOICE_NO,ED_EXPENSE_AMOUNT,ed_id, ed_remarks',
'from V_EXPENSE_MASTER,V_EXPENSE_DETAILS,V_ENQUIRIES_ORDERS_MST,V_CUSTOMER_MASTER',
'where em_id = ed_em_id',
'and ED_EXPENSE_TYPE = :P110_ED_EXPENSE_TYPE',
'and EOM_INVOICE_DATE between :P110_FROM_DATE and :P110_TO_DATE',
'and EM_ENQ_ID = eom_enq_id',
'and EOM_CUSTOMER_ID = cm_id'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P110_ED_EXPENSE_TYPE,P110_FROM_DATE,P110_TO_DATE'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(45171856862306080)
,p_name=>'ED_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54354983112088999)
,p_name=>'CM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Customer'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54355060541089000)
,p_name=>'EOM_ENQ_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Enquiry#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54355190436089001)
,p_name=>'EOM_INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_INVOICE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Invoice#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54355281522089002)
,p_name=>'ED_EXPENSE_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_EXPENSE_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Expense Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54355796023089007)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54355887263089008)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(54356129901089010)
,p_name=>'ED_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ED_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(54354894995088998)
,p_internal_uid=>134405738381724724
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(62350066997048781)
,p_interactive_grid_id=>wwv_flow_imp.id(54354894995088998)
,p_static_id=>'1424010'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(62350302746048782)
,p_report_id=>wwv_flow_imp.id(62350066997048781)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(62350850797048798)
,p_view_id=>wwv_flow_imp.id(62350302746048782)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(54354983112088999)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(62351685620048817)
,p_view_id=>wwv_flow_imp.id(62350302746048782)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(54355060541089000)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>167
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(62352651404048827)
,p_view_id=>wwv_flow_imp.id(62350302746048782)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(54355190436089001)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(62353519811048830)
,p_view_id=>wwv_flow_imp.id(62350302746048782)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(54355281522089002)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(62760482490182312)
,p_view_id=>wwv_flow_imp.id(62350302746048782)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(54355796023089007)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(62763981089188408)
,p_view_id=>wwv_flow_imp.id(62350302746048782)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(54356129901089010)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63354209282721272)
,p_view_id=>wwv_flow_imp.id(62350302746048782)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(45171856862306080)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(59855302322528805)
,p_plug_name=>'Expense'
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EM_ID, EM_ENQ_ID, EM_FINAL, EM_REMARKS,',
'        EOM_CUSTOMER_ID, EOM_ENQ_DATE, EOM_ENQ_NO, ',
'        EOM_INVOICE_NO, EOM_INVOICE_DATE,',
'        (select sum(nvl(ed_expense_amount,0)) from V_EXPENSE_DETAILS where ed_em_id = em_id) ed_expense_amount,',
'        EM_CREATED_BY,',
'        EM_CREATED_ON,',
'        EM_UPDATED_BY,',
'        EM_UPDATED_ON',
'',
'from V_EXPENSE_MASTER,V_ENQUIRIES_ORDERS_MST,V_CUSTOMER_MASTER',
'where EM_ENQ_ID = EOM_ENQ_ID',
'and EOM_CUSTOMER_ID = CM_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Expense'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(59855395160528805)
,p_name=>'Expense'
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
,p_detail_link=>'f?p=&APP_ID.:111:&APP_SESSION.::&DEBUG.:RP:P111_EM_ID:\#EM_ID#\'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'SONAL'
,p_internal_uid=>139906238547164531
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59855848464528808)
,p_db_column_name=>'EM_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Em ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59856458572528815)
,p_db_column_name=>'EM_FINAL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Final'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(30621381686625309)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(59856923140528815)
,p_db_column_name=>'EM_REMARKS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(112553737645619493)
,p_db_column_name=>'EM_ENQ_ID'
,p_display_order=>14
,p_column_identifier=>'E'
,p_column_label=>'Em Enq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34558903755507801)
,p_db_column_name=>'EOM_CUSTOMER_ID'
,p_display_order=>24
,p_column_identifier=>'F'
,p_column_label=>'Customer'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(32895868083374039662)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34558968184507802)
,p_db_column_name=>'EOM_ENQ_DATE'
,p_display_order=>34
,p_column_identifier=>'G'
,p_column_label=>'Enquiry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34559014789507803)
,p_db_column_name=>'EOM_ENQ_NO'
,p_display_order=>44
,p_column_identifier=>'H'
,p_column_label=>'Enquiry#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34559165318507804)
,p_db_column_name=>'EOM_INVOICE_NO'
,p_display_order=>54
,p_column_identifier=>'I'
,p_column_label=>'Invoice#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34559234607507805)
,p_db_column_name=>'EOM_INVOICE_DATE'
,p_display_order=>64
,p_column_identifier=>'J'
,p_column_label=>'Invoice Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34559348761507806)
,p_db_column_name=>'ED_EXPENSE_AMOUNT'
,p_display_order=>74
,p_column_identifier=>'K'
,p_column_label=>'Expense Amount (&APP_LOCAL_CURR_SYMBOL.)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34559495982507807)
,p_db_column_name=>'EM_CREATED_BY'
,p_display_order=>84
,p_column_identifier=>'L'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34559541315507808)
,p_db_column_name=>'EM_CREATED_ON'
,p_display_order=>94
,p_column_identifier=>'M'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34559620323507809)
,p_db_column_name=>'EM_UPDATED_BY'
,p_display_order=>104
,p_column_identifier=>'N'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(34559726718507810)
,p_db_column_name=>'EM_UPDATED_ON'
,p_display_order=>114
,p_column_identifier=>'O'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(59866731505532025)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1243320'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EOM_ENQ_NO:EOM_CUSTOMER_ID:EOM_ENQ_DATE:ED_EXPENSE_AMOUNT:EOM_INVOICE_NO:EOM_INVOICE_DATE:EM_FINAL:EM_REMARKS:EM_UPDATED_BY:EM_UPDATED_ON:EM_CREATED_BY:EM_CREATED_ON:'
,p_sort_column_1=>'EOM_ENQ_NO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62355648859071721)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(54354780380088997)
,p_button_name=>'SEARCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25958326674976752)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(59855302322528805)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:111:&APP_SESSION.::&DEBUG.:111::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(54355510566089004)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(59855302322528805)
,p_button_name=>'EDIT_MULTIPLE_INVOICES'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Multiple Invoices'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:openModal(''MultipleInvoices'');'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54355424567089003)
,p_name=>'P110_ED_EXPENSE_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54354780380088997)
,p_item_default=>'P23_EOM_CREATED_ON'
,p_item_default_type=>'ITEM'
,p_prompt=>'Expense Type'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_EXPENSE_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''EXPENSE_TYPE''',
' order by ST_DISPLAY_ORDER'))
,p_cSize=>30
,p_colspan=>5
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
,p_item_comment=>'to_char(&P23_EOM_CREATED_ON.,''DD-MON-YYYY HH:MIPM'')'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62354628182065684)
,p_name=>'P110_FROM_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(54354780380088997)
,p_item_default=>'to_char(SYSDATE-60,''DD-MON-YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'From Invoice Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_item_comment=>'to_char(&P23_EOM_CREATED_ON.,''DD-MON-YYYY HH:MIPM'')'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62355019077068150)
,p_name=>'P110_TO_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(54354780380088997)
,p_item_default=>'to_char(SYSDATE,''DD-MON-YYYY'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To Invoice Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54355627925089005)
,p_name=>'RefreshRegion'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(62355648859071721)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54355713902089006)
,p_event_id=>wwv_flow_imp.id(54355627925089005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54354780380088997)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(54356220571089011)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_ED_EXPENSE_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(54356284688089012)
,p_event_id=>wwv_flow_imp.id(54356220571089011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(54354780380088997)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(54355965572089009)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(54354780380088997)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Edit Multiple Invoices - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>134406808958724735
);
wwv_flow_imp.component_end;
end;
/
