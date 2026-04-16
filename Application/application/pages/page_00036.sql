prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_name=>'PO Details'
,p_step_title=>'PO Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-table tr.selected td {',
'    background-color: #2d7bbb;',
'    color: #fff;',
'}',
'.a-IRR-table tr.selected:hover td {',
'    background-color: #399bea;',
'    color: #fff;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(163999436222015029)
,p_plug_name=>'PO Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(164000108944015031)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>5
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(164030932437759747)
,p_plug_name=>'Products'
,p_region_name=>'myreport'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'case when instr(:P36_SELECTED_PRODUCTS, ''|'' || c002 || ''|'') > 0 then ',
'      ''checked'' ',
'    else ',
'      '''' ',
'    end as selected,',
'SEQ_ID,',
'c001 product,',
'c002 product_id,',
'c003 quantity,',
'c004 rate',
'from APEX_COLLECTIONS col',
'WHERE COLLECTION_NAME=''PRODUCTS'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P36_POM_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(164031059938759748)
,p_name=>'Products'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'50'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RANU'
,p_internal_uid=>11876481819561340
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164031346026759756)
,p_db_column_name=>'PRODUCT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164042362018056164)
,p_db_column_name=>'SELECTED'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Selected'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164043041215056165)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164043748574056167)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'<input type="checkbox" value="all">'
,p_column_html_expression=>'<input type="checkbox" #SELECTED# value="#PRODUCT_ID#">'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164044394762056168)
,p_db_column_name=>'QUANTITY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Quantity'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(164045087415056170)
,p_db_column_name=>'RATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rate'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(164033604737787192)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'118791'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_ID:PRODUCT:QUANTITY:RATE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164000481215015032)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(164000108944015031)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164000070389015031)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(164000108944015031)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P36_POM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163999905669015031)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(164000108944015031)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P36_POM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163999872645015031)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(164000108944015031)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P36_POM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(142813343750317377)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(164030932437759747)
,p_button_name=>'ADD_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Products'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.::P47_ORDER_ID,P47_SUPPLIER_ID,P47_POM_ID:&P36_POM_ORD_ID.,&P36_POM_SUPPLIER_ID.,&P36_POM_ID.'
,p_button_condition=>'P36_POM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164080324745541840)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(164000108944015031)
,p_button_name=>'ISSUE_PO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Issue PO'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure you want to Issue PO ?'',''ISSUE_PO'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P36_POM_ID is not null and :P36_POM_STATUS != ''Ordered'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164002919082015044)
,p_name=>'P36_POM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(163999436222015029)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pom Id'
,p_source=>'POM_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164003319930015063)
,p_name=>'P36_POM_ORD_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(163999436222015029)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Order'
,p_source=>'POM_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 	  cm_name || '' - '' || EOM_ORDER_DATE ,EOM_ORD_ID',
'from V_ENQUIRIES_ORDERS_MST',
'       ,V_CUSTOMER_MASTER',
'where eom_customer_id = cm_id',
'and EOM_ORD_ID is not null'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Order -'
,p_cHeight=>1
,p_read_only_when=>'P36_POM_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164003735698015068)
,p_name=>'P36_POM_SUPPLIER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(163999436222015029)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Supplier'
,p_source=>'POM_SUPPLIER_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SUPM_NAME || '',''|| SUPM_CITY, SUPM_ID',
'from',
'V_SUPPLIER_MANUFAC_LINK, V_SUPPLIER_MASTER',
'where SML_SUP_ID = SUPM_ID',
'and SUPM_SUPPLIER_TYPE =''DISTRIBUTOR''',
'and sml_manufac_id in (',
'select  DISTINCT eod_manufac_id',
'from V_ENQUIRIES_ORDERS_MST,V_ENQUIRIES_ORDERS_DETAILS',
'where eom_enq_id = eod_enq_id',
'and eom_ord_id = :P36_POM_ORD_ID)',
'union',
'select distinct SUPM_NAME || '',''|| SUPM_CITY, SUPM_ID',
'from V_SUPPLIER_MASTER',
'where SUPM_SUPPLIER_TYPE =''MANUFACTURER''',
'and SUPM_ID in (',
'select  DISTINCT eod_manufac_id',
'from V_ENQUIRIES_ORDERS_MST,V_ENQUIRIES_ORDERS_DETAILS',
'where eom_enq_id = eod_enq_id',
'and eom_ord_id = :P36_POM_ORD_ID)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Supplier -'
,p_lov_cascade_parent_items=>'P36_POM_ORD_ID'
,p_ajax_items_to_submit=>'P36_POM_ORD_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P36_POM_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164004175639015069)
,p_name=>'P36_POM_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(163999436222015029)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'In Progress',
''))
,p_prompt=>'Status'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name ',
'from V_SETUP_TABLE',
' where st_type = ''PO_STATUS''',
'and st_code = (select POM_STATUS',
'from V_PURCHASE_ORDER_MASTER',
'where POM_ID = :P36_POM_ID)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when st_code = ''IP'' then ',
'        ''<span style="color:yellow">''||st_name||''</span>''',
'when st_code = ''OR'' then ',
'        ''<span style="color:green">''||st_name||''</span>''',
'when st_code = ''RJ'' then ',
'        ''<span style="color:red">''||st_name||''</span>''',
'end stcode',
'  from V_SETUP_TABLE',
' where st_type = ''PO_STATUS''',
'and st_code = (select POM_STATUS',
'from V_PURCHASE_ORDER_MASTER',
'where POM_ID = :P36_POM_ID)'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164004532733015069)
,p_name=>'P36_POM_DL_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(163999436222015029)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Delivery Location'
,p_source=>'POM_DL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_DELIVERY_LOCATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''DELIVERY_LOCATION''',
' order by ST_DISPLAY_ORDER'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Delivery Location -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164004973480015070)
,p_name=>'P36_POM_BL_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(163999436222015029)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Billing Location'
,p_source=>'POM_BL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_BILLING_LOCATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''BILLING_LOCATION''',
' order by ST_DISPLAY_ORDER'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Billing Location -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164005365922015071)
,p_name=>'P36_POM_DELIVERY_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(163999436222015029)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Delivery Date'
,p_source=>'POM_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164005717588015071)
,p_name=>'P36_POM_DISCOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(163999436222015029)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Discount'
,p_source=>'POM_DISCOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164006144848015072)
,p_name=>'P36_POM_CREATED_BY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(163999436222015029)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Created By'
,p_source=>'POM_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164006502842015073)
,p_name=>'P36_POM_CREATD_ON'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(163999436222015029)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Creatd On'
,p_source=>'POM_CREATD_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164006896446015074)
,p_name=>'P36_POM_UPDATED_BY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(163999436222015029)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Updated By'
,p_source=>'POM_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164007344279015074)
,p_name=>'P36_POM_UPDATED_ON'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(163999436222015029)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Updated On'
,p_source=>'POM_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(164040289788959633)
,p_name=>'P36_SELECTED_PRODUCTS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(164030932437759747)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_product_list varchar2(4000);',
'',
'begin',
'  ',
'  if :P36_POM_ID is not null then',
'',
'    select ''|''||LISTAGG(pod_product_id,''|'') within GROUP  (order by pod_product_id) || ''|''',
'    into v_product_list',
'    from V_PURCHASE_ORDER_DETAILS',
'    where pod_pom_id = :P36_POM_ID;',
'',
'    return v_product_list;',
'  else ',
'',
'    return null;',
'',
'  end if;',
'',
'exception when others then',
'  return null;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Selected Products'
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
 p_id=>wwv_flow_imp.id(164130903484908253)
