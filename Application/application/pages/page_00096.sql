prompt --application/pages/page_00096
begin
--   Manifest
--     PAGE: 00096
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
 p_id=>96
,p_name=>'Forward Booking Details'
,p_alias=>'FORWARD-BOOKING-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Forward Booking Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--lg'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1030791262728935)
,p_plug_name=>'Forward Bookings'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
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
'  from V_FORWARD_BOOKINGS'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1009779775619240)
,p_plug_name=>'Details'
,p_parent_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRIM(s.column_value) AS split_enq_id,',
'       eom.EOM_INVOICE_NO,',
'       eom.EOM_ENQ_NO ,',
'        EOM_INVOICE_DATE,',
'EOM_OUR_DUE_DATE,',
'eom.EOM_TOTAL_CONTAINER_AMT',
'FROM   V_FORWARD_BOOKINGS fb,',
'       TABLE(APEX_STRING.SPLIT(fb.FB_ENQ_IDS, '':'')) s',
'       INNER JOIN V_ENQUIRIES_ORDERS_MST eom',
'            ON TRIM(s.column_value) = TO_CHAR(eom.EOM_ENQ_ID)',
'WHERE  fb.FB_ID = :P96_FB_ID          -- bind to APEX page item',
'--ORDER BY eom.EOM_ENQ_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P96_FB_ID'
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
 p_id=>wwv_flow_imp.id(1010004894619242)
,p_name=>'SPLIT_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLIT_ENQ_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Split Enq Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1010142325619243)
,p_name=>'EOM_INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_INVOICE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Invoice#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1010232559619244)
,p_name=>'EOM_ENQ_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Enquiry#'
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
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1590835632224995)
,p_name=>'EOM_INVOICE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_INVOICE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Invoice Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1590873496224996)
,p_name=>'EOM_OUR_DUE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_OUR_DUE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Our Due Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1591140708224998)
,p_name=>'EOM_TOTAL_CONTAINER_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_TOTAL_CONTAINER_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Container Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1009875901619241)
,p_internal_uid=>25919510512384247
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(1596378013225490)
,p_interactive_grid_id=>wwv_flow_imp.id(1009875901619241)
,p_static_id=>'265061'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1596608702225493)
,p_report_id=>wwv_flow_imp.id(1596378013225490)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1597106081225505)
,p_view_id=>wwv_flow_imp.id(1596608702225493)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1010004894619242)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1597987242225514)
,p_view_id=>wwv_flow_imp.id(1596608702225493)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1010142325619243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1598919546225520)
,p_view_id=>wwv_flow_imp.id(1596608702225493)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1010232559619244)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1599844744225526)
,p_view_id=>wwv_flow_imp.id(1596608702225493)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1590835632224995)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1600737044225532)
,p_view_id=>wwv_flow_imp.id(1596608702225493)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1590873496224996)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1603105941244250)
,p_view_id=>wwv_flow_imp.id(1596608702225493)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1591140708224998)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32191386104461690455)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_03'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1044170100729007)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(32191386104461690455)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:93:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1045230641729011)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(32191386104461690455)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P96_FB_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1045614823729013)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(32191386104461690455)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P96_FB_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1044789879729009)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(32191386104461690455)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P96_FB_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(69913861202257093)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1046012839729014)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_button_name=>'GET_NEXT_FBM_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process. P96_FBM_ID_NEXT is not null'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1045924682729014)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_button_name=>'GET_PREVIOUS_FBM_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process. P96_FBM_ID_PREV is not null'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1046802030729018)
,p_branch_action=>'f?p=&APP_ID.:96:&APP_SESSION.::&DEBUG.::P96_FBM_ID:&P96_FBM_ID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1046012839729014)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1047194767729020)
,p_branch_action=>'f?p=&APP_ID.:96:&APP_SESSION.::&DEBUG.::P96_FBM_ID:&P96_FBM_ID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1045924682729014)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1047496360729021)
,p_branch_action=>'f?p=&APP_ID.:93:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1006202194619204)
,p_name=>'P96_FB_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_default=>'SEQ_FB_ID'
,p_item_default_type=>'SEQUENCE'
,p_source=>'FB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1006339271619205)
,p_name=>'P96_FB_BOOKING_REF_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'Booking#'
,p_source=>'FB_BOOKING_REF_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1000
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1006379230619206)
,p_name=>'P96_FB_BOOKING_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'Booking Date'
,p_source=>'FB_BOOKING_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1006468320619207)
,p_name=>'P96_FB_CURRENCY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'Currency'
,p_source=>'FB_CURRENCY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'LOV_QUOTE_IN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r,',
'       st_extra2  as icon_column',
'  from V_SETUP_TABLE',
' where st_type = ''QUOTE_IN''',
' order by st_display_order'))
,p_cSize=>30
,p_cMaxlength=>100
,p_read_only_when=>'P96_FB_UTILIZED_AMOUNT'
,p_read_only_when_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1006659741619208)
,p_name=>'P96_FB_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'Amount'
,p_source=>'FB_AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1006673642619209)
,p_name=>'P96_FB_UTILIZED_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'Utilized Amount'
,p_source=>'FB_UTILIZED_AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1006785046619210)
,p_name=>'P96_FB_EXCHANGE_RATE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'Exchange Rate'
,p_source=>'FB_EXCHANGE_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P96_FB_UTILIZED_AMOUNT'
,p_read_only_when_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1006879831619211)
,p_name=>'P96_FB_LOCAL_CURR_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'Value'
,p_source=>'FB_LOCAL_CURR_AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_LOCAL_CURR. '
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1007009267619212)
,p_name=>'P96_FB_FROM_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'From Date'
,p_source=>'FB_FROM_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_read_only_when=>'P96_FB_UTILIZED_AMOUNT'
,p_read_only_when_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1007123280619213)
,p_name=>'P96_FB_TO_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'To Date'
,p_source=>'FB_TO_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P96_FB_UTILIZED_AMOUNT'
,p_read_only_when_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1007258712619214)
,p_name=>'P96_FB_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>' Remarks'
,p_source=>'FB_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1007356340619215)
,p_name=>'P96_FB_CREATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'Created On'
,p_source=>'FB_CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1007419680619216)
,p_name=>'P96_FB_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'Created By'
,p_source=>'FB_CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1007489773619217)
,p_name=>'P96_FB_UPDATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'Updated On'
,p_source=>'FB_UPDATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1007566153619218)
,p_name=>'P96_FB_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'Updated By'
,p_source=>'FB_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1007718917619219)
,p_name=>'P96_FB_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_source=>'FB_TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1007821146619220)
,p_name=>'P96_FB_ENQ_IDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_item_source_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_prompt=>'Linked Orders'
,p_source=>'FB_ENQ_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_MANY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT --eom.EOM_ENQ_NO,eom.EOM_ENQ_ID',
'nvl2(eom.EOM_INVOICE_NO,''Inv# '' || eom.EOM_INVOICE_NO ,''Enq# '' ||EOM_ENQ_NO) || ',
'                                '' | Inv.Date- '' || EOM_INVOICE_DATE d,',
' eom.EOM_ENQ_ID r',
'FROM   V_ENQUIRIES_ORDERS_MST eom',
'WHERE  EOM_ORD_ID is not NULL',
'AND    nvl(EOM_ORDER_STATUS,''IP'') != ''RJ''',
'AND    EOM_TYPE  = ''ORDER''',
'AND     EOM_QUOTE_IN = :P96_FB_CURRENCY',
'AND     NOT EXISTS (',
'           SELECT 1',
'           FROM   V_FORWARD_BOOKINGS fb,',
'                  TABLE(APEX_STRING.SPLIT(fb.FB_ENQ_IDS, '':'')) s',
'           WHERE  TRIM(s.column_value) = TO_CHAR(eom.EOM_ENQ_ID)',
'           AND ( :P96_FB_ID IS NULL',
'               OR (:P96_FB_ID is not null and FB_ID != :P96_FB_ID))',
'       )',
'ORDER BY eom.EOM_ENQ_ID;'))
,p_lov_cascade_parent_items=>'P96_FB_CURRENCY'
,p_ajax_items_to_submit=>'P96_FB_CURRENCY,P96_FB_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0',
  'use_defaults', 'Y')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1031647992728939)
