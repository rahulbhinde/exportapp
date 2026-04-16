prompt --application/pages/page_00080
begin
--   Manifest
--     PAGE: 00080
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
 p_id=>80
,p_name=>'Work Space Details'
,p_alias=>'WORK-SPACE-DETAILS'
,p_step_title=>'Work Space Details'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29296724197414118)
,p_plug_name=>'Work Space Details'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 PK_WS,',
'        ''Work-Station'' SPACE_CATEGORY,',
'        ''Mumbai'' CITY,',
'        ''Corporate Office'' BRANCH,',
'        ''21-JUL-20'' BOOKING_DATE,',
'        ''9:00 IST'' FROM_TIME,',
'        ''18:00 IST'' TO_TIME,',
'        ''NA'' ROOM_NAME,',
'        ''Access to Intranet application required''',
'from dual        ',
'union all',
'select 2,',
'        ''Meeting Room'' SPACE_CATEGORY,',
'        ''Mumbai'' CITY,',
'        ''Corporate Office'' BRANCH,',
'        ''21-JUL-20'' BOOKING_DATE,',
'        ''10:00 IST'' FROM_TIME,',
'        ''11:00 IST'' TO_TIME,',
'        ''Kaveri'' ROOM_NAME,',
'        ''Demo with external party''',
'from dual'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29304529522414137)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--primary:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Book Space'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P80_PK_WS'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29303355586414132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--warning:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29304949100414138)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Book Space'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P80_PK_WS'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29304164912414136)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--danger:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Cancel Space'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(''Do you really want to "Cancel" booked space ?'',''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P80_PK_WS'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-times-square-o'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(29305236582414138)
,p_branch_action=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29297169991414119)
,p_name=>'P80_PK_WS'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_item_source_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pk Ws'
,p_source=>'PK_WS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29297519839414123)
,p_name=>'P80_SPACE_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_item_source_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_source=>'SPACE_CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Work-Station;WS,Cubical;CUB,Meeting Room;MR,Conference Room;CR'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--radioButtonGroup'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29297941262414125)
,p_name=>'P80_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_item_source_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_prompt=>'City'
,p_source=>'CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Ahmedabad;Return1,Bangalore;Return2,Chennai;Return3,Kolkata;Return4,Mumbai;Return5'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29298386949414125)
,p_name=>'P80_BRANCH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_item_source_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_prompt=>'Branch'
,p_source=>'BRANCH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Mumbai - Goregaon;Return1,Mumbai - Peninsula;Return2'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29298782634414125)
,p_name=>'P80_BOOKING_DATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_item_source_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_prompt=>'Booking Date'
,p_source=>'BOOKING_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>9
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_date', '+1d',
  'min_date', '+0d',
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29299178826414126)
,p_name=>'P80_FROM_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_item_source_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_prompt=>'From Time'
,p_source=>'FROM_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'TO_char(TO_DATE(''2014-03-25'', ''yyyy-mm-dd'') + (LEVEL-1)/24, ''HH24:MI'') AS DT,',
'TO_char(TO_DATE(''2014-03-25'', ''yyyy-mm-dd'') + (LEVEL-1)/24, ''HH24:MI'') AS RT',
'FROM    dual',
'CONNECT BY LEVEL <= (TO_DATE(''2014-03-26'', ''yyyy-mm-dd'') - TO_DATE(''2014-03-25'', ''yyyy-mm-dd'') )*24',
';  '))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29299523909414126)
,p_name=>'P80_TO_TIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_item_source_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_prompt=>'To Time'
,p_source=>'TO_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'TO_char(TO_DATE(''2014-03-25'', ''yyyy-mm-dd'') + (LEVEL-1)/24, ''HH24:MI'') AS DT,',
'TO_char(TO_DATE(''2014-03-25'', ''yyyy-mm-dd'') + (LEVEL-1)/24, ''HH24:MI'') AS RT',
'FROM    dual',
'CONNECT BY LEVEL <= (TO_DATE(''2014-03-26'', ''yyyy-mm-dd'') - TO_DATE(''2014-03-25'', ''yyyy-mm-dd'') )*24',
';  '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29299894391414126)
,p_name=>'P80_ROOM_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_item_source_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_prompt=>'Room Name'
,p_source=>'ROOM_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Kaveri;Return1,Tapi;Return2'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29300389055414126)
,p_name=>'P80_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_item_source_plug_id=>wwv_flow_imp.id(29296724197414118)
,p_prompt=>'Reason for Visiting Office'
,p_source=>'''ACCESSTOINTRANETAPPLICATIONREQUIRED'''
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>39
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29306164838414139)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(29296724197414118)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Work Space Details'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>29357314469242635
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(29305739240414139)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(29296724197414118)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Work Space Details'
,p_internal_uid=>29356888871242635
);
wwv_flow_imp.component_end;
end;
/
