prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_name=>'Product Details'
,p_step_title=>'Product Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.CSSreadonly {border-radius: 2px;color: #333;background-color: #f2f2f2;border-color: #d9d9d9;}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32899813988175048969)
,p_plug_name=>'Product Information'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'V_PRODUCT_MASTER'
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
 p_id=>wwv_flow_imp.id(32913455680882593738)
,p_plug_name=>'Product Details'
,p_parent_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32913456027246593739)
,p_plug_name=>'Carton Details'
,p_parent_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32899815120659048971)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'COPY'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32899814630327048970)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'COPY'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P17_PM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(69930751139109744)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32899814456525048970)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_PM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32899814568317048970)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P17_PM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(33576435958604555043)
,p_branch_name=>'Redirect to Product Report'
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,CREATE,DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(33577650382194193210)
,p_branch_name=>'Redirect to Product Report on Cancel'
,p_branch_action=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_PM_ID:'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(32899815120659048971)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47939916839872403)
,p_name=>'P17_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>399
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Created By'
,p_source=>'PM_CREATED_BY'
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
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47940214378875080)
,p_name=>'P17_PM_CREATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>409
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Created On'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'PM_CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(47940461659878188)
,p_name=>'P17_PM_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>419
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Updated By'
,p_source=>'PM_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(47940812360880089)
,p_name=>'P17_PM_UPDATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>429
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Updated On'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'PM_UPDATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(47950320182355515)
,p_name=>'P17_PM_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>389
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_item_default=>'Y'
,p_prompt=>'Active ?'
,p_source=>'PM_ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_FLAG_YN'
,p_lov=>'.'||wwv_flow_imp.id(30621381686625309)||'.'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72658346608151505)
,p_name=>'P17_PM_CESS_FLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>279
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_item_default=>'N'
,p_prompt=>'CESS Flag'
,p_source=>'PM_CESS_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2: MRP;MRP,Purchase Amount;PURCHASE,Not Applicable;N'
,p_colspan=>6
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(72658388484151506)
,p_name=>'P17_PM_CESS_PERC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>289
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'CESS %'
,p_source=>'PM_CESS_PERC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cattributes_element=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92502631330283781)
,p_name=>'P17_STW_DISP'
,p_item_sequence=>299
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_prompt=>'Stowage'
,p_pre_element_text=>'Stowage'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92502756659283782)
,p_name=>'P17_STW_USER_DISP'
,p_item_sequence=>339
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_prompt=>'Stowage User Defined'
,p_pre_element_text=>'Stowage User Defined'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92772573202763368)
,p_name=>'P17_PACKING_DISP'
,p_item_sequence=>139
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_prompt=>'Packing Details'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92968767357362480)
,p_name=>'P17_IGST_PERC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>269
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'IGST%'
,p_source=>'PM_IGST_PERC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(94356882037689612)
,p_name=>'P17_BARCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'Barcode'
,p_source=>'PM_BARCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109303609422207095)
,p_name=>'P17_PM_TOTAL_GST_PERC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>239
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'Total GST %'
,p_source=>'PM_TOTAL_GST_PERC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109303746206207096)
,p_name=>'P17_PM_CGST_PERC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>249
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'CGST%'
,p_source=>'PM_CGST_PERC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109303800152207097)
,p_name=>'P17_PM_SGST_PERC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>259
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'SGST %'
,p_source=>'PM_SGST_PERC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cattributes_element=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109430986687077005)
,p_name=>'P17_BABY_BOX_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>159
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'<br>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;X'
,p_source=>'PM_BABY_BOX_UNIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_PRODUCT_UOM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''PRODUCT_UOM''',
' and nvl(ST_DISPLAY,''Y'') = ''Y''',
' order by st_name --st_display_order'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select UNIT -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>3
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(111005532518954300)
,p_name=>'P17_SHELF_LIFE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shelf Life'
,p_source=>'PM_SHELF_LIFE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(158737711278839511)
,p_name=>'P17_PRODUCT_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>179
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'<br>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;X'
,p_source=>'PM_PRODUCT_UNIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_PRODUCT_UNIT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''PRODUCT_UNIT''',
' and nvl(ST_DISPLAY,''Y'') = ''Y''',
' order by st_name --st_display_order'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select UNIT -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>6
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(163765220192714311)
,p_name=>'P17_PACKAGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>149
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_source=>'PM_PACKAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164260596038816888)
,p_name=>'P17_BRAND'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'Brand'
,p_source=>'PM_BRAND'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(164273232016240254)
,p_name=>'P17_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Image'
,p_source=>'PM_IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'INLINE',
  'display_download_link', 'N',
  'filename_column', 'PM_FILENAME',
  'mime_type_column', 'PM_MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164274490474345693)
