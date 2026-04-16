prompt --application/pages/page_00067
begin
--   Manifest
--     PAGE: 00067
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
 p_id=>67
,p_name=>'Custom Invoice - Review'
,p_page_mode=>'MODAL'
,p_step_title=>'Custom Invoice - Review'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_height=>'400'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124808194538470076)
,p_plug_name=>'Custom Invoice Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cir_marks_nos,CIR_DESCRIPTION || '' '' ||  nvl(CIR_PRODUCT_NAME,CIR_DISPLAY_NAME) CIR_DESCRIPTION, CIR_QTY || '' '' || CIR_UOM CIR_QTY, CIR_UNIT_RATE, CIR_AMOUNT, ',
'CIR_TAX_VALUE, CIR_IGST_RATE, CIR_IGST_AMOUNT, CIR_CATEGORY, ',
'CIR_DISPLAY_ORDER, CIR_HSN_CODE, CIR_GROSS_WT, CIR_NET_WT, CIR_UOM, ',
'CIR_GROUP, CIR_ENQ_ID, CIR_DISPLAY_NAME ,CIR_HSN_GROUP_ORDER',
'from V_CUSTOM_INVOICE_REPORT',
'where CIR_ENQ_ID = :P67_ENQ_ID',
'AND ((CIR_CATEGORY = ''GDH'' and CIR_DISPLAY_NAME is not null) OR (CIR_DISPLAY_NAME is null and CIR_CATEGORY != ''GDH''))',
'ORDER BY cir_hsn_group_order,CIR_DISPLAY_ORDER'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(124808323675470077)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>34475433226326111
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(124810178453470095)
,p_name=>'IGST'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124808468944470078)
,p_db_column_name=>'CIR_DESCRIPTION'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124808866077470082)
,p_db_column_name=>'CIR_AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124808900076470083)
,p_db_column_name=>'CIR_TAX_VALUE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Taxable<br>Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124808993126470084)
,p_db_column_name=>'CIR_IGST_RATE'
,p_display_order=>70
,p_group_id=>wwv_flow_imp.id(124810178453470095)
,p_column_identifier=>'G'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124809147336470085)
,p_db_column_name=>'CIR_IGST_AMOUNT'
,p_display_order=>80
,p_group_id=>wwv_flow_imp.id(124810178453470095)
,p_column_identifier=>'H'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124809254616470086)
,p_db_column_name=>'CIR_CATEGORY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cir category'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124809383190470087)
,p_db_column_name=>'CIR_DISPLAY_ORDER'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Cir display order'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124809418049470088)
,p_db_column_name=>'CIR_HSN_CODE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'HSN Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124809575131470089)
,p_db_column_name=>'CIR_GROSS_WT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Gross Wt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124809675352470090)
,p_db_column_name=>'CIR_NET_WT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Net Wt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124809784471470091)
,p_db_column_name=>'CIR_UOM'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'UOM'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124809851950470092)
,p_db_column_name=>'CIR_GROUP'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'HSN Group Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124809892853470093)
,p_db_column_name=>'CIR_ENQ_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Cir enq id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124809994772470094)
,p_db_column_name=>'CIR_DISPLAY_NAME'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Invoice Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124810242759470096)
,p_db_column_name=>'CIR_UNIT_RATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(124810467927470098)
,p_db_column_name=>'CIR_QTY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Qty.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2983902759112639821)
,p_db_column_name=>'CIR_HSN_GROUP_ORDER'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'No.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22346478712143019)
,p_db_column_name=>'CIR_MARKS_NOS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Marks & Nos'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(124857591413494154)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'345248'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CIR_MARKS_NOS:CIR_HSN_GROUP_ORDER:CIR_GROUP:CIR_DESCRIPTION:CIR_QTY:CIR_UNIT_RATE:CIR_AMOUNT:CIR_TAX_VALUE:CIR_IGST_RATE:CIR_IGST_AMOUNT:'
,p_sort_column_1=>'CIR_DISPLAY_ORDER'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'CIR_HSN_GROUP_ORDER:CIR_GROUP:0:0:0:0'
,p_break_enabled_on=>'CIR_HSN_GROUP_ORDER:CIR_GROUP:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(13166728693885875)
,p_report_id=>wwv_flow_imp.id(124857591413494154)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'CIR_CATEGORY'
,p_operator=>'not in'
,p_expr=>'GD,GDH'
,p_condition_sql=>' (case when ("CIR_CATEGORY" not in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''GD, GDH''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#C7DAED'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124822919978634066)
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
 p_id=>wwv_flow_imp.id(124823052162634066)
,p_plug_name=>'Step 4'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124823099134634066)
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
 p_id=>wwv_flow_imp.id(124825051619634068)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(124823099134634066)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124825104360634068)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(124823099134634066)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124825196655634068)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(124823099134634066)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(124807513647470069)
,p_branch_name=>'Go To Page 10'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_ENQ_ID,P10_OUTPUT_TYPE:&P67_ENQ_ID.,CI&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(124825104360634068)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(124827048671634069)
,p_branch_name=>'Go To Page 65'
,p_branch_action=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:RP,73:P73_CIR_ENQ_ID:&P67_ENQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(124825196655634068)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124850571414461458)
,p_name=>'P67_ENQ_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(124823052162634066)
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22047783684566672140)
,p_name=>'P67_CIR_ADDITIONAL_DETAILS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(124823052162634066)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(22008110180806442766)
,p_computation_sequence=>20
,p_computation_item=>'P67_CIR_ADDITIONAL_DETAILS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P10_DISPLAY_OTHER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124825451315634068)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124825051619634068)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124826211669634069)
,p_event_id=>wwv_flow_imp.id(124825451315634068)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(124827743913634071)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>124878893544462567
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(124888529721333265)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate output'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_success_failure varchar2(2);',
'  v_error_msg varchar2(4000);',
'begin',
'  --PKG_GENERATE_OUTPUT.initialize(''CI'',:P67_ENQ_ID,v_success_failure,v_error_msg,''''); Commented and added below another call to pass addtional details for custom invoice 15-Dec-23',
'  PKG_GENERATE_OUTPUT.initialize(''CI'',:P67_ENQ_ID,v_success_failure,v_error_msg,:P67_CIR_ADDITIONAL_DETAILS);',
'',
'    if v_success_failure = ''99'' then',
'    apex_error.add_error (',
'        p_message          => v_error_msg,',
'        p_display_location => apex_error.c_inline_in_notification );',
'    end if;	',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error generating output !'
,p_process_when_button_id=>wwv_flow_imp.id(124825104360634068)
,p_process_success_message=>'Custom Invoice generated successfully.'
,p_internal_uid=>124939679352161761
);
wwv_flow_imp.component_end;
end;
/
