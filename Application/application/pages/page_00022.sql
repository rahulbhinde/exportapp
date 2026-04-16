prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_name=>'Enquiries'
,p_step_title=>'Enquiries'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'    function copy_proforma (enqid,enqno)',
'    {',
'        $s("P22_EOM_ENQ_ID",enqid);',
'        //apex.submit(''COPY'');',
'        $s(''P0_CONFIRM_MSG'',''Do you want to Copy this Enquiry '' + enqno + '' ?'');',
'        $s(''P0_REQ'',''SB_CONFIRM_COPY'');',
'        openModal(''SB_CONFIRM'');',
'        //apex.confirm(''Do you want to Copy this Enquiry '' + enqno + '' ?'' , ''COPY'');',
'    }',
'    ',
'    function fnConfirmYes()',
'    {',
'        if ($v(''P0_REQ'') == "SB_CONFIRM_COPY")',
'          apex.submit(''COPY'');',
'        ',
'        closeModal(''SB_CONFIRM'');',
'    }',
'',
'    function fnConfirmNo()',
'    {        ',
'        closeModal(''SB_CONFIRM'');',
'    }',
'</script>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-table td {padding: 0px 4px;!important} /*.a-IRR-table  td*/',
'.t-MediaList , .t-Body-actions{background-color: #EBF6F9;}',
'.t-MediaList, .t-MediaList-item { border-color: #EBF6F9;}'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The key information related to Enquiries/ Orders are displayed here.',
'<br>',
'Click Type as <b>"Enquiries"</b> or <b>"Orders"</b> - to list all the Enquiries/Orders<br>',
'Click on <b>"Create"</b> - to create new Enquiry<br>',
'<br><br>',
'The colors are associated to different status of Enquiry/ Order and refer besides Type filter to know which color stands for which status. User can also click on those colored button the filter those statuses.',
'<br><br>',
'<span aria-hidden="true" class="fa fa-emoji-tired"></span> Tired of manually creating Pre and Post shipment documents ? - Just click on the Icon <i class="fa fa-file-excel-o" style="font-size:16px;color:#69C282"></i><i class="fa fa-file-pdf-o" style='
||'"font-size:16px;color:#ED6647"></i> and document will be generated on few clicks.',
'<br><br>',
'<span aria-hidden="true" class="fa fa-emoji-tired"></span> Tired of entering same Enquiry/ Order details again ? - Just click on the Copy Icon <i class="fa fa-copy" style="font-size:16px;color:blue"></i> and most of the work is done. ',
'<br>Go take a Break ! <span aria-hidden="true" class="fa fa-coffee fa-anim-horizontal-shake fam-heart fam-is-danger"></span>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27614519053485766)
,p_plug_name=>'Status Flowchart'
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>',
'<br><br>',
'<span style="font-weight:bold;font-size:15px">Status Flowchart</span>',
'<br><br>',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_IP. , &APP_COLOR_ENQ_IP. );color:#000000" href="#">Enquiry In-Progress</a> ',
'',
'<br><span style="font-weight:bold;font-size:30px">&#8659;</span><br>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_AW. , &APP_COLOR_ENQ_AW. );color:#000000" href="#">Awaiting Approval</a>',
'',
'<br><span style="font-weight:bold;font-size:30px">&#8659;</span><br>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_RC. , &APP_COLOR_ORD_SHP. );color:#000000" href="#">Approved</a> or',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_RJ. , &APP_COLOR_ENQ_RJ. );color:#000000" href="#">Rejected</a>',
'',
'<br><span style="font-weight:bold;font-size:30px">&#8659;</span><br>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_IP. , &APP_COLOR_ENQ_IP. );color:#000000" href="#">Order In-Progress</a>',
'',
'<br><span style="font-weight:bold;font-size:30px">&#8659;</span><br>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_PPO. , &APP_COLOR_ORD_POI. );color:#000000" href="#">Partial PO</a>',
'',
'<br><span style="font-weight:bold;font-size:30px">&#8659;</span><br>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_POI. , &APP_COLOR_ORD_PR. );color:#000000" href="#">PO Issued</a>',
'',
'<br><span style="font-weight:bold;font-size:30px">&#8659;</span><br>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_PR. , &APP_COLOR_ORD_RC. );color:#000000" href="#">Partially Received</a>',
'',
'<br><span style="font-weight:bold;font-size:30px">&#8659;</span><br>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_RC. , &APP_COLOR_ORD_SHP. );color:#000000" href="#">Received</a> ',
'',
'</center>'))
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8224589601282906747)
,p_plug_name=>'Enquiries/ Orders Report'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157952227529084030)
,p_plug_name=>'Enquiries List'
,p_region_name=>'ENQLIST'
,p_parent_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EOM_ENQ_ID,',
'       EOM_ORD_ID,',
'       EOM_ENQ_NO,',
'       cm_name,',
'       EOM_TYPE,',
'   --    enq_st.st_name ENQ_STATUS,',
'       EOM_ENQ_DATE,',
'       EOM_ENQ_DEL_DT,',
'       EOM_ORDER_DATE,',
'   --    ord_st.st_name ORDER_STATUS,',
'       EOM_PAY_TERMS,',
'       EOM_FRT_AMT,',
'       EOM_CURRENT_RATE,',
'       EOM_REALISE_RATE,',
'       '''' "Download",',
'       '''' "Copy",',
'       case when EOM_ENQ_STATUS =''IP'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when EOM_ENQ_STATUS =''AW'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_AW/*#0000FF #267DB3''*/',
'		    when EOM_ENQ_STATUS =''AP'' and EOM_ORD_ID is null then :APP_COLOR_ORD_RC/*''#000000 #69C282''*/',
'		    when EOM_ENQ_STATUS =''RJ'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_RJ /*#ED6647*/',
'			when EOM_ORDER_STATUS =''IP'' and EOM_ORD_ID is not null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when EOM_ORDER_STATUS =''PPO'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_PPO/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''POI'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_POI/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''PR'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_PR/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''RC'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_RC/*#0000FF #267DB3''*/',
'		    when EOM_ORDER_STATUS =''SHP'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_SHP/*''#000000 #69C282''*/',
'            when EOM_ORDER_STATUS =''RJ'' and EOM_ORD_ID is not null then :APP_COLOR_ENQ_RJ /*#ED6647*/',
'	   end color_status_1',
'       ,case when EOM_ENQ_STATUS =''IP'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when EOM_ENQ_STATUS =''AW'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_AW/*#0000FF #267DB3''*/',
'		    when EOM_ENQ_STATUS =''AP'' and EOM_ORD_ID is null then :APP_COLOR_ORD_RC/*''#000000 #69C282''*/',
'		    when EOM_ENQ_STATUS =''RJ'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_RJ /*#ED6647*/',
'			when EOM_ORDER_STATUS =''IP'' and EOM_ORD_ID is not null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when EOM_ORDER_STATUS =''PPO'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_POI/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''POI'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_PR/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''PR'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_RC/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''RC'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_SHP/*#0000FF #267DB3''*/',
'		    when EOM_ORDER_STATUS =''SHP'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_SHP/*''#000000 #69C282''*/',
'            when EOM_ORDER_STATUS =''RJ'' and EOM_ORD_ID is not null then :APP_COLOR_ENQ_RJ /*#ED6647*/',
'	   end color_status_2',
'       ,EOM_INVOICE_NO',
'       --,''Proforma'' "Proforma"',
'--,''Proforma_PDF'' "Proforma_PDF"',
'        ,EOM_ENQ_STATUS ENQ_STATUS',
'        ,EOM_ORDER_STATUS ORD_STATUS',
'        ,case when (select count(1) from V_OUTPUT_MASTER where OM_DOC_TYPE = ''CustomInvoice'' and OM_REF_ID = EOM_ENQ_ID and OM_FINAL =''Y'')  = 0',
'        then ''red''',
'        else ''green''',
'        end CI_count_css,',
'        nvl(EOM_TOTAL_QTY,0) EOM_TOTAL_QTY,',
'        ST_EXTRA1 || '' '' ||nvl(to_char(EOM_TOTAL_CONTAINER_AMT,''999G999G999G999G990D00''),0) EOM_TOTAL_CONTAINER_AMT,',
'        nvl(EOM_TOTAL_CBM,0) EOM_TOTAL_CBM,',
'        nvl(EOM_AVG_EXCH_RATE,0) EOM_AVG_EXCH_RATE,',
'        EOM_CREATED_BY,',
'        EOM_CREATED_ON,',
'        EOM_UPDATED_BY,',
'        EOM_UPDATED_ON,',
'        case when (select count(1) from V_OUTPUT_MASTER where OM_DOC_TYPE = ''ENQ'' and OM_REF_ID = EOM_ENQ_ID and OM_FINAL =''Y'')  = 0',
'        then ''<a href="javascript:void(0);"><span aria-hidden="true" class="fa fa-times-square-o u-color-9-text"></span></a>''',
'        else ''<span class="fa fa-check-square-o u-color-4-text" aria-hidden="true"></span>''',
'        end pf_count_css,',
'         case when (select count(1) from V_OUTPUT_MASTER where OM_DOC_TYPE = ''CI'' and OM_REF_ID = EOM_ENQ_ID and OM_FINAL =''Y'')  = 0',
'        then ''<a href="javascript:void(0);"><span aria-hidden="true" class="fa fa-times-square-o u-color-9-text"></span></a>''',
'        else ''<span class="fa fa-check-square-o u-color-4-text" aria-hidden="true"></span>''',
'        end custinv_count_css,',
'		case when (select count(1) from V_OUTPUT_MASTER where OM_DOC_TYPE = ''COMINV'' and OM_REF_ID = EOM_ENQ_ID and OM_FINAL =''Y'')  = 0',
'        then ''<a href="javascript:void(0);"><span aria-hidden="true" class="fa fa-times-square-o u-color-9-text"></span></a>''',
'        else ''<span class="fa fa-check-square-o u-color-4-text" aria-hidden="true"></span>''',
'        end comminv_count_css,',
'        case when (select count(1) from V_OUTPUT_MASTER where OM_DOC_TYPE = ''BOL'' and OM_REF_ID = EOM_ENQ_ID and OM_FINAL =''Y'')  = 0',
'        then ''<a href="javascript:void(0);"><span aria-hidden="true" class="fa fa-times-square-o u-color-9-text"></span></a>''',
'        else ''<span class="fa fa-check-square-o u-color-4-text" aria-hidden="true"></span>''',
'        end bol_count_css,',
'        case when (select count(1) from V_OUTPUT_MASTER where OM_DOC_TYPE = ''GM'' and OM_REF_ID = EOM_ENQ_ID and OM_FINAL =''Y'')  = 0',
'        then ''<a href="javascript:void(0);"><span aria-hidden="true" class="fa fa-times-square-o u-color-9-text"></span></a>''',
'        else ''<span class="fa fa-check-square-o u-color-4-text" aria-hidden="true"></span>''',
'        end  vgm_count_css,',
'        EOM_REMARKS',
'  from V_ENQUIRIES_ORDERS_MST--,V_SETUP_TABLE enq_st, V_SETUP_TABLE ord_st',
'       ,V_CUSTOMER_MASTER',
'       ,V_SETUP_TABLE',
'  where eom_customer_id = cm_id',
'  /*and nvl(EOM_ENQ_STATUS,''IP'') = enq_st.st_code',
'  and enq_st.st_type = ''ENQUIRY_STATUS''',
'  and nvl(EOM_ORDER_STATUS,''IP'') = ord_st.st_code ',
'  and ord_st.st_type = ''ORDER_STATUS''*/',
'  and EOM_QUOTE_IN = ST_CODE',
'  and  ST_TYPE = ''QUOTE_IN''',
'  --Commented and below Order is not null for rejected orders to be displayed here alongwith rejected enquiries - 4-oct-2021',
'  --and EOM_ORD_ID is null',
'and  (EOM_ORD_ID is null ',
'  or (EOM_ORDER_STATUS = ''RJ'' and EOM_ORD_ID is not null))',
'  --end  4-oct-2021',
'and EOM_ENQ_ACC_YEAR between  :P22_FROM_FY and :P22_TO_FY   ',
'order by cm_name,EOM_ENQ_NO;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P22_TYPE_ENQ_ORD,P22_FROM_FY,P22_TO_FY'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P22_TYPE_ENQ_ORD'
,p_plug_display_when_cond2=>'ENQ'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Enquiries List'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_SHP. , &APP_COLOR_ORD_SHP. );color:#000000" href="#">Shipped</a>',
'',
'',
'',
'',
' case when EOM_ENQ_STATUS =''IP'' and EOM_ORD_ID is null then enq_st.ST_EXTRA1/*''#000000 #F1C40F''*/',
'		    when EOM_ENQ_STATUS =''AW'' and EOM_ORD_ID is null then enq_st.ST_EXTRA1/*#0000FF #267DB3''*/',
'		    when EOM_ENQ_STATUS =''AP'' and EOM_ORD_ID is null then enq_st.ST_EXTRA1/*''#000000 #69C282''*/',
'		    when EOM_ENQ_STATUS =''RJ'' and EOM_ORD_ID is null then enq_st.ST_EXTRA1 /*#ED6647*/',
'			when EOM_ORDER_STATUS =''IP'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA1/*''#000000 #F1C40F''*/',
'		    when EOM_ORDER_STATUS =''PPO'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA1/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''POI'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA1/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''PR'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA1/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''RC'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA1/*#0000FF #267DB3''*/',
'		    when EOM_ORDER_STATUS =''SHP'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA1/*''#000000 #69C282''*/',
'	   end color_status_1',
'       ,case when EOM_ENQ_STATUS =''IP'' and EOM_ORD_ID is null then enq_st.ST_EXTRA2/*''#000000 #F1C40F''*/',
'		    when EOM_ENQ_STATUS =''AW'' and EOM_ORD_ID is null then enq_st.ST_EXTRA2/*#0000FF #267DB3''*/',
'		    when EOM_ENQ_STATUS =''AP'' and EOM_ORD_ID is null then enq_st.ST_EXTRA2/*''#000000 #69C282''*/',
'		    when EOM_ENQ_STATUS =''RJ'' and EOM_ORD_ID is null then enq_st.ST_EXTRA2 /*#ED6647*/',
'			when EOM_ORDER_STATUS =''IP'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA2/*''#000000 #F1C40F''*/',
'		    when EOM_ORDER_STATUS =''PPO'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA2/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''POI'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA2/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''PR'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA2/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''RC'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA2/*#0000FF #267DB3''*/',
'		    when EOM_ORDER_STATUS =''SHP'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA2/*''#000000 #69C282''*/',
'	   end color_status_2'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(157952293795084032)
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
,p_show_calendar=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>5797715675885624
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(142597419883172088)
,p_name=>'Total'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157952602217084067)
,p_db_column_name=>'EOM_ENQ_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>' '
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157953076609084071)
,p_db_column_name=>'EOM_ORD_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Order Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157953828241084071)
,p_db_column_name=>'EOM_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157954624246084072)
,p_db_column_name=>'EOM_ENQ_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Enquiry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:#COLOR_STATUS#">#EOM_ENQ_DATE#</span>',
'P22_TYPE_ENQ_ORD - ENQ'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157955062607084072)
,p_db_column_name=>'EOM_ENQ_DEL_DT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Delivery Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_ENQ_DEL_DT#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157955438395084073)
,p_db_column_name=>'EOM_ORDER_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:#COLOR_STATUS#">#EOM_ORDER_DATE#</span>',
'P22_TYPE_ENQ_ORD - ORD'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157956178580084073)
,p_db_column_name=>'EOM_PAY_TERMS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Pay Terms'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_PAY_TERMS#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157956634283084074)
,p_db_column_name=>'EOM_FRT_AMT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Freight Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_FRT_AMT#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157956989498084074)
,p_db_column_name=>'EOM_CURRENT_RATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Current Rate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_CURRENT_RATE#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(157957418279084075)
,p_db_column_name=>'EOM_REALISE_RATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Custom Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00PR'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_REALISE_RATE#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158000167433176701)
,p_db_column_name=>'Download'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Output(s)'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_ENQ_ID,P10_OUTPUT_TYPE,P10_CALLING_FROM,APP_OM_ID:#EOM_ENQ_ID#,ENQ,ENQ,'
,p_column_linktext=>'<i class="fa fa-file-excel-o" style="font-size:16px;color:#69C282"></i><i class="fa fa-file-pdf-o" style="font-size:16px;color:#ED6647"></i>'
,p_column_link_attr=>'title ="Click"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'export-excel-icon',
'',
'<img src="#APP_IMAGES#Excel_PDF.png" alt="Download" >',
'<i class="fa fa-file-excel-o" style="font-size:16px;color:green"><i class="fa fa-file-pdf-o" style="font-size:16px;color:red"></i></i>'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(158335293813557123)
,p_db_column_name=>'CM_NAME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Customer'
,p_column_html_expression=>'<span style="display:block; width:150px">#CM_NAME#</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(137366486600091089)
,p_db_column_name=>'EOM_ENQ_NO'
,p_display_order=>29
,p_column_identifier=>'T'
,p_column_label=>'Enquiry#'
,p_column_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP:P23_EOM_ENQ_ID:#EOM_ENQ_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt=""> #EOM_ENQ_NO#'
,p_column_link_attr=>'class="t-Button t-Button--stretch" style ="background-image: linear-gradient(to right, #COLOR_STATUS_1# ,#COLOR_STATUS_2#);color:#000000;"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_ENQ_NO#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109430473114077000)
,p_db_column_name=>'Copy'
,p_display_order=>39
,p_column_identifier=>'U'
,p_column_label=>'Copy'
,p_column_link=>'javascript:copy_proforma(#EOM_ENQ_ID#,''#EOM_ENQ_NO#'');'
,p_column_linktext=>'<i class="fa fa-copy" style="font-size:16px;color:blue"></i>'
,p_column_link_attr=>'title ="Copy"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_column_comment=>'<img src="#APP_IMAGES#copy_icon.png" alt="Copy" >'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(82483845698714193)
,p_db_column_name=>'EOM_INVOICE_NO'
,p_display_order=>59
,p_column_identifier=>'W'
,p_column_label=>'Invoice#'
,p_column_html_expression=>'<span style="color:#CI_COUNT_CSS#">#EOM_INVOICE_NO#</span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_column_comment=>'P22_TYPE_ENQ_ORD  - ORD'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27512286548570980)
,p_db_column_name=>'COLOR_STATUS_1'
,p_display_order=>69
,p_column_identifier=>'X'
,p_column_label=>'Color Status 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27512323959570981)
,p_db_column_name=>'COLOR_STATUS_2'
,p_display_order=>79
,p_column_identifier=>'Y'
,p_column_label=>'Color Status 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27613010353485751)
,p_db_column_name=>'ENQ_STATUS'
,p_display_order=>89
,p_column_identifier=>'AA'
,p_column_label=>'Enquiry Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142597908007172093)
,p_db_column_name=>'CI_COUNT_CSS'
,p_display_order=>99
,p_column_identifier=>'AD'
,p_column_label=>'Ci Count Css'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142597884088172092)
,p_db_column_name=>'EOM_TOTAL_QTY'
,p_display_order=>109
,p_group_id=>wwv_flow_imp.id(142597419883172088)
,p_column_identifier=>'AE'
,p_column_label=>'Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142596929307172083)
,p_db_column_name=>'EOM_TOTAL_CONTAINER_AMT'
,p_display_order=>119
,p_group_id=>wwv_flow_imp.id(142597419883172088)
,p_column_identifier=>'AM'
,p_column_label=>'Container Amt.'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142597607639172090)
,p_db_column_name=>'EOM_TOTAL_CBM'
,p_display_order=>129
,p_group_id=>wwv_flow_imp.id(142597419883172088)
,p_column_identifier=>'AG'
,p_column_label=>'CBM'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142597538056172089)
,p_db_column_name=>'EOM_AVG_EXCH_RATE'
,p_display_order=>139
,p_column_identifier=>'AH'
,p_column_label=>'Avg. Exch.<br>Rate Rnd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142597348821172087)
,p_db_column_name=>'EOM_CREATED_BY'
,p_display_order=>149
,p_column_identifier=>'AI'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142597232779172086)
,p_db_column_name=>'EOM_CREATED_ON'
,p_display_order=>159
,p_column_identifier=>'AJ'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142597176277172085)
,p_db_column_name=>'EOM_UPDATED_BY'
,p_display_order=>169
,p_column_identifier=>'AK'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(142597021542172084)
,p_db_column_name=>'EOM_UPDATED_ON'
,p_display_order=>179
,p_column_identifier=>'AL'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(452348563514420337)
,p_db_column_name=>'PF_COUNT_CSS'
,p_display_order=>199
,p_column_identifier=>'AO'
,p_column_label=>'PF'
,p_column_link=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_TYPE,P9000_FILE_ID:ENQSEARCH,ENQ,#EOM_ENQ_ID#'
,p_column_linktext=>'#PF_COUNT_CSS#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(452348446068420336)
,p_db_column_name=>'CUSTINV_COUNT_CSS'
,p_display_order=>209
,p_column_identifier=>'AP'
,p_column_label=>'CI'
,p_column_link=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_ID,P9000_FILE_TYPE:ENQSEARCH,#EOM_ENQ_ID#,CI'
,p_column_linktext=>'#CUSTINV_COUNT_CSS#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P22_TYPE_ENQ_ORD'
,p_display_condition2=>'ORD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(452348425400420335)
,p_db_column_name=>'COMMINV_COUNT_CSS'
,p_display_order=>219
,p_column_identifier=>'AQ'
,p_column_label=>'INV'
,p_column_link=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_ID,P9000_FILE_TYPE:ENQSEARCH,#EOM_ENQ_ID#,COMINV'
,p_column_linktext=>'#COMMINV_COUNT_CSS#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P22_TYPE_ENQ_ORD'
,p_display_condition2=>'ORD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(452348229546420334)
,p_db_column_name=>'BOL_COUNT_CSS'
,p_display_order=>229
,p_column_identifier=>'AR'
,p_column_label=>'BOL'
,p_column_link=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_ID,P9000_FILE_TYPE:ENQSEARCH,#EOM_ENQ_ID#,BOL'
,p_column_linktext=>'#BOL_COUNT_CSS#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P22_TYPE_ENQ_ORD'
,p_display_condition2=>'ORD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(452348148676420333)
,p_db_column_name=>'VGM_COUNT_CSS'
,p_display_order=>239
,p_column_identifier=>'AS'
,p_column_label=>'VGM'
,p_column_link=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_ID,P9000_FILE_TYPE:ENQSEARCH,#EOM_ENQ_ID#,GM'
,p_column_linktext=>'#VGM_COUNT_CSS#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P22_TYPE_ENQ_ORD'
,p_display_condition2=>'ORD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3901942446780774212)
,p_db_column_name=>'ORD_STATUS'
,p_display_order=>249
,p_column_identifier=>'AT'
,p_column_label=>'Ord Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6951883029960450270)
,p_db_column_name=>'EOM_REMARKS'
,p_display_order=>259
,p_column_identifier=>'AU'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(157958164659084668)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'58036'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EOM_ENQ_NO:CM_NAME:EOM_ENQ_DATE:EOM_REALISE_RATE:EOM_AVG_EXCH_RATE:EOM_TOTAL_QTY:EOM_TOTAL_CONTAINER_AMT:EOM_TOTAL_CBM:EOM_CREATED_BY:Download:Copy:PF_COUNT_CSS:'
,p_sort_column_1=>'EOM_ENQ_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'EOM_INVOICE_NO'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'CM_NAME'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'EOM_ENQ_NO'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8258590947217983354)
,p_plug_name=>'Orders List'
,p_region_name=>'ORDLIST'
,p_parent_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EOM_ENQ_ID,',
'       EOM_ORD_ID,',
'       EOM_ENQ_NO,',
'       cm_name,',
'       EOM_TYPE,',
'   --    enq_st.st_name ENQ_STATUS,',
'       EOM_ENQ_DATE,',
'       EOM_ENQ_DEL_DT,',
'       EOM_ORDER_DATE,',
'   --    ord_st.st_name ORDER_STATUS,',
'       EOM_PAY_TERMS,',
'       EOM_FRT_AMT,',
'       EOM_CURRENT_RATE,',
'       EOM_REALISE_RATE,',
'       '''' "Download",',
'       '''' "Copy",',
'       case when EOM_ENQ_STATUS =''IP'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when EOM_ENQ_STATUS =''AW'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_AW/*#0000FF #267DB3''*/',
'		    when EOM_ENQ_STATUS =''AP'' and EOM_ORD_ID is null then :APP_COLOR_ORD_RC/*''#000000 #69C282''*/',
'		    when EOM_ENQ_STATUS =''RJ'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_RJ /*#ED6647*/',
'			when EOM_ORDER_STATUS =''IP'' and EOM_ORD_ID is not null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when EOM_ORDER_STATUS =''PPO'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_PPO/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''POI'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_POI/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''PR'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_PR/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''RC'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_RC/*#0000FF #267DB3''*/',
'		    when EOM_ORDER_STATUS =''SHP'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_SHP/*''#000000 #69C282''*/',
'            when EOM_ORDER_STATUS =''RJ'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_RJ/*''#000000 #69C282''*/',
'	   end color_status_1',
'       ,case when EOM_ENQ_STATUS =''IP'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when EOM_ENQ_STATUS =''AW'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_AW/*#0000FF #267DB3''*/',
'		    when EOM_ENQ_STATUS =''AP'' and EOM_ORD_ID is null then :APP_COLOR_ORD_RC/*''#000000 #69C282''*/',
'		    when EOM_ENQ_STATUS =''RJ'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_RJ /*#ED6647*/',
'			when EOM_ORDER_STATUS =''IP'' and EOM_ORD_ID is not null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when EOM_ORDER_STATUS =''PPO'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_POI/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''POI'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_PR/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''PR'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_RC/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''RC'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_SHP/*#0000FF #267DB3''*/',
'		    when EOM_ORDER_STATUS =''SHP'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_SHP/*''#000000 #69C282''*/',
'            when EOM_ORDER_STATUS =''RJ'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_RJ/*''#000000 #69C282''*/',
'	   end color_status_2',
'       ,EOM_INVOICE_NO',
'       --,''Proforma'' "Proforma"',
'--,''Proforma_PDF'' "Proforma_PDF"',
'        ,EOM_ENQ_STATUS ENQ_STATUS',
'        ,EOM_ORDER_STATUS ORD_STATUS',
'        ,case when (select count(1) from V_OUTPUT_MASTER where OM_DOC_TYPE = ''CustomInvoice'' and OM_REF_ID = EOM_ENQ_ID and OM_FINAL =''Y'')  = 0',
'        then ''red''',
'        else ''green''',
'        end CI_count_css,',
'        nvl(EOM_TOTAL_QTY,0) EOM_TOTAL_QTY,',
'        ST_EXTRA1 || '' '' ||nvl(to_char(EOM_TOTAL_CONTAINER_AMT,''999G999G999G999G990D00''),0) EOM_TOTAL_CONTAINER_AMT,',
'        nvl(EOM_TOTAL_CBM,0) EOM_TOTAL_CBM,',
'        nvl(EOM_AVG_EXCH_RATE,0) EOM_AVG_EXCH_RATE,',
'        EOM_CREATED_BY,',
'        EOM_CREATED_ON,',
'        EOM_UPDATED_BY,',
'        EOM_UPDATED_ON,',
'        case when (select count(1) from V_OUTPUT_MASTER where OM_DOC_TYPE = ''ENQ'' and OM_REF_ID = EOM_ENQ_ID and OM_FINAL =''Y'')  = 0',
'        then ''<a href="javascript:void(0);"><span aria-hidden="true" class="fa fa-times-square-o u-color-9-text"></span></a>''',
'        else ''<span class="fa fa-check-square-o u-color-4-text" aria-hidden="true"></span>''',
'        end pf_count_css,',
'         case when (select count(1) from V_OUTPUT_MASTER where OM_DOC_TYPE = ''CI'' and OM_REF_ID = EOM_ENQ_ID and OM_FINAL =''Y'')  = 0',
'        then ''<a href="javascript:void(0);"><span aria-hidden="true" class="fa fa-times-square-o u-color-9-text"></span></a>''',
'        else ''<span class="fa fa-check-square-o u-color-4-text" aria-hidden="true"></span>''',
'        end custinv_count_css,',
'		case when (select count(1) from V_OUTPUT_MASTER where OM_DOC_TYPE = ''COMINV'' and OM_REF_ID = EOM_ENQ_ID and OM_FINAL =''Y'')  = 0',
'        then ''<a href="javascript:void(0);"><span aria-hidden="true" class="fa fa-times-square-o u-color-9-text"></span></a>''',
'        else ''<span class="fa fa-check-square-o u-color-4-text" aria-hidden="true"></span>''',
'        end comminv_count_css,',
'        case when (select count(1) from V_OUTPUT_MASTER where OM_DOC_TYPE = ''BOL'' and OM_REF_ID = EOM_ENQ_ID and OM_FINAL =''Y'')  = 0',
'        then ''<a href="javascript:void(0);"><span aria-hidden="true" class="fa fa-times-square-o u-color-9-text"></span></a>''',
'        else ''<span class="fa fa-check-square-o u-color-4-text" aria-hidden="true"></span>''',
'        end bol_count_css,',
'        case when (select count(1) from V_OUTPUT_MASTER where OM_DOC_TYPE = ''GM'' and OM_REF_ID = EOM_ENQ_ID and OM_FINAL =''Y'')  = 0',
'        then ''<a href="javascript:void(0);"><span aria-hidden="true" class="fa fa-times-square-o u-color-9-text"></span></a>''',
'        else ''<span class="fa fa-check-square-o u-color-4-text" aria-hidden="true"></span>''',
'        end  vgm_count_css,',
'        EOM_REMARKS,',
'        EOM_INVOICE_DATE',
'  from V_ENQUIRIES_ORDERS_MST--,V_SETUP_TABLE enq_st, V_SETUP_TABLE ord_st',
'       ,V_CUSTOMER_MASTER',
'       ,V_SETUP_TABLE',
'  where eom_customer_id = cm_id',
'  /*and nvl(EOM_ENQ_STATUS,''IP'') = enq_st.st_code',
'  and enq_st.st_type = ''ENQUIRY_STATUS''',
'  and nvl(EOM_ORDER_STATUS,''IP'') = ord_st.st_code ',
'  and ord_st.st_type = ''ORDER_STATUS''*/',
'  and EOM_QUOTE_IN = ST_CODE',
'  and  ST_TYPE = ''QUOTE_IN''',
'    and EOM_ORDER_STATUS != ''RJ''',
'and   (:P22_TYPE_ENQ_ORD = ''ORD'' and EOM_ORD_ID is not null and EOM_ORD_ACC_YEAR between :P22_FROM_FY and :P22_TO_FY) ',
'     -- or (:P22_TYPE_ENQ_ORD = ''ENQ'' and EOM_ORD_ID is null and EOM_ENQ_ACC_YEAR between  :P22_FROM_FY and :P22_TO_FY))    ',
'order by cm_name,EOM_ENQ_NO;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P22_TYPE_ENQ_ORD,P22_FROM_FY,P22_TO_FY'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P22_TYPE_ENQ_ORD'
,p_plug_display_when_cond2=>'ORD'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Orders List'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_SHP. , &APP_COLOR_ORD_SHP. );color:#000000" href="#">Shipped</a>',
'',
'',
'',
'',
' case when EOM_ENQ_STATUS =''IP'' and EOM_ORD_ID is null then enq_st.ST_EXTRA1/*''#000000 #F1C40F''*/',
'		    when EOM_ENQ_STATUS =''AW'' and EOM_ORD_ID is null then enq_st.ST_EXTRA1/*#0000FF #267DB3''*/',
'		    when EOM_ENQ_STATUS =''AP'' and EOM_ORD_ID is null then enq_st.ST_EXTRA1/*''#000000 #69C282''*/',
'		    when EOM_ENQ_STATUS =''RJ'' and EOM_ORD_ID is null then enq_st.ST_EXTRA1 /*#ED6647*/',
'			when EOM_ORDER_STATUS =''IP'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA1/*''#000000 #F1C40F''*/',
'		    when EOM_ORDER_STATUS =''PPO'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA1/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''POI'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA1/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''PR'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA1/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''RC'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA1/*#0000FF #267DB3''*/',
'		    when EOM_ORDER_STATUS =''SHP'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA1/*''#000000 #69C282''*/',
'	   end color_status_1',
'       ,case when EOM_ENQ_STATUS =''IP'' and EOM_ORD_ID is null then enq_st.ST_EXTRA2/*''#000000 #F1C40F''*/',
'		    when EOM_ENQ_STATUS =''AW'' and EOM_ORD_ID is null then enq_st.ST_EXTRA2/*#0000FF #267DB3''*/',
'		    when EOM_ENQ_STATUS =''AP'' and EOM_ORD_ID is null then enq_st.ST_EXTRA2/*''#000000 #69C282''*/',
'		    when EOM_ENQ_STATUS =''RJ'' and EOM_ORD_ID is null then enq_st.ST_EXTRA2 /*#ED6647*/',
'			when EOM_ORDER_STATUS =''IP'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA2/*''#000000 #F1C40F''*/',
'		    when EOM_ORDER_STATUS =''PPO'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA2/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''POI'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA2/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''PR'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA2/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''RC'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA2/*#0000FF #267DB3''*/',
'		    when EOM_ORDER_STATUS =''SHP'' and EOM_ORD_ID is not null then ord_st.ST_EXTRA2/*''#000000 #69C282''*/',
'	   end color_status_2'))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8258588792028983333)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_flashback=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>633608865979815831
);
wwv_flow_imp_page.create_worksheet_col_group(
 p_id=>wwv_flow_imp.id(8258588675845983332)
,p_name=>'Total'
,p_display_sequence=>10
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258588632547983331)
,p_db_column_name=>'EOM_ENQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>' '
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258588542092983330)
,p_db_column_name=>'ENQ_STATUS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Enquiry Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258588456982983329)
,p_db_column_name=>'CI_COUNT_CSS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ci Count Css'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258588339107983328)
,p_db_column_name=>'EOM_TOTAL_QTY'
,p_display_order=>40
,p_group_id=>wwv_flow_imp.id(8258588675845983332)
,p_column_identifier=>'D'
,p_column_label=>'Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258588224989983327)
,p_db_column_name=>'EOM_TOTAL_CBM'
,p_display_order=>50
,p_group_id=>wwv_flow_imp.id(8258588675845983332)
,p_column_identifier=>'E'
,p_column_label=>'CBM'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258588117889983326)
,p_db_column_name=>'EOM_AVG_EXCH_RATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Avg. Exch.<br>Rate Rnd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258588016386983325)
,p_db_column_name=>'EOM_CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258587893816983324)
,p_db_column_name=>'EOM_CREATED_ON'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258587820426983323)
,p_db_column_name=>'EOM_UPDATED_BY'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258587717012983322)
,p_db_column_name=>'EOM_UPDATED_ON'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258587657922983321)
,p_db_column_name=>'EOM_TOTAL_CONTAINER_AMT'
,p_display_order=>110
,p_group_id=>wwv_flow_imp.id(8258588675845983332)
,p_column_identifier=>'K'
,p_column_label=>'Container Amt.'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258587470553983320)
,p_db_column_name=>'PF_COUNT_CSS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'PF'
,p_column_link=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_TYPE,P9000_FILE_ID:ENQSEARCH,ENQ,#EOM_ENQ_ID#'
,p_column_linktext=>'#PF_COUNT_CSS#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258587419611983319)
,p_db_column_name=>'CUSTINV_COUNT_CSS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'CI'
,p_column_link=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_ID,P9000_FILE_TYPE:ENQSEARCH,#EOM_ENQ_ID#,CI'
,p_column_linktext=>'#CUSTINV_COUNT_CSS#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P22_TYPE_ENQ_ORD'
,p_display_condition2=>'ORD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258587260945983318)
,p_db_column_name=>'COMMINV_COUNT_CSS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'INV'
,p_column_link=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_ID,P9000_FILE_TYPE:ENQSEARCH,#EOM_ENQ_ID#,COMINV'
,p_column_linktext=>'#COMMINV_COUNT_CSS#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P22_TYPE_ENQ_ORD'
,p_display_condition2=>'ORD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258587227092983317)
,p_db_column_name=>'BOL_COUNT_CSS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'BOL'
,p_column_link=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_ID,P9000_FILE_TYPE:ENQSEARCH,#EOM_ENQ_ID#,BOL'
,p_column_linktext=>'#BOL_COUNT_CSS#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P22_TYPE_ENQ_ORD'
,p_display_condition2=>'ORD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258587155654983316)
,p_db_column_name=>'VGM_COUNT_CSS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'VGM'
,p_column_link=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_ID,P9000_FILE_TYPE:ENQSEARCH,#EOM_ENQ_ID#,GM'
,p_column_linktext=>'#VGM_COUNT_CSS#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P22_TYPE_ENQ_ORD'
,p_display_condition2=>'ORD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258587034759983315)
,p_db_column_name=>'ORD_STATUS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Ord Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8258586945852983314)
,p_db_column_name=>'EOM_REMARKS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224591202373906763)
,p_db_column_name=>'EOM_ORD_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Order Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224591133173906762)
,p_db_column_name=>'EOM_TYPE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224590958942906761)
,p_db_column_name=>'EOM_ENQ_DATE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Enquiry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:#COLOR_STATUS#">#EOM_ENQ_DATE#</span>',
'P22_TYPE_ENQ_ORD - ENQ'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224590918970906760)
,p_db_column_name=>'EOM_ENQ_DEL_DT'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Delivery Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_ENQ_DEL_DT#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224590769003906759)
,p_db_column_name=>'EOM_ORDER_DATE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:#COLOR_STATUS#">#EOM_ORDER_DATE#</span>',
'P22_TYPE_ENQ_ORD - ORD'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224590707248906758)
,p_db_column_name=>'EOM_PAY_TERMS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Pay Terms'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_PAY_TERMS#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224590628101906757)
,p_db_column_name=>'EOM_FRT_AMT'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Freight Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_FRT_AMT#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224590547271906756)
,p_db_column_name=>'EOM_CURRENT_RATE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Current Rate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_CURRENT_RATE#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224590383554906755)
,p_db_column_name=>'EOM_REALISE_RATE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Custom Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00PR'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_REALISE_RATE#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224590296606906754)
,p_db_column_name=>'Download'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Output(s)'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_ENQ_ID,P10_OUTPUT_TYPE,P10_CALLING_FROM,APP_OM_ID:#EOM_ENQ_ID#,ENQ,ENQ,'
,p_column_linktext=>'<i class="fa fa-file-excel-o" style="font-size:16px;color:#69C282"></i><i class="fa fa-file-pdf-o" style="font-size:16px;color:#ED6647"></i>'
,p_column_link_attr=>'title ="Click"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'export-excel-icon',
'',
'<img src="#APP_IMAGES#Excel_PDF.png" alt="Download" >',
'<i class="fa fa-file-excel-o" style="font-size:16px;color:green"><i class="fa fa-file-pdf-o" style="font-size:16px;color:red"></i></i>'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224590187321906753)
,p_db_column_name=>'CM_NAME'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Customer'
,p_column_html_expression=>'<span style="display:block; width:150px">#CM_NAME#</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224590127640906752)
,p_db_column_name=>'EOM_ENQ_NO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Enquiry#'
,p_column_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP:P23_EOM_ENQ_ID:#EOM_ENQ_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt=""> #EOM_ENQ_NO#'
,p_column_link_attr=>'class="t-Button t-Button--stretch" style ="background-image: linear-gradient(to right, #COLOR_STATUS_1# ,#COLOR_STATUS_2#);color:#000000;"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_ENQ_NO#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224590053891906751)
,p_db_column_name=>'Copy'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Copy'
,p_column_link=>'javascript:copy_proforma(#EOM_ENQ_ID#,''#EOM_ENQ_NO#'');'
,p_column_linktext=>'<i class="fa fa-copy" style="font-size:16px;color:blue"></i>'
,p_column_link_attr=>'title ="Copy"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_column_comment=>'<img src="#APP_IMAGES#copy_icon.png" alt="Copy" >'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224589899711906750)
,p_db_column_name=>'EOM_INVOICE_NO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Invoice#'
,p_column_html_expression=>'<span style="display:block; width:150px;color:#CI_COUNT_CSS#">#EOM_INVOICE_NO#</span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
,p_column_comment=>'P22_TYPE_ENQ_ORD  - ORD'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224589778000906749)
,p_db_column_name=>'COLOR_STATUS_1'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Color Status 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224589716509906748)
,p_db_column_name=>'COLOR_STATUS_2'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Color Status 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8224589545963906746)
,p_db_column_name=>'EOM_INVOICE_DATE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Invoice Date'
,p_column_html_expression=>'<span style="display:block; width:75px">#EOM_INVOICE_DATE#</span>'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8224492473918883542)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6677052'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EOM_ENQ_NO:EOM_INVOICE_NO:CM_NAME:EOM_INVOICE_DATE:EOM_REALISE_RATE:EOM_AVG_EXCH_RATE:EOM_TOTAL_QTY:EOM_TOTAL_CONTAINER_AMT:EOM_TOTAL_CBM:EOM_CREATED_BY:Download:Copy:PF_COUNT_CSS:CUSTINV_COUNT_CSS:COMMINV_COUNT_CSS:BOL_COUNT_CSS:VGM_COUNT_CSS:'
,p_sort_column_1=>'EOM_INVOICE_NO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43153196709203249)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'ENQ'
,p_button_static_id=>'btnENQ'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View All Enquiries'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(43153325502203250)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'ORD'
,p_button_static_id=>'btnORD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View All Orders'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3897496182100843381)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'ENQ_IP'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>In-Progress'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''IP'');'
,p_button_condition=>'P22_TYPE_ENQ_ORD'
,p_button_condition2=>'ENQ'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-cart-edit'
,p_button_cattributes=>'style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_IP. , &APP_COLOR_ENQ_IP. );color:#000000" title="Click to filter In-Progress Enquiries"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3901942836963774216)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'ENQ_AW'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Approval'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''AW'');'
,p_button_condition=>'P22_TYPE_ENQ_ORD'
,p_button_condition2=>'ENQ'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-hourglass-1'
,p_button_cattributes=>'style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_AW. , &APP_COLOR_ENQ_AW. );color:#000000" title="Click to filter Awaiting Approval Enquiries"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3901942729653774215)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'ENQ_AP'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Approved'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''AP'');'
,p_button_condition=>'P22_TYPE_ENQ_ORD'
,p_button_condition2=>'ENQ'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-ship'
,p_button_cattributes=>'title="Click to filter Approved Enquiries" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_RC. , &APP_COLOR_ORD_SHP. );color:#000000"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3901942665036774214)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'ENQ_RJ'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Rejected'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''RJ'');'
,p_button_condition=>'P22_TYPE_ENQ_ORD'
,p_button_condition2=>'ENQ'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-emoji-neutral'
,p_button_cattributes=>'title="Click to filter Rejected Enquiries" style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_RJ. , &APP_COLOR_ENQ_RJ. );color:#000000" '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3901942565279774213)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'CLEAR'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Clear'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit('''');'
,p_button_condition=>'P22_TYPE_ENQ_ORD'
,p_button_condition2=>'ENQ'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-times-square-o'
,p_button_cattributes=>'title="Click to clear all filter(s) applied for Enquiries"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3901942351476774211)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'ORD_IP'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>In-Progress'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''IP'');'
,p_button_condition=>'P22_TYPE_ENQ_ORD'
,p_button_condition2=>'ORD'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-cart-edit'
,p_button_cattributes=>'title="Click to filter In-Progress Orders" style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_IP. , &APP_COLOR_ENQ_IP. );color:#000000"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3901942179604774209)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'ORD_PPO'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Partial PO'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''PPO'');'
,p_button_condition=>'P22_TYPE_ENQ_ORD'
,p_button_condition2=>'ORD'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-clipboard-check-alt fam-25-percent fam-is-danger'
,p_button_cattributes=>'title="Click to filter Partial PO Orders" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_PPO. , &APP_COLOR_ORD_POI. );color:#000000"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3901942107191774208)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'ORD_POI'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>PO Issued'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''POI'');'
,p_button_condition=>'P22_TYPE_ENQ_ORD'
,p_button_condition2=>'ORD'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-clipboard-check-alt'
,p_button_cattributes=>'title="Click to filter PO Issued Orders" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_POI. , &APP_COLOR_ORD_PR. );color:#000000"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3901941997335774207)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'ORD_PR'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Partial Rcvd.'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''PR'');'
,p_button_condition=>'P22_TYPE_ENQ_ORD'
,p_button_condition2=>'ORD'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-truck fam-25-percent fam-is-danger'
,p_button_cattributes=>'title="Click to filter Partially Received Orders" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_PR. , &APP_COLOR_ORD_RC. );color:#000000" '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3901941881617774206)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'ORD_RC'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Received'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''RC'');'
,p_button_condition=>'P22_TYPE_ENQ_ORD'
,p_button_condition2=>'ORD'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-truck'
,p_button_cattributes=>'title="Click to filter Received Orders" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_RC. , &APP_COLOR_ORD_SHP. );color:#000000" '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13693183950988244644)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'ORD_RJ'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Rejected'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit(''RJ'');'
,p_button_condition=>'P22_TYPE_ENQ_ORD'
,p_button_condition2=>'ORD'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-emoji-neutral'
,p_button_cattributes=>'title="Click to filter Rejected Orders" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_RJ. , &APP_COLOR_ORD_RJ. );color:#000000" '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3901941754531774205)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'CLEAR_ORD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'<br>Clear'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.submit('''');'
,p_button_condition=>'P22_TYPE_ENQ_ORD'
,p_button_condition2=>'ORD'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-times-square-o'
,p_button_cattributes=>'title="Click to clear all filter(s) applied for Orders"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34099822839071488938)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23::'
,p_icon_css_classes=>'fa-file-plus'
,p_button_cattributes=>'title="Click to create new Enquiry"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(124810671619470100)
,p_branch_name=>'Redirect to Edit page after Copy'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,23:P23_EOM_ENQ_ID:&P22_EOM_ENQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'COPY'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(43153455084203252)
,p_branch_name=>'Change of TYPE_ENQ_ORD -Clear Filter if any'
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:[ORDLIST]RIR,[ENQLIST]RIR::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'P22_TYPE_ENQ_ORD'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3897537596686611814)
,p_branch_name=>'Status Branch - IR Filter - ENQ'
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RR,RIR[ENQLIST]:IR[ENQLIST]_ENQ_STATUS:&REQUEST.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>'(:REQUEST not in (''P22_FROM_FY'',''P22_TO_FY'',''COPY'',''P22_TYPE_ENQ_ORD'') or :REQUEST is null) and :P22_TYPE_ENQ_ORD = ''ENQ'''
,p_branch_condition_text=>'PLSQL'
,p_branch_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'URL Added - f?p=&APP_ID.:35:&APP_SESSION.:::RIR:IR_POM_STATUS:IP',
''))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3901942274347774210)
,p_branch_name=>'Status Branch - IR Filter - ORD'
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RR,RIR[ORDLIST]:IR[ORDLIST]_ORD_STATUS:&REQUEST.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>'(:REQUEST not in (''P22_FROM_FY'',''P22_TO_FY'',''COPY'',''P22_TYPE_ENQ_ORD'') or :REQUEST is null) and :P22_TYPE_ENQ_ORD = ''ORD'''
,p_branch_condition_text=>'PLSQL'
,p_branch_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'URL Added - f?p=&APP_ID.:35:&APP_SESSION.:::RIR:IR_POM_STATUS:IP',
''))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(43153403163203251)
,p_branch_name=>'ENQ Request'
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.:ENQ:&DEBUG.:RP:P22_TYPE_ENQ_ORD:ENQ&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(43153196709203249)
,p_branch_sequence=>20
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109430650394077002)
,p_name=>'P22_EOM_ENQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142582649742365342)
,p_name=>'P22_TO_FY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_item_default=>'TO_CHAR(SYSDATE,''YYYYMM'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To FY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select regexp_replace(AS_YEAR_MONTH, ''([0-9]{4})([0-9]{2})'', ''\1-\2'') d, AS_YEAR_MONTH r',
'from V_ACCOUNTING_SETUP',
'where AS_YEAR_MONTH  >= :P22_FROM_FY',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select To Year-Month -'
,p_lov_cascade_parent_items=>'P22_FROM_FY'
,p_ajax_items_to_submit=>'P22_FROM_FY'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142582958821369356)
,p_name=>'P22_FROM_FY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_item_default=>'select substr(AS_GOVT_FY,1,4) || ''04'' from V_ACCOUNTING_SETUP where trunc(sysdate) between AS_OPEN_DATE and AS_CLOSE_DATE'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'From FY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select regexp_replace(AS_YEAR_MONTH, ''([0-9]{4})([0-9]{2})'', ''\1-\2'')  d, AS_YEAR_MONTH r',
'from V_ACCOUNTING_SETUP',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select From Year-Month -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2550367416175481137)
,p_name=>'P22_ORD_FLOW'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_prompt=>'Enq Flow'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_IP. , &APP_COLOR_ENQ_IP. );color:#000000" href="#">Order In-Progress</a>',
'',
'   <span style="font-weight:bold;font-size:20px">	&#11166;</span>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_PPO. , &APP_COLOR_ORD_POI. );color:#000000" href="#">Partial PO</a>',
'',
'    <span style="font-weight:bold;font-size:20px">	&#11166;</span>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_POI. , &APP_COLOR_ORD_PR. );color:#000000" href="#">PO Issued</a>',
'',
'    <span style="font-weight:bold;font-size:20px">	&#11166;</span>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_PR. , &APP_COLOR_ORD_RC. );color:#000000" href="#">Partially Received</a>',
'',
'    <span style="font-weight:bold;font-size:20px">	&#11166;</span>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_RC. , &APP_COLOR_ORD_SHP. );color:#000000" href="#">Received</a> ',
'',
'</center>'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2550367453873481138)
,p_name=>'P22_ENQ_FLOW'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_prompt=>'Enq Flow'
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<center>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_IP. , &APP_COLOR_ENQ_IP. );color:#000000" href="javascript:apex.submit(''IP'');">Enquiry In-Progress</a> ',
'',
'<span style="font-weight:bold;font-size:20px">	&#11166;</span>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_AW. , &APP_COLOR_ENQ_AW. );color:#000000" href="javascript:apex.submit(''AW'');">Awaiting Approval</a>',
'',
'<span style="font-weight:bold;font-size:20px">	&#11166;</span>',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ORD_RC. , &APP_COLOR_ORD_SHP. );color:#000000" href="javascript:apex.submit(''AP'');">Approved</a> or',
'',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_RJ. , &APP_COLOR_ENQ_RJ. );color:#000000" href="javascript:apex.submit(''RJ'');">Rejected</a>',
'    ',
'    <span style="font-weight:bold;font-size:20px">	&#11166;</span>',
'    ',
'<a class="t-Button t-Button" style ="background-image: linear-gradient(to right, &APP_COLOR_ENQ_IP. , &APP_COLOR_ENQ_IP. );color:#000000" href="javascript:apex.submit(''ORD'');">Order <span style="color:red;">*if Approved</span></a>     ',
'',
'</center>'))
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3901943072580774218)
,p_name=>'P22_TYPE_ENQ_ORD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8224589601282906747)
,p_item_default=>'ENQ'
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Enquiries;ENQ,Orders;ORD'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'N',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(34099823283097488939)
,p_computation_sequence=>1
,p_computation_item=>'P23_EOM_ENQ_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44060960769765343)
,p_name=>'onLoad-ENQ'
,p_event_sequence=>10
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P22_TYPE_ENQ_ORD'') == ''ENQ'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44061421295765347)
,p_event_id=>wwv_flow_imp.id(44060960769765343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43153196709203249)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44061539604765349)
,p_event_id=>wwv_flow_imp.id(44060960769765343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43153325502203250)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44062132103765355)
,p_name=>'onLoad-ORD'
,p_event_sequence=>20
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P22_TYPE_ENQ_ORD'') == ''ORD'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44062300036765356)
,p_event_id=>wwv_flow_imp.id(44062132103765355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43153325502203250)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44062404523765357)
,p_event_id=>wwv_flow_imp.id(44062132103765355)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(43153196709203249)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3901941676732774204)
,p_name=>'onChangeofEnqOrdSelectList'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_TYPE_ENQ_ORD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3901941519921774203)
,p_event_id=>wwv_flow_imp.id(3901941676732774204)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109430530002077001)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Copy Proforma'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'          v_success_failure    VARCHAR2(4000);',
'          v_error_msg          VARCHAR2(4000);',
'          v_id_new             NUMBER;',
'          v_ora_err varchar2(4000);',
'begin',
'    --insert into error_log (el_text) values (''before'' || :P22_EOM_ENQ_ID); ',
'    PKG_COPY_ALL_DETAILS.initialize (''PROFORMA'',:P22_EOM_ENQ_ID,v_success_failure,v_error_msg,v_id_new);',
'    --insert into error_log (el_text) values (''after'' || :P22_EOM_ENQ_ID || p_error_msg); ',
'    ',
'    :P22_EOM_ENQ_ID := v_id_new;',
'    ',
'exception when others then',
'        v_ora_err := sqlerrm;',
'        insert into error_log (el_text) values (v_ora_err);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error in copying the Proforma'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'COPY'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Proforma has been copied successfully.'
,p_internal_uid=>109481679632905497
);
wwv_flow_imp.component_end;
end;
/