,p_name=>'P17_PRODUCT_IMG'
,p_source_data_type=>'BLOB'
,p_item_sequence=>26
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_use_cache_before_default=>'NO'
,p_source=>'PM_IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="height:100px;width:100px"'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'alternative_text_column', 'PM_NAME',
  'based_on', 'DB_COLUMN',
  'filename_column', 'PM_FILENAME')).to_clob
,p_item_comment=>'style="border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;" '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28750231745942581070)
,p_name=>'P17_PM_INGREDIENTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'Ingredients'
,p_source=>'PM_INGREDIENTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>2
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
 p_id=>wwv_flow_imp.id(32899817428580049236)
,p_name=>'P17_PM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_use_cache_before_default=>'NO'
,p_source=>'PM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899817689844049237)
,p_name=>'P17_PM_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Name'
,p_source=>'PM_NAME'
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
 p_id=>wwv_flow_imp.id(32899818131627049238)
,p_name=>'P17_PM_MANUFAC_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manufacturer'
,p_source=>'PM_MANUFAC_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MANUFACTURER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supm_name as d,',
'       supm_id as r',
'  from V_SUPPLIER_MASTER',
' where nvl(supm_active,''Y'') = ''Y''',
'   and supm_supplier_type = ''MANUFACTURER''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Manufacturer -'
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
 p_id=>wwv_flow_imp.id(32899818528906049238)
,p_name=>'P17_PM_CATEGORY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_source=>'PM_CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pc_name as d,',
'       pc_id as r',
'  from V_PRODUCT_CATEGORY',
' where nvl(pc_active,''Y'') = ''Y''',
'and pc_category_type = nvl(:P17_PRODUCT_CATEGORY_TYPE,''MEIS'')',
' order by pc_name'))
,p_lov_cascade_parent_items=>'P17_PRODUCT_CATEGORY_TYPE'
,p_ajax_items_to_submit=>'P17_PRODUCT_CATEGORY_TYPE'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(32899818947594049239)
,p_name=>'P17_PM_ALIAS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Alias'
,p_source=>'PM_ALIAS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(32899819354657049239)
,p_name=>'P17_PM_UOM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>129
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'UOM'
,p_source=>'PM_UOM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_PRODUCT_UOM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''PRODUCT_UOM''',
' and nvl(ST_DISPLAY,''Y'') = ''Y''',
' order by st_name --st_display_order'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select UOM -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899819763411049240)
,p_name=>'P17_PM_LENGTH'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>89
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'Length'
,p_source=>'PM_LENGTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899820113830049241)
,p_name=>'P17_PM_BREADTH'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>99
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'Breadth'
,p_source=>'PM_BREADTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899820566927049241)
,p_name=>'P17_PM_HEIGHT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>109
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'Height'
,p_source=>'PM_HEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>5
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899820907459049242)
,p_name=>'P17_PM_CUBIC_SPACE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>119
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'Cubic Space'
,p_source=>'PM_CUBIC_SPACE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899821288345049243)
,p_name=>'P17_PM_NET_WEIGHT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>209
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'Net Wt.(in kgs)'
,p_source=>'PM_NET_WEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899821756444049244)
,p_name=>'P17_PM_GROSS_WEIGHT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>219
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'Gross Wt.(in kgs)'
,p_source=>'PM_GROSS_WEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899822157053049244)
,p_name=>'P17_PM_PACKAGE_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>169
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'<br>'
,p_source=>'PM_PACKAGE_1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899822538870049244)
,p_name=>'P17_PM_PACKAGE_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>189
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'<br>'
,p_source=>'PM_PACKAGE_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899822964952049246)
,p_name=>'P17_PM_PACKAGE_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>199
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'<br>'
,p_source=>'PM_PACKAGE_UNIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_PACKAGE_UOM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''PACKAGE_UOM''',
' and nvl(ST_DISPLAY,''Y'') = ''Y''',
' order by st_name--st_display_order'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- UOM -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>9
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899823357434049247)
,p_name=>'P17_PM_STW_20'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>309
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'20 ft'
,p_source=>'PM_STW_20'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899823730387049247)
,p_name=>'P17_PM_STW_40'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>319
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>' 40 ft'
,p_source=>'PM_STW_40'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899824154772049248)
,p_name=>'P17_PM_STW_40HC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>329
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>' 40 ft HC'
,p_source=>'PM_STW_40HC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899824493519049248)
,p_name=>'P17_PM_STW_RND_20'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>349
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'20 ft'
,p_source=>'PM_STW_RND_20'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_cattributes_element=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899824883457049249)
,p_name=>'P17_PM_STW_RND_40'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>359
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'40 ft'
,p_source=>'PM_STW_RND_40'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899825300142049249)
,p_name=>'P17_PM_STW_RND_40HC'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>369
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'40 ft HC'
,p_source=>'PM_STW_RND_40HC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32899843195773049304)
,p_name=>'P17_PM_HSN_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>229
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'HSN/ RITC Code'
,p_source=>'PM_HSN_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(32899843590877049305)
,p_name=>'P17_PM_MEIS_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MEIS Code'
,p_source=>'PM_MEIS_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(32899844055075049305)
,p_name=>'P17_PM_MEIS_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_use_cache_before_default=>'NO'
,p_prompt=>'MEIS Description'
,p_source=>'PM_MEIS_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(32899844425583049306)
,p_name=>'P17_PM_VERIFIED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>379
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_prompt=>'Verified'
,p_source=>'PM_VERIFIED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_FLAG_YN'
,p_lov=>'.'||wwv_flow_imp.id(30621381686625309)||'.'
,p_colspan=>2
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32902983964876104519)
,p_name=>'P17_PRODUCT_CATEGORY_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>39
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_item_source_plug_id=>wwv_flow_imp.id(32899813988175048969)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category Type'
,p_source=>'PM_CATEGORY_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_PROD_CATEGORY_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''PRODUCT_CATEGORY_TYPE''',
' order by st_display_order'))
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
 p_id=>wwv_flow_imp.id(32910963208386075335)
