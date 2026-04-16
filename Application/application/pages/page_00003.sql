prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Product Category Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Category Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33576202580447468450)
,p_plug_name=>'Product Category Details'
,p_region_template_options=>'#DEFAULT#:t-Form--labelsAbove'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_query_type=>'TABLE'
,p_query_table=>'V_PRODUCT_CATEGORY'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'N',
  'attribute_02', 'TEXT',
  'attribute_03', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33576203377354468450)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33576203756269468451)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33576203377354468450)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33576203239012468450)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(33576203377354468450)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3_PC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33576203107180468450)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(33576203377354468450)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_PC_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33576203014928468450)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(33576203377354468450)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P3_PC_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33576206102502468475)
,p_name=>'P3_PC_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'PC_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33576206551290468476)
,p_name=>'P3_PC_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'PC_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>2000
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33576206909089468477)
,p_name=>'P3_PC_GROUP_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Group Number'
,p_source=>'PC_GROUP_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>500
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33576207353065468477)
,p_name=>'P3_PC_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Code'
,p_source=>'PC_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33576207697659468477)
,p_name=>'P3_PC_SRNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_prompt=>'SRNO'
,p_source=>'PC_SRNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>500
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33576208087684468478)
,p_name=>'P3_PC_SION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_prompt=>'SION'
,p_source=>'PC_SION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>500
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33576208493166468478)
,p_name=>'P3_PC_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rate (%)'
,p_source=>'PC_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>500
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33576208949082468479)
,p_name=>'P3_PC_CATEGORY_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_item_default=>'DEPB'
,p_prompt=>'Category Type'
,p_source=>'PC_CATEGORY_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_PROD_CATEGORY_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''PRODUCT_CATEGORY_TYPE''',
' order by st_display_order'))
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33576209353844468479)
,p_name=>'P3_PC_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Created By'
,p_source=>'PC_CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33576209686597468480)
,p_name=>'P3_PC_CREATED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Created On'
,p_source=>'PC_CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33576210142689468480)
,p_name=>'P3_PC_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Updated By'
,p_source=>'PC_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33576210522554468481)
,p_name=>'P3_PC_UPDATED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Updated On'
,p_source=>'PC_UPDATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33576210929271468481)
,p_name=>'P3_PC_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_source=>'PC_ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33577663988893202122)
,p_name=>'P3_PC_RATE_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_item_source_plug_id=>wwv_flow_imp.id(33576202580447468450)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<br>'
,p_source=>'PC_RATE_UNIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ST_NAME as display_value, ST_CODE as return_value ',
'  from V_SETUP_TABLE',
'  where st_type = ''DBK_RATE_UNIT''',
'  order by st_display_order'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33576203866515468451)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33576203756269468451)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33576204596132468453)
,p_event_id=>wwv_flow_imp.id(33576203866515468451)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33579093981833938683)
,p_name=>'display fields based on category'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_PC_CATEGORY_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33579094416070938684)
,p_event_id=>wwv_flow_imp.id(33579093981833938683)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P3_PC_CATEGORY_TYPE'') == ''DEPB'')',
'{',
'  $x_Show(''P3_PC_SION'');',
'  $x_Show(''P3_PC_CODE'');',
'  $x_Show(''P3_PC_GROUP_NO'');',
'  $x_Show(''P3_PC_SRNO'');',
'  $x_Show(''P3_PC_RATE'');  ',
'  $x_Hide(''P3_PC_RATE_UNIT'');',
'  $x(''P3_PC_RATE_UNIT'').value = '''';',
'}',
'else if ($v(''P3_PC_CATEGORY_TYPE'') == ''DRAWBACK'')',
'{',
'  $x_Hide(''P3_PC_SION'');',
'  $x_Hide(''P3_PC_CODE'');',
'  $x_Show(''P3_PC_GROUP_NO'');',
'  $x_Show(''P3_PC_SRNO'');',
'  $x_Show(''P3_PC_RATE'');  ',
'  $x_Show(''P3_PC_RATE_UNIT'');  ',
'  $x(''P3_PC_SION'').value = '''';',
'  $x(''P3_PC_CODE'').value = '''';',
'}',
'else if ($v(''P3_PC_CATEGORY_TYPE'') == ''FREE'')',
'{',
'  $x_Hide(''P3_PC_SION'');',
'  $x_Hide(''P3_PC_CODE'');',
'  $x_Hide(''P3_PC_RATE_UNIT'');',
'  $x_Hide(''P3_PC_GROUP_NO'');',
'  $x_Hide(''P3_PC_SRNO'');',
'  $x_Hide(''P3_PC_RATE'');',
'  $x(''P3_PC_RATE_UNIT'').value = '''';',
'  $x(''P3_PC_SION'').value = '''';',
'  $x(''P3_PC_CODE'').value = '''';',
'  $x(''P3_PC_GROUP_NO'').value = '''';  ',
'  $x(''P3_PC_SRNO'').value = '''';    ',
'  $x(''P3_PC_RATE'').value = '''';    ',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33576211729656468482)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(33576202580447468450)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from V_PRODUCT_CATEGORY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33576262879287296978
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33576212157993468483)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P3_PC_ID is null then',
'        select "#OWNER#"."SEQ_PC_ID".nextval',
'          into :P3_PC_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(33576203014928468450)
,p_internal_uid=>33576263307624296979
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33576212504248468483)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(33576202580447468450)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of V_PRODUCT_CATEGORY'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>33576263653879296979
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33576212958740468484)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(33576203239012468450)
,p_internal_uid=>33576264108371296980
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33576213352677468484)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>33576264502308296980
);
wwv_flow_imp.component_end;
end;
/
