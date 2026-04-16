prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
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
 p_id=>66
,p_name=>'Custom Invoice - Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Custom Invoice - Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_height=>'400'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124818130882634024)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(124817506615634011)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124818269220634024)
,p_plug_name=>'Step 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124818293128634024)
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(197363296594672916)
,p_name=>'Output Master Report'
,p_display_sequence=>20
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'OM_ID,',
'OM_ID OM_ID_DELETE,',
'OM_REF_ID,',
'dbms_lob.getlength("OM_EXCEL") OM_EXCEL,',
'OM_EXCEL_NAME,',
'dbms_lob.getlength("OM_PDF") OM_PDF,',
'OM_PDF_NAME,',
'OM_DOC_TYPE,',
'OM_DOC_MIME_TYPE,',
'OM_FINAL,',
'OM_REMARKS,',
'OM_CREATED_BY,',
'OM_CREATED_ON,',
'OM_UPDATED_BY,',
'OM_UPDATED_ON',
'from V_OUTPUT_MASTER ',
'where OM_REF_ID = :P66_ENQ_ID',
'and OM_DOC_TYPE = decode (:P66_OUTPUT_TYPE,''PO'',''PO'',''ENQ'',''Proforma'',''ORD'',''Proforma'',''CI'',''CustomInvoice'')'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Custom Invoices Found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ((:P10_OUTPUT_TYPE = ''ENQ'' or :P10_OUTPUT_TYPE = ''ORD'') AND :P10_EO_ID is null) then',
'   return true;',
'else',
'   return false;',
'end if;'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124836360645036047)
,p_query_column_id=>1
,p_column_alias=>'OM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP:P66_OM_ID:#OM_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="Edit">'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124836740504036054)
,p_query_column_id=>2
,p_column_alias=>'OM_ID_DELETE'
,p_column_display_sequence=>2
,p_column_heading=>'Delete'
,p_column_link=>'javascript:apex.confirm(''Are you sure you want to delete this item?'', {request : ''DELETE'', set : {''P10_OM_ID'': ''#OM_ID#''}})'
,p_column_linktext=>'<img src="#WORKSPACE_IMAGES#delete.png"  alt="Delete">'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124837116058036055)
,p_query_column_id=>3
,p_column_alias=>'OM_REF_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124837556036036056)
,p_query_column_id=>4
,p_column_alias=>'OM_EXCEL'
,p_column_display_sequence=>4
,p_column_heading=>'Excel'
,p_column_format=>'DOWNLOAD:V_OUTPUT_MASTER:OM_EXCEL:OM_ID::OM_DOC_MIME_TYPE:OM_EXCEL_NAME:::attachment:<img src="#WORKSPACE_IMAGES#export-excel-icon.png"  alt="Excel Download"/>:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124837963328036056)
,p_query_column_id=>5
,p_column_alias=>'OM_EXCEL_NAME'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124838291971036057)
,p_query_column_id=>6
,p_column_alias=>'OM_PDF'
,p_column_display_sequence=>6
,p_column_heading=>'PDF'
,p_column_format=>'DOWNLOAD:V_OUTPUT_MASTER:OM_PDF:OM_ID::OM_DOC_MIME_TYPE:OM_PDF_NAME:::attachment:<img src="#WORKSPACE_IMAGES#pdf_logo.png"  alt="PDF Download"/>:'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124838769669036057)
,p_query_column_id=>7
,p_column_alias=>'OM_PDF_NAME'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124839173511036058)
,p_query_column_id=>8
,p_column_alias=>'OM_DOC_TYPE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124839540518036058)
,p_query_column_id=>9
,p_column_alias=>'OM_DOC_MIME_TYPE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124839937883036058)
,p_query_column_id=>10
,p_column_alias=>'OM_FINAL'
,p_column_display_sequence=>10
,p_column_heading=>'Final'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124840328619036058)
,p_query_column_id=>11
,p_column_alias=>'OM_REMARKS'
,p_column_display_sequence=>11
,p_column_heading=>'Remarks'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124840706356036059)
,p_query_column_id=>12
,p_column_alias=>'OM_CREATED_BY'
,p_column_display_sequence=>12
,p_column_heading=>'Created By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124841127270036059)
,p_query_column_id=>13
,p_column_alias=>'OM_CREATED_ON'
,p_column_display_sequence=>13
,p_column_heading=>'Created On'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124841540526036059)
,p_query_column_id=>14
,p_column_alias=>'OM_UPDATED_BY'
,p_column_display_sequence=>14
,p_column_heading=>'Updated By'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124841954522036059)
,p_query_column_id=>15
,p_column_alias=>'OM_UPDATED_ON'
,p_column_display_sequence=>15
,p_column_heading=>'Updated On'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124820255289634048)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(124818293128634024)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124807807617470072)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(124818293128634024)
,p_button_name=>'REGENERATE_CI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Regenerate & Continue'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124820541511634048)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(124818293128634024)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(124822205695634061)
,p_branch_name=>'Go To Page 65'
,p_branch_action=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:RP,65:P65_CIR_ENQ_ID:&P66_ENQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'NEXT,REGENERATE_CI'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124819924147634047)
,p_name=>'P66_ENQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124818269220634024)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124842853690081697)
,p_name=>'P66_OUTPUT_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(124818269220634024)
,p_prompt=>'Output Type'
,p_display_as=>'NATIVE_HIDDEN'
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
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124909459710439828)
,p_name=>'P66_OM_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(197363296594672916)
,p_use_cache_before_default=>'NO'
,p_source=>'OM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124909724602453064)
,p_name=>'P66_REMARKS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(197363296594672916)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'OM_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_display_when=>'P10_OM_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124820623326634053)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124820255289634048)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124821460310634058)
,p_event_id=>wwv_flow_imp.id(124820623326634053)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(124807968462470073)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Regenerate CI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_success_failure number;',
'    v_err_message     varchar2(4000);',
'begin',
'    proc_custom_invoice (:P66_ENQ_ID,v_success_failure,v_err_message);',
'end'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(124807807617470072)
,p_internal_uid=>124859118093298569
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(124808099814470075)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate CI'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_success_failure number;',
'    v_err_message     varchar2(4000);',
'begin',
'    proc_custom_invoice (:P66_ENQ_ID,v_success_failure,v_err_message);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(124820541511634048)
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from V_CUSTOM_INVOICE_REPORT',
'where CIR_ENQ_ID = :P66_ENQ_ID'))
,p_process_when_type=>'NOT_EXISTS'
,p_internal_uid=>124859249445298571
);
wwv_flow_imp.component_end;
end;
/
