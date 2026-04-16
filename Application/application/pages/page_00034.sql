prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_name=>'User Notes'
,p_page_mode=>'MODAL'
,p_step_title=>'User Notes'
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
 p_id=>wwv_flow_imp.id(163876187568094968)
,p_plug_name=>'User Notes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'V_USER_NOTES'
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
 p_id=>wwv_flow_imp.id(163876867160095025)
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
 p_id=>wwv_flow_imp.id(163877217057095028)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(163876867160095025)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163876752763095025)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(163876867160095025)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P34_UN_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163876646970095025)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(163876867160095025)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P34_UN_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163876511436095025)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(163876867160095025)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P34_UN_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57534342897152963)
,p_name=>'P34_CUSTOMER'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EOM_CUSTOMER_ID ',
'From V_ENQUIRIES_ORDERS_MST ',
'where EOM_ENQ_ID =decode(:P34_UN_TYPE,''USER'',EOM_ENQ_ID,:P34_UN_TYPE_ID)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CUSTOMER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cm_name as d,',
'       cm_id as r',
'  from V_CUSTOMER_MASTER',
' where nvl(cm_active,''Y'') = ''Y''',
' order by 1'))
,p_cSize=>30
,p_read_only_when=>'P34_UN_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(163879575282095151)
,p_name=>'P34_UN_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_item_source_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Un Id'
,p_source=>'UN_ID'
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
 p_id=>wwv_flow_imp.id(163879968171095237)
,p_name=>'P34_UN_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_item_source_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_source=>'UN_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_NOTES_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''OUTPUT_TYPE''',
' union',
' select ''User'' as d,',
'       ''USER'' as r',
'  from dual',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Type -'
,p_cHeight=>1
,p_read_only_when=>'P34_UN_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(163880199671095289)
,p_name=>'P34_UN_TYPE_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_item_source_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P34_UN_TYPE = ''ENQ'' then',
'return ''select 	  cm_name ||'''' - '''' || EOM_ENQ_DATE D, EOM_ENQ_ID R',
'from V_ENQUIRIES_ORDERS_MST,V_CUSTOMER_MASTER',
'where eom_customer_id = cm_id',
'and EOM_ORD_ID is null',
'and decode(''||nvl(:P34_CUSTOMER,-1)|| '',-1,-1,EOM_CUSTOMER_ID) = decode(''||nvl(:P34_CUSTOMER,-1)|| '',-1,-1,''||nvl(:P34_CUSTOMER,-1)||'')'';',
'elsif :P34_UN_TYPE = ''USER'' then',
'return ''select :APP_USER D, :APP_USER R from dual'';',
'else --:P34_UN_TYPE = ''CI''  then',
'return ''select 	  cm_name || '''' - '''' || EOM_ORDER_DATE D,EOM_ENQ_ID R',
'from V_ENQUIRIES_ORDERS_MST',
'       ,V_CUSTOMER_MASTER',
'where eom_customer_id = cm_id',
'and EOM_ORD_ID is not null',
'and decode(''||nvl(:P34_CUSTOMER,-1)|| '',-1,-1,EOM_CUSTOMER_ID) = decode(''||nvl(:P34_CUSTOMER,-1)|| '',-1,-1,''||nvl(:P34_CUSTOMER,-1)||'')'';',
'--else',
'--return ''select null D, null R from dual'';',
'end if;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Type Name'
,p_source=>'UN_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'/*if :P34_UN_TYPE = ''ENQ'' then',
'return ''select 	  cm_name ||'''' - '''' || EOM_ENQ_DATE D, EOM_ENQ_ID R',
'from V_ENQUIRIES_ORDERS_MST,V_CUSTOMER_MASTER',
'where eom_customer_id = cm_id',
'and EOM_ORD_ID is null',
'and decode(''||nvl(:P34_CUSTOMER,-1)|| '',-1,-1,EOM_CUSTOMER_ID) = decode(''||nvl(:P34_CUSTOMER,-1)|| '',-1,-1,''||nvl(:P34_CUSTOMER,-1)||'')'';*/',
'if :P34_UN_TYPE = ''USER'' then',
'return ''select :APP_USER D, :APP_USER R from dual'';',
'else --:P34_UN_TYPE = ''CI''  then',
'return ''select 	   decode(EOM_INVOICE_NO,'''''''',''''Enq.# -'''',''''Inv.# - '''') || nvl(EOM_INVOICE_NO ,EOM_ENQ_NO) d',
',EOM_ENQ_ID R',
'from V_ENQUIRIES_ORDERS_MST',
'       ,V_CUSTOMER_MASTER',
'where eom_customer_id = cm_id',
'and decode(''||nvl(:P34_CUSTOMER,-1)|| '',-1,-1,EOM_CUSTOMER_ID) = decode(''||nvl(:P34_CUSTOMER,-1)|| '',-1,-1,''||nvl(:P34_CUSTOMER,-1)||'')'';',
'--else',
'--return ''select null D, null R from dual'';',
'end if;',
'end;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Type ID -'
,p_lov_null_value=>'NULL'
,p_lov_cascade_parent_items=>'P34_UN_TYPE,P34_CUSTOMER'
,p_ajax_items_to_submit=>'P34_UN_TYPE,P34_CUSTOMER'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_read_only_when=>'P34_UN_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(163880627763095291)
,p_name=>'P34_UN_HEADING'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_item_source_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Heading'
,p_source=>'UN_HEADING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>1609122147107268652
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
 p_id=>wwv_flow_imp.id(163880992660095292)
,p_name=>'P34_UN_DETAILS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_item_source_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Details'
,p_source=>'UN_DETAILS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(163881407460095292)
,p_name=>'P34_UN_DISPLAY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_item_source_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Display'
,p_source=>'UN_DISPLAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(163881867396095294)
,p_name=>'P34_UN_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_item_source_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Active'
,p_source=>'UN_ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(163882265762095294)
,p_name=>'P34_UN_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_item_source_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Created By'
,p_source=>'UN_CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(163882635905095295)
,p_name=>'P34_UN_CREATED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_item_source_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Created On'
,p_source=>'UN_CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(163882996604095297)
,p_name=>'P34_UN_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_item_source_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Updated By'
,p_source=>'UN_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(163883408780095298)
,p_name=>'P34_UN_UPDATED_ON'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_item_source_plug_id=>wwv_flow_imp.id(163876187568094968)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Updated On'
,p_source=>'UN_UPDATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163877308527095028)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(163877217057095028)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163878090702095127)
,p_event_id=>wwv_flow_imp.id(163877308527095028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(57534429730152964)
,p_name=>'onchangeofType'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P34_UN_TYPE'
,p_condition_element=>'P34_UN_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'USER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_da_event_comment=>'Client Side condition = Item = Value P34_UN_TYPE = USER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59342794215187215)
,p_event_id=>wwv_flow_imp.id(57534429730152964)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_CUSTOMER'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3877542310103475110)
,p_event_id=>wwv_flow_imp.id(57534429730152964)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_CUSTOMER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163884137708095326)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(163876187568094968)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from V_USER_NOTES'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>163935287338923822
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163884516821095333)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P34_UN_ID is null then',
'        select "#OWNER#"."SEQ_UN_ID".nextval',
'          into :P34_UN_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(163876511436095025)
,p_internal_uid=>163935666451923829
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163884897110095347)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(163876187568094968)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of V_USER_NOTES'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>163936046740923843
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163885327090095347)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(163876752763095025)
,p_internal_uid=>163936476720923843
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163885776253095347)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>163936925883923843
);
wwv_flow_imp.component_end;
end;
/
