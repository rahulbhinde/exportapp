prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_name=>'FOB'
,p_step_title=>'FOB'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'01'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(32818707552979234176)
,p_name=>'FOB'
,p_template=>4072358936313175081
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'	ST_ID,',
'	ST_ID ST_ID_DISPLAY,',
'	ST_TYPE,',
'	ST_NAME,',
'	ST_CODE,',
'	ST_PARENT_ID,',
'	ST_CREATED_BY,',
'	ST_CREATED_ON,',
'	ST_UPDATED_BY,',
'	ST_UPDATED_ON,',
'	ST_EXTRA1,',
'	ST_EXTRA2',
'from V_SETUP_TABLE',
'where ST_TYPE = ''FOB''',
'and ST_NAME != ''Total''',
'',
'',
'',
''))
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32818726404028234209)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_column_alignment=>'CENTER'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32818708236865234179)
,p_query_column_id=>2
,p_column_alias=>'ST_ID'
,p_column_display_sequence=>2
,p_column_heading=>'St Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'S'
,p_pk_col_source=>'SEQ_ST_ID'
,p_ref_schema=>'SBAPP'
,p_ref_table_name=>'V_SETUP_TABLE'
,p_ref_column_name=>'ST_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32818708654093234180)
,p_query_column_id=>3
,p_column_alias=>'ST_ID_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'St Id'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_column_width=>16
,p_ref_schema=>'SBAPP'
,p_ref_table_name=>'V_SETUP_TABLE'
,p_ref_column_name=>'ST_ID_DISPLAY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32818709019361234180)
,p_query_column_id=>4
,p_column_alias=>'ST_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'St Type'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_column_default=>'''FOB'''
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SBAPP'
,p_ref_table_name=>'V_SETUP_TABLE'
,p_ref_column_name=>'ST_TYPE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32818709466989234181)
,p_query_column_id=>5
,p_column_alias=>'ST_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'St Name'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>60
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SBAPP'
,p_ref_table_name=>'V_SETUP_TABLE'
,p_ref_column_name=>'ST_NAME'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32818709846106234181)
,p_query_column_id=>6
,p_column_alias=>'ST_CODE'
,p_column_display_sequence=>6
,p_column_heading=>'St Code'
,p_column_alignment=>'CENTER'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SBAPP'
,p_ref_table_name=>'V_SETUP_TABLE'
,p_ref_column_name=>'ST_CODE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32818710218459234181)
,p_query_column_id=>7
,p_column_alias=>'ST_PARENT_ID'
,p_column_display_sequence=>7
,p_column_heading=>'St Parent Id'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'SBAPP'
,p_ref_table_name=>'V_SETUP_TABLE'
,p_ref_column_name=>'ST_PARENT_ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32818710599598234182)
,p_query_column_id=>8
,p_column_alias=>'ST_CREATED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'St Created By'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_column_default=>':APP_USER'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SBAPP'
,p_ref_table_name=>'V_SETUP_TABLE'
,p_ref_column_name=>'ST_CREATED_BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32818710988330234182)
,p_query_column_id=>9
,p_column_alias=>'ST_CREATED_ON'
,p_column_display_sequence=>9
,p_column_heading=>'St Created On'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_column_default=>'SYSDATE'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SBAPP'
,p_ref_table_name=>'V_SETUP_TABLE'
,p_ref_column_name=>'ST_CREATED_ON'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32818711461407234183)
,p_query_column_id=>10
,p_column_alias=>'ST_UPDATED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'St Updated By'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_column_default=>':APP_USER'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SBAPP'
,p_ref_table_name=>'V_SETUP_TABLE'
,p_ref_column_name=>'ST_UPDATED_BY'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32818711795676234183)
,p_query_column_id=>11
,p_column_alias=>'ST_UPDATED_ON'
,p_column_display_sequence=>11
,p_column_heading=>'St Updated On'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_column_default=>'SYSDATE'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'SBAPP'
,p_ref_table_name=>'V_SETUP_TABLE'
,p_ref_column_name=>'ST_UPDATED_ON'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32818712244516234183)
,p_query_column_id=>12
,p_column_alias=>'ST_EXTRA1'
,p_column_display_sequence=>12
,p_column_heading=>'St Extra1'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'SBAPP'
,p_ref_table_name=>'V_SETUP_TABLE'
,p_ref_column_name=>'ST_EXTRA1'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(32818712585175234184)
,p_query_column_id=>13
,p_column_alias=>'ST_EXTRA2'
,p_column_display_sequence=>13
,p_column_heading=>'St Extra2'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'SBAPP'
,p_ref_table_name=>'V_SETUP_TABLE'
,p_ref_column_name=>'ST_EXTRA2'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32823324568780789576)
,p_plug_name=>'Footer'
,p_parent_plug_id=>wwv_flow_imp.id(32818707552979234176)
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>25
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32818716662525234197)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(32818707552979234176)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32818716862474234197)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(32818707552979234176)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32818716705337234197)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(32818707552979234176)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Save'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32818716954578234197)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(32818707552979234176)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Row'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(32818726868825234209)
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(32818716705337234197)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32819383609011377704)
,p_name=>'P13_TOTAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(32823324568780789576)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32818718562908234200)
,p_tabular_form_region_id=>wwv_flow_imp.id(32818707552979234176)
,p_validation_name=>'ST_TYPE not null'
,p_validation_sequence=>30
,p_validation=>'ST_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(32818716705337234197)
,p_associated_column=>'ST_TYPE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32818718942610234201)
,p_tabular_form_region_id=>wwv_flow_imp.id(32818707552979234176)
,p_validation_name=>'ST_NAME not null'
,p_validation_sequence=>40
,p_validation=>'ST_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(32818716705337234197)
,p_associated_column=>'ST_NAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32818719310452234201)
,p_tabular_form_region_id=>wwv_flow_imp.id(32818707552979234176)
,p_validation_name=>'ST_CODE must be numeric'
,p_validation_sequence=>60
,p_validation=>'ST_CODE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_imp.id(32818716705337234197)
,p_associated_column=>'ST_CODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32818719772739234201)
,p_tabular_form_region_id=>wwv_flow_imp.id(32818707552979234176)
,p_validation_name=>'ST_CREATED_BY not null'
,p_validation_sequence=>70
,p_validation=>'ST_CREATED_BY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(32818716705337234197)
,p_associated_column=>'ST_CREATED_BY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32818720166804234202)
,p_tabular_form_region_id=>wwv_flow_imp.id(32818707552979234176)
,p_validation_name=>'ST_CREATED_ON not null'
,p_validation_sequence=>80
,p_validation=>'ST_CREATED_ON'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(32818716705337234197)
,p_associated_column=>'ST_CREATED_ON'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32818720519998234202)
,p_tabular_form_region_id=>wwv_flow_imp.id(32818707552979234176)
,p_validation_name=>'ST_CREATED_ON must be a valid date'
,p_validation_sequence=>80
,p_validation=>'ST_CREATED_ON'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_imp.id(32818716705337234197)
,p_associated_column=>'ST_CREATED_ON'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32818720914646234202)
,p_tabular_form_region_id=>wwv_flow_imp.id(32818707552979234176)
,p_validation_name=>'ST_UPDATED_BY not null'
,p_validation_sequence=>90
,p_validation=>'ST_UPDATED_BY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(32818716705337234197)
,p_associated_column=>'ST_UPDATED_BY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32818721358039234203)
,p_tabular_form_region_id=>wwv_flow_imp.id(32818707552979234176)
,p_validation_name=>'ST_UPDATED_ON not null'
,p_validation_sequence=>100
,p_validation=>'ST_UPDATED_ON'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_imp.id(32818716705337234197)
,p_associated_column=>'ST_UPDATED_ON'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(32818721736960234203)
,p_tabular_form_region_id=>wwv_flow_imp.id(32818707552979234176)
,p_validation_name=>'ST_UPDATED_ON must be a valid date'
,p_validation_sequence=>100
,p_validation=>'ST_UPDATED_ON'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_imp.id(32818716705337234197)
,p_associated_column=>'ST_UPDATED_ON'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32821072437051829141)
,p_name=>'Update Total'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f05"]'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32821182779324829143)
,p_event_id=>wwv_flow_imp.id(32821072437051829141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13_TOTAL'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' var items = document.getElementsByName("f05"); // Tabular form column to add up',
'  ',
'  $total = 0;',
'  $itemValue = 0;',
'  for (var i = 0; i < items.length; i++)',
'  {  ',
'   // if non-numeric character was entered, it will be considered as 0, ',
'   // isNaN returns true if anything but number was entered',
'   if(isNaN(items[i].value) || items[i].value == null || items[i].value == "")',
'    $itemValue = 0;',
'   else',
'    $itemValue = parseFloat(items[i].value); // convert to number',
'   ',
'   $total =$total+ $itemValue; // add up',
'  } ',
'  ',
'  // $x sets the text field to be updated to the column total just calculated',
'  $x(''P13_TOTAL'').value = $total;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32818721984453234203)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(32818707552979234176)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'V_SETUP_TABLE'
,p_attribute_03=>'ST_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(32818716705337234197)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_internal_uid=>32818773134084062699
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32818722429734234204)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(32818707552979234176)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'V_SETUP_TABLE'
,p_attribute_03=>'ST_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>32818773579365062700
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32823525035619850750)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Total'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update V_SETUP_TABLE',
'set st_code =:P13_TOTAL',
'where st_type= ''FOB''',
'and st_name = ''Total'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(32818716705337234197)
,p_internal_uid=>32823576185250679246
);
wwv_flow_imp.component_end;
end;
/
