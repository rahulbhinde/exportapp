prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_name=>'Information of Product'
,p_page_mode=>'MODAL'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region-headerItems--title {padding-top: 0.2rem;padding-left: 0.5rem;padding-right: 0.5rem;padding-bottom: 0.2rem;}',
''))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Information of Product 1  $v(''P29_PRODUCT_NAME'')',
'Information of Product 2  &P29_PRODUCT_NAME.',
'Information of Product :P29_PRODUCT_NAME',
'.t-Form-fieldContainer--floatingLabel.t-Form-fieldContainer {padding-top: 0.2rem;padding-left: 0.8rem;padding-right: 0.8rem;padding-bottom: 0.2rem; }'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(163430895865554606)
,p_plug_name=>'<b>&P29_PRODUCT_NAME.</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent3:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cm_name,eom_order_date,eod_costing_type,eod_mrp,EOD_PURCHASE_AMT,eod_scheme_perc,',
unistr('''\20B9''||'' ''||eod_scheme_amt eod_scheme_amt, eod_discount_perc, ''\20B9''||'' ''||eod_discount_amt eod_discount_amt,'),
unistr('eod_profit_perc,''\20B9''||'' ''||eod_profit_amt eod_profit_amt,eod_exchange_rate,'),
unistr('''\20B9''||'' ''||eod_fob_rs eod_fob_rs,st_extra1||'' '' ||eod_fob_doll eod_fob_doll ,st_extra1||'' '' ||eod_fob_doll_rnd eod_fob_doll_rnd'),
'from V_ENQUIRIES_ORDERS_DETAILS,V_ENQUIRIES_ORDERS_MST,V_CUSTOMER_MASTER,V_SETUP_TABLE',
'where eom_enq_id = eod_enq_id',
'and eom_type = ''ORDER''',
'and eod_product_id = :P29_PRODUCT_ID',
'and eom_customer_id = cm_id',
'and nvl(cm_active,''Y'') = ''Y''',
'and decode(:P29_COSTING_TYPE,''SYSTEM_LEVEL'',''XX'',''CUSTOMER_LEVEL'',eom_customer_id) = decode(:P29_COSTING_TYPE,''SYSTEM_LEVEL'',''XX'',''CUSTOMER_LEVEL'',:P29_CUSTOMER_ID)',
'and st_type = ''QUOTE_IN''',
'and eom_enq_id <> nvl(:P29_EOM_ENQ_ID,''-1'')',
'and st_code = eom_quote_in',
'order by EOM_ORDER_DATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P29_COSTING_TYPE,P29_CUSTOMER_ID'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(163430998922554607)
,p_name=>'Costing'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'There are no record(s) of Latest Costing for the selected Product.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'RANU'
,p_internal_uid=>11276420803356199
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163450860264554726)
,p_db_column_name=>'EOD_COSTING_TYPE'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Costing Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163455275711554730)
,p_db_column_name=>'EOM_ORDER_DATE'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163458043426554734)
,p_db_column_name=>'CM_NAME'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(663553627628028212)
,p_db_column_name=>'EOD_MRP'
,p_display_order=>78
,p_column_identifier=>'BT'
,p_column_label=>'MRP'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(663553515530028211)
,p_db_column_name=>'EOD_PURCHASE_AMT'
,p_display_order=>88
,p_column_identifier=>'BU'
,p_column_label=>'Purchase Amt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(663553433699028210)
,p_db_column_name=>'EOD_SCHEME_PERC'
,p_display_order=>98
,p_column_identifier=>'BV'
,p_column_label=>'Sch. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(663553256127028208)
,p_db_column_name=>'EOD_DISCOUNT_PERC'
,p_display_order=>118
,p_column_identifier=>'BX'
,p_column_label=>'Disc. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(663553002087028206)
,p_db_column_name=>'EOD_PROFIT_PERC'
,p_display_order=>138
,p_column_identifier=>'BZ'
,p_column_label=>'Profit %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27613756862485758)
,p_db_column_name=>'EOD_FOB_DOLL'
,p_display_order=>158
,p_column_identifier=>'BQ'
,p_column_label=>'FOB'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27613877405485759)
,p_db_column_name=>'EOD_FOB_DOLL_RND'
,p_display_order=>168
,p_column_identifier=>'BR'
,p_column_label=>'FOB Rounded'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27613983715485760)
,p_db_column_name=>'EOD_FOB_RS'
,p_display_order=>178
,p_column_identifier=>'BS'
,p_column_label=>'FOB (INR)'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(663552893751028204)
,p_db_column_name=>'EOD_EXCHANGE_RATE'
,p_display_order=>188
,p_column_identifier=>'CB'
,p_column_label=>'Exch. Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(663552180359028197)
,p_db_column_name=>'EOD_SCHEME_AMT'
,p_display_order=>198
,p_column_identifier=>'CC'
,p_column_label=>'Sch. Amt.'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(663552061100028196)
,p_db_column_name=>'EOD_DISCOUNT_AMT'
,p_display_order=>208
,p_column_identifier=>'CD'
,p_column_label=>'Disc. Amt.'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(663551923648028195)
,p_db_column_name=>'EOD_PROFIT_AMT'
,p_display_order=>218
,p_column_identifier=>'CE'
,p_column_label=>'Profit Amt.'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(163533523557879050)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'113790'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CM_NAME:EOM_ORDER_DATE:EOD_COSTING_TYPE:EOD_MRP:EOD_PURCHASE_AMT:EOD_SCHEME_PERC:EOD_SCHEME_AMT:EOD_DISCOUNT_PERC:EOD_DISCOUNT_AMT:EOD_PROFIT_PERC:EOD_PROFIT_AMT:EOD_FOB_RS:EOD_EXCHANGE_RATE:EOD_FOB_DOLL:EOD_FOB_DOLL_RND:'
,p_sort_column_1=>'CM_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'EOM_ORDER_DATE'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(163574235025810611)
,p_plug_name=>'<b>Suppliers</b>'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent3:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select supm_name, supm_address1,supm_address2,supm_city,st.st_name State,cnty.st_name Country,supm_zip,supm_tel1,supm_tel2',
'from V_SUPPLIER_MASTER,V_SUPPLIER_MANUFAC_LINK,V_SETUP_TABLE st, V_SETUP_TABLE cnty, V_PRODUCT_MASTER',
'where supm_id = sml_sup_id',
'and supm_supplier_type = ''DISTRIBUTOR''',
'and nvl(supm_active,''Y'') = ''Y''',
'and supm_state = st.st_code',
'and st.st_type = ''STATE''',
'and supm_country = cnty.st_code',
'and cnty.st_type = ''COUNTRY''',
'--and sml_manufac_id = :P29_MANUFAC_ID',
'and sml_manufac_id = pm_manufac_id',
'and pm_id = :P29_PRODUCT_ID',
'UNION',
'select supm_name, supm_address1,supm_address2,supm_city,st.st_name State,cnty.st_name Country,supm_zip,supm_tel1,supm_tel2',
'from V_SUPPLIER_MASTER,V_SETUP_TABLE st, V_SETUP_TABLE cnty, V_PRODUCT_MASTER',
'where SUPM_SUPPLIER_TYPE =''MANUFACTURER''',
'and nvl(supm_active,''Y'') = ''Y''',
'and supm_state = st.st_code',
'and st.st_type = ''STATE''',
'and supm_country = cnty.st_code',
'and cnty.st_type = ''COUNTRY''',
'--and SUPM_ID = :P29_MANUFAC_ID;',
'and SUPM_ID = pm_manufac_id',
'and pm_id = :P29_PRODUCT_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P29_PRODUCT_ID'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Rahul modified query for state and country and to fetch details as per manufac configured in product master 2-Feb-25',
'select supm_name, supm_address1,supm_address2,supm_city,st.st_name State,cnty.st_name Country,supm_zip,supm_tel1,supm_tel2',
'from V_SUPPLIER_MASTER,V_SUPPLIER_MANUFAC_LINK,V_SETUP_TABLE st, V_SETUP_TABLE cnty',
'where supm_id = sml_sup_id',
'and supm_supplier_type = ''DISTRIBUTOR''',
'and nvl(supm_active,''Y'') = ''Y''',
'and supm_state = st.st_id',
'and st.st_type = ''STATE''',
'and supm_country = cnty.st_id',
'and cnty.st_type = ''COUNTRY''',
'and sml_manufac_id = :P29_MANUFAC_ID',
'UNION',
'select supm_name, supm_address1,supm_address2,supm_city,st.st_name State,cnty.st_name Country,supm_zip,supm_tel1,supm_tel2',
'from V_SUPPLIER_MASTER,V_SETUP_TABLE st, V_SETUP_TABLE cnty',
'where SUPM_SUPPLIER_TYPE =''MANUFACTURER''',
'and nvl(supm_active,''Y'') = ''Y''',
'and supm_state = st.st_id',
'and st.st_type = ''STATE''',
'and supm_country = cnty.st_id',
'and cnty.st_type = ''COUNTRY''',
'and SUPM_ID = :P29_MANUFAC_ID;',
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(163574336792810625)
,p_name=>'Suppliers'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'RAHUL'
,p_internal_uid=>11419758673612217
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163574609241810795)
,p_db_column_name=>'SUPM_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Supplier'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163574965653810820)
,p_db_column_name=>'SUPM_ADDRESS1'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Address1'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163575358474810821)
,p_db_column_name=>'SUPM_ADDRESS2'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Address2'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163575728181810823)
,p_db_column_name=>'SUPM_CITY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'City'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163576154022810825)
,p_db_column_name=>'STATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163576896320810826)
,p_db_column_name=>'SUPM_ZIP'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Zip'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163577368381810826)
,p_db_column_name=>'SUPM_TEL1'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Telphone 1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163577692538810832)
,p_db_column_name=>'SUPM_TEL2'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Telephone 2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(163619716979449948)
,p_db_column_name=>'COUNTRY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(163578147536811724)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'114236'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUPM_NAME:SUPM_ADDRESS1:SUPM_ADDRESS2:SUPM_CITY:STATE:COUNTRY:SUPM_ZIP:SUPM_TEL1:SUPM_TEL2:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(163629168785531613)
,p_plug_name=>'hidden_items'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>5
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27613137358485752)
,p_name=>'P29_COSTING_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(163430895865554606)
,p_prompt=>'<b>Latest Costing Type</b>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:System Level;SYSTEM_LEVEL,Customer Level;CUSTOMER_LEVEL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27613258747485753)
,p_name=>'P29_CUSTOMER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(163430895865554606)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27614032524485761)
,p_name=>'P29_EOM_ENQ_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(163430895865554606)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28147757021058947)
,p_name=>'P29_PRODUCT_IMG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(163430895865554606)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_count number;',
'begin',
'/*select pm_image into v_blob',
'from V_PRODUCT_MASTER',
'where pm_id = :P29_PRODUCT_ID;*/',
'',
'select count(1) into v_count ',
' from V_PRODUCT_MASTER ',
'where pm_id = :P29_PRODUCT_ID',
'and pm_image is not null;',
'',
'if v_count = 0 then',
'    return ''<img src="#APP_IMAGES#spriteblend.png" height=100px width=100px />'';',
'end if;',
'',
'    return ''test'';',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28147806272058948)
,p_name=>'P29_PRODUCT_IMG_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(163430895865554606)
,p_pre_element_text=>'<img src="#APP_IMAGES#spriteblend.png" height=100px width=100px />'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(163466922896557515)
,p_name=>'P29_PRODUCT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(163430895865554606)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(163578835200816191)
,p_name=>'P29_MANUFAC_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(163430895865554606)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(163627315601467731)
,p_name=>'P29_PRODUCT_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(163430895865554606)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT pm_name',
'from V_PRODUCT_MASTER',
'where pm_id = :P29_PRODUCT_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27613306115485754)
,p_name=>'Refresh Latest Costing Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_COSTING_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27613407919485755)
,p_event_id=>wwv_flow_imp.id(27613306115485754)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(163430895865554606)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