,p_name=>'P17_CUBIC_SELECTION'
,p_item_sequence=>69
,p_item_plug_id=>wwv_flow_imp.id(32913456027246593739)
,p_use_cache_before_default=>'NO'
,p_item_default=>'lbh'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when pm_length is not null and pm_breadth is not null and pm_height is not null then ''lbh'' when pm_cubic_space is not null  then ''cs'' else ''lbh'' end cs',
'from V_PRODUCT_MASTER',
'where pm_id = :P17_PM_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2: LxBxH;lbh,Cubic Space;cs'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33587607313532344233)
,p_name=>'P17_PUC_CAT_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(32913455680882593738)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Category'
,p_source=>'select LISTAGG(PUC_USER_CAT_ID, '':'') WITHIN GROUP (ORDER BY PUC_USER_CAT_ID) from V_PRODUCT_USER_CATEGORY where  PUC_PM_ID = :P17_PM_ID;'
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_PRODUCT_USER_CATEGORY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''PRODUCT_USER_CATEGORY''',
' order by st_display_order'))
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33521935102093045761)
,p_name=>'enable/disable lbh or cs'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_CUBIC_SELECTION'
,p_condition_element=>'P17_CUBIC_SELECTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'lbh'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33521935515999045763)
,p_event_id=>wwv_flow_imp.id(33521935102093045761)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_CUBIC_SPACE'
,p_attribute_01=>'CSSreadonly'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33521935985163045764)
,p_event_id=>wwv_flow_imp.id(33521935102093045761)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_LENGTH,P17_PM_BREADTH,P17_PM_HEIGHT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33523060888887115851)
,p_event_id=>wwv_flow_imp.id(33521935102093045761)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_LENGTH,P17_PM_BREADTH,P17_PM_HEIGHT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33523073425837119261)
,p_event_id=>wwv_flow_imp.id(33521935102093045761)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_CUBIC_SPACE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33575360313243647039)
,p_event_id=>wwv_flow_imp.id(33521935102093045761)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_CUBIC_SPACE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33523139611804170387)
,p_event_id=>wwv_flow_imp.id(33521935102093045761)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_LENGTH,P17_PM_BREADTH,P17_PM_HEIGHT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33576245227354484950)
,p_event_id=>wwv_flow_imp.id(33521935102093045761)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P17_PM_CUBIC_SPACE'').setAttribute(''readonly'', ''readonly'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33587981279591381025)
,p_event_id=>wwv_flow_imp.id(33521935102093045761)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_CUBIC_SPACE'
,p_attribute_01=>'CSSreadonly'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33588211916341414830)
,p_event_id=>wwv_flow_imp.id(33521935102093045761)
,p_event_result=>'FALSE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById(''P17_PM_CUBIC_SPACE'').removeAttribute(''readonly'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33523162266719185033)
,p_name=>'calculate cubic space - lbh'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_PM_LENGTH,P17_PM_BREADTH,P17_PM_HEIGHT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33523163093997185034)
,p_event_id=>wwv_flow_imp.id(33523162266719185033)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_LENGTH,P17_PM_BREADTH,P17_PM_HEIGHT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33523163607723185035)
,p_event_id=>wwv_flow_imp.id(33523162266719185033)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_CUBIC_SPACE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'round((nvl(:P17_PM_LENGTH,0) * nvl(:P17_PM_BREADTH,0) * nvl(:P17_PM_HEIGHT,0))/1000000,5)'
,p_attribute_07=>'P17_PM_LENGTH,P17_PM_BREADTH,P17_PM_HEIGHT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33523164580502185035)
,p_event_id=>wwv_flow_imp.id(33523162266719185033)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_CUBIC_SPACE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33523164150634185035)
,p_event_id=>wwv_flow_imp.id(33523162266719185033)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_LENGTH,P17_PM_BREADTH,P17_PM_HEIGHT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33571232782854666289)
,p_name=>'calculate stowage'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_PM_CUBIC_SPACE'
,p_condition_element=>'P17_PM_CUBIC_SPACE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33571233202881666291)
,p_event_id=>wwv_flow_imp.id(33571232782854666289)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'select MAX(round(decode(ST_EXTRA2,''20'',ST_CODE)/nvl(:P17_PM_CUBIC_SPACE,1),2)) stw_20',
'      ,MAX(round(decode(ST_EXTRA2,''40'',ST_CODE)/nvl(:P17_PM_CUBIC_SPACE,1),2)) stw_40',
'      ,MAX(round(decode(ST_EXTRA2,''40HC'',ST_CODE)/nvl(:P17_PM_CUBIC_SPACE,1),2)) stw_40hc',
' into :P17_PM_STW_20,:P17_PM_STW_40,:P17_PM_STW_40HC',
' from V_SETUP_TABLE   where st_type= ''CONTAINER_SIZE'';',
'  :P17_PM_STW_RND_20   := :P17_PM_STW_20;',
'  :P17_PM_STW_RND_40   := :P17_PM_STW_40;',
'  :P17_PM_STW_RND_40HC := :P17_PM_STW_40HC;',
'exception when others then',
'  :P17_PM_STW_20 := 0;',
'  :P17_PM_STW_40 := 0;',
'  :P17_PM_STW_40HC := 0;',
'  :P17_PM_STW_RND_20  := 0;',
'  :P17_PM_STW_RND_40  := 0;',
'  :P17_PM_STW_RND_40HC:= 0;',
'end;   '))
,p_attribute_02=>'P17_PM_CUBIC_SPACE'
,p_attribute_03=>'P17_PM_STW_20,P17_PM_STW_40,P17_PM_STW_40HC,P17_PM_STW_RND_20,P17_PM_STW_RND_40,P17_PM_STW_RND_40HC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33571687513792137404)
,p_event_id=>wwv_flow_imp.id(33571232782854666289)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_STW_20,P17_PM_STW_40,P17_PM_STW_40HC,P17_PM_STW_RND_20,P17_PM_STW_RND_40,P17_PM_STW_RND_40HC'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163774119746857233)
,p_name=>'calculate net weight'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_PM_PACKAGE_1,P17_PM_PACKAGE_2,P17_PRODUCT_UNIT,P17_PM_UOM,P17_PM_PACKAGE_UNIT,P17_PACKAGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163775005579857249)
,p_event_id=>wwv_flow_imp.id(163774119746857233)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Net Weight'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_NET_WEIGHT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select round((nvl(:P17_PACKAGE,1) * nvl(:P17_PM_PACKAGE_1,1) * nvl(:P17_PM_PACKAGE_2,1))/to_number(nvl(ST_EXTRA1,1)),3) net_wt',
'from V_SETUP_TABLE  where st_type= ''PACKAGE_UOM'' and ST_CODE = :P17_PM_PACKAGE_UNIT'))
,p_attribute_07=>'P17_PM_PACKAGE_1,P17_PM_PACKAGE_2,P17_PM_PACKAGE_UNIT,P17_PACKAGE,P17_PM_NET_WEIGHT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137366182225091086)
,p_event_id=>wwv_flow_imp.id(163774119746857233)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'Gross Weight'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_GROSS_WEIGHT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select round(((nvl(:P17_PACKAGE,1) * nvl(:P17_PM_PACKAGE_1,1) * nvl(:P17_PM_PACKAGE_2,1))/to_number(nvl(a.ST_EXTRA1,1)))  +  to_number(nvl(b.ST_EXTRA1,1)),3) gross_wt',
'from V_SETUP_TABLE a,V_SETUP_TABLE b where b.st_type= ''PRODUCT_UNIT'' and upper(b.ST_CODE) = nvl(:P17_PRODUCT_UNIT,''BAGS'')  AND a.st_type= ''PACKAGE_UOM'' and a.ST_CODE = :P17_PM_PACKAGE_UNIT',
'--Modified by Rahul on 15-Jan-25 P17_PRODUCT_UNIT contd to consider BAGS by default to calculate Gross WT for packing like 25 KGS Bags',
''))
,p_attribute_07=>'P17_PM_UOM,P17_NET_WEIGHT,P17_PM_PACKAGE_1,P17_PM_PACKAGE_2,P17_PM_PACKAGE_UNIT,P17_PACKAGE,P17_PM_GROSS_WEIGHT,P17_PRODUCT_UNIT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(72658523533151507)
,p_name=>'onChangeShowCessPerc'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_PM_CESS_FLAG'
,p_condition_element=>'P17_PM_CESS_FLAG'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'MRP,PURCHASE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72658647848151508)
,p_event_id=>wwv_flow_imp.id(72658523533151507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Display CESS%'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_CESS_PERC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72658764161151510)
,p_event_id=>wwv_flow_imp.id(72658523533151507)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Clear CESS %'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_CESS_PERC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(72658703859151509)
,p_event_id=>wwv_flow_imp.id(72658523533151507)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Display CESS%'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_PM_CESS_PERC'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32899845200604049308)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(32899813988175048969)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from V_PRODUCT_MASTER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>32899896350234877804
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32899845654564049309)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P17_PM_ID is null then',
'        select "#OWNER#"."SEQ_PM_ID".nextval',
'          into :P17_PM_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(32899814456525048970)
,p_internal_uid=>32899896804194877805
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32899846040556049309)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(32899813988175048969)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of V_PRODUCT_MASTER'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>32899897190186877805
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34056401485144653691)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save_prod_user_category'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_prod_user_category varchar2(100);',
'  v_lst_to_del varchar2(4000);',
'  v_count number;',
'  v_del_stmt varchar2(4000);',
'    v_del_flag number := 0;',
'  cursor cur_chkbox_val is ',
'	select st_name,',
'       st_code ',
'  from V_SETUP_TABLE',
' where st_type = ''PRODUCT_USER_CATEGORY''',
' order by st_display_order;',
'BEGIN  ',
'',
':P17_PUC_CAT_ID := '':'' || :P17_PUC_CAT_ID || '':'';',
'',
'	for i in cur_chkbox_val loop',
'		',
'		if instr(:P17_PUC_CAT_ID,'':''||i.st_code||'':'') > 0 then',
'       ',
'			select count (1)',
'			into	v_count',
'			  from V_PRODUCT_USER_CATEGORY',
'				where PUC_PM_ID = :P17_PM_ID',
'				 and PUC_USER_CAT_ID = i.st_code;',
'              ',
'			if v_count = 0 then',
'           ',
'				insert into V_PRODUCT_USER_CATEGORY(PUC_ID,PUC_PM_ID,PUC_USER_CAT_ID)',
'					        values (SEQ_PUC_ID.nextval,:P17_PM_ID, i.st_code );',
'				',
'			end if;	',
'			',
'		else',
'		v_lst_to_del := v_lst_to_del || ''''''''|| 	i.st_code || '''''','';',
'		v_del_flag := 1;',
'		end if;',
'		',
'',
'	end loop;',
'      if v_del_flag = 0 then',
'		v_lst_to_del := ''('''''''')'';  ',
'	else',
'		v_lst_to_del := ''('' || SUBSTR(v_lst_to_del , 1, INSTR(v_lst_to_del , '','', -1)-1) || '')'';  ',
'	end if;',
'	v_del_flag := 0;',
'      ',
'      ',
'	v_del_stmt := ''	delete from V_PRODUCT_USER_CATEGORY where PUC_PM_ID = ''||:P17_PM_ID ||'' and PUC_USER_CAT_ID in '' || v_lst_to_del;',
'',
'   ',
'   EXECUTE IMMEDIATE v_del_stmt;',
'   commit;',
'		',
'   ',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error saving Product User Category'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>34056452634775482187
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_prod_user_category varchar2(100);',
'  v_lst_to_del varchar2(4000);',
'  v_count number;',
'  v_del_stmt varchar2(4000);',
'    v_del_flag number := 0;',
'   l_vc_arr2    APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  cursor cur_chkbox_val is ',
'	select st_name,',
'       st_code ',
'  from V_SETUP_TABLE',
' where st_type = ''V_PRODUCT_USER_CATEGORY''',
' order by st_display_order;',
'BEGIN  ',
'',
'	for i in cur_chkbox_val loop',
'		insert into error_log values (''rahul inside for loop '' || i.st_code);',
'		if instr(:P17_PUC_CAT_ID,i.st_code) > 0 then',
'        insert into error_log values (''rahul inside if block of ''  || i.st_code);',
'			select count (1)',
'			into	v_count',
'			  from V_PRODUCT_USER_CATEGORY',
'				where PUC_PM_ID = :P17_PM_ID',
'				 and PUC_USER_CAT_ID = i.st_code;',
'              insert into error_log values (''rahul count '' ||  v_count);  ',
'			if v_count = 0 then',
'            insert into error_log values (''rahul before insert'' || i.st_code ||''--''|| v_count);',
'				insert into V_PRODUCT_USER_CATEGORY',
'					        values (SEQ_PUC_ID.nextval,:P17_PM_ID, i.st_code );',
'				insert into error_log values (''rahul after insert'' || i.st_code);',
'			end if;	',
'			',
'		else',
'		v_lst_to_del := v_lst_to_del || ''''''''|| 	i.st_code || '''''','';',
'		v_del_flag := 1;',
'		end if;',
'		',
'',
'	end loop;',
'      if v_del_flag = 0 then',
'		v_lst_to_del := ''('''''''')'';  ',
'	else',
'		v_lst_to_del := ''('' || SUBSTR(v_lst_to_del , 1, INSTR(v_lst_to_del , '','', -1)-1) || '')'';  ',
'	end if;',
'	v_del_flag := 0;',
'      ',
'      ',
'	v_del_stmt := ''	delete from V_PRODUCT_USER_CATEGORY where PUC_PM_ID = ''||:P17_PM_ID ||'' and PUC_USER_CAT_ID in '' || v_lst_to_del;',
' -- l_vc_arr2 := APEX_UTIL.STRING_TO_TABLE(v_lst_to_del);    ',
'   ',
'   --delete from V_PRODUCT_USER_CATEGORY where PUC_PM_ID = :P17_PM_ID  and PUC_USER_CAT_ID in l_vc_arr2;',
'        insert into error_log values (''rahul list to del -- '' || v_del_stmt);',
'   commit;',
'   EXECUTE IMMEDIATE v_del_stmt;',
'		',
'   ',
'end;',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32899846385807049309)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(32899814630327048970)
,p_internal_uid=>32899897535437877805
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32899846870290049310)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>32899898019920877806
);
wwv_flow_imp.component_end;
end;
/