,p_name=>'P36_PRODUCT_COUNT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(164030932437759747)
,p_prompt=>'Product Count'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164089423881072251)
,p_name=>'Truncate Collection on Load'
,p_event_sequence=>15
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164089778456072251)
,p_event_id=>wwv_flow_imp.id(164089423881072251)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--insert into error_log (el_text) values (''Inside begin of dynamic plsql'');',
'	IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''PRODUCTS'' ) ',
'	THEN',
'	APEX_COLLECTION.TRUNCATE_COLLECTION (p_collection_name => ''PRODUCTS'');',
'  -- insert into error_log (el_text) values (''Inside if of dynamic plsql'');',
'	END IF;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164032547306781916)
,p_name=>'refresh_product_list'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P36_POM_ORD_ID,P36_POM_SUPPLIER_ID'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164037428475857973)
,p_event_id=>wwv_flow_imp.id(164032547306781916)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--insert into error_log (el_text) values (''Inside begin of dynamic plsql'');',
'	IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''PRODUCTS'' ) ',
'	THEN',
'	APEX_COLLECTION.TRUNCATE_COLLECTION (p_collection_name => ''PRODUCTS'');',
'  -- insert into error_log (el_text) values (''Inside if of dynamic plsql'');',
'	END IF;',
'END;',
'',
'BEGIN',
'	for i in ( SELECT pm_name',
'  || ''(''',
'  || pm_package_1',
'  || '' ''',
'  || pm_product_unit',
'  || ''x''',
'  ||pm_package_2',
'  || '' ''',
'  || pm_package_unit',
'  || '')'' product',
'  ,pod_orderd_quantity quantity',
'  ,pod_rate rate',
'  ,pod_product_id product_id',
'FROM V_PURCHASE_ORDER_MASTER',
'	,V_PURCHASE_ORDER_DETAILS',
'	,V_PRODUCT_MASTER',
'WHERE  pom_id = pod_pom_id',
'AND    pm_id = pod_product_id',
'AND    pom_ord_id    = :P36_pom_ord_id',
'AND    pom_supplier_id = :P36_POM_SUPPLIER_ID',
'AND    pom_id = :P36_POM_ID',
') loop',
'',
'		IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''PRODUCTS'' ) THEN',
'		--DEBUG_LOG_PROC (:P141_TRANS_ID || '':P141_TRANS_ID'');',
'				APEX_COLLECTION.ADD_MEMBER(',
'				p_collection_name =>''PRODUCTS'',',
'				p_c001 =>i.product,',
'				p_c002 =>i.product_id,',
'				p_c003 =>i.quantity,',
'				p_c004 =>i.rate',
'				);',
'',
'		ELSE       ',
'				APEX_COLLECTION.CREATE_COLLECTION(p_collection_name =>''PRODUCTS'');',
'				APEX_COLLECTION.ADD_MEMBER(',
'				p_collection_name =>''PRODUCTS'',				',
'				p_c001 =>i.product,',
'				p_c002 =>i.product_id,',
'				p_c003 =>i.quantity,',
'				p_c004 =>i.rate',
'				);',
'		END IF;',
'    END LOOP;	',
'',
'select count(1)',
'into :P36_PRODUCT_COUNT',
'from APEX_COLLECTIONS',
'where collection_name = ''PRODUCTS'';',
'',
'END;				'))
,p_attribute_02=>'P36_POM_ORD_ID,P36_POM_SUPPLIER_ID'
,p_attribute_03=>'P36_PRODUCT_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--insert into error_log (el_text) values (''Inside begin of dynamic plsql'');',
'	IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''PRODUCTS'' ) ',
'	THEN',
'	APEX_COLLECTION.TRUNCATE_COLLECTION (p_collection_name => ''PRODUCTS'');',
'  -- insert into error_log (el_text) values (''Inside if of dynamic plsql'');',
'	END IF;',
'END;',
'',
'BEGIN',
'	for i in ( SELECT pm_name',
'  || ''(''',
'  || pm_package_1',
'  || '' ''',
'  || pm_product_unit',
'  || ''x''',
'  ||pm_package_2',
'  || '' ''',
'  || pm_package_unit',
'  || '')'' product',
'  ,eod_quantity quantity',
'  ,EOD_NET_PURCHASE_VAL rate',
'  ,eod_product_id product_id',
'FROM V_ENQUIRIES_ORDERS_MST',
'	,V_ENQUIRIES_ORDERS_DETAILS',
'	,V_PRODUCT_MASTER',
'WHERE eom_enq_id    = eod_enq_id',
'  AND eom_ord_id    = :P36_pom_ord_id',
'  AND pm_manufac_id = eod_manufac_id',
'  AND pm_id         = eod_product_id',
'  AND eod_manufac_id IN',
'					  (SELECT sml_manufac_id',
'					  FROM V_SUPPLIER_MANUFAC_LINK',
'					  WHERE sml_sup_id = :P36_pom_supplier_id',
'					  )',
'/*AND NOT EXISTS (SELECT 1 FROM V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS ',
'				WHERE pom_id = pod_pom_id',
'				AND pom_ord_id = :P36_pom_ord_id',
'				AND pod_product_id = eod_product_id',
'                                AND pom_status = ''OR''',
'                   ) ',
'*/',
') loop',
'',
'		IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''PRODUCTS'' ) THEN',
'		--DEBUG_LOG_PROC (:P141_TRANS_ID || '':P141_TRANS_ID'');',
'				APEX_COLLECTION.ADD_MEMBER(',
'				p_collection_name =>''PRODUCTS'',',
'				p_c001 =>i.product,',
'				p_c002 =>i.product_id,',
'				p_c003 =>i.quantity,',
'				p_c004 =>i.rate',
'				);',
'',
'		ELSE       ',
'				APEX_COLLECTION.CREATE_COLLECTION(p_collection_name =>''PRODUCTS'');',
'				APEX_COLLECTION.ADD_MEMBER(',
'				p_collection_name =>''PRODUCTS'',				',
'				p_c001 =>i.product,',
'				p_c002 =>i.product_id,',
'				p_c003 =>i.quantity,',
'				p_c004 =>i.rate',
'				);',
'		END IF;',
'    END LOOP;	',
'',
'select count(1)',
'into :P36_PRODUCT_COUNT',
'from APEX_COLLECTIONS',
'where collection_name = ''PRODUCTS'';',
'',
'APEX_UTIL.set_session_state(''P36_POM_ORD_ID'',:P36_POM_ORD_ID);',
'APEX_UTIL.set_session_state(''P36_POM_SUPPLIER_ID'',:P36_POM_SUPPLIER_ID);',
'',
'END;				'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164032974373781919)
,p_event_id=>wwv_flow_imp.id(164032547306781916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(164030932437759747)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164038661214952235)
,p_name=>'selectProducts'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(164030932437759747)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164039067207952244)
,p_event_id=>wwv_flow_imp.id(164038661214952235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var cb$, checked, allRows$,',
'    sel$ = $("#P36_SELECTED_PRODUCTS"),',
'    event = this.browserEvent,',
'    target$ = $(event.target),',
'    th$ = target$.closest("th"),',
'    tr$ = target$.closest("tr");',
'if (th$.length) {',
'    // the click was on the "select all"',
'    // checkbox or checkbox cell',
'    cb$ = th$.find("input");',
'    if (cb$.length && cb$.val() === "all") {',
'        checked = cb$[0].checked;',
'        if (target$[0].nodeName !== ''INPUT'') {',
'            // only do this if the click was not on the checkbox',
'            // because the checkbox will check itself',
'            checked = cb$[0].checked = !checked;',
'        }',
'        if (sel$.val() === "") {',
'            sel$.val("|");',
'        }',
'        $("#myreport").find("td input").each(function() {',
'            this.checked = checked;',
'            // give a visual style to the [un]selected row',
'            $(this).closest("tr").toggleClass("selected", checked);',
'            // update the hidden selected item',
'            sel$.val(sel$.val().replace("|" + this.value + "|", "|"));',
'            if (checked) {',
'                sel$.val(sel$.val() + this.value + "|");',
'            }',
'        });',
'    }',
'} else if (tr$.length) {',
'    // the click was on some other data row',
'    cb$ = tr$.find("td").first().find("input");',
'    checked = cb$[0].checked;',
'    if (target$[0].nodeName !== ''INPUT'') {',
'        // only do this if the click was not on the checkbox',
'        // because the checkbox will check itself',
'        checked = cb$[0].checked = !checked;',
'    }',
'    // give a visual style to the [un]selected row',
'    tr$.toggleClass("selected", checked);',
'    // update the hidden selected item',
'    if (checked) {',
'        if (sel$.val() === "") {',
'            sel$.val("|");',
'        }',
'        sel$.val(sel$.val() + cb$.val() + "|");',
'        ',
'    } else {',
'        sel$.val(sel$.val().replace("|" + cb$.val() + "|", "|"));  ',
'               ',
'    }',
'    // update the select all checkbox state',
'    allRows$ = $("#myreport").find("td input");',
'    checked = (allRows$.length === allRows$.filter(":checked").length);',
'    if (allRows$.length){',
'    $("#myreport").find("th input")[0].checked = checked;',
'}',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164039414119955044)
,p_name=>'afterrefresh'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(164030932437759747)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P36_PRODUCT_COUNT'') != 0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164039859061955045)
,p_event_id=>wwv_flow_imp.id(164039414119955044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var checked,',
'    allRows$ = $("#myreport").find("td input");',
'allRows$.filter(":checked").closest("tr").addClass("selected");',
'checked = (allRows$.length === allRows$.filter(":checked").length);',
'$("#myreport").find("th input")[0].checked = checked;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164008142001015076)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from V_PURCHASE_ORDER_MASTER'
,p_attribute_02=>'V_PURCHASE_ORDER_MASTER'
,p_attribute_03=>'P36_POM_ID'
,p_attribute_04=>'POM_ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>164059291631843572
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164008533605015078)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P36_POM_ID is null then',
'        select "#OWNER#"."SEQ_POM_ID".nextval',
'          into :P36_POM_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(163999872645015031)
,p_internal_uid=>164059683235843574
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164008967034015078)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of V_PURCHASE_ORDER_MASTER'
,p_attribute_02=>'V_PURCHASE_ORDER_MASTER'
,p_attribute_03=>'P36_POM_ID'
,p_attribute_04=>'POM_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>164060116664843574
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(138320951979342862)
,p_process_sequence=>31
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update_status_to_IP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update V_PURCHASE_ORDER_MASTER',
'set POM_STATUS = ''IP''',
'where pom_id = :P36_POM_ID',
'and POM_STATUS is null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(163999872645015031)
,p_internal_uid=>138372101610171358
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164040577820963549)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert_products'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_lst_to_del varchar2(4000);',
'    v_count number;',
'    v_del_stmt varchar2(4000);',
'    v_del_flag number := 0;',
'    v_mod_flag number := 0;',
'	v_product_lst varchar2(4000);',
'    v_error_msg varchar2(4000);',
'    v_collection_count number;',
'    v_success_failure varchar2(4000);',
'    ',
'  cursor cur_product_lst is ',
'select eod_product_id , c003 quantity, c004 rate',
'from V_ENQUIRIES_ORDERS_MST,V_ENQUIRIES_ORDERS_DETAILS,APEX_COLLECTIONS',
'where  eom_enq_id = eod_enq_id',
'and eom_ord_id = :P36_POM_ORD_ID',
'and (eod_manufac_id in (',
'                        select sml_manufac_id ',
'                        from V_SUPPLIER_MANUFAC_LINK',
'                        where sml_sup_id = :P36_POM_SUPPLIER_ID',
'                      )',
'     OR eod_manufac_id= :P36_POM_SUPPLIER_ID)',
'and collection_name = ''PRODUCTS''',
'and c002 = eod_product_id;',
'',
' ',
'BEGIN',
'	v_product_lst := :P36_SELECTED_PRODUCTS;',
'    ',
'  --  insert into error_log (el_text) values (''rahul before loop ''); ',
'	for i in cur_product_lst loop',
'		insert into error_log (el_text) values (''rahul inside for loop '' || i.eod_product_id);',
'     --  v_collection_count :=  cur_product_lst%rowcount;',
'     --  insert into error_log (el_text) values (''rahul collection record count  '' || v_collection_count); ',
'	if instr(v_product_lst,''|''||i.eod_product_id||''|'') > 0 then',
'      --  insert into error_log (el_text) values (''rahul inside if block of ''  || i.eod_product_id);',
'			select count (1)',
'			into	v_count',
'			  from V_PURCHASE_ORDER_DETAILS',
'				where pod_pom_id  = :P36_POM_ID',
'				 and POD_PRODUCT_ID = i.eod_product_id;',
'            --  insert into error_log (el_text) values (''rahul count '' ||  v_count);  ',
'			if v_count = 0 then',
'            v_mod_flag := 1;',
'          --  insert into error_log (el_text) values (''rahul before insert'' || i.eod_product_id ||''--''|| i.quantity || ''--'' ||i.rate);',
'				insert into V_PURCHASE_ORDER_DETAILS',
'					 (',
'						POD_ID,',
'						POD_POM_ID,',
'						POD_PRODUCT_ID,',
'				    	POD_ORDERED_QUANTITY,',
'						POD_RATE		',
'					 )	',
'                   values',
'					 (',
'					  seq_pod_id.nextval,',
'					 :P36_POM_ID,     ',
'					 i.eod_product_id,',
'					 i.quantity,',
'					 i.rate',
'				   );',
'				--insert into error_log (el_text) values (''rahul after insert'' || i.eod_product_id);',
'			end if;	',
'			',
'		else',
'		v_lst_to_del := v_lst_to_del || ''''''''|| 	i.eod_product_id || '''''','';',
'		v_del_flag := 1;',
'		end if;',
'		',
'commit;',
'	end loop;',
'      if v_del_flag != 0 then',
'        v_lst_to_del := ''('' || SUBSTR(v_lst_to_del , 1, INSTR(v_lst_to_del , '','', -1)-1) || '')'';  ',
'		v_del_stmt := ''	 delete from V_PURCHASE_ORDER_DETAILS where pod_pom_id = ''||:P36_POM_ID ||'' and pod_product_id in '' || v_lst_to_del;',
'        EXECUTE IMMEDIATE v_del_stmt;',
'        v_del_flag := 0;',
'        v_mod_flag := 1;',
'	 end if;',
'	 ',
'       -- insert into error_log (el_text) values (''rahul v_mod_flag -- '' || v_mod_flag || ''--'' ||v_lst_to_del);',
'   if v_mod_flag = 1 then',
'    pkg_status.update_status(''PO'',:P36_POM_ID,''IP'',v_error_msg,v_success_failure,:P36_POM_ORD_ID);',
'   end if;',
'   ',
' EXCEPTION ',
'',
'when  DUP_VAL_ON_INDEX then',
'    v_error_msg := ''Duplicate product(s) cannot be added to the Purchase Order'';',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );  ',
'          ',
'when others then',
'    v_error_msg := ''Error: Processing Purchase Order'' || sqlerrm;',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );',
'    v_error_msg := sqlerrm;',
'    insert into error_log (el_text) values (''Error: Page:36 insert_products - '' || v_error_msg);',
'                    ',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>164091727451792045
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_product_id varchar2(4000);',
'v_insert_stmt varchar2(4000);',
'v_error_msg varchar2(4000);',
'BEGIN',
'insert into error_log (el_text) values ('':P36_SELECTED_PRODUCTS - '' || :P36_SELECTED_PRODUCTS);',
'',
'if :P36_SELECTED_PRODUCTS is not null and :P36_SELECTED_PRODUCTS != ''|'' then',
'	 	',
'	v_product_id := ''('' || trim('','' from replace(:P36_SELECTED_PRODUCTS,''|'', '','')) || '')'';',
'	',
'	insert into error_log (el_text) values (''inside of if block of EOD insert - '' || v_product_id);',
' ',
'	dbms_output.put_line (''inside of if block of EOD insert - '' || v_product_id);',
'  ',
'	v_insert_stmt := ''insert into V_PURCHASE_ORDER_DETAILS',
'	 (',
'		POD_ID,',
'		POD_POM_ID,',
'		POD_PRODUCT_ID,',
'		POD_ORDERD_QUANTITY,',
'		POD_RATE		',
'	 )	',
'',
'	 (',
'	  SELECT ',
'	  seq_pod_id.nextval,''||',
'	 :P36_POM_ID ||'',     ',
'	 c002 product_id,',
'	 c003 quantity,',
'	 c004 rate',
'    from APEX_COLLECTIONS col',
'    WHERE COLLECTION_NAME=''''PRODUCTS''''',
'	and c002 in '' || v_product_id ||''',
'	  )'';',
'	 ',
'    insert into error_log (el_text) values (''v_insert_stmt P36 - '' || v_insert_stmt);',
'	 dbms_output.put_line (''v_insert_stmt - '' || v_insert_stmt);',
'   ',
'    execute immediate v_insert_stmt;',
'	  ',
'	   insert into error_log (el_text) values (''After insert of products in POD'');',
'END IF;  ',
'  ',
' EXCEPTION ',
'',
'when  DUP_VAL_ON_INDEX then',
'    v_error_msg := ''Duplicate product(s) cannot be added to the Purchase Order'';',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );  ',
'          ',
'when others then',
'    v_error_msg := ''Error: Processing Purchase Order'';',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );',
'                    ',
'END;   '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164140830781116524)
,p_process_sequence=>36
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Issue PO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_count NUMBER;',
'  v_error_msg   VARCHAR2(4000);',
'  v_success_failure number;',
'BEGIN',
' pkg_status.update_status(''PO'',:P36_POM_ID,''OR'',v_error_msg,v_success_failure,:P36_POM_ORD_ID);',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'  v_error_msg := sqlerrm;',
'  INSERT',
'  INTO error_log',
'    (',
'      el_text',
'    )',
'    VALUES',
'    (',
'      ''Error updating status of PO and Order ''',
'      || v_error_msg',
'    );',
'END;  '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error in issuing PO.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ISSUE_PO'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Status of PO updated successfully.'
,p_internal_uid=>164191980411945020
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(164009283166015078)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(164000070389015031)
,p_internal_uid=>164060432796843574
);
wwv_flow_imp.component_end;
end;
/
