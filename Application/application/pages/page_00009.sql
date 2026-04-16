prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'Enquiries Product Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Enquiries Product Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158057766307756733)
,p_plug_name=>'Enquiries List'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum "SL#" ,eod_quantity QTY,pm_uom UOM,PM_PACKAGE_1 || PM_PRODUCT_UNIT ||  ''X'' || PM_PACKAGE_2 || '' '' || PM_PACKAGE_UNIT PACKING',
',pm_name "ITEMS DESCRIPTION",EOD_FOB_DOLL_RND || '' ''|| PM_UOM "UNIT FOB US$", eod_quantity * EOD_FOB_DOLL_RND "TOTAL US$"',
'from V_ENQUIRIES_ORDERS_DETAILS,V_PRODUCT_MASTER',
'where eod_product_id = pm_id',
'and eod_enq_id = :P9_EOM_ENQ_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SUPM_NAME,',
'  PM_NAME,',
'  EOD_QUANTITY,',
'  EOD_MRP,',
'  EOD_TRADE_PRICE,',
'  EOD_PURCHASE_AMT,',
'  EOD_SCHEME_PERC,',
'  EOD_SCHEME_AMT,',
'  EOD_DISCOUNT_PERC,',
'  EOD_DISCOUNT_AMT,',
'  EOD_VAT_PERC,',
'  EOD_VAT_AMT,',
'  EOD_TRANS_CHARGES,',
'  EOD_BAGS_CTNS,',
'  EOD_RECOV_ON_FRT,',
'  EOD_REPACKING,',
'  EOD_EXTRA,',
'  EOD_NET_PURCHASE_VAL,',
'  EOD_VOL_FOB_AMT,',
'  EOD_VOL_FOB_EXP,',
'  EOD_PROFIT_PERC,',
'  EOD_PROFIT_AMT,',
'  EOD_INCOME_TAX,',
'  EOD_DUTY_PERC,',
'  EOD_DUTY_AMT,',
'  EOD_ECGC,',
'  EOD_BANK_COMM,',
'  EOD_INTEREST_PERC,',
'  EOD_INTEREST_AMT,',
'  EOD_EXCHANGE_RATE,',
'  EOD_FOB_RS,',
'  EOD_FOB_DOLL,',
'  EOD_COMMISSION_PERC,',
'  EOD_FOBC_AMT,',
'  EOD_FOB_DOLL_RND,',
'  EOD_OCEAN_FRT,',
'  EOD_FRT_PER_CTN,',
'  EOD_CANDF_AMT,',
'  EOD_CANDFC_AMT,',
'  EOD_CANDF_AMT_RND,',
'  EOD_INSURANCE_AMT,',
'  EOD_CIF_AMT,',
'  EOD_CIFC_AMT,',
'  EOD_CIF_AMT_RND,',
'  EOD_CNI_AMT,',
'  EOD_CNIC_AMT,',
'  EOD_CNI_AMT_RND,',
'  EOD_COSTING_TYPE',
'from V_ENQUIRIES_ORDERS_DETAILS,V_PRODUCT_MASTER,V_SUPPLIER_MASTER',
'where eod_enq_id = :P9_EOM_ENQ_ID',
'and EOD_PRODUCT_ID = pm_id',
'and EOD_MANUFAC_ID = supm_id;'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(158058107079756734)
,p_name=>'V_ENQUIRIES_ORDERS_MST'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
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
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_icon_view_columns_per_row=>1
,p_owner=>'RANU'
,p_internal_uid=>5903528960558326
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158795149304251614)
,p_db_column_name=>'SL#'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sl#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158795869173251620)
,p_db_column_name=>'QTY'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158796548987251621)
,p_db_column_name=>'UOM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Uom'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158797267148251622)
,p_db_column_name=>'PACKING'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Packing'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158797920166251638)
,p_db_column_name=>'ITEMS DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Items Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158798605956251639)
,p_db_column_name=>'UNIT FOB US$'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Unit Fob Us$'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158799331416251640)
,p_db_column_name=>'TOTAL US$'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Total Us$'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(158063778572756760)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'59093'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SL#:QTY:UOM:PACKING:ITEMS DESCRIPTION:UNIT FOB US$:TOTAL US$'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158064753182756782)
,p_name=>'P9_EOM_ENQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(158057766307756733)
,p_prompt=>'Eom Enq Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp.component_end;
end;
/