,p_name=>'P96_FBM_ID_PREV'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1031986917728941)
,p_name=>'P96_FBM_ID_NEXT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1043882897729006)
,p_name=>'P96_FBM_ID_COUNT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(1030791262728935)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_display_when_type=>'NEVER'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1591297539225000)
,p_validation_name=>'FB Amount less than Utilized Amount '
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_utilized  NUMBER := 0;',
'    v_amount    NUMBER := 0;',
'BEGIN',
'    -- Only validate on existing records (FB_ID is not null)',
'    -- New records have no utilized amount yet',
'    IF :P96_FB_ID IS NULL THEN',
'        RETURN NULL;',
'    END IF;',
'',
'    v_amount := NVL(:P96_FB_AMOUNT, 0);',
'',
'    -- Always read utilized amount fresh from DB, never from page item',
'    SELECT NVL(FB_UTILIZED_AMOUNT, 0)',
'    INTO   v_utilized',
'    FROM   v_forward_bookings',
'    WHERE  fb_id        = :P96_FB_ID;',
'',
'    IF v_amount >= v_utilized THEN',
'        RETURN NULL;  -- passes',
'    ELSE',
'        RETURN ''Amount ('' || v_amount || ',
'               '') cannot be less than the already utilized amount ('' || ',
'               v_utilized || '').'';',
'    END IF;',
'',
'EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'        RETURN NULL;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'SAVE,CREATE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(1006659741619208)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1005824849619200)
,p_name=>'onChangeCalculateValue'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P96_FBM_AMOUNT,P96_FBM_EXCHANGE_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1005899315619201)
,p_event_id=>wwv_flow_imp.id(1005824849619200)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P96_FBM_LOCAL_CURR_AMOUNT'
,p_attribute_01=>'$x(''P96_FBM_LOCAL_CURR_AMOUNT'').value = $v(''P96_FBM_AMOUNT'') * $v(P96_FBM_EXCHANGE_RATE)'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1007932846619221)
,p_name=>'onChangeCalculateValue'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P96_FB_AMOUNT,P96_FB_EXCHANGE_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1007973750619222)
,p_event_id=>wwv_flow_imp.id(1007932846619221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P96_FB_LOCAL_CURR_AMOUNT'
,p_attribute_01=>'$x(''P96_FB_LOCAL_CURR_AMOUNT'').value = $v(''P96_FB_AMOUNT'') * $v(P96_FB_EXCHANGE_RATE)'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1048453914729025)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1030791262728935)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on FORWARD_BOOKING_MASTER'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>25958088525494031
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1047977674729023)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(1030791262728935)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on FORWARD_BOOKING_MASTER'
,p_attribute_01=>'P96_FBM_ID_NEXT'
,p_attribute_02=>'P96_FBM_ID_PREV'
,p_attribute_03=>'P96_FBM_ID_COUNT'
,p_internal_uid=>25957612285494029
);
wwv_flow_imp.component_end;
end;
/
