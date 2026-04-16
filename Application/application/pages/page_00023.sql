prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_name=>'Enquiry/ Order Detail'
,p_step_title=>'Enquiry/ Order Detail'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--<style type="text/css">',
'.ui-autocomplete-loading{background: url("#WORKSPACE_IMAGES#loader.gif") no-repeat scroll right center transparent;}',
'</style>-->',
'<script src="#APP_FILES#costing.js"></script>',
'<script src="#APP_FILES#app_setup_config#MIN#.js"></script>  <!-- Added by Rahul on 14-Apr-26 to fetch setup values -->'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'function f_row_down (pThis)',
'{html_RowDown(pThis);}',
' ',
'function f_row_up (pThis,pThat)',
'{html_RowUp(pThis);}',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//$("#rgnSticky").stickyWidget({toggleWidth:true});',
'',
'fdisp_calc_type();',
'',
'//igStatusColor("product_details","ST_EXTRA1","ST_EXTRA2");',
'',
'//Added below to avoid enter to navigate to next row in IG',
' if ( apex.region.isRegion(''product_details'' ) ) {',
' $(".a-GV").on("keydown", "input", function(event) { if (event.which === 13) { event.stopPropagation();} }); ',
' }',
'',
'// add action to selection menu',
'if ( apex.region.isRegion(''ig_mld'' ) ) {',
'var view = apex.region("ig_mld").call("getViews", "grid"),',
'    item = {',
'        type:"action",',
'        action: "movetoProforma"',
'    },',
'    menu$ = view.selActionMenu$;',
'menu$.menu("option").items.push(item);',
'apex.region("ig_mld").call("getToolbar")',
'    .toolbar("find", "selection_submenu").menu.items.push(item);',
'}',
'',
'// add action to selection menu',
'if ( apex.region.isRegion(''product_details'' ) ) {',
'var view = apex.region("product_details").call("getViews", "grid"),',
'    item = {',
'        type:"action",',
'        action: "moveoutofProforma"',
'    },',
'    menu$ = view.selActionMenu$;',
'menu$.menu("option").items.push(item);',
'apex.region("product_details").call("getToolbar")',
'    .toolbar("find", "selection_submenu").menu.items.push(item);',
'}',
'',
'AppConfig.init("PROD_CALC_MST", ["ALWAYS_CONSIDER_20FT_STW","PROFIT_AMT_CALC_ON_PURCHASE_AMT"]);    //Added by Rahul on 14-Apr-26 to fetch setup values'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*added below for Product IG grid product name color settings - start*/',
'',
'.a-GV-cell-pmname { padding: 0px 0px !important;}',
'',
'.t-Button-col {',
'    padding: 6px 8px ;',
'}',
'/*added below for Product IG grid product name color settings - end*/',
'/*Container Box CSS - start*/',
'.jjcontainer{background:url(#APP_IMAGES#container-percent-small.png) no-repeat}',
'.jjcontainer{font-family:arial,helvetica,sans-serif;font-size:12px;height:64px;position:relative}',
'.jjcontainer.one-box.v-low-fill{background-position:0 3px}',
'.jjcontainer.one-box.low-fill{background-position:0 -61px}',
'.jjcontainer.one-box.med-fill{background-position:0 -126px}',
'.jjcontainer.one-box.hi-fill{background-position:0 -191px}',
'.jjcontainer.one-box.more-hi-fill{background-position:0 -256px}',
'.jjcontainer.one-box.v-hi-fill{background-position:0 -643px}',
'.jjcontainer.multi-box.v-low-fill{background-position:0 -321px}',
'.jjcontainer.multi-box.low-fill{background-position:0 -385px}',
'.jjcontainer.multi-box.med-fill{background-position:0 -449px}',
'.jjcontainer.multi-box.hi-fill{background-position:0 -516px}',
'.jjcontainer.multi-box.more-hi-fill{background-position:0 -580px}',
'.jjcontainer.multi-box.v-hi-fill{background-position:0 -709px}',
'.jjcontainer .weight-overlay{position:absolute;width:40px;text-align:center;left:44px;top:18px}',
'.jjcontainer.one-box .weight-overlay{left:27px}',
'.jjcontainer.low-fill .weight-overlay,.jjcontainer.v-low-fill .weight-overlay{top:38px}',
'.jjcontainer.med-fill .weight-overlay{top:33px}',
'.jjcontainer.hi-fill .weight-overlay{top:28px}',
'.jjcontainer.more-hi-fill .weight-overlay{top:23px}.jjcontainer.v-hi-fill .weight-overlay{top:23px}',
'.jjcontainer .box-overlay{position:absolute;width:20px;text-align:center;font-weight:bolder;left:2px;top:27px;color:#fff}',
'.jjcontainer.one-box .box-overlay{display:none}',
'/*Container Box CSS - end*/',
'',
'/*Added by Rahul to add scroll bar on top for product details grid*/',
'.a-GV-w-hdr{',
'    overflow-x: auto !important;',
'}',
''))
,p_step_template=>1998361449248688088
,p_page_template_options=>'#DEFAULT#:js-pageStickyMobileHeader'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The key information related to a particular Enquiry/ Order is displayed here.',
'<br>',
'We have different tabs to display grouped information -',
'<ol>',
'	<li><b>Enquiry / Order Details</b>',
'		<p style="font-size:13px">Summary level of the enquiry or order related to Customer, Quote In, Costing Type, Container size/type etc. can be entered from here.</p>',
'	</li>',
'	<li><b>Shipping Details<span style="color:red;">*<span style="font-size:10px">Tab available for Orders only</span></span></b>',
'		<p style="font-size:13px">Details required on Custom Invoice, Bill of Lading, VGM can be entered from here.</p>',
'	</li>',
'	<li><b>Products Details</b>',
'		<p style="font-size:13px">Products to be shipped in this order can be entered from here. Costing of individual products can be done from the grid where the products will be grouped based on it''s status like In-Progress, Costing Done, Partially Orde'
||'red, Ordered, Partially Received and Received.',
'		<br>A new shortcut to enable the user to <u>copy</u> the value of the first selected row to rest of the selected rows using icon <span class="fa fa-clone fam-arrow-down" style="color:red"></span>.</p>',
'	</li>',
'	<li><b>Notes</b>',
'		<p style="font-size:13px">Add notes from here, which can be used for internal tracking purpose as well as to display on the outputs generated from the system.</p>',
'	</li>',
'</ol>',
'',
'Summary Information of the Enquiry or Order is displayed on the right side of the page. ',
'It can be expanded or collapsed on the click of button <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight is-active" type="button" style=" background: rgb(5, 114, 206);color:white;" aria-expanded="true"><span class="t-Icon '
||'fa fa-exchange" aria-hidden="true"></span></button> <br>',
'Based on the container size, system will smartly display the percentage of space occupied in a container. '))
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-BadgeList--dash .t-BadgeList-value {font-size:1.2rem;',
'line-height: 1.5rem;',
'}',
'.t-BadgeList--dash .t-BadgeList-label{font-size:1.2rem;}',
'',
'.t-BadgeList--dash .t-BadgeList-wrap',
'{padding: 1rem 1.2rem;}'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(54356488604089014)
,p_plug_name=>'Expense Details'
,p_region_name=>'expdetails'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(124836476526994503)
,p_name=>'Container Box Image'
,p_region_name=>'ct'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--noBorders'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT fn_container_box(:P23_EOM_ENQ_ID,:P23_CONTAINER_SIZE) result ',
',''20 feet'' containersize',
'FROM dual'))
,p_display_when_condition=>'P23_EOM_ENQ_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P23_EOM_ENQ_ID,P23_CONTAINER_SIZE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(124836523342994504)
,p_query_column_id=>1
,p_column_alias=>'RESULT'
,p_column_display_sequence=>1
,p_column_heading=>'Result'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(124835053954994489)
,p_name=>'Container Details Badge'
,p_parent_plug_id=>wwv_flow_imp.id(124836476526994503)
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-MediaList--stack:t-MediaList--iconsRounded'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with',
'	details as(',
'				SELECT',
'					nvl(EOM_TOTAL_CBM,0) TotalCubic,',
'					nvl(EOM_TOTAL_NET_WT,0) NetWt,',
'					nvl(EOM_TOTAL_GROSS_WT,0) GrossWt,',
'					nvl(EOM_TOTAL_CONTAINER_AMT,0) Containerdata,',
'					nvl(EOM_TOTAL_PROFIT_AMT,0) ProfitAmt,',
'					nvl(EOM_TOTAL_QTY,0) TotalQty,',
'                    (select nvl(sum(EAC_AMT),0) from V_ENQ_ADD_CHARGES',
'                    WHERE EAC_ENQ_ID =:P23_EOM_ENQ_ID',
'                    and EAC_TYPE = ''OTH'') OtherCharges,',
'                    (select nvl(sum(EAC_AMT),0)*-1 from V_ENQ_ADD_CHARGES',
'                    WHERE EAC_ENQ_ID =:P23_EOM_ENQ_ID',
'                    and EAC_TYPE = ''ADV'') AdvCharges,',
'                    (select nvl(sum(EAC_AMT),0)*-1 from V_ENQ_ADD_CHARGES',
'                    WHERE EAC_ENQ_ID =:P23_EOM_ENQ_ID',
'                    and EAC_TYPE = ''DIS'') Discount,',
'                    (select nvl(sum(EAC_AMT),0) from V_ENQ_ADD_CHARGES',
'                    WHERE EAC_ENQ_ID =:P23_EOM_ENQ_ID',
'                    and EAC_TYPE = ''FRT'') FrtCharges,',
'                    (select nvl(sum(EAC_AMT),0) from V_ENQ_ADD_CHARGES',
'                    WHERE EAC_ENQ_ID =:P23_EOM_ENQ_ID',
'                    and EAC_TYPE = ''INS'') Insurance,',
'                    ST_EXTRA1,',
'                    nvl(EOM_AVG_EXCH_RATE,0) AvgExchRate,',
'                   -- nvl(EOM_AVG_EXCH_RATE_FOB,0) AvgExchRateFOB,',
'                      (',
'                       select --round(sum(((nvl(eod_purchase_amt,0) + nvl(EOD_SCHEME_AMT,0) + nvl(EOD_DISCOUNT_AMT,0))* nvl(eod_quantity,0) * nvl(EOD_TOTAL_GST_PERC,0) )/100),2)',
'                        round(sum(((FN_Convert_Amt_Unitwise(eod_id,nvl(eod_purchase_amt,0) + nvl(EOD_SCHEME_AMT,0) + nvl(EOD_DISCOUNT_AMT,0)))* nvl(eod_quantity,0) * nvl(EOD_TOTAL_GST_PERC,0) )/100),2)  --Added by Rahul on 26-Sep-24 to convert amount'
||' as per costing unit',
'                        from V_ENQUIRIES_ORDERS_DETAILS ',
'                        where eod_enq_id = :P23_EOM_ENQ_ID ',
'                       ) Total_GST',
'                    , (select sum(FN_Convert_Amt_Unitwise(eod_id,nvl(eod_vol_fob_exp,0)) * nvl(eod_quantity,0)) from V_ENQUIRIES_ORDERS_DETAILS where eod_enq_id = :P23_EOM_ENQ_ID ) recovered_fob ',
'                    ,(select --nvl(sum(nvl(ed_expense_amount,0)),0)',
'                     TRIM(TO_CHAR(nvl(sum(nvl(ed_expense_amount,0)),0), ''999,999,999,999,990.99''))  || CASE WHEN max(em_final) = ''Y'' THEN ',
'                                '' <span class="fa fa-check-square" style="color:green;" title="Final"></span>''',
'                            ELSE ',
'                                '' <span class="fa fa-exclamation-triangle" style="color:red;" title="Not Final"></span>''',
'                            END',
'                            from V_EXPENSE_DETAILS, V_EXPENSE_MASTER',
'                            where ed_em_id = em_id',
'                            and em_enq_id = :P23_EOM_ENQ_ID) expense_amt ',
'				FROM',
'                        V_ENQUIRIES_ORDERS_MST,V_SETUP_TABLE',
'				WHERE',
'                         EOM_QUOTE_IN = ST_CODE',
'                    and  ST_TYPE = ''QUOTE_IN''',
'					and  eom_enq_id =:P23_EOM_ENQ_ID',
'				)                 ',
'select ''CBM'' as list_title, '''' ||TRIM(TO_CHAR(TotalCubic, ''999,999,999,999,990.99'')) as list_text,''fa fa-2x fa-cubes''     as  icon_class,1, null link, null LINK_ATTR',
'from details',
'union all',
'select ''Quantity'' as title, '''' ||TRIM(TO_CHAR(TotalQty, ''999,999,999,999,999'')) as data,''fa fa-2x fa-sort-numeric-asc''     as  container_class_badge,2, null link , null LINK_ATTR',
'from details',
'union all',
'select ''Gross Wt.'' as title, '''' ||TRIM(TO_CHAR(GrossWt, ''999,999,999,999,990.999'')) as data,''fa fa-2x fa-balance-scale''     as  container_class_badge,3, null link , null LINK_ATTR',
'from details',
'union all',
'select ''Net Wt.'' as title, '''' ||TRIM(TO_CHAR(NetWt, ''999,999,999,999,990.999'')) as data,''fa fa-2x fa-balance-scale''     as  container_class_badge,4, null link , null LINK_ATTR',
'from details',
'union all',
'select ''Container'' as title, ST_EXTRA1 || '' '' ||TRIM(TO_CHAR(Containerdata, ''999,999,999,999,990.99'')) as data,''fa fa-2x fa-cube''     as  container_class_badge,5, null link , null LINK_ATTR',
'from details',
'union all',
'select ''Discount'' as title, ST_EXTRA1 || '' '' ||TRIM(TO_CHAR(Discount, ''999,999,999,999,990.99'')) as data,''fa fa-2x fa-gift''     as  container_class_badge,6, null link , null LINK_ATTR',
'from details',
'union all',
'select ''Advance'' as title, ST_EXTRA1 || '' '' ||TRIM(TO_CHAR(AdvCharges, ''999,999,999,999,990.99'')) as data,''fa fa-credit-card fa-2x''     as  container_class_badge,7, null link, null LINK_ATTR',
'from details',
'union all',
'select ''Freight'' as title, ST_EXTRA1 || '' '' ||TRIM(TO_CHAR(FrtCharges, ''999,999,999,999,990.99'')) as data,''fa fa-2x fa-ship''     as  container_class_badge,8, null link , null LINK_ATTR',
'from details',
'union all',
'select ''Insurance'' as title, ST_EXTRA1 || '' '' ||TRIM(TO_CHAR(Insurance, ''999,999,999,999,990.99'')) as data,''fa fa-2x fa-umbrella''     as  container_class_badge,8, null link , null LINK_ATTR',
'from details',
'union all',
'select ''Other Charges'' as title, ST_EXTRA1 || '' '' ||TRIM(TO_CHAR(OtherCharges, ''999,999,999,999,990.99'')) as data,''fa fa-2x fa-plus-square-o''     as  container_class_badge,8, null link , null LINK_ATTR',
'from details',
'union all',
'-- select ''Avg. Exch.'' as title, TRIM(TO_CHAR(AvgExchRateFOB, ''999,999,999,999,990.99'')) as data,''fa fa-2x fa-exchange''     as  container_class_badge,8, null link , null LINK_ATTR',
'-- from details',
'-- union all',
'select ''Avg. Exch. Rnd'' as title, TRIM(TO_CHAR(AvgExchRate, ''999,999,999,999,990.99'')) as data,''fa fa-2x fa-exchange''     as  container_class_badge,8, null link , null LINK_ATTR',
'from details',
'union all',
'select ''Total GST'' as title, :APP_LOCAL_CURR_SYMBOL || '' '' || TRIM(TO_CHAR(Total_GST, ''999,999,999,999,990.99'')) as data,''fa fa-2x fa-money''     as  container_class_badge,8, null link , null LINK_ATTR',
'from details',
'union all',
'select ''Recovered FOB'' as title, :APP_LOCAL_CURR_SYMBOL || '' '' || TRIM(TO_CHAR(recovered_fob, ''999,999,999,999,990.99'')) as data,''fa fa-2x fa-money''     as  container_class_badge,8,  null link , null LINK_ATTR',
'from details',
'union all',
'select ''Total Expenses'' as title, :APP_LOCAL_CURR_SYMBOL || '' '' || expense_amt as data,''fa fa-2x fa-money-withdrawal''     as  container_class_badge,8, --''f?p=&APP_ID.:111:&APP_SESSION.::::P111_EM_ENQ_ID:'' ||:P23_EOM_ENQ_ID',
' case when :P23_EM_ID is not null then ',
' /*''javascript:openModal(''''expdetails'''');''*/',
' APEX_PAGE.GET_URL (',
'            p_page   => 111,',
'            p_items  => ''P111_EM_ID'',',
'            p_values => :P23_EM_ID,',
'            p_printer_friendly => ''YES'' )',
'             else null end link , ''target=_blank'' LINK_ATTR',
'from details',
'order by  4'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P23_EOM_ENQ_ID'
,p_lazy_loading=>false
,p_query_row_template=>2093604263195414824
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_TotalCubic number;',
' v_NetWt number;',
' v_GrossWt number;',
' v_ContainerValue number;',
' v_ProfitAmt number;',
' v_TotalQty number;',
' ',
'begin',
'SELECT',
'    SUM(eod_quantity * pm_cubic_space) "TotalCubic",',
'    round(SUM(nvl(eod_quantity,0) * nvl(pm_net_weight,0) ),2) "NetWt",',
'    round(SUM(nvl(eod_quantity,0) * nvl(pm_gross_weight,0) ),2) "GrossWt",',
'    round(SUM(nvl(eod_quantity,0) * nvl(eod_fob_doll_rnd,0) ),2) "ContainerValue",',
'    round(SUM(nvl(eod_quantity,0) * nvl(eod_profit_amt,0) ),2) "ProfitAmt",',
'    SUM(nvl(eod_quantity,0) ) "TotalQty"',
'INTO',
'    v_totalcubic,v_netwt,v_grosswt,v_containervalue,v_profitamt,v_totalqty',
'FROM',
'    V_ENQUIRIES_ORDERS_DETAILS,',
'    V_PRODUCT_MASTER',
'WHERE',
'    eod_enq_id =:p23_eom_enq_id',
'    AND   eod_product_id = pm_id;',
'/*',
'htp.p(''<div class="container"> Total Cubic : '' || v_totalcubic);',
'htp.p(''</br>Net Weight : '' || v_netwt);',
'htp.p(''</br>Gross Weight : '' || v_grosswt);',
'htp.p(''Container Value : '' || v_containervalue);',
'htp.p(''</br>Total Profit : '' || v_profitamt);',
'htp.p(''</br>Total Quantity : '' || v_totalqty || ''</div>'');',
'*/',
'htp.p(''<table border=1 cellpadding=5 cellspacing=0>',
'<tr>',
'<td style="background-color:#F7B765	; color:black">',
'TOTAL CUBIC',
'</td>',
'<td>''',
'||v_TotalCubic||',
'''</td>',
'<td style="background-color:#F7B765; color:black">',
'CONTAINER VALUE',
'</td>',
'<td>''',
'||v_ContainerValue||',
'''</td>',
'<td style="background-color:#F7B765; color:black">',
'TOTAL QUANTITY',
'</td>',
'<td>''',
'||v_TotalQty||',
'''</td>',
'</tr>',
'<tr>',
'<td style="background-color:#F7B765; color:black">',
'NET WEIGHT',
'</td>',
'<td>''',
'||v_NetWt||',
'''</td>',
'<td style="background-color:#F7B765; color:black">',
'GROSS WEIGHT',
'</td>',
'<td>''',
'||v_GrossWt||',
'''</td>',
'<td style="background-color:#F7B765; color:black">',
'TOTAL PROFIT',
'</td>',
'<td>''',
'||v_ProfitAmt||',
'''</td>',
'</tr>',
'</table>'');',
'end;'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(81051751883893978)
,p_query_column_id=>1
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'List Title'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(81051829581893979)
,p_query_column_id=>2
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'List Text'
,p_display_as=>'RICH_TEXT'
,p_attribute_01=>'HTML'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(81051924257893980)
,p_query_column_id=>3
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>3
,p_column_heading=>'Icon Class'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(73134186711863933)
,p_query_column_id=>4
,p_column_alias=>'1'
,p_column_display_sequence=>4
,p_column_heading=>'1'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28048758971234092)
,p_query_column_id=>5
,p_column_alias=>'LINK'
,p_column_display_sequence=>5
,p_column_heading=>'Link'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45171788260306079)
,p_query_column_id=>6
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>15
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(28841508366671874459)
,p_name=>'Container Details Badge Admin'
,p_parent_plug_id=>wwv_flow_imp.id(124836476526994503)
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-MediaList--stack:t-MediaList--iconsRounded'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Earnings'' as list_title, :APP_LOCAL_CURR_SYMBOL || '' '' || TRIM(TO_CHAR(nvl(EOM_TOTAL_PROFIT_AMT,0), ''999,999,999,999,990.99'')) as list_text,''fa fa-2x fa-money''  as  icon_class,1, null link',
'FROM V_ENQUIRIES_ORDERS_MST WHERE eom_enq_id =:P23_EOM_ENQ_ID',
'union',
'select ''Earnings %'' as list_title,',
'to_char(nvl(round(sum(nvl(EOD_profit_amt,0) * FN_Convert_Qty_Unitwise(eod_id,nvl(EOD_QUANTITY,0))) / sum(nvl(EOD_FOB_DOLL_RND,EOD_FOB_DOLL) * EOM_AVG_EXCH_RATE * FN_Convert_Qty_Unitwise(eod_id,nvl(EOD_QUANTITY,0))),2),0)*100) as list_text,''fa fa-2x f'
||'a-money''  as  icon_class,2, null link',
'from V_ENQUIRIES_ORDERS_MST,V_ENQUIRIES_ORDERS_DETAILS',
'where eom_enq_id = eod_enq_id',
'and eom_enq_id = :P23_EOM_ENQ_ID;'))
,p_required_role=>wwv_flow_imp.id(69913133764257079)
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P23_EOM_ENQ_ID'
,p_lazy_loading=>false
,p_query_row_template=>2093604263195414824
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_TotalCubic number;',
' v_NetWt number;',
' v_GrossWt number;',
' v_ContainerValue number;',
' v_ProfitAmt number;',
' v_TotalQty number;',
' ',
'begin',
'SELECT',
'    SUM(eod_quantity * pm_cubic_space) "TotalCubic",',
'    round(SUM(nvl(eod_quantity,0) * nvl(pm_net_weight,0) ),2) "NetWt",',
'    round(SUM(nvl(eod_quantity,0) * nvl(pm_gross_weight,0) ),2) "GrossWt",',
'    round(SUM(nvl(eod_quantity,0) * nvl(eod_fob_doll_rnd,0) ),2) "ContainerValue",',
'    round(SUM(nvl(eod_quantity,0) * nvl(eod_profit_amt,0) ),2) "ProfitAmt",',
'    SUM(nvl(eod_quantity,0) ) "TotalQty"',
'INTO',
'    v_totalcubic,v_netwt,v_grosswt,v_containervalue,v_profitamt,v_totalqty',
'FROM',
'    V_ENQUIRIES_ORDERS_DETAILS,',
'    V_PRODUCT_MASTER',
'WHERE',
'    eod_enq_id =:p23_eom_enq_id',
'    AND   eod_product_id = pm_id;',
'/*',
'htp.p(''<div class="container"> Total Cubic : '' || v_totalcubic);',
'htp.p(''</br>Net Weight : '' || v_netwt);',
'htp.p(''</br>Gross Weight : '' || v_grosswt);',
'htp.p(''Container Value : '' || v_containervalue);',
'htp.p(''</br>Total Profit : '' || v_profitamt);',
'htp.p(''</br>Total Quantity : '' || v_totalqty || ''</div>'');',
'*/',
'htp.p(''<table border=1 cellpadding=5 cellspacing=0>',
'<tr>',
'<td style="background-color:#F7B765	; color:black">',
'TOTAL CUBIC',
'</td>',
'<td>''',
'||v_TotalCubic||',
'''</td>',
'<td style="background-color:#F7B765; color:black">',
'CONTAINER VALUE',
'</td>',
'<td>''',
'||v_ContainerValue||',
'''</td>',
'<td style="background-color:#F7B765; color:black">',
'TOTAL QUANTITY',
'</td>',
'<td>''',
'||v_TotalQty||',
'''</td>',
'</tr>',
'<tr>',
'<td style="background-color:#F7B765; color:black">',
'NET WEIGHT',
'</td>',
'<td>''',
'||v_NetWt||',
'''</td>',
'<td style="background-color:#F7B765; color:black">',
'GROSS WEIGHT',
'</td>',
'<td>''',
'||v_GrossWt||',
'''</td>',
'<td style="background-color:#F7B765; color:black">',
'TOTAL PROFIT',
'</td>',
'<td>''',
'||v_ProfitAmt||',
'''</td>',
'</tr>',
'</table>'');',
'end;'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28841507255061874448)
,p_query_column_id=>1
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'List Title'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28841507135350874447)
,p_query_column_id=>2
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>4
,p_column_heading=>'List Text'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28841507092046874446)
,p_query_column_id=>3
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>5
,p_column_heading=>'Icon Class'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28841507344553874449)
,p_query_column_id=>4
,p_column_alias=>'1'
,p_column_display_sequence=>2
,p_column_heading=>'1'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28841507884663874454)
,p_query_column_id=>5
,p_column_alias=>'LINK'
,p_column_display_sequence=>1
,p_column_heading=>'Link'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(157979776897177780)
,p_plug_name=>'Main - Buttons and Tab Region'
,p_region_name=>'rgnSticky'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81051487159893975)
,p_plug_name=>'Main Region'
,p_parent_plug_id=>wwv_flow_imp.id(157979776897177780)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--fillLabels:t-TabsRegion-mod--pill'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30966061195055147)
,p_plug_name=>' Notes'
,p_region_name=>'notes'
,p_parent_plug_id=>wwv_flow_imp.id(81051487159893975)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  un_id',
', un_heading',
', ''u-color-'' || ora_hash(UN_CREATED_BY, 29) || '' u-color-'' || ora_hash(UN_CREATED_BY, 29) || ''-bd'' icon_modifier',
', un_details note_details',
', UN_CREATED_ON note_date',
', apex_string.get_initials(UN_CREATED_BY) user_icon',
'/*, ''<a href="'' || apex_page.get_url(p_page => 13, p_items => ''P13_ID'', p_values => un_id) || ',
'  ''" class="t-Button t-Button--small t-Button--simple">Edit</a>'' actions',
' */',
', UN_CREATED_BY user_name',
', UN_DISPLAY',
', UN_DISPLAY_ORDER',
', UN_TYPE',
', UN_TYPE_ID',
', UN_ACTIVE',
', un_highlight_color',
'from V_USER_NOTES',
'where un_type_id = :P23_EOM_ENQ_ID',
'and UN_TYPE <> ''PO'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P23_EOM_ENQ_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P23_EOM_ENQ_ID'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Working code to add button IG toolbar but unable to define action and security',
'function(config) {',
'    let $ = apex.jQuery,',
'        toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(), // copy the whole toolbar',
'        toolbarGroup = toolbarData.toolbarFind("actions2"); // this is the group with the action=save',
' ',
'    // add a new "Add Notes" button',
'    toolbarGroup.controls.push({type: "BUTTON",',
'                                action: "addnotes"',
'                               });',
'    ',
'    addnotesAction    = toolbarData.toolbarFind("addnotes");',
'    addnotesAction.label = "Add Notes";',
'    addnotesAction.hot = true;',
'    //addnotesAction.iconBeforeLabel = true;',
'    //addnotesAction.icon ="icon-ig-save-as"; // list of alternative grid icons (Font Apex):icon-ig-save,icon-irr-saved-report',
'    //addnotesAction.icon ="fa fa-save"; // list of alternative font awesome icons: fa-save,fa-check',
'    ',
'    //store the config',
'    config.toolbarData = toolbarData;',
'    return config;',
'}',
'*/'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30966728973055154)
,p_name=>'UN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_UN_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30967385121055160)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>100
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30967482048055161)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30967735451055164)
,p_name=>'NOTE_DETAILS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTE_DETAILS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Note Details'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30967859197055165)
,p_name=>'NOTE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Note Created'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30967940601055166)
,p_name=>'USER_ICON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ICON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30968172717055168)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Created By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30968193763055169)
,p_name=>'ICON_MODIFIER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON_MODIFIER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30968297068055170)
,p_name=>'UN_HEADING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_HEADING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Heading'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30968470835055171)
,p_name=>'UN_DISPLAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_DISPLAY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Display ?'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30968553487055172)
,p_name=>'UN_DISPLAY_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_DISPLAY_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Display Order'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30968603088055173)
,p_name=>'UN_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''OUTPUT_TYPE''',
'AND ST_CODE NOT IN (''USER'')',
'AND ST_CODE != ''PO''',
' order by st_display_order'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30968758844055174)
,p_name=>'UN_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P23_EOM_ENQ_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(30968810920055175)
,p_name=>'UN_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Active ?'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'Y'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5911358564922961987)
,p_name=>'UN_HIGHLIGHT_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_HIGHLIGHT_COLOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Highlight Color'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(5815161024608725223)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(30966362571055150)
,p_internal_uid=>13502373279285808
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_update_authorization_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_delete_authorization_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>true
,p_detail_view_before_rows=>'<ul class="t-Comments t-Comments--chat margin-md" id="notes_r">'
,p_detail_view_for_each_row=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon &ICON_MODIFIER." aria-hidden="true">&USER_ICON.</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            &USER_NAME. &middot; <span class="t-Comments-date">&NOTE_DATE.</span> ',
'            <!--<span class="t-Comments-actions">&ACTIONS.</span>-->',
'        </div>',
'        <div class="t-Comments-comment">',
'            &NOTE_DETAILS.',
'        </div>',
'    </div>',
'</li>'))
,p_detail_view_after_rows=>'</ul>'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(31166033470706812)
,p_interactive_grid_id=>wwv_flow_imp.id(30966362571055150)
,p_static_id=>'123105'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(17464021516769342)
,p_report_id=>wwv_flow_imp.id(31166033470706812)
,p_view_type=>'DETAIL'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17464114342774275)
,p_view_id=>wwv_flow_imp.id(17464021516769342)
,p_display_seq=>1000
,p_column_id=>wwv_flow_imp.id(30968553487055172)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(31166112925706812)
,p_report_id=>wwv_flow_imp.id(31166033470706812)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17465138802799800)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(30968297068055170)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17465861008799802)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(30968470835055171)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17466512703799804)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(30968553487055172)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17467228802799806)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(30968603088055173)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>173
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17467967686799809)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(30968758844055174)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(17468672334799811)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(30968810920055175)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31168173522706830)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(30966728973055154)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31171084228706841)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(30967385121055160)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31173631369733155)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(30967735451055164)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>521
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31174126909733157)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(30967859197055165)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31174631334733158)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(30967940601055166)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31175674461733162)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(30968172717055168)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31183527361834336)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(30968193763055169)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5811251570092906852)
,p_view_id=>wwv_flow_imp.id(31166112925706812)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5911358564922961987)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124968784791357169)
,p_plug_name=>' Shipping Details'
,p_region_name=>'shipping_details'
,p_parent_plug_id=>wwv_flow_imp.id(81051487159893975)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>25
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P23_EOM_ORD_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(143014971104458850)
,p_plug_name=>' Product Details'
,p_region_name=>'product_details'
,p_parent_plug_id=>wwv_flow_imp.id(81051487159893975)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'EOD_ID,',
'EOD_ID EDIT,',
'EOD_ENQ_ID,',
'EOD_MANUFAC_ID,',
'EOD_PRODUCT_ID,',
'EOD_QUANTITY EOD_QUANTITY,',
'--null info,',
'',
'/*Base Price*/',
'EOD_MRP EOD_MRP,',
'EOD_TRADE_PRICE EOD_TRADE_PRICE,',
'EOD_PURCHASE_AMT EOD_PURCHASE_AMT,',
'EOD_SCHEME_PERC EOD_SCHEME_PERC,',
'EOD_SCHEME_AMT EOD_SCHEME_AMT,',
'EOD_DISCOUNT_PERC EOD_DISCOUNT_PERC,',
'EOD_DISCOUNT_AMT EOD_DISCOUNT_AMT,',
'EOD_TOTAL_GST_PERC EOD_TOTAL_GST_PERC,  ---GST(%)',
'EOD_GST_PERC EOD_GST_PERC,  --GST Expense %',
'EOD_GST_AMT EOD_GST_AMT,  --GST Expense<br>Amount',
'',
'/*Other Expenses*/',
'EOD_TRANS_CHARGES EOD_TRANS_CHARGES,',
'EOD_BAGS_CTNS EOD_BAGS_CTNS,',
'EOD_RECOV_ON_FRT EOD_RECOV_ON_FRT,',
'EOD_REPACKING EOD_REPACKING,',
'EOD_EXTRA EOD_EXTRA,',
'',
'/*FOB Before Profit*/',
'EOD_NET_PURCHASE_VAL EOD_NET_PURCHASE_VAL,',
'EOD_VOL_FOB_AMT EOD_VOL_FOB_AMT,',
'EOD_VOL_FOB_EXP EOD_VOL_FOB_EXP,',
'',
'/*Financial*/',
'EOD_PROFIT_PERC EOD_PROFIT_PERC,',
'EOD_PROFIT_AMT EOD_PROFIT_AMT,',
'EOD_INCOME_TAX_PERC EOD_INCOME_TAX_PERC,',
'EOD_INCOME_TAX EOD_INCOME_TAX,',
'EOD_DUTY_PERC EOD_DUTY_PERC,',
'EOD_DUTY_AMT EOD_DUTY_AMT,',
'EOD_ECGC_PERC EOD_ECGC_PERC,',
'EOD_ECGC EOD_ECGC,',
'EOD_BANK_COMM EOD_BANK_COMM,',
'EOD_BANK_COMM_PERC EOD_BANK_COMM_PERC,',
'EOD_INTEREST_PERC EOD_INTEREST_PERC,',
'EOD_INTEREST_AMT EOD_INTEREST_AMT,',
'',
'/*FOB/ C&F/ C&I/ CIF*/',
'EOD_COSTING_TYPE,',
'EOD_EXCHANGE_RATE EOD_EXCHANGE_RATE,',
'EOD_FOB_RS EOD_FOB_RS,',
'EOD_FOB_DOLL EOD_FOB_DOLL,',
'EOD_COMMISSION_PERC EOD_COMMISSION_PERC,',
'EOD_FOBC_AMT EOD_FOBC_AMT,',
'EOD_FOB_DOLL_RND EOD_FOB_DOLL_RND,',
'',
'--C&F',
'EOD_OCEAN_FRT EOD_OCEAN_FRT,',
'EOD_FRT_PER_CTN EOD_FRT_PER_CTN,',
'EOD_CANDF_AMT EOD_CANDF_AMT,',
'EOD_CANDFC_AMT EOD_CANDFC_AMT,',
'EOD_CANDF_AMT_RND EOD_CANDF_AMT_RND,',
'',
'--CIF',
'EOD_CIF_AMT EOD_CIF_AMT,',
'EOD_CIFC_AMT EOD_CIFC_AMT,',
'EOD_CIF_AMT_RND EOD_CIF_AMT_RND,',
'',
'--C&I',
'EOD_INSURANCE_AMT EOD_INSURANCE_AMT,',
'EOD_CNI_AMT EOD_CNI_AMT,',
'EOD_CNIC_AMT EOD_CNIC_AMT,',
'EOD_CNI_AMT_RND EOD_CNI_AMT_RND,',
'EOD_INSURANCE_PERC EOD_INSURANCE_PERC,',
'',
'--Product Details',
'PM_STW_20,',
'PM_STW_40,',
'PM_STW_40HC,',
'PM_STW_RND_20,',
'PM_STW_RND_40,',
'nvl(PM_PACKAGE_1,PM_PACKAGE_2) * nvl(PM_PACKAGE,1) PM_PACKAGE_1, --Added nvl contd to calc purchase amt for prods having pkg2 only',
'--Multiplied PM_PACKAGE value as it needs to be considered in the calculation of purchase price based on trade price',
'pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT pm_name, --Added by Rahul on 22092019 to correct the display issue of multiple rows on IG when same product is added multiple times',
'',
'--Master Details',
'EOM_FRT_AMT,',
'EOM_CURRENT_RATE,',
'EOM_REALISE_RATE,',
'EOD_GROUP_ID,',
'EOD_STW_RND_20,',
'EOD_HSN_CODE,',
'EOD_COSTING_REMARKS,',
'EOD_PRODUCT_STATUS,',
'--Product Status',
'/*Commented by Ranu on 27Sep20 for Product Highlight logic*/',
' nvl((select ST_NAME from V_SETUP_TABLE where  nvl(EOD_PRODUCT_STATUS,''IP'') = st_code and st_type = ''PRODUCT_STATUS''),''In-Progress'') ST_NAME,',
'(select ''style=background-image:linear-gradient(90deg,'' || ST_EXTRA1 ||'','' || ST_EXTRA2 ||'');color:#000!important''  ',
' from V_SETUP_TABLE ',
' where  nvl(EOD_PRODUCT_STATUS,''IP'') = st_code and st_type = ''PRODUCT_STATUS'')  css_style',
' --nvl(EOD_PRODUCT_STATUS,''CD'')',
'',
',null tmp_qty --Added by Rahul to capture quantitiy to be moved to master list',
',(select HCM_DRAWBACK from V_HSN_CODE_MASTER where hcm_code = eod_hsn_code) HCM_DRAWBACK',
'--,HCM_MEIS Commented by Ranu on 27Jan24 as this MEIS scheme is discontinued',
',FN_Convert_Qty_Unitwise(eod_id,EOD_QUANTITY) *EOD_PURCHASE_AMT  TotalPurchase',
',EOD_VERIFIED',
',(select to_char(HCM_RoDTEP,''0.00'') || nvl2(HCM_RoDTEP,''%'','''') || nvl2(HCM_CAP,'' - '','''') || HCM_CAP  from V_HSN_CODE_MASTER where hcm_code = eod_hsn_code) RoDTEP',
',eod_foc_flag   --Added by Rahul 09-Feb-2024 to exclude foc from split ins/frt amt',
',upper(PM_BRAND) PM_BRAND  --Added by Rahul 16-Mar-2024',
',round(((nvl(eod_purchase_amt,0) + nvl(EOD_SCHEME_AMT,0) + nvl(EOD_DISCOUNT_AMT,0))* nvl(eod_quantity,0) * nvl(EOD_TOTAL_GST_PERC,0) )/100,2) total_gst --Added by rahul 15-Apr-24',
',eod_marks_nos --Added by Ranu on 4/27/24',
'--Added by Rahul 18-May-24 for multiple costing unit satkamal start',
',EOD_GODOWN_CHARGES 	',
',EOD_TESTING_CHARGES 		',
',EOD_CALC_AMT_UNITWISE 	',
',EOD_COSTING_UNIT',
',EOD_NET_WT',
',EOD_STW_RND_40',
',EOD_STW_RND_40HC',
'--Added by Rahul 18-May-24 for multiple costing unit satkamal end',
',EOD_CALC_AMT_UNITWISE_RND  --Added by Rahul on 31-Jul-24',
',EOD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
',EOD_PROFIT_PERC_GST_PURCHASE  --Added by Rahul on 23-Jun-25 for NCF',
',EOD_CGST_PERC ,EOD_SGST_PERC  --Added by Rahul on 15-Feb-26',
'from V_ENQUIRIES_ORDERS_DETAILS,V_PRODUCT_MASTER,V_ENQUIRIES_ORDERS_MST--,V_SETUP_TABLE',
'--,V_HSN_CODE_MASTER  Commented by Rahul on 12-Nov-25 as delete functionality errored due to view so converted to base table and moved hcm to inline query',
'where EOM_ENQ_ID = EOD_ENQ_ID',
'and eod_product_id = pm_id',
'and eod_enq_id = :P23_EOM_ENQ_ID',
'--and nvl(EOD_PRODUCT_STATUS,''CD'') = st_code ',
'--and st_type = ''PRODUCT_STATUS''',
'--and hcm_code (+)= eod_hsn_code ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P23_EOM_ENQ_ID'
,p_plug_required_role=>'!'||wwv_flow_imp.id(102149068872733649)
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P23_EOM_ENQ_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3537629439599369)
,p_name=>'EOD_SGST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_SGST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'SGST%'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>1290
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3537676847599370)
,p_name=>'EOD_CGST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_CGST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'CGST%'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>1280
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12856872174108206)
,p_name=>'EOD_GODOWN_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_GODOWN_CHARGES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Godown<br>Chgs'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>1100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_GODOWN_CHARGES'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12856992230108207)
,p_name=>'EOD_TESTING_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_TESTING_CHARGES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Testing<br>Chgs'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>1110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_TESTING_CHARGES'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12857326968108210)
,p_name=>'EOD_CALC_AMT_UNITWISE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_CALC_AMT_UNITWISE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Calc Amt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>1140
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CALC_AMT_UNITWISE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12857405802108211)
,p_name=>'EOD_COSTING_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_COSTING_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Costing<br>Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>1150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(21656474658278457)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'EOD_COSTING_UNIT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12857727299108214)
,p_name=>'EOD_NET_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_NET_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>1170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'EOD_NET_WT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22347279098143027)
,p_name=>'EOD_STW_RND_40HC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_STW_RND_40HC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stw 40HC FT.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1200
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_STW_RND_40HC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22347362823143028)
,p_name=>'EOD_STW_RND_40'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_STW_RND_40'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stw 40Ft.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1190
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_STW_RND_40'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(27513600214570993)
,p_name=>'ST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>820
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(43948153878486743)
,p_name=>'EOD_CALC_AMT_UNITWISE_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_CALC_AMT_UNITWISE_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Calc Amt<br>Rounded'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1220
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CALC_AMT_UNITWISE_RND'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(44773036618610882)
,p_name=>'EOD_COSTING_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_COSTING_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Costing<br>Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>800
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_COSTING_REMARKS'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(71398711268601225)
,p_name=>'EOD_PROFIT_PERC_GST_PURCHASE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PROFIT_PERC_GST_PURCHASE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Profit % <BR> Inc. GST'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>1260
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'EOD_PROFIT_PERC_GST_PURCHASE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(83673681550942792)
,p_name=>'PM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>780
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'a-GV-cell-pmname'
,p_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,:P29_PRODUCT_ID,P29_MANUFAC_ID,P29_COSTING_TYPE,P29_CUSTOMER_ID,P29_EOM_ENQ_ID:&EOD_PRODUCT_ID.,&EOD_MANUFAC_ID.,SYSTEM_LEVEL,&P23_EOM_CUSTOMER_ID.,&P23_EOM_ENQ_ID.'
,p_link_text=>'&PM_NAME.'
,p_link_attributes=>'class="t-Button-col t-Button--stretch"   &CSS_STYLE.  title="&ST_NAME. / Click to see Latest Costing/ Suppliers"  width=100% height=100%'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(93564576433248779)
,p_name=>'EOD_EXCLUDE_PDI_RPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_EXCLUDE_PDI_RPT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Exclude<br>PDI Report'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1240
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30621381686625309)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111005461283954299)
,p_name=>'EOD_TOTAL_GST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_TOTAL_GST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'GST %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>700
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'990D00'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_TOTAL_GST_PERC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111052066466977225)
,p_name=>'PM_STW_20'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_STW_20'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>620
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_static_id=>'PM_STW_20'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111052186918977226)
,p_name=>'PM_STW_40'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_STW_40'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>630
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_static_id=>'PM_STW_40'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111052222623977227)
,p_name=>'PM_STW_40HC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_STW_40HC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>640
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_static_id=>'PM_STW_40HC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111052326949977228)
,p_name=>'PM_STW_RND_20'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_STW_RND_20'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>650
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_static_id=>'PM_STW_RND_20'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111052454278977229)
,p_name=>'PM_STW_RND_40'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_STW_RND_40'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>660
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_static_id=>'PM_STW_RND_40'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111052511364977230)
,p_name=>'PM_PACKAGE_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_PACKAGE_1'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>610
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PM_PACKAGE_1'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111052654812977231)
,p_name=>'EOM_FRT_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_FRT_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>670
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_static_id=>'EOM_FRT_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111052736234977232)
,p_name=>'EOM_CURRENT_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_CURRENT_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>680
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_static_id=>'EOM_CURRENT_RATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(111052797898977233)
,p_name=>'EOM_REALISE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_REALISE_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>690
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_static_id=>'EOM_REALISE_RATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(124171748107665174)
,p_name=>'EOD_STW_RND_20'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_STW_RND_20'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stw 20Ft.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>740
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_STW_RND_20'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(124810882149470102)
,p_name=>'EOD_HSN_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_HSN_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'HSN<br>Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>760
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135821205580761562)
,p_name=>'EOD_MRP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_MRP'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'MRP<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_MRP'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135821236711761563)
,p_name=>'EOD_TRADE_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_TRADE_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Trade<br>Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_TRADE_PRICE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135821422046761564)
,p_name=>'EOD_PURCHASE_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PURCHASE_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Purchase<br>Amount<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></butto'
||'n>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_PURCHASE_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135821465595761565)
,p_name=>'EOD_SCHEME_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_SCHEME_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sch. %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down'' style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'990D00'
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_SCHEME_PERC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135821568756761566)
,p_name=>'EOD_SCHEME_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_SCHEME_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sch.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_SCHEME_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>'readonly="readonly"'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135821657962761567)
,p_name=>'EOD_DISCOUNT_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_DISCOUNT_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc. %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down'' style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'990D00'
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_DISCOUNT_PERC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135821787432761568)
,p_name=>'EOD_DISCOUNT_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_DISCOUNT_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_DISCOUNT_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135821846661761569)
,p_name=>'EOD_GST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_GST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'GST<br>Exp. %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down'' style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'990D00'
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_GST_PERC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135821955438761570)
,p_name=>'EOD_GST_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_GST_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'GST<br>Exp.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_GST_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135822063623761571)
,p_name=>'EOD_TRANS_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_TRANS_CHARGES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Trans.<br>Charges'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_TRANS_CHARGES'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135822132725761572)
,p_name=>'EOD_BAGS_CTNS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_BAGS_CTNS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bags/<br>CTNS'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_BAGS_CTNS'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135822244734761573)
,p_name=>'EOD_RECOV_ON_FRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_RECOV_ON_FRT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Recovery<br>On<br>Freight'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_RECOV_ON_FRT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135822359656761574)
,p_name=>'EOD_REPACKING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_REPACKING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Repacking'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_REPACKING'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135822446787761575)
,p_name=>'EOD_EXTRA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_EXTRA'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Extra'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_EXTRA'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135822611763761576)
,p_name=>'EOD_VOL_FOB_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_VOL_FOB_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Vol. FOB<br>Amt.<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down'' style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>290
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_VOL_FOB_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'FUNCTION_BODY'
,p_default_language=>'PLSQL'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  v_fob number;',
'begin',
'  select to_number(st_code)  into v_fob',
'  from V_SETUP_TABLE',
'  where st_type=''FOB''',
'and st_name = ''Total'';',
'  return v_fob;',
'exception when others then ',
' return 0;',
'end;'))
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135822659648761577)
,p_name=>'EOD_VOL_FOB_EXP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_VOL_FOB_EXP'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Vol. FOB<br>Expense'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>300
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_VOL_FOB_EXP'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135822750498761578)
,p_name=>'EOD_INCOME_TAX_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_INCOME_TAX_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Income<br>Tax %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down'' style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>310
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'990D00'
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_INCOME_TAX_PERC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'FUNCTION_BODY'
,p_default_language=>'PLSQL'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  v_INCOME_TAX_PERC number;',
'begin',
'    select ST_CODE INTO v_INCOME_TAX_PERC',
'    from V_SETUP_TABLE',
'    where ST_TYPE = ''PROD_CALC_MST''',
'    AND ST_NAME =''INCOME_TAX_PERC'';',
'  return v_INCOME_TAX_PERC;',
'exception when others then ',
' return 0;',
'end;'))
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135822867186761579)
,p_name=>'EOD_INCOME_TAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_INCOME_TAX'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Income<br>Tax'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_INCOME_TAX'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135822992966761580)
,p_name=>'EOD_DUTY_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_DUTY_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duty %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down'' style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>330
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'990D00'
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_DUTY_PERC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'FUNCTION_BODY'
,p_default_language=>'PLSQL'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  v_DUTY_PERC number;',
'begin',
'    select ST_CODE INTO v_DUTY_PERC',
'    from V_SETUP_TABLE',
'    where ST_TYPE = ''PROD_CALC_MST''',
'    AND ST_NAME =''DUTY_PERC'';',
'  return v_DUTY_PERC;',
'exception when others then ',
' return 0;',
'end;'))
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135823036000761581)
,p_name=>'EOD_DUTY_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_DUTY_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duty<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>340
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_DUTY_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135823178638761582)
,p_name=>'EOD_ECGC_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ECGC_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ECGC %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>350
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'990D00'
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_ECGC_PERC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'FUNCTION_BODY'
,p_default_language=>'PLSQL'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  v_ECGC number;',
'begin',
'    select ST_CODE INTO v_ECGC',
'    from V_SETUP_TABLE',
'    where ST_TYPE = ''PROD_CALC_MST''',
'    AND ST_NAME =''ECGC'';',
'  return v_ECGC;',
'exception when others then ',
' return 0;',
'end;'))
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135823314908761583)
,p_name=>'EOD_ECGC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ECGC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ECGC<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>360
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_ECGC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135823417880761584)
,p_name=>'EOD_BANK_COMM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_BANK_COMM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bank<br>Comm.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>390
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_BANK_COMM'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135823495403761585)
,p_name=>'EOD_BANK_COMM_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_BANK_COMM_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bank<br>Comm. %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>380
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'990D00'
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_BANK_COMM_PERC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'FUNCTION_BODY'
,p_default_language=>'PLSQL'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  v_BANK_COMM number;',
'begin',
'    select ST_CODE INTO v_BANK_COMM',
'    from V_SETUP_TABLE',
'    where ST_TYPE = ''PROD_CALC_MST''',
'    AND ST_NAME =''BANK_COMM'';',
'  return v_BANK_COMM;',
'exception when others then ',
' return 0;',
'end;'))
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135823529204761586)
,p_name=>'EOD_INTEREST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_INTEREST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Int.%<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>400
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'990D00'
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_INTEREST_PERC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135823710793761587)
,p_name=>'EOD_INTEREST_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_INTEREST_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Int.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>410
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_INTEREST_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135823733774761588)
,p_name=>'EOD_COSTING_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_COSTING_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>420
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_static_id=>'EOD_COSTING_TYPE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135823871367761589)
,p_name=>'EOD_FOB_RS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_FOB_RS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB  (<span class="fa fa-inr" aria-hidden="true"></span>)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>430
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_FOB_RS'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135824025043761590)
,p_name=>'EOD_FOB_DOLL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_FOB_DOLL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB  (&APP_QUOTE_IN_SYMBOL.)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>440
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_FOB_DOLL'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135824115916761591)
,p_name=>'EOD_COMMISSION_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_COMMISSION_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Comm. %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>450
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'990D00'
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_COMMISSION_PERC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135824171215761592)
,p_name=>'EOD_FOBC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_FOBC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOBC<br>Amt. (&APP_QUOTE_IN_SYMBOL.)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>460
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_FOBC_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135824322044761593)
,p_name=>'EOD_FOB_DOLL_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_FOB_DOLL_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB &APP_QUOTE_IN_SYMBOL.<br> Rounded'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>470
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_FOB_DOLL_RND'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135824413328761594)
,p_name=>'EOD_OCEAN_FRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_OCEAN_FRT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ocean<br>Freight<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>480
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_OCEAN_FRT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135824518285761595)
,p_name=>'EOD_FRT_PER_CTN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_FRT_PER_CTN'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Freight/<br>Carton'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>490
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_FRT_PER_CTN'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135824605945761596)
,p_name=>'EOD_CANDF_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_CANDF_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&F<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>500
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CANDF_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135824713441761597)
,p_name=>'EOD_CANDFC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_CANDFC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&F Comm.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>510
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CANDFC_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135824765795761598)
,p_name=>'EOD_CANDF_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_CANDF_AMT_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&F Amt.<br>Rounded'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>520
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CANDF_AMT_RND'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135824887534761599)
,p_name=>'EOD_CIF_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_CIF_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'CIF<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>530
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CIF_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135824998638761600)
,p_name=>'EOD_CIFC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_CIFC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'CIF Comm.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>540
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CIFC_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135825101189761601)
,p_name=>'EOD_CIF_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_CIF_AMT_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'CIF Amt.<br>Rounded'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>550
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CIF_AMT_RND'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135825139154761602)
,p_name=>'EOD_INSURANCE_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_INSURANCE_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ins.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>560
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_INSURANCE_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135825246580761603)
,p_name=>'EOD_CNI_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_CNI_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&I<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>570
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CNI_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135825425540761604)
,p_name=>'EOD_CNIC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_CNIC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&I Comm.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>580
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CNIC_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135825484571761605)
,p_name=>'EOD_CNI_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_CNI_AMT_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&I Amt.<br>Rounded'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>590
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>1000
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CNI_AMT_RND'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(135958668441009070)
,p_name=>'EOD_INSURANCE_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_INSURANCE_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ins. %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>600
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'990D00'
,p_item_width=>1000
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_INSURANCE_PERC'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'FUNCTION_BODY'
,p_default_language=>'PLSQL'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  v_INSURANCE_PERC number;',
'begin',
'    select ST_CODE INTO v_INSURANCE_PERC',
'    from V_SETUP_TABLE',
'    where ST_TYPE = ''PROD_CALC_MST''',
'    AND ST_NAME =''INSURANCE_PERC'';',
'  return v_INSURANCE_PERC;',
'--exception when others then ',
'-- return 0;',
'end;'))
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137342232995415291)
,p_name=>'EOD_GROUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_GROUP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Grp.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>720
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_GROUP_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143013979511343568)
,p_name=>'CSS_STYLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CSS_STYLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>870
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143016066969458981)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143016620911458984)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143017730629458994)
,p_name=>'EOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'EOD_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_EOD_ID'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143019023173458995)
,p_name=>'EOD_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'EOD_ENQ_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P23_EOM_ENQ_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143019593956458995)
,p_name=>'EOD_MANUFAC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_MANUFAC_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Vendor<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down'' style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(32895962227233049206)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Vendor -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'EOD_MANUFAC_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Removed this condition by Rahul on 15-Mar-2024 to accept vendor info',
'PL/SQL Function - Readonly condition',
'begin',
'      ',
'  if :EOD_MANUFAC_ID is not null then',
'   --   insert into error_log (el_text) values (''read only '' || :EOD_MANUFAC_ID);',
'      return true;',
'  end if;',
'  ',
'end;'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143020155822458996)
,p_name=>'EOD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>false
,p_filter_is_required=>false
,p_static_id=>'EOD_PRODUCT_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PM_NAME || ''('' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || ''x'' ||PM_PACKAGE_2 || '' ''|| PM_PACKAGE_UNIT || '')'' DIS, PM_ID RET',
'FROM V_PRODUCT_MASTER ',
'WHERE PM_MANUFAC_ID = :EOD_MANUFAC_ID  ',
'ORDER BY 1 '))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143020753171459003)
,p_name=>'EOD_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>5
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'EOD_QUANTITY'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143021404770459004)
,p_name=>'EOD_NET_PURCHASE_VAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_NET_PURCHASE_VAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Net<br>Purchase<br>Value'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'EOD_NET_PURCHASE_VAL'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>'Added readonly="readonly" on 12-Dec-18'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143021990007459005)
,p_name=>'EOD_PROFIT_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PROFIT_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Profit %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_label=>'Profit %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_format_mask=>'990D00'
,p_item_width=>5
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'EOD_PROFIT_PERC'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    // This doesn''t work until 5.1.1',
'    config.defaultGridColumnOptions = {',
'        headingCssClasses: "has-button"',
'    }',
'    return config;',
'}'))
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143022581768459006)
,p_name=>'EOD_PROFIT_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PROFIT_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Profit<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>5
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'EOD_PROFIT_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143023139928459006)
,p_name=>'EOD_EXCHANGE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_EXCHANGE_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Exch.<br>Rate<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>5
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'EOD_EXCHANGE_RATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(143050312658615524)
,p_name=>'EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Edit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP:P24_EOD_ID:&EOD_ID.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(451181962233023256)
,p_name=>'TMP_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TMP_QTY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Mst. Lst.<br>Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>890
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(663554198280028218)
,p_name=>'HCM_DRAWBACK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HCM_DRAWBACK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Drawback'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>910
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'CSSreadonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5911359221400961994)
,p_name=>'EOD_PRODUCT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_PRODUCT_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>940
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8209192475850718455)
,p_name=>'TOTALPURCHASE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTALPURCHASE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Total Purchase<br>Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>960
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9586454985508158303)
,p_name=>'EOD_VERIFIED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_VERIFIED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_RADIOGROUP'
,p_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>980
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30621381686625309)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
,p_security_scheme=>wwv_flow_imp.id(69913570901257093)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12796069433721358528)
,p_name=>'RODTEP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RODTEP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'RoDTEP'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>1000
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'CSSreadonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22047780380190672107)
,p_name=>'EOD_FOC_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_FOC_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'FOC Flag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>1020
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30621381686625309)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-Select-'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28686449378137466171)
,p_name=>'EOD_MARKS_NOS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_MARKS_NOS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Marks & Nos.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1080
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>250
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28841505883748874434)
,p_name=>'TOTAL_GST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_GST'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'GST Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1060
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(28891055550454952757)
,p_name=>'PM_BRAND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_BRAND'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Brand'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>1040
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(143015381249458974)
,p_internal_uid=>6304351481024276
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_update_authorization_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_delete_authorization_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV'
,p_enable_mail_download=>false
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {	',
'	var $ = apex.jQuery,  ',
'	toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),  ',
'	toolbarGroup = toolbarData[4];',
'',
'    toolbarGroup.controls.unshift( {  ',
'        type: "SELECT",  ',
'        action: "change-rows-per-page"  ',
'    } );   ',
'  toolbarGroup.controls.push(',
'  {',
'    type: "BUTTON",',
'    action: "addToMasterList",',
'    icon: "fa fa-list fam-information fam-is-success",',
'    iconBeforeLabel: true,',
'    hot: false,',
'  });',
'	config.toolbarData = toolbarData; 	',
'    config.initActions = function(actions) {',
'		',
'		var  rpp = actions.lookup("change-rows-per-page"),  ',
'            originalSet = rpp.set,  ',
'            originalGet = rpp.get;  ',
'        rpp.set = function(val) {  ',
'            val = val === "null" ? null : parseInt(val, 10);  ',
'            originalSet(val);  ',
'        };  ',
'        rpp.get = function() {  ',
'            var val = originalGet();  ',
'            return val === null ? "null" : val;  ',
'        };  ',
'	     ',
'        actions.add(',
'        {',
'          name: "addToMasterList",',
'          label: "Move to Master List",',
'          action: addToML',
'        })        ',
'        actions.add({',
'            name: "selection-copy-down",',
'            label: "Copy Down", ',
'            action: function(event, el) {',
'                var i, col, sel, model, val, colName,',
'                    colHeader$ = $(el).closest(".a-GV-header"),',
'                    ig$ = $(actions.context),',
'                    view = ig$.interactiveGrid("getCurrentView");',
'                    apex.region("product_details").widget().interactiveGrid("getActions").set("edit", false);',
'                if ( view.internalIdentifier === "grid" ) {',
'                    col = view.view$.grid("getColumns")[colHeader$.attr("data-idx")];',
'                    sel = view.view$.grid("getSelectedRecords");',
'                    if ( sel.length > 1) {',
'                        colName = col.property;',
'                        model = view.model;',
'                        val = model.getValue(sel[0], colName);',
'                        console.log(">> copy down ", colName, val);                        ',
'                        for( i = 1; i < sel.length; i++) {',
'                            if ( model.allowEdit( sel[i]) ) {',
'                                model.setValue(sel[i], colName, val);',
'                                finitialize_cd(sel[i],model);',
'                                fcalc_base_price();                             ',
'                            }',
'						}',
'                    } }                }',
'                            ',
'        })',
'		actions.add({',
'            name: "moveoutofProforma",',
'           labelKey: "Move out of Proforma",',
'            icon: "fa fa-box-arrow-out-south fa-anim-vertical-shake",',
'            action: fnmoveout    ',
'            })         ',
'    }    ',
'    function fnmoveout(event, focusElement)',
'  {',
'    var i, records, model, record,',
'      view = apex.region("product_details").widget().interactiveGrid("getCurrentView");',
'    var selectedIds = [];',
'    if (view.supports.edit)',
'    {',
'      model = view.model;',
'      records = view.getSelectedRecords();',
'      if (records.length > 0)',
'      {',
'        for (i = 0; i < records.length; i++)',
'        {',
'          record = records[i];            ',
'          selectedIds.push(records[i][1]);',
'        }',
'          apex.server.process ("AJAX_MOVE_OUT_PRODUCTS", ',
'                               {x01: JSON.stringify(selectedIds),x02: $v(''P23_EOM_ENQ_ID'')},',
'                               {dataType: ''text'', ',
'                                success: function( pData )',
'                                {        ',
'                                      apex.submit('''');',
'                                }',
'                               }',
'                              );   ',
'      }',
'    }',
'  } ',
'  function addToML(event, focusElement)',
'  {',
'    javascript:openModal(''ML_SEL'');',
'  }    ',
'console.log(config);',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(143015795208458977)
,p_interactive_grid_id=>wwv_flow_imp.id(143015381249458974)
,p_static_id=>'123106'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>5
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(17464136200769352)
,p_report_id=>wwv_flow_imp.id(143015795208458977)
,p_view_type=>'CHART'
,p_chart_type=>'pie'
,p_chart_orientation=>'vertical'
,p_chart_stack=>'off'
);
wwv_flow_imp_page.create_ig_report_chart_col(
 p_id=>wwv_flow_imp.id(24908326016750371)
,p_view_id=>wwv_flow_imp.id(17464136200769352)
,p_column_type=>'VALUE'
,p_column_id=>wwv_flow_imp.id(143020155822458996)
,p_function=>'COUNT'
);
wwv_flow_imp_page.create_ig_report_chart_col(
 p_id=>wwv_flow_imp.id(24908366383750371)
,p_view_id=>wwv_flow_imp.id(17464136200769352)
,p_column_type=>'LABEL'
,p_column_id=>wwv_flow_imp.id(27513600214570993)
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(143015848272458978)
,p_report_id=>wwv_flow_imp.id(143015795208458977)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2088222606488847)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>94
,p_column_id=>wwv_flow_imp.id(3537676847599370)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2089027392488872)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>95
,p_column_id=>wwv_flow_imp.id(3537629439599369)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12862713880121494)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(12856872174108206)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12863645078121504)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(12856992230108207)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12866266332121523)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>73
,p_column_id=>wwv_flow_imp.id(12857326968108210)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12867219637121528)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(12857405802108211)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15860556269552942)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>90
,p_column_id=>wwv_flow_imp.id(12857727299108214)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16367858426031532)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>92
,p_column_id=>wwv_flow_imp.id(22347279098143027)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(16368758322031541)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>91
,p_column_id=>wwv_flow_imp.id(22347362823143028)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19966974534846555)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>74
,p_column_id=>wwv_flow_imp.id(43948153878486743)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(30332276726846368)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>85
,p_column_id=>wwv_flow_imp.id(27513600214570993)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>159
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(46060812242376645)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(44773036618610882)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(80966777441136084)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>93
,p_column_id=>wwv_flow_imp.id(93564576433248779)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(83821870203436380)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(83673681550942792)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>382
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(90334326376243707)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(124171748107665174)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(99124653390392483)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(71398711268601225)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(124768661806300889)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>58
,p_column_id=>wwv_flow_imp.id(111052066466977225)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(124769080614300906)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>59
,p_column_id=>wwv_flow_imp.id(111052186918977226)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(124769549947300920)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(111052222623977227)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(124770005174300932)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>62
,p_column_id=>wwv_flow_imp.id(111052326949977228)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(124770565558300944)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(111052454278977229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(124771014314300955)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>84
,p_column_id=>wwv_flow_imp.id(111052511364977230)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(124771579699300966)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>64
,p_column_id=>wwv_flow_imp.id(111052654812977231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(124772093966300978)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>65
,p_column_id=>wwv_flow_imp.id(111052736234977232)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(124772505512300993)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>67
,p_column_id=>wwv_flow_imp.id(111052797898977233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(124807010740590895)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(111005461283954299)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(124908960504388166)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>87
,p_column_id=>wwv_flow_imp.id(124810882149470102)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(128414576790940195)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>77
,p_column_id=>wwv_flow_imp.id(135958668441009070)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>52
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135827097084764646)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(135821205580761562)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135827464473764683)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(135821236711761563)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135827936198764691)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(135821422046761564)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135828475921764699)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(135821465595761565)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135829013669764722)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(135821568756761566)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135829465299764734)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(135821657962761567)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135829937814764741)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(135821787432761568)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135830486570764746)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(135821846661761569)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135830899349764752)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(135821955438761570)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135831362384764756)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(135822063623761571)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135831865948764762)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(135822132725761572)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135832396890764766)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(135822244734761573)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135832828086764774)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(135822359656761574)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135833394805764780)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(135822446787761575)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135834021679764786)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(135822611763761576)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135834501213764810)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(135822659648761577)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135834932195764822)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(135822750498761578)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135835474341764829)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(135822867186761579)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135835977830764837)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(135822992966761580)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>57
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135836444741764850)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(135823036000761581)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>63
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135836876546764857)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(135823178638761582)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135837342776764862)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(135823314908761583)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135837904439764867)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>51
,p_column_id=>wwv_flow_imp.id(135823417880761584)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135838398931764872)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>50
,p_column_id=>wwv_flow_imp.id(135823495403761585)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135838899721764877)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>52
,p_column_id=>wwv_flow_imp.id(135823529204761586)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>47
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135839361817764891)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>53
,p_column_id=>wwv_flow_imp.id(135823710793761587)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135839848544764897)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(135823733774761588)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135840395555764904)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>54
,p_column_id=>wwv_flow_imp.id(135823871367761589)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135840878944764911)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>56
,p_column_id=>wwv_flow_imp.id(135824025043761590)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135841362861764918)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>70
,p_column_id=>wwv_flow_imp.id(135824115916761591)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135841866684764923)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>71
,p_column_id=>wwv_flow_imp.id(135824171215761592)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135842352852764929)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>76
,p_column_id=>wwv_flow_imp.id(135824322044761593)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135842908719764944)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>66
,p_column_id=>wwv_flow_imp.id(135824413328761594)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135843238912764949)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>68
,p_column_id=>wwv_flow_imp.id(135824518285761595)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135843763599764955)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>69
,p_column_id=>wwv_flow_imp.id(135824605945761596)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135844265978764960)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>80
,p_column_id=>wwv_flow_imp.id(135824713441761597)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135844784417764967)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>81
,p_column_id=>wwv_flow_imp.id(135824765795761598)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135845294113764974)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>79
,p_column_id=>wwv_flow_imp.id(135824887534761599)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135845789318764979)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>60
,p_column_id=>wwv_flow_imp.id(135824998638761600)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135846279978764985)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>82
,p_column_id=>wwv_flow_imp.id(135825101189761601)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>139
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135846770969764991)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>78
,p_column_id=>wwv_flow_imp.id(135825139154761602)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135847314676764997)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>83
,p_column_id=>wwv_flow_imp.id(135825246580761603)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135847807224765003)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>57
,p_column_id=>wwv_flow_imp.id(135825425540761604)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(135848316904765012)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>86
,p_column_id=>wwv_flow_imp.id(135825484571761605)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137694404195622703)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(137342232995415291)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(142847665847465297)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>72
,p_column_id=>wwv_flow_imp.id(143013979511343568)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143016970866458988)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(143016620911458984)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143018187293458994)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(143017730629458994)
,p_is_visible=>false
,p_is_frozen=>true
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143019383629458995)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(143019023173458995)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143019988369458996)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(143019593956458995)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>184
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143020566405459002)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(143020155822458996)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>312
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143021166503459004)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(143020753171459003)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143021828630459005)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(143021404770459004)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143022358433459005)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(143021990007459005)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143023023255459006)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(143022581768459006)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143023576324459007)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(143023139928459006)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>54
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(143085530364543654)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(143050312658615524)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451175997032018125)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(451181962233023256)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>62
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(663051317451090008)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(663554198280028218)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5828462030689952599)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>75
,p_column_id=>wwv_flow_imp.id(5911359221400961994)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8205342699640146480)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(8209192475850718455)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10269461827942219834)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(9586454985508158303)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12701750341141841558)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(12796069433721358528)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21870508600115752054)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>88
,p_column_id=>wwv_flow_imp.id(22047780380190672107)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28686443464407459279)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>89
,p_column_id=>wwv_flow_imp.id(28686449378137466171)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28747666453760063358)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(28841505883748874434)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(28845455631857886104)
,p_view_id=>wwv_flow_imp.id(143015848272458978)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(28891055550454952757)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>95
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(204258780211949495)
,p_plug_name=>'Product(s) excluded from Proforma'
,p_region_name=>'ig_mld'
,p_parent_plug_id=>wwv_flow_imp.id(143014971104458850)
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-Region--hideShowIconsMath:is-collapsed:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MLD_ID,',
'       MLD_ML_ID,',
'       MLD_ENQ_ID,',
'       MLD_PRODUCT_ID,',
'       MLD_MANUFAC_ID,',
'       MLD_QUANTITY,',
'       MLD_MRP,',
'       MLD_TRADE_PRICE,',
'       MLD_PURCHASE_AMT,',
'       MLD_SCHEME_PERC,',
'       MLD_SCHEME_AMT,',
'       MLD_DISCOUNT_PERC,',
'       MLD_DISCOUNT_AMT,',
'       MLD_GST_PERC,',
'       MLD_GST_AMT,',
'       MLD_TRANS_CHARGES,',
'       MLD_BAGS_CTNS,',
'       MLD_RECOV_ON_FRT,',
'       MLD_REPACKING,',
'       MLD_EXTRA,',
'       MLD_NET_PURCHASE_VAL,',
'       MLD_VOL_FOB_AMT,',
'       MLD_VOL_FOB_EXP,',
'       MLD_PROFIT_PERC,',
'       MLD_PROFIT_AMT,',
'       MLD_INCOME_TAX,',
'       MLD_DUTY_PERC,',
'       MLD_DUTY_AMT,',
'       MLD_ECGC,',
'       MLD_BANK_COMM,',
'       MLD_INTEREST_PERC,',
'       MLD_INTEREST_AMT,',
'       MLD_EXCHANGE_RATE,',
'       MLD_FOB_RS,',
'       MLD_FOB_DOLL,',
'       MLD_COMMISSION_PERC,',
'       MLD_FOBC_AMT,',
'       MLD_FOB_DOLL_RND,',
'       MLD_OCEAN_FRT,',
'       MLD_FRT_PER_CTN,',
'       MLD_CANDF_AMT,',
'       MLD_CANDFC_AMT,',
'       MLD_CANDF_AMT_RND,',
'       MLD_INSURANCE_AMT,',
'       MLD_CIF_AMT,',
'       MLD_CIFC_AMT,',
'       MLD_CIF_AMT_RND,',
'       MLD_CNI_AMT,',
'       MLD_CNIC_AMT,',
'       MLD_CNI_AMT_RND,',
'       MLD_COSTING_TYPE,',
'       MLD_INCOME_TAX_PERC,',
'       MLD_BANK_COMM_PERC,',
'       MLD_ECGC_PERC,',
'       MLD_SGST_PERC,',
'       MLD_CGST_PERC,',
'       MLD_TOTAL_GST_PERC,',
'       MLD_INSURANCE_PERC,',
'       MLD_CREATED_BY,',
'       MLD_CREATED_ON,',
'       MLD_UPDATED_BY,',
'       MLD_UPDATED_ON,',
'       MLD_STW_RND_20,',
'       MLD_HSN_CODE,',
'       MLD_COSTING_REMARKS,',
'       MLD_CIR_DISPLAY_NAME,',
'       MLD_FOC_FLAG,                  ',
'        MLD_GROSS_WT,                 ',
'        MLD_NET_WT,                    ',
'        MLD_LENGTH ,                   ',
'        MLD_BREADTH,                   ',
'        MLD_HEIGHT,                    ',
'        MLD_CUBIC_SPACE',
' FROM',
'    V_MASTER_LIST_DETAILS, ',
'    V_ENQUIRIES_ORDERS_MST',
'WHERE MLD_ML_ID = EOM_MASTER_LIST_ID',
'AND EOM_ENQ_ID = :P23_EOM_ENQ_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P23_EOM_ENQ_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Product(s) excluded from Proforma'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204217646015949441)
,p_name=>'MLD_CIR_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CIR_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Display Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>680
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204218338499949442)
,p_name=>'MLD_COSTING_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_COSTING_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Costing Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>670
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204218926532949442)
,p_name=>'MLD_HSN_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_HSN_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'HSN Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>660
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204219535058949443)
,p_name=>'MLD_STW_RND_20'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_STW_RND_20'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>650
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204220074818949443)
,p_name=>'MLD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Updated On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>640
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204220660011949443)
,p_name=>'MLD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Updated By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>630
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204221270125949444)
,p_name=>'MLD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>620
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204221863300949444)
,p_name=>'MLD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Created By'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>610
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204222512077949445)
,p_name=>'MLD_INSURANCE_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INSURANCE_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ins. %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>600
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204223093514949445)
,p_name=>'MLD_TOTAL_GST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_TOTAL_GST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'GST %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204223657411949446)
,p_name=>'MLD_CGST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CGST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>590
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204224343873949446)
,p_name=>'MLD_SGST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_SGST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>580
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204224897784949446)
,p_name=>'MLD_ECGC_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_ECGC_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ECGC %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>330
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204225528390949447)
,p_name=>'MLD_BANK_COMM_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_BANK_COMM_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bank<br>Comm. %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>360
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204226133168949447)
,p_name=>'MLD_INCOME_TAX_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INCOME_TAX_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Income<br>Tax %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>290
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204226665565949448)
,p_name=>'MLD_COSTING_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_COSTING_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>570
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204227289900949448)
,p_name=>'MLD_CNI_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CNI_AMT_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&I Amt.<br>Rounded'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>560
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204227922439949448)
,p_name=>'MLD_CNIC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CNIC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&I Comm.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>550
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204228494389949449)
,p_name=>'MLD_CNI_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CNI_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&I<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>540
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204229075763949449)
,p_name=>'MLD_CIF_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CIF_AMT_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'CIF Amt.<br>Rounded'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>530
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204229680496949450)
,p_name=>'MLD_CIFC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CIFC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'CIF Comm.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>520
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204230302586949450)
,p_name=>'MLD_CIF_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CIF_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'CIF<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>510
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204230926637949450)
,p_name=>'MLD_INSURANCE_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INSURANCE_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ins.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>500
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204231539267949451)
,p_name=>'MLD_CANDF_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CANDF_AMT_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&F Amt.<br>Rounded'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>490
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204232120658949451)
,p_name=>'MLD_CANDFC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CANDFC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&F Comm.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>480
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204232680341949452)
,p_name=>'MLD_CANDF_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CANDF_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&F<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>470
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204233251880949452)
,p_name=>'MLD_FRT_PER_CTN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FRT_PER_CTN'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Freight/<br>Carton'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>460
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204233920128949452)
,p_name=>'MLD_OCEAN_FRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_OCEAN_FRT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ocean<br>Freight'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>450
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204234483145949453)
,p_name=>'MLD_FOB_DOLL_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOB_DOLL_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB &APP_QUOTE_IN_SYMBOL.<br> Rounded'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>440
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204235057295949453)
,p_name=>'MLD_FOBC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOBC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOBC<br>Amt. (&APP_QUOTE_IN_SYMBOL.)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>430
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204235670365949453)
,p_name=>'MLD_COMMISSION_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_COMMISSION_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Comm. %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>420
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204236320656949454)
,p_name=>'MLD_FOB_DOLL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOB_DOLL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB  (&APP_QUOTE_IN_SYMBOL.)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>410
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204236865575949454)
,p_name=>'MLD_FOB_RS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOB_RS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB  (<span class="fa fa-inr" aria-hidden="true"></span>)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>400
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204237497679949455)
,p_name=>'MLD_EXCHANGE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_EXCHANGE_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Exch.<br>Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>390
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204238046231949455)
,p_name=>'MLD_INTEREST_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INTEREST_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Int.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>380
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204238649232949455)
,p_name=>'MLD_INTEREST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INTEREST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Int. %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>370
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204239283019949456)
,p_name=>'MLD_BANK_COMM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_BANK_COMM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bank<br>Comm.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>350
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204239887593949456)
,p_name=>'MLD_ECGC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_ECGC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ECGC<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>340
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204240476618949457)
,p_name=>'MLD_DUTY_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_DUTY_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duty<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204241046914949457)
,p_name=>'MLD_DUTY_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_DUTY_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duty %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>310
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204241725341949457)
,p_name=>'MLD_INCOME_TAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INCOME_TAX'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Income<br>Tax'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>300
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204242293006949458)
,p_name=>'MLD_PROFIT_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_PROFIT_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Profit<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204242888466949458)
,p_name=>'MLD_PROFIT_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_PROFIT_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Profit %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204243507244949459)
,p_name=>'MLD_VOL_FOB_EXP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_VOL_FOB_EXP'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Vol. FOB<br>Expense'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204244057547949459)
,p_name=>'MLD_VOL_FOB_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_VOL_FOB_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Vol. FOB<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204244650474949459)
,p_name=>'MLD_NET_PURCHASE_VAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_NET_PURCHASE_VAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net<br>Purchase<br>Value'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204245311201949460)
,p_name=>'MLD_EXTRA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_EXTRA'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Extra'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204245892573949460)
,p_name=>'MLD_REPACKING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_REPACKING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Repacking'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204246540163949460)
,p_name=>'MLD_RECOV_ON_FRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_RECOV_ON_FRT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Recovery<br>On<br>Freight'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204247104991949461)
,p_name=>'MLD_BAGS_CTNS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_BAGS_CTNS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bags/<br>CTNS'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204247663897949461)
,p_name=>'MLD_TRANS_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_TRANS_CHARGES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Trans.<br>Charges'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204248314659949462)
,p_name=>'MLD_GST_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_GST_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'GST<br>Exp.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204248891644949462)
,p_name=>'MLD_GST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_GST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'GST<br>Exp. %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204249533553949462)
,p_name=>'MLD_DISCOUNT_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_DISCOUNT_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204250069021949463)
,p_name=>'MLD_DISCOUNT_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_DISCOUNT_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc. %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204250649832949463)
,p_name=>'MLD_SCHEME_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_SCHEME_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sch.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204251304532949464)
,p_name=>'MLD_SCHEME_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_SCHEME_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sch. %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204251944682949464)
,p_name=>'MLD_PURCHASE_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_PURCHASE_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Purchase<br>Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204252471795949464)
,p_name=>'MLD_TRADE_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_TRADE_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Trade<br>Price'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204253072053949465)
,p_name=>'MLD_MRP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_MRP'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'MRP'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204253700642949465)
,p_name=>'MLD_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204254253039949466)
,p_name=>'MLD_MANUFAC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_MANUFAC_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204254913307949466)
,p_name=>'MLD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(11504197761410516)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_PRODUCT_ID,P29_MANUFAC_ID,P29_COSTING_TYPE,P29_CUSTOMER_ID,P29_EOM_ENQ_ID:&MLD_PRODUCT_ID.,&MLD_MANUFAC_ID.,SYSTEM_LEVEL,&P76_ML_CUSTOMER_ID.,'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204255534882949466)
,p_name=>'MLD_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204256056817949467)
,p_name=>'MLD_ML_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_ML_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P23_ML_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(204256712103949468)
,p_name=>'MLD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_MLD_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932237319378009401)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932237490345009402)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14784737587204081474)
,p_name=>'MLD_CUBIC_SPACE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CUBIC_SPACE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cubic Space'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>750
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14784737715191081475)
,p_name=>'MLD_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_HEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Height'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>740
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14784737801104081476)
,p_name=>'MLD_BREADTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_BREADTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Breadth'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>730
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14784737895143081477)
,p_name=>'MLD_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_LENGTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Length'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>720
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14784737979301081478)
,p_name=>'MLD_NET_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_NET_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net Wt.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>710
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14784738074013081479)
,p_name=>'MLD_GROSS_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_GROSS_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Gross Wt.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>700
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(14784738172237081480)
,p_name=>'MLD_FOC_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOC_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'FOC Flag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>690
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(204258404886949494)
,p_internal_uid=>975389706927325719
,p_is_editable=>true
,p_edit_operations=>'d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function (config)',
'{',
'  //No selected any row when the page is rendered',
'  config.initialSelection = false;',
'  //Begin - Creating two buttons, removefromProforma and addtoProforma',
'  var $ = apex.jQuery,',
'    toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),',
'    toolbarGroup = toolbarData.toolbarFind("actions3");',
'',
'   ',
'  config.toolbarData = toolbarData;',
'  //End - Creating two buttons, removefromProforma and addtoProforma  ',
'  config.initActions = function (actions)',
'  {',
'      ',
'   actions.add({',
'            name: "movetoProforma",',
'            // Most places in this app I don''t bother to define a message that can be localized',
'            // but here I do. Note using labelKey rather than label.',
'            //labelKey: "CALCULATE_CUBIC",',
'           labelKey: "Move to Proforma",',
'            icon: "fa fa-box-arrow-in-north fa-anim-vertical-shake",',
'            action: fnmovetoProforma     ',
'            });',
'   ',
'  }',
' ',
'    ',
'    function fnmovetoProforma(event, focusElement)',
'  {',
'    var i, records, model, record,',
'      view = apex.region("ig_mld").widget().interactiveGrid("getCurrentView");',
'    var selectedIds = [];',
'     // alert(''1'');',
'    if (view.supports.edit)',
'    {',
'      //  alert(''2'');',
'      model = view.model;',
'      records = view.getSelectedRecords();',
'      if (records.length > 0)',
'      {',
'        for (i = 0; i < records.length; i++)',
'        {',
'          record = records[i];            ',
'          selectedIds.push(records[i][0]);',
'           // alert(''3'' + records[i][0]);',
'        }',
'          //alert($v(''P23_EOM_ENQ_ID''));',
'          // Invoke Ajax Callback Process',
'          apex.server.process ("AJAX_MOVE_PRODUCTS", ',
'                               {x01: JSON.stringify(selectedIds),x02: $v(''P23_EOM_ENQ_ID'')},',
'                               {dataType: ''text'', ',
'                                success: function( pData )',
'                                {        ',
'                                    //Refresh IG - Favorite Employee (Optional)                                     ',
'                                    //apex.region("product_details").refresh();',
'                                    //apex.region("ig_mld").refresh();',
'                                     apex.submit('''');',
'                                }',
'                               }',
'                              );',
'        ',
'      }',
'    }',
'  }',
'  ',
'        // The grid uses traditional paging and the following option allows selecting rows on multiple pages ',
'    config.defaultGridViewOptions = {',
'        persistSelection: true',
'    };  ',
'    ',
'  return config;',
'}',
''))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(204257955241949493)
,p_interactive_grid_id=>wwv_flow_imp.id(204258404886949494)
,p_static_id=>'123108'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(204257895343949493)
,p_report_id=>wwv_flow_imp.id(204257955241949493)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204217320876949441)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(204217646015949441)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204217920399949442)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(204218338499949442)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>205
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204218475022949442)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(204218926532949442)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204219093714949442)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(204219535058949443)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204219681398949443)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>70
,p_column_id=>wwv_flow_imp.id(204220074818949443)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204220267596949443)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>69
,p_column_id=>wwv_flow_imp.id(204220660011949443)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204220915367949444)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>68
,p_column_id=>wwv_flow_imp.id(204221270125949444)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204221460527949444)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>67
,p_column_id=>wwv_flow_imp.id(204221863300949444)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204222145159949444)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(204222512077949445)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204222702473949445)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(204223093514949445)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204223275108949445)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>56
,p_column_id=>wwv_flow_imp.id(204223657411949446)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204223874453949446)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(204224343873949446)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204224496173949446)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(204224897784949446)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204225076363949447)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(204225528390949447)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204225668508949447)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(204226133168949447)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204226247278949447)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(204226665565949448)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204226942357949448)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>66
,p_column_id=>wwv_flow_imp.id(204227289900949448)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204227456882949448)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>65
,p_column_id=>wwv_flow_imp.id(204227922439949448)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204228060662949449)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(204228494389949449)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204228690141949449)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>60
,p_column_id=>wwv_flow_imp.id(204229075763949449)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204229343215949449)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>59
,p_column_id=>wwv_flow_imp.id(204229680496949450)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204229940942949450)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>58
,p_column_id=>wwv_flow_imp.id(204230302586949450)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204230482148949450)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(204230926637949450)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204231101000949451)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>54
,p_column_id=>wwv_flow_imp.id(204231539267949451)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204231656989949451)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>53
,p_column_id=>wwv_flow_imp.id(204232120658949451)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204232253605949451)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>52
,p_column_id=>wwv_flow_imp.id(204232680341949452)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204232872476949452)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>51
,p_column_id=>wwv_flow_imp.id(204233251880949452)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204233520404949452)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>50
,p_column_id=>wwv_flow_imp.id(204233920128949452)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204234135136949452)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(204234483145949453)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204234732777949453)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(204235057295949453)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204235263158949453)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(204235670365949453)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204235933533949454)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(204236320656949454)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204236468476949454)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(204236865575949454)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204237117081949454)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(204237497679949455)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204237686334949455)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(204238046231949455)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204238329379949455)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(204238649232949455)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204238861977949456)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(204239283019949456)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204239498925949456)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(204239887593949456)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204240068007949456)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(204240476618949457)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204240744856949457)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(204241046914949457)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204241283670949457)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(204241725341949457)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204241880605949457)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(204242293006949458)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204242538572949458)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(204242888466949458)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204243102232949458)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(204243507244949459)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204243676024949459)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(204244057547949459)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204244298709949459)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(204244650474949459)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204244922923949459)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(204245311201949460)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204245531818949460)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(204245892573949460)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204246048539949460)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(204246540163949460)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204246668717949461)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(204247104991949461)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204247278470949461)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(204247663897949461)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204247939323949461)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(204248314659949462)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204248471129949462)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(204248891644949462)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>52
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204249071769949462)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(204249533553949462)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204249709677949463)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(204250069021949463)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>57
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204250256674949463)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(204250649832949463)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204250900014949463)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(204251304532949464)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>52
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204251509655949464)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(204251944682949464)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204252133955949464)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(204252471795949464)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204252698901949464)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(204253072053949465)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204253265553949465)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(204253700642949465)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204253926260949465)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(204254253039949466)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204254523298949466)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(204254913307949466)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>384
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204255108596949466)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(204255534882949466)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204255740282949467)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(204256056817949467)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(204256331264949467)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(204256712103949468)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(931815232601352124)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(932237490345009402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14733133578414589605)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>77
,p_column_id=>wwv_flow_imp.id(14784737587204081474)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14733134110740589607)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>76
,p_column_id=>wwv_flow_imp.id(14784737715191081475)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14733134572930589608)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>75
,p_column_id=>wwv_flow_imp.id(14784737801104081476)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14733135059715589610)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>74
,p_column_id=>wwv_flow_imp.id(14784737895143081477)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14733135632834589611)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>73
,p_column_id=>wwv_flow_imp.id(14784737979301081478)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14733136076891589614)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>72
,p_column_id=>wwv_flow_imp.id(14784738074013081479)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(14733136627675589619)
,p_view_id=>wwv_flow_imp.id(204257895343949493)
,p_display_seq=>71
,p_column_id=>wwv_flow_imp.id(14784738172237081480)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1142140154516692577)
,p_plug_name=>'Master List -Never'
,p_parent_plug_id=>wwv_flow_imp.id(143014971104458850)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    mld_id,',
'    mld_ml_id,',
'    mld_enq_id,',
'    mld_product_id,',
'    mld_manufac_id,',
'    mld_quantity,',
'    mld_mrp,',
'    mld_trade_price,',
'    mld_purchase_amt,',
'    mld_scheme_perc,',
'    mld_scheme_amt,',
'    mld_discount_perc,',
'    mld_discount_amt,',
'    mld_gst_perc,',
'    mld_gst_amt,',
'    mld_trans_charges,',
'    mld_bags_ctns,',
'    mld_recov_on_frt,',
'    mld_repacking,',
'    mld_extra,',
'    mld_net_purchase_val,',
'    mld_vol_fob_amt,',
'    mld_vol_fob_exp,',
'    mld_profit_perc,',
'    mld_profit_amt,',
'    mld_income_tax,',
'    mld_duty_perc,',
'    mld_duty_amt,',
'    mld_ecgc,',
'    mld_bank_comm,',
'    mld_interest_perc,',
'    mld_interest_amt,',
'    mld_exchange_rate,',
'    mld_fob_rs,',
'    mld_fob_doll,',
'    mld_commission_perc,',
'    mld_fobc_amt,',
'    mld_fob_doll_rnd,',
'    mld_ocean_frt,',
'    mld_frt_per_ctn,',
'    mld_candf_amt,',
'    mld_candfc_amt,',
'    mld_candf_amt_rnd,',
'    mld_insurance_amt,',
'    mld_cif_amt,',
'    mld_cifc_amt,',
'    mld_cif_amt_rnd,',
'    mld_cni_amt,',
'    mld_cnic_amt,',
'    mld_cni_amt_rnd,',
'    mld_costing_type,',
'    mld_income_tax_perc,',
'    mld_bank_comm_perc,',
'    mld_ecgc_perc,',
'    mld_sgst_perc,',
'    mld_cgst_perc,',
'    mld_total_gst_perc,',
'    mld_insurance_perc,',
'    mld_created_by,',
'    mld_created_on,',
'    mld_updated_by,',
'    mld_updated_on,',
'    mld_stw_rnd_20,',
'    mld_hsn_code,',
'    mld_costing_remarks,',
'    mld_cir_display_name,',
'    mld_foc_flag',
'FROM',
'    V_MASTER_LIST_DETAILS, ',
'    V_ENQUIRIES_ORDERS_MST',
'WHERE MLD_ML_ID = EOM_MASTER_LIST_ID',
'AND EOM_ENQ_ID = :P23_EOM_ENQ_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P23_EOM_ENQ_ID'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Master List -Never'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932238165807009409)
,p_name=>'MLD_FOC_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOC_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>670
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932238303797009410)
,p_name=>'MLD_CIR_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CIR_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mld Cir Display Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>660
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932238383301009411)
,p_name=>'MLD_COSTING_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_COSTING_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mld Costing Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>650
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932238431499009412)
,p_name=>'MLD_HSN_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_HSN_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mld Hsn Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>640
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932238517049009363)
,p_name=>'MLD_STW_RND_20'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_STW_RND_20'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Stw Rnd 20'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>630
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932238676336009364)
,p_name=>'MLD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Mld Updated On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>620
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932238729771009365)
,p_name=>'MLD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mld Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>610
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932238892476009366)
,p_name=>'MLD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Mld Created On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>600
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932238969849009367)
,p_name=>'MLD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mld Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>590
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932239031611009368)
,p_name=>'MLD_INSURANCE_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INSURANCE_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Insurance Perc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>580
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932239168067009369)
,p_name=>'MLD_TOTAL_GST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_TOTAL_GST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Total Gst Perc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>570
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932239272701009370)
,p_name=>'MLD_CGST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CGST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Cgst Perc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>560
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932239358787009371)
,p_name=>'MLD_SGST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_SGST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Sgst Perc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>550
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932239499005009372)
,p_name=>'MLD_ECGC_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_ECGC_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Ecgc Perc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>540
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932239525468009373)
,p_name=>'MLD_BANK_COMM_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_BANK_COMM_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Bank Comm Perc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>530
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932239672542009374)
,p_name=>'MLD_INCOME_TAX_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INCOME_TAX_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Income Tax Perc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>520
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932239759168009375)
,p_name=>'MLD_COSTING_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_COSTING_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mld Costing Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>510
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932239902317009376)
,p_name=>'MLD_CNI_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CNI_AMT_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Cni Amt Rnd'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>500
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932239992737009377)
,p_name=>'MLD_CNIC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CNIC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Cnic Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>490
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932240082121009378)
,p_name=>'MLD_CNI_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CNI_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Cni Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>480
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932240146575009379)
,p_name=>'MLD_CIF_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CIF_AMT_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Cif Amt Rnd'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>470
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932240229647009380)
,p_name=>'MLD_CIFC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CIFC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Cifc Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>460
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932240317402009381)
,p_name=>'MLD_CIF_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CIF_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Cif Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>450
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932240437215009382)
,p_name=>'MLD_INSURANCE_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INSURANCE_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Insurance Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>440
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932240581442009383)
,p_name=>'MLD_CANDF_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CANDF_AMT_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Candf Amt Rnd'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>430
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932240624106009384)
,p_name=>'MLD_CANDFC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CANDFC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Candfc Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>420
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932240716832009385)
,p_name=>'MLD_CANDF_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CANDF_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Candf Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>410
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932240841143009386)
,p_name=>'MLD_FRT_PER_CTN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FRT_PER_CTN'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Frt Per Ctn'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>400
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932240964599009387)
,p_name=>'MLD_OCEAN_FRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_OCEAN_FRT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Ocean Frt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>390
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932241054205009388)
,p_name=>'MLD_FOB_DOLL_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOB_DOLL_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Fob Doll Rnd'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>380
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932241182784009389)
,p_name=>'MLD_FOBC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOBC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Fobc Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>370
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932241230254009390)
,p_name=>'MLD_COMMISSION_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_COMMISSION_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Commission Perc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>360
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932241350618009391)
,p_name=>'MLD_FOB_DOLL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOB_DOLL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Fob Doll'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>350
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932241412403009392)
,p_name=>'MLD_FOB_RS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOB_RS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Fob Rs'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>340
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932241544602009393)
,p_name=>'MLD_EXCHANGE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_EXCHANGE_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Exchange Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>330
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932241641157009394)
,p_name=>'MLD_INTEREST_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INTEREST_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Interest Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>320
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932241770608009395)
,p_name=>'MLD_INTEREST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INTEREST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Interest Perc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>310
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932241903930009396)
,p_name=>'MLD_BANK_COMM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_BANK_COMM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bank<br>Comm.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>300
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932241957889009397)
,p_name=>'MLD_ECGC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_ECGC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ECGC %'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>290
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932242100622009398)
,p_name=>'MLD_DUTY_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_DUTY_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duty<br>Amt.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>280
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932242131696009399)
,p_name=>'MLD_DUTY_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_DUTY_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duty %'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>270
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932242308207009400)
,p_name=>'MLD_INCOME_TAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INCOME_TAX'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Income<br>Tax'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>260
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932242403614009401)
,p_name=>'MLD_PROFIT_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_PROFIT_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Profit<br>Amt.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>250
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932242452314009402)
,p_name=>'MLD_PROFIT_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_PROFIT_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Profit %'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>240
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932242531141009403)
,p_name=>'MLD_VOL_FOB_EXP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_VOL_FOB_EXP'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Vol. FOB<br>Expense'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>230
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932242710594009404)
,p_name=>'MLD_VOL_FOB_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_VOL_FOB_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Vol. FOB<br>Amt.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932242781394009405)
,p_name=>'MLD_NET_PURCHASE_VAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_NET_PURCHASE_VAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net<br>Purchase<br>Value'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932242911379009406)
,p_name=>'MLD_EXTRA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_EXTRA'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Extra'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932242938140009407)
,p_name=>'MLD_REPACKING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_REPACKING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Repacking'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932243019539009408)
,p_name=>'MLD_RECOV_ON_FRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_RECOV_ON_FRT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Recovery<br>On<br>Freight'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932243128362009409)
,p_name=>'MLD_BAGS_CTNS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_BAGS_CTNS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bags/ CTNS'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
end;
/
begin
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932243249794009410)
,p_name=>'MLD_TRANS_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_TRANS_CHARGES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Trans.<br>Charges'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932243404784009411)
,p_name=>'MLD_GST_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_GST_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'GST Amt.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(932243482043009412)
,p_name=>'MLD_GST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_GST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'GST %'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1142138759568692563)
,p_name=>'MLD_DISCOUNT_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_DISCOUNT_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc.<br>Amt.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1142138849306692564)
,p_name=>'MLD_DISCOUNT_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_DISCOUNT_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc. %'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1142138945917692565)
,p_name=>'MLD_SCHEME_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_SCHEME_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sch.<br>Amt.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1142139078269692566)
,p_name=>'MLD_SCHEME_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_SCHEME_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sch. %'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1142139157368692567)
,p_name=>'MLD_PURCHASE_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_PURCHASE_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Purchase<br>Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1142139297537692568)
,p_name=>'MLD_TRADE_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_TRADE_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Trade<br>Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1142139388985692569)
,p_name=>'MLD_MRP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_MRP'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'MRP'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1142139499953692570)
,p_name=>'MLD_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1142139543868692571)
,p_name=>'MLD_MANUFAC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_MANUFAC_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1142139622519692572)
,p_name=>'MLD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(11504197761410516)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1142139794051692573)
,p_name=>'MLD_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1142139850439692574)
,p_name=>'MLD_ML_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_ML_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1142139967946692575)
,p_name=>'MLD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1142140084619692576)
,p_internal_uid=>37508027194582637
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(932232839914006454)
,p_interactive_grid_id=>wwv_flow_imp.id(1142140084619692576)
,p_static_id=>'123107'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(932232780726006453)
,p_report_id=>wwv_flow_imp.id(932232839914006454)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932199453816006350)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>67
,p_column_id=>wwv_flow_imp.id(932238165807009409)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932199979727006352)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>66
,p_column_id=>wwv_flow_imp.id(932238303797009410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932200415443006353)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>65
,p_column_id=>wwv_flow_imp.id(932238383301009411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932200998737006355)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>64
,p_column_id=>wwv_flow_imp.id(932238431499009412)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932201344997006356)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(932238517049009363)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932201852742006358)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>62
,p_column_id=>wwv_flow_imp.id(932238676336009364)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932202337199006359)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(932238729771009365)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932202878863006361)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>60
,p_column_id=>wwv_flow_imp.id(932238892476009366)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932203386113006362)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>59
,p_column_id=>wwv_flow_imp.id(932238969849009367)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932203816490006364)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>58
,p_column_id=>wwv_flow_imp.id(932239031611009368)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932204405258006365)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>57
,p_column_id=>wwv_flow_imp.id(932239168067009369)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932204882021006367)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>56
,p_column_id=>wwv_flow_imp.id(932239272701009370)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932205338414006368)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(932239358787009371)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932205828043006369)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>54
,p_column_id=>wwv_flow_imp.id(932239499005009372)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932206406361006371)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>53
,p_column_id=>wwv_flow_imp.id(932239525468009373)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932206841325006372)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>52
,p_column_id=>wwv_flow_imp.id(932239672542009374)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932207331571006374)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>51
,p_column_id=>wwv_flow_imp.id(932239759168009375)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932207910743006375)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>50
,p_column_id=>wwv_flow_imp.id(932239902317009376)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932208383447006377)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(932239992737009377)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932208834085006378)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(932240082121009378)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932209334362006379)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(932240146575009379)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932209835640006381)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(932240229647009380)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932210336771006382)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(932240317402009381)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932210903317006384)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(932240437215009382)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932211385628006385)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(932240581442009383)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932211845588006387)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(932240624106009384)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932212367801006388)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(932240716832009385)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932212859327006389)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(932240841143009386)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932213327374006391)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(932240964599009387)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932213860781006392)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(932241054205009388)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932214324476006394)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(932241182784009389)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932214877389006395)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(932241230254009390)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932215366896006396)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(932241350618009391)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932215831456006398)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(932241412403009392)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932216407748006399)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(932241544602009393)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932216902292006401)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(932241641157009394)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932217384178006402)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(932241770608009395)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932217893258006404)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(932241903930009396)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932218336582006405)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(932241957889009397)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932218896498006407)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(932242100622009398)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932219339152006408)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(932242131696009399)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932219868883006409)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(932242308207009400)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932220386977006411)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(932242403614009401)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932220848821006412)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(932242452314009402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932221344713006414)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(932242531141009403)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932221866473006415)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(932242710594009404)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932222345019006416)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(932242781394009405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932222879852006418)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(932242911379009406)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932223410300006419)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(932242938140009407)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932223834902006421)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(932243019539009408)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932224407984006422)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(932243128362009409)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932224868137006424)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(932243249794009410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932225316995006425)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(932243404784009411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932225843449006427)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(932243482043009412)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932226347908006428)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1142138759568692563)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932226911765006430)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1142138849306692564)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932227317025006431)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1142138945917692565)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932227882004006433)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1142139078269692566)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932228392528006434)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1142139157368692567)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932228895358006436)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1142139297537692568)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932229369456006437)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1142139388985692569)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932229870836006438)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1142139499953692570)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932230348524006440)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1142139543868692571)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932230881774006441)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1142139622519692572)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932231407027006443)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1142139794051692573)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932231911375006445)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1142139850439692574)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(932232328411006448)
,p_view_id=>wwv_flow_imp.id(932232780726006453)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1142139967946692575)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(250452959606397369)
,p_plug_name=>'PO Details'
,p_parent_plug_id=>wwv_flow_imp.id(81051487159893975)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POM_ID, ',
'supm_name,',
'ST_NAME,',
'--eom_order_date,',
'POM_DL_ID,',
'POM_BL_ID,',
'POM_DELIVERY_DATE,',
'POM_DISCOUNT,',
'POM_CREATED_BY,',
'POM_CREATED_ON,',
'POM_UPDATED_BY,',
'POM_UPDATED_ON,',
'--nvl(EOM_INVOICE_NO,EOM_ENQ_NO) EOM_INVOICE_NO,',
'--EOM_ENQ_NO,',
'case when pom_status =''RJ'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_RJ /*#ED6647*/',
'			when pom_status =''IP'' and EOM_ORD_ID is not null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when pom_status =''OR'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_POI/*#0000FF #267DB3''*/',
'			when pom_status =''PDL'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_PR/*#0000FF #267DB3''*/',
'			when pom_status =''DL'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_RC/*#0000FF #267DB3''*/',
'	   end color_status_1',
'       ,case ',
'		    when pom_status =''RJ'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_RJ /*#ED6647*/',
'			when pom_status =''IP'' and EOM_ORD_ID is not null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when pom_status =''OR'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_PR/*#0000FF #267DB3''*/',
'			when pom_status =''PDL'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_RC/*#0000FF #267DB3''*/',
'			when pom_status =''DL'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_SHP/*#0000FF #267DB3''*/',
'	   end color_status_2,',
'       --pom_status,',
'       nvl(pom_no,POM_ID)pom_no  --Added by Rahul 18-Nov-24 for Satkamal',
'	   /*colors mapped to Order_Status  as follows*',
'	   Partially Delivered	PDL		Partially Received PR',
'	   Delivered  			DL		Received RC',
'	   Ordered				OR		PO Issued POI',
'	   */',
'from V_PURCHASE_ORDER_MASTER,V_ENQUIRIES_ORDERS_MST,V_SUPPLIER_MASTER,V_SETUP_TABLE',
'where   eom_type = ''ORDER''',
'and eom_ord_id = POM_ORD_ID and POM_SUPPLIER_ID = supm_id',
'and ST_CODE = pom_status',
'and st_type = ''PO_STATUS''',
'and POM_ENQ_ID = :P23_EOM_ENQ_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P23_EOM_ENQ_ID'
,p_plug_required_role=>'!'||wwv_flow_imp.id(102149068872733649)
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P23_EOM_ORD_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101995775557633491)
,p_name=>'POM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'PO#'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:72:P72_POM_ID:&POM_ID.'
,p_link_text=>'&POM_NO.'
,p_link_attributes=>'class="t-Button t-Button--stretch" style ="background-image: linear-gradient(to right, &COLOR_STATUS_1. ,&COLOR_STATUS_2.);color:#000000"  target="_blank"'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101996020383633493)
,p_name=>'COLOR_STATUS_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLOR_STATUS_2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101996062915633494)
,p_name=>'COLOR_STATUS_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLOR_STATUS_1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101996540797633498)
,p_name=>'POM_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Updated On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101996590934633499)
,p_name=>'POM_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101996750642633500)
,p_name=>'POM_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Created On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101996799140633501)
,p_name=>'POM_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101996875395633502)
,p_name=>'POM_DISCOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_DISCOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Discount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101996967858633503)
,p_name=>'POM_DELIVERY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_DELIVERY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Delivery Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101997086592633504)
,p_name=>'POM_BL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_BL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101997225220633505)
,p_name=>'POM_DL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_DL_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101997394867633507)
,p_name=>'ST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101997550774633508)
,p_name=>'SUPM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Supplier'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101997674880633510)
,p_name=>'POM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(102006017018634893)
,p_internal_uid=>582882040868934433
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(101993342057626933)
,p_interactive_grid_id=>wwv_flow_imp.id(102006017018634893)
,p_static_id=>'5828948'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(101993099874626931)
,p_report_id=>wwv_flow_imp.id(101993342057626933)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101975606966626845)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(101995775557633491)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>170.109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101977415318626852)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(101996020383633493)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101978343835626856)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(101996062915633494)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101981873201626869)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(101996540797633498)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101982783620626872)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(101996590934633499)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101983738043626876)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(101996750642633500)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101984602606626880)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(101996799140633501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101985498187626883)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(101996875395633502)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101986451647626887)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(101996967858633503)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101987273194626891)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(101997086592633504)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101988202528626894)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(101997225220633505)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101989987161626901)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(101997394867633507)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101990841453626905)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(101997550774633508)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101992574760626924)
,p_view_id=>wwv_flow_imp.id(101993099874626931)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(101997674880633510)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101995718764633490)
,p_plug_name=>'PO Product Details'
,p_parent_plug_id=>wwv_flow_imp.id(250452959606397369)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POD_ID,',
'POD_POM_ID,',
'POD_PRODUCT_ID,',
'POD_RATE,',
'POD_ORDERED_QUANTITY,',
'pom_ord_id,',
'POM_ENQ_ID,',
'POD_CREATED_BY,',
'POD_CREATED_ON,',
'POD_UPDATED_BY,',
'POD_UPDATED_ON,',
'pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT pm_name,',
'POD_DELIVERED_QUANTITY ,',
'case when nvl(POD_DELIVERED_QUANTITY,0) >= nvl(POD_ORDERED_QUANTITY,0)  then :APP_COLOR_ORD_RC',
'     --    when nvl(POD_DELIVERED_QUANTITY,0) < nvl(POD_ORDERED_QUANTITY,0) and nvl(POD_DELIVERED_QUANTITY,0)!= 0 then :APP_COLOR_ORD_PR ',
'',
'end color_status_1',
',case when nvl(POD_DELIVERED_QUANTITY,0) >= nvl(POD_ORDERED_QUANTITY,0)  then :APP_COLOR_ORD_RC',
'  --       when nvl(POD_DELIVERED_QUANTITY,0) < nvl(POD_ORDERED_QUANTITY,0) and nvl(POD_DELIVERED_QUANTITY,0)!= 0  then :APP_COLOR_ORD_PR',
'end color_status_2',
',case when nvl(POD_DELIVERED_QUANTITY,0) >= nvl(POD_ORDERED_QUANTITY,0)  then',
'''style=background-image:linear-gradient(90deg,'' || :APP_COLOR_ORD_RC ||'','' || :APP_COLOR_ORD_RC ||'');color:#000!important'' ',
'else null',
'end CSS_STYLE,',
'--nvl(POD_RATE,0) * nvl(POD_ORDERED_QUANTITY,0) rate_order_qty_total,  --Commented by Rahul on 12-Nov-24 and added unitwise rate',
'--nvl(POD_RATE,0) * nvl(POD_DELIVERED_QUANTITY,0) rate_del_qty_total,',
'--nvl(FN_Convert_PO_AMT(eod_id,POD_CALC_UNIT_RATE_RND,''TOTAL_AMT'',POD_RATE_UNIT),0) * nvl(POD_ORDERED_QUANTITY,0) rate_order_qty_total,',
'--nvl(FN_Convert_PO_AMT(eod_id,POD_CALC_UNIT_RATE_RND,''TOTAL_AMT'',POD_RATE_UNIT),0) * nvl(POD_DELIVERED_QUANTITY,0) rate_del_qty_total,',
'pod_verified',
'--Added by Rahul on 12-Nov-24 start',
'--,fn_convert_amt_unitwise(eod_id,POD_RATE) Unit_rate  ',
',nvl(eod_costing_unit,''CTN'') product_costing_unit',
'--Added by Rahul on 12-Nov-24 end',
'/* Added by Rahul on 24-Nov-24 for Satkamal PO unitwise rate start*/',
',POD_RATE_UNIT',
',POD_CALC_UNIT_RATE',
',POD_CALC_UNIT_RATE_RND',
',POD_PRODUCT_DESCRIPTION',
',eod_id',
'/* Added by Rahul on 24-Nov-24 for Satkamal PO unitwise rate end*/',
',POD_QTY_UNITWISE --Added by Rahul on 11-Apr-25 for SKE',
'FROM V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS ,V_PRODUCT_MASTER',
',V_ENQUIRIES_ORDERS_DETAILS --Added by Rahul on 12-Nov-24',
'WHERE pom_id = pod_pom_id',
'and POD_PRODUCT_ID = pm_id',
'--AND   POD_POM_ID = :P72_POM_ID',
'--Added by Rahul on 12-Nov-24  start',
'and pom_enq_id = eod_enq_id',
'and pod_product_id = eod_product_id',
'--Added by Rahul on 12-Nov-24 end',
'and pm_id = eod_product_id',
'and eod_enq_id = :P23_EOM_ENQ_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(250452959606397369)
,p_ajax_items_to_submit=>'P23_EOM_ENQ_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101014926102017713)
,p_name=>'POD_QTY_UNITWISE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_QTY_UNITWISE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Unitwise<br>Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101014975365017714)
,p_name=>'EOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101015090824017715)
,p_name=>'POD_PRODUCT_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_PRODUCT_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101015157928017716)
,p_name=>'POD_CALC_UNIT_RATE_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_CALC_UNIT_RATE_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('Calc. Unit Rate Rnd (\20B9)')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>230
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101015329000017717)
,p_name=>'POD_CALC_UNIT_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_CALC_UNIT_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('Calc. Unit Rate (\20B9)')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>220
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101015430723017718)
,p_name=>'POD_RATE_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_RATE_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'PO Rate Display Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101015468098017719)
,p_name=>'PRODUCT_COSTING_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_COSTING_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Costing Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101015607065017720)
,p_name=>'POD_VERIFIED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_VERIFIED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101015947202017723)
,p_name=>'CSS_STYLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CSS_STYLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101015983641017724)
,p_name=>'COLOR_STATUS_2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLOR_STATUS_2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101016077371017725)
,p_name=>'COLOR_STATUS_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLOR_STATUS_1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101994280281633476)
,p_name=>'POD_DELIVERED_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_DELIVERED_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Delivered<br>Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101994440645633477)
,p_name=>'PM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101994466148633478)
,p_name=>'POD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Updated On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101994653256633479)
,p_name=>'POD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101994736843633480)
,p_name=>'POD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Created On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101994788851633481)
,p_name=>'POD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101994872017633482)
,p_name=>'POM_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101995011951633483)
,p_name=>'POM_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POM_ORD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101995087770633484)
,p_name=>'POD_ORDERED_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_ORDERED_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ordered<br>Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101995164637633485)
,p_name=>'POD_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('Rate (\20B9)')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101995319482633486)
,p_name=>'POD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101995394645633487)
,p_name=>'POD_POM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_POM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(101997674880633510)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(101995492076633488)
,p_name=>'POD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(101995578733633489)
,p_internal_uid=>582892479153935837
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(101010482525010355)
,p_interactive_grid_id=>wwv_flow_imp.id(101995578733633489)
,p_static_id=>'5838776'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(101010290479010353)
,p_report_id=>wwv_flow_imp.id(101010482525010355)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100987473975010189)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(101014926102017713)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100988369669010194)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(101014975365017714)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100989330556010198)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(101015090824017715)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>188
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100990107065010204)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(101015157928017716)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100991027210010208)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(101015329000017717)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100991902612010213)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(101015430723017718)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>138
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100992827443010217)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(101015468098017719)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100993711394010222)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(101015607065017720)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100996454996010237)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(101015947202017723)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100997336777010242)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(101015983641017724)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100998212447010249)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(101016077371017725)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100999102497010254)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(101994280281633476)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(100999986007010258)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(101994440645633477)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>271
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101000909365010263)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(101994466148633478)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101001804325010268)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(101994653256633479)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101002742912010276)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(101994736843633480)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101003590099010281)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(101994788851633481)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101004477219010286)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(101994872017633482)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101005425032010292)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(101995011951633483)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101006344283010299)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(101995087770633484)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101007105162010305)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(101995164637633485)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101008046202010313)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(101995319482633486)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101008901453010319)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(101995394645633487)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101009783521010337)
,p_view_id=>wwv_flow_imp.id(101010290479010353)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(101995492076633488)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6952182783786567352)
,p_plug_name=>' History'
,p_region_name=>'history_details'
,p_parent_plug_id=>wwv_flow_imp.id(81051487159893975)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EODH_ID',
'        ,EODH_ENQ_ID',
'        ,EODH_MANUFAC_ID',
'        ,EODH_PRODUCT_ID',
'        ,EODH_QUANTITY',
'        ,EODH_MRP',
'        ,EODH_TRADE_PRICE',
'        ,EODH_PURCHASE_AMT',
'        ,EODH_SCHEME_PERC',
'        ,EODH_SCHEME_AMT',
'        ,EODH_DISCOUNT_PERC',
'        ,EODH_DISCOUNT_AMT',
'        ,EODH_GST_PERC',
'        ,EODH_GST_AMT',
'        ,EODH_TRANS_CHARGES',
'        ,EODH_BAGS_CTNS',
'        ,EODH_RECOV_ON_FRT',
'        ,EODH_REPACKING',
'        ,EODH_EXTRA',
'        ,EODH_NET_PURCHASE_VAL',
'        ,EODH_VOL_FOB_AMT',
'        ,EODH_VOL_FOB_EXP',
'        ,EODH_PROFIT_PERC',
'        ,EODH_PROFIT_AMT',
'        ,EODH_INCOME_TAX',
'        ,EODH_DUTY_PERC',
'        ,EODH_DUTY_AMT',
'        ,EODH_ECGC',
'        ,EODH_BANK_COMM',
'        ,EODH_INTEREST_PERC',
'        ,EODH_INTEREST_AMT',
'        ,EODH_EXCHANGE_RATE',
'        ,EODH_FOB_RS',
'        ,EODH_FOB_DOLL',
'        ,EODH_COMMISSION_PERC',
'        ,EODH_FOBC_AMT',
'        ,EODH_FOB_DOLL_RND',
'        ,EODH_OCEAN_FRT',
'        ,EODH_FRT_PER_CTN',
'        ,EODH_CANDF_AMT',
'        ,EODH_CANDFC_AMT',
'        ,EODH_CANDF_AMT_RND',
'        ,EODH_INSURANCE_AMT',
'        ,EODH_CIF_AMT',
'        ,EODH_CIFC_AMT',
'        ,EODH_CIF_AMT_RND',
'        ,EODH_CNI_AMT',
'        ,EODH_CNIC_AMT',
'        ,EODH_CNI_AMT_RND',
'        ,EODH_COSTING_TYPE',
'        ,EODH_INCOME_TAX_PERC',
'        ,EODH_BANK_COMM_PERC',
'        ,EODH_ECGC_PERC',
'        ,EODH_SGST_PERC',
'        ,EODH_CGST_PERC',
'        ,EODH_TOTAL_GST_PERC',
'        ,EODH_INSURANCE_PERC',
'        ,EODH_EOD_CREATED_BY',
'        ,EODH_EOD_CREATED_ON',
'        ,EODH_EOD_UPDATED_BY',
'        ,EODH_EOD_UPDATED_ON',
'        ,EODH_GROUP_ID',
'        ,EODH_STW_RND_20',
'        ,EODH_HSN_CODE',
'        ,EODH_COSTING_REMARKS',
'        ,EODH_PRODUCT_STATUS',
'        ,EODH_CIR_DISPLAY_NAME',
'        ,EODH_EOD_ID',
'        ,EODH_ACTION',
'        ,EODH_CREATED_BY',
'        ,EODH_CREATED_ON',
'        ,EODH_FOC_FLAG',
'        ,EODH_GROSS_WT',
'        ,EODH_NET_WT',
'        ,EODH_LENGTH',
'        ,EODH_BREADTH',
'        ,EODH_HEIGHT',
'        ,EODH_CUBIC_SPACE',
'        ,EODH_VERIFIED',
'        ,pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT pm_name',
'          ,DECODE(NVL(EODH_ACTION, ''INSERT''), ''DELETE'', ''fa fa-times-circle'',''UPDATE'', ''fa fa-pencil-square'',''fa fa-plus-square'') icon',
'          ,DECODE(NVL(EODH_ACTION, ''INSERT''), ''DELETE'', ''red'',''UPDATE'', ''blue'',''green'') icon_color',
'from V_ENQUIRIES_ORDERS_DETAILS_HISTORY  ,',
'                /* Commented by Ranu on 20July2021',
'                (select max(eodh_id) eodh_id,max(eodh_action) eodh_action, eodh_eod_id, eodh_product_id,eodh_enq_id',
'                from V_ENQUIRIES_ORDERS_DETAILS_HISTORY',
'                where eodh_enq_id = :P23_EOM_ENQ_ID ',
'                --and to_date(eodh_created_on,''DD-MON-YYYY HH:MIPM'') between to_date(:P23_FROM_DATE,''DD-MON-YYYY HH:MIPM'') ',
'                 --and to_date(:P23_TO_DATE,''DD-MON-YYYY HH:MIPM'')',
'                 and eodh_created_on between to_date(:P23_FROM_DATE,''DD-MON-YYYY HH24:MI:SS'') ',
'                 and to_date(:P23_TO_DATE,''DD-MON-YYYY HH24:MI:SS'')',
'                group by eodh_eod_id, eodh_product_id,eodh_enq_id) b,*/',
'                V_PRODUCT_MASTER',
'where eodh_product_id = pm_id',
'and eodh_enq_id = :P23_EOM_ENQ_ID ',
'and eodh_created_on between to_date(:P23_FROM_DATE,''DD-MON-YYYY HH24:MI:SS'') ',
'                 and to_date(:P23_TO_DATE,''DD-MON-YYYY HH24:MI:SS'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P23_EOM_ENQ_ID,P23_FROM_DATE,P23_TO_DATE'
,p_plug_required_role=>'!'||wwv_flow_imp.id(102149068872733649)
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P23_EOM_ENQ_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>' History'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6952182649074567351)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'HTML:CSV:XLSX'
,p_enable_mail_download=>'N'
,p_owner=>'RANU'
,p_internal_uid=>633306355959698721
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952182526853567350)
,p_db_column_name=>'EODH_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Eodh Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952182463058567349)
,p_db_column_name=>'EODH_ENQ_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Eodh Enq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952182377893567348)
,p_db_column_name=>'EODH_MANUFAC_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Eodh Manufac Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952182290962567347)
,p_db_column_name=>'EODH_PRODUCT_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Eodh Product Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952182121513567346)
,p_db_column_name=>'EODH_QUANTITY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952182060780567345)
,p_db_column_name=>'EODH_MRP'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'MRP'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952181910488567344)
,p_db_column_name=>'EODH_TRADE_PRICE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Trade<br>Price'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952181846315567343)
,p_db_column_name=>'EODH_PURCHASE_AMT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Purchase<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952181786588567342)
,p_db_column_name=>'EODH_SCHEME_PERC'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Sch. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952181619108567341)
,p_db_column_name=>'EODH_SCHEME_AMT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Scheme<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952181577679567340)
,p_db_column_name=>'EODH_DISCOUNT_PERC'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Disc. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952181457270567339)
,p_db_column_name=>'EODH_DISCOUNT_AMT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Disc.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952181307237567338)
,p_db_column_name=>'EODH_GST_PERC'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'GST<br>Exp. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952181240049567337)
,p_db_column_name=>'EODH_GST_AMT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'GST<br>Exp.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952181196995567336)
,p_db_column_name=>'EODH_TRANS_CHARGES'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Trans.<br>Charges'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952181013025567335)
,p_db_column_name=>'EODH_BAGS_CTNS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Bags/<br>CTNS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952180923290567334)
,p_db_column_name=>'EODH_RECOV_ON_FRT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Recovery<br>On<br>Freight'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952180849158567333)
,p_db_column_name=>'EODH_REPACKING'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Repacking'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952180783734567332)
,p_db_column_name=>'EODH_EXTRA'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Extra'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952180657217567331)
,p_db_column_name=>'EODH_NET_PURCHASE_VAL'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Net<br>Purchase<br>Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952180530820567330)
,p_db_column_name=>'EODH_VOL_FOB_AMT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Vol. FOB<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952180465012567329)
,p_db_column_name=>'EODH_VOL_FOB_EXP'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Vol. FOB<br>Expense'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952180342048567328)
,p_db_column_name=>'EODH_PROFIT_PERC'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Profit %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952180218280567327)
,p_db_column_name=>'EODH_PROFIT_AMT'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Profit<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952180118317567326)
,p_db_column_name=>'EODH_INCOME_TAX'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Income<br>Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952180097470567325)
,p_db_column_name=>'EODH_DUTY_PERC'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Duty %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952179933643567324)
,p_db_column_name=>'EODH_DUTY_AMT'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Duty<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952179817607567323)
,p_db_column_name=>'EODH_ECGC'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'ECGC'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952179748854567322)
,p_db_column_name=>'EODH_BANK_COMM'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Bank<br>Comm.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952084602933554171)
,p_db_column_name=>'EODH_INTEREST_PERC'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Int.%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952084488201554170)
,p_db_column_name=>'EODH_INTEREST_AMT'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Int.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952084376505554169)
,p_db_column_name=>'EODH_EXCHANGE_RATE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Exch.<br>Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952084271182554168)
,p_db_column_name=>'EODH_FOB_RS'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'FOB  (<span class="fa fa-inr" aria-hidden="true"></span>)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952084107047554167)
,p_db_column_name=>'EODH_FOB_DOLL'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'FOB  (&APP_QUOTE_IN_SYMBOL.)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952084015970554166)
,p_db_column_name=>'EODH_COMMISSION_PERC'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Comm. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952083963223554165)
,p_db_column_name=>'EODH_FOBC_AMT'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'FOBC<br>Amt. (&APP_QUOTE_IN_SYMBOL.)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952083857749554164)
,p_db_column_name=>'EODH_FOB_DOLL_RND'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'FOB &APP_QUOTE_IN_SYMBOL.<br> Rounded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952083800570554163)
,p_db_column_name=>'EODH_OCEAN_FRT'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Ocean<br>Freight'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952083694624554162)
,p_db_column_name=>'EODH_FRT_PER_CTN'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Freight/<br>Carton'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952083539222554161)
,p_db_column_name=>'EODH_CANDF_AMT'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'C&F<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952083420358554160)
,p_db_column_name=>'EODH_CANDFC_AMT'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'C&F Comm.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952083344154554159)
,p_db_column_name=>'EODH_CANDF_AMT_RND'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'C&F Amt.<br>Rounded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952083215365554158)
,p_db_column_name=>'EODH_INSURANCE_AMT'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Ins.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952083170777554157)
,p_db_column_name=>'EODH_CIF_AMT'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'CIF<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952083080798554156)
,p_db_column_name=>'EODH_CIFC_AMT'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'CIF Comm.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952082970080554155)
,p_db_column_name=>'EODH_CIF_AMT_RND'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'CIF Amt.<br>Rounded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952082834029554154)
,p_db_column_name=>'EODH_CNI_AMT'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'C&I<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952082755799554153)
,p_db_column_name=>'EODH_CNIC_AMT'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'C&I Comm.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952082696428554152)
,p_db_column_name=>'EODH_CNI_AMT_RND'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'C&I Amt.<br>Rounded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952082537439554151)
,p_db_column_name=>'EODH_COSTING_TYPE'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Eodh Costing Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952082487560554150)
,p_db_column_name=>'EODH_INCOME_TAX_PERC'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Income<br>Tax %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952082385849554149)
,p_db_column_name=>'EODH_BANK_COMM_PERC'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Bank<br>Comm. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952082237975554148)
,p_db_column_name=>'EODH_ECGC_PERC'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'ECGC %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952082159972554147)
,p_db_column_name=>'EODH_SGST_PERC'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Eodh Sgst Perc'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952082009887554146)
,p_db_column_name=>'EODH_CGST_PERC'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Eodh Cgst Perc'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952081972229554145)
,p_db_column_name=>'EODH_TOTAL_GST_PERC'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'GST %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952081825036554144)
,p_db_column_name=>'EODH_INSURANCE_PERC'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Ins. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952081796258554143)
,p_db_column_name=>'EODH_EOD_CREATED_BY'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Org. Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952081639385554142)
,p_db_column_name=>'EODH_EOD_CREATED_ON'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Org. Created On'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952081596833554141)
,p_db_column_name=>'EODH_EOD_UPDATED_BY'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952081421388554140)
,p_db_column_name=>'EODH_EOD_UPDATED_ON'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Updated On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952081330028554139)
,p_db_column_name=>'EODH_GROUP_ID'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Grp.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952081224633554138)
,p_db_column_name=>'EODH_STW_RND_20'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Stw.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952081182421554137)
,p_db_column_name=>'EODH_HSN_CODE'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'HSN<br>Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952081015940554136)
,p_db_column_name=>'EODH_COSTING_REMARKS'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Costing<br>Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952080952308554135)
,p_db_column_name=>'EODH_PRODUCT_STATUS'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Product Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(12675032037780296921)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952080832988554134)
,p_db_column_name=>'EODH_CIR_DISPLAY_NAME'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Eodh Cir Display Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952080792013554133)
,p_db_column_name=>'EODH_EOD_ID'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Eodh Eod Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952080685221554132)
,p_db_column_name=>'EODH_ACTION'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Action'
,p_column_html_expression=>'<span class="#ICON#" style="color: #ICON_COLOR#"></span>#EODH_ACTION#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952080543555554131)
,p_db_column_name=>'EODH_CREATED_BY'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'History<br>Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6952080465433554130)
,p_db_column_name=>'EODH_CREATED_ON'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'History<br>Created On'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6951882913269450269)
,p_db_column_name=>'PM_NAME'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'Product'
,p_column_html_expression=>'<span style="display:block; width:300px">#PM_NAME#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6951882494645450264)
,p_db_column_name=>'ICON'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Icon'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6951882357036450263)
,p_db_column_name=>'ICON_COLOR'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'Icon Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960365598928253721)
,p_db_column_name=>'EODH_FOC_FLAG'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'FOC Flag'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960365530657253720)
,p_db_column_name=>'EODH_GROSS_WT'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'Gross Wt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960365390620253719)
,p_db_column_name=>'EODH_NET_WT'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'Net Wt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960365374191253718)
,p_db_column_name=>'EODH_LENGTH'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960365197194253717)
,p_db_column_name=>'EODH_BREADTH'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'Breadth'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960365091292253716)
,p_db_column_name=>'EODH_HEIGHT'
,p_display_order=>800
,p_column_identifier=>'CB'
,p_column_label=>'Height'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960365013535253715)
,p_db_column_name=>'EODH_CUBIC_SPACE'
,p_display_order=>810
,p_column_identifier=>'CC'
,p_column_label=>'Cubic Space'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960364942711253714)
,p_db_column_name=>'EODH_VERIFIED'
,p_display_order=>820
,p_column_identifier=>'CD'
,p_column_label=>'Verified'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6952057894751551601)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6334312'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'EODH_ACTION:PM_NAME:EODH_PRODUCT_STATUS:EODH_EOD_UPDATED_BY:EODH_EOD_UPDATED_ON:EODH_QUANTITY:EODH_MRP:EODH_TRADE_PRICE:EODH_PURCHASE_AMT:EODH_SCHEME_PERC:EODH_SCHEME_AMT:EODH_DISCOUNT_PERC:EODH_DISCOUNT_AMT:EODH_TOTAL_GST_PERC:EODH_GST_PERC:EODH_GST'
||'_AMT:EODH_TRANS_CHARGES:EODH_BAGS_CTNS:EODH_RECOV_ON_FRT:EODH_REPACKING:EODH_EXTRA:EODH_NET_PURCHASE_VAL:EODH_VOL_FOB_AMT:EODH_VOL_FOB_EXP:EODH_PROFIT_PERC:EODH_PROFIT_AMT:EODH_INCOME_TAX_PERC:EODH_INCOME_TAX:EODH_DUTY_PERC:EODH_DUTY_AMT:EODH_ECGC_PE'
||'RC:EODH_ECGC:EODH_BANK_COMM_PERC:EODH_BANK_COMM:EODH_INTEREST_PERC:EODH_INTEREST_AMT:EODH_EXCHANGE_RATE:EODH_FOB_RS:EODH_FOB_DOLL:EODH_COMMISSION_PERC:EODH_FOBC_AMT:EODH_FOB_DOLL_RND:EODH_OCEAN_FRT:EODH_FRT_PER_CTN:EODH_CANDF_AMT:EODH_CANDFC_AMT:EODH'
||'_CANDF_AMT_RND:EODH_INSURANCE_AMT:EODH_CIF_AMT:EODH_CIFC_AMT:EODH_CIF_AMT_RND:EODH_CNI_AMT:EODH_CNIC_AMT:EODH_CNI_AMT_RND:EODH_INSURANCE_PERC:EODH_GROUP_ID:EODH_STW_RND_20:EODH_HSN_CODE:EODH_COSTING_REMARKS:EODH_FOC_FLAG:EODH_GROSS_WT:EODH_NET_WT:EOD'
||'H_LENGTH:EODH_BREADTH:EODH_HEIGHT:EODH_CUBIC_SPACE:EODH_VERIFIED:'
,p_sort_column_1=>'PM_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'EODH_EOD_UPDATED_ON'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'EODH_ACTION'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8224589094351906742)
,p_plug_name=>' Attachments'
,p_region_name=>'att_details'
,p_parent_plug_id=>wwv_flow_imp.id(81051487159893975)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A_ID,',
'A_TYPE,',
'A_TYPE_ID,',
'A_ATTACHMENT,',
'A_NAME,',
'A_MIME_TYPE,',
'A_TITLE,',
'A_REMARKS,',
'A_CREATED_BY,',
'A_CREATED_ON,',
'A_UPDATED_BY,',
'A_UPDATED_ON,',
'A_CATEGORY',
'from V_ATTACHMENTS',
'where A_TYPE = ''ENQ''',
'and A_TYPE_ID = :P23_EOM_ENQ_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P23_EOM_ENQ_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P23_EOM_ENQ_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>' V_ATTACHMENTS'
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
'function(config) {	',
'	var $ = apex.jQuery,  ',
'	toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),  ',
'	toolbarGroup = toolbarData[4];',
'',
'    toolbarGroup.controls.unshift( {  ',
'        type: "SELECT",  ',
'        action: "change-rows-per-page"  ',
'    } );   ',
'  toolbarGroup.controls.push(',
'  {',
'    type: "BUTTON",',
'    action: "addAttachment",',
'    icon: "fa fa-upload fa-anim-horizontal-shake fam-plus fam-is-danger",',
'    iconBeforeLabel: true,',
'    hot: true,',
'  });',
'	config.toolbarData = toolbarData; 	',
'    config.initActions = function(actions) {',
'		',
'		var  rpp = actions.lookup("change-rows-per-page"),  ',
'            originalSet = rpp.set,  ',
'            originalGet = rpp.get;  ',
'        rpp.set = function(val) {  ',
'            val = val === "null" ? null : parseInt(val, 10);  ',
'            originalSet(val);  ',
'        };  ',
'        rpp.get = function() {  ',
'            var val = originalGet();  ',
'            return val === null ? "null" : val;  ',
'        };  ',
'	     ',
'        actions.add(',
'        {',
'          name: "addAttachment",',
'          label: "Add Attachment",',
'          action: addAttach',
'        })               ',
'    }    ',
'',
'  function addAttach(event, focusElement)',
'  {',
'    //javascript:openModal(''ML_SEL'');',
'    var x = apex.item(''P23_EOM_ENQ_ID'').getValue();',
'    var url = "f?p=#APP_ID#:81:#SESSION#::NO:RP,81:P81_A_TYPE,P81_A_TYPE_ID:ENQ,#P23_EOM_ENQ_ID#";',
'    url = url.replace("#APP_ID#", $v("pFlowId"));',
'    url = url.replace("#SESSION#", $v("pInstance"));',
'    url = url.replace("#P23_EOM_ENQ_ID#", x);',
'    apex.server.process("PREPARE_URL", {',
'    x01: url',
'      }, {',
'      success: function(pData) {',
'       if (pData.success === true) {',
'         apex.navigation.redirect(pData.url);',
'       } else {',
'         console.log("FALSE");',
'       }',
'     },',
'    error: function(request, status, error) {',
'    console.log("status---" + status + " error----" + error);',
'      }',
'    });',
'  }    ',
'console.log(config);',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224586339305906714)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224586439313906715)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224586472709906716)
,p_name=>'A_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Updated On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224586571765906717)
,p_name=>'A_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224586714976906718)
,p_name=>'A_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created On'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224586806755906719)
,p_name=>'A_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224586951687906720)
,p_name=>'A_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224587020846906721)
,p_name=>'A_TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Title'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224587083418906722)
,p_name=>'A_MIME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_MIME_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224587189381906723)
,p_name=>'A_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224587284008906724)
,p_name=>'A_ATTACHMENT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Download'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:9000:&SESSION.::&DEBUG.::P9000_CALLING_FROM,P9000_FILE_ID:V_ATTACHMENTS,&A_ID.'
,p_link_text=>'<i class="fa fa-download"></i>'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224587389933906725)
,p_name=>'A_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224587520537906726)
,p_name=>'A_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8224587582495906727)
,p_name=>'A_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22467913103792730544)
,p_name=>'A_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'A_CATEGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Category'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(22467713413497718550)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Category -'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(8224587660001906728)
,p_internal_uid=>667609998006892436
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(8209292208267766210)
,p_interactive_grid_id=>wwv_flow_imp.id(8224587660001906728)
,p_static_id=>'123104'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(8209292140393766210)
,p_report_id=>wwv_flow_imp.id(8209292208267766210)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8209187386682716321)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(8224586439313906715)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8209286099921766187)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(8224586472709906716)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8209286641425766188)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(8224586571765906717)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8209287108517766191)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(8224586714976906718)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8209287641063766192)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(8224586806755906719)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8209288105704766194)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(8224586951687906720)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8209288581748766195)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(8224587020846906721)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8209289124814766196)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(8224587083418906722)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8209289620782766198)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(8224587189381906723)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8209290092768766199)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(8224587284008906724)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8209290625778766201)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(8224587389933906725)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8209291144644766203)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(8224587520537906726)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8209291587935766206)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(8224587582495906727)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22467812436990721879)
,p_view_id=>wwv_flow_imp.id(8209292140393766210)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(22467913103792730544)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10990068625709976150)
,p_plug_name=>' History'
,p_region_name=>'history_details'
,p_parent_plug_id=>wwv_flow_imp.id(81051487159893975)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.*,pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT pm_name,',
'          DECODE(NVL(a.EODH_ACTION, ''INSERT''), ''DELETE'', ''fa fa-times-circle'',''UPDATE'', ''fa fa-pencil-square'',''fa fa-plus-square'') icon,',
'          DECODE(NVL(a.EODH_ACTION, ''INSERT''), ''DELETE'', ''red'',''UPDATE'', ''blue'',''green'') icon_color',
'from V_ENQUIRIES_ORDERS_DETAILS_HISTORY a , ',
'                                        (select max(eodh_id) eodh_id,max(eodh_action) eodh_action, eodh_eod_id, eodh_product_id,eodh_enq_id',
'                                        from V_ENQUIRIES_ORDERS_DETAILS_HISTORY',
'                                        where eodh_enq_id = :P23_EOM_ENQ_ID ',
'                                        --and to_date(eodh_created_on,''DD-MON-YYYY HH:MIPM'') between to_date(:P23_FROM_DATE,''DD-MON-YYYY HH:MIPM'') ',
'                                         --and to_date(:P23_TO_DATE,''DD-MON-YYYY HH:MIPM'')',
'                                         and eodh_created_on between to_date(:P23_FROM_DATE,''DD-MON-YYYY HH24:MI:SS'') ',
'                                         and to_date(:P23_TO_DATE,''DD-MON-YYYY HH24:MI:SS'')',
'                                        group by eodh_eod_id, eodh_product_id,eodh_enq_id) b,',
'                                        V_PRODUCT_MASTER',
'where a.eodh_id = b.eodh_id',
'and a.eodh_enq_id = b.eodh_enq_id',
'and a.eodh_product_id = pm_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P23_EOM_ENQ_ID,P23_FROM_DATE,P23_TO_DATE'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>' History'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10990068241026976146)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'HTML:CSV:XLSX'
,p_enable_mail_download=>'N'
,p_owner=>'RANU'
,p_internal_uid=>862705037907558907
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990068149106976145)
,p_db_column_name=>'EODH_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Eodh Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990068053376976144)
,p_db_column_name=>'EODH_DUTY_AMT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Duty<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990067967133976143)
,p_db_column_name=>'EODH_ECGC'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'ECGC'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990067816781976142)
,p_db_column_name=>'EODH_BANK_COMM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Bank<br>Comm.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990067769287976141)
,p_db_column_name=>'EODH_INTEREST_PERC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Int.%'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990067624387976140)
,p_db_column_name=>'EODH_INTEREST_AMT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Int.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990067577320976139)
,p_db_column_name=>'EODH_EXCHANGE_RATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Exch.<br>Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990067429828976138)
,p_db_column_name=>'EODH_FOB_RS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'FOB  (<span class="fa fa-inr" aria-hidden="true"></span>)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990067303490976137)
,p_db_column_name=>'EODH_FOB_DOLL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'FOB  (&APP_QUOTE_IN_SYMBOL.)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990067275161976136)
,p_db_column_name=>'EODH_COMMISSION_PERC'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Comm. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990067082644976135)
,p_db_column_name=>'EODH_FOBC_AMT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'FOBC<br>Amt. (&APP_QUOTE_IN_SYMBOL.)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990067067223976134)
,p_db_column_name=>'EODH_FOB_DOLL_RND'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'FOB &APP_QUOTE_IN_SYMBOL.<br> Rounded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990066913919976133)
,p_db_column_name=>'EODH_OCEAN_FRT'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Ocean<br>Freight'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990066779663976132)
,p_db_column_name=>'EODH_FRT_PER_CTN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Freight/<br>Carton'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990066702862976131)
,p_db_column_name=>'EODH_CANDF_AMT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'C&F<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990066592595976130)
,p_db_column_name=>'EODH_CANDFC_AMT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'C&F Comm.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990066487689976129)
,p_db_column_name=>'EODH_CANDF_AMT_RND'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'C&F Amt.<br>Rounded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990066421684976128)
,p_db_column_name=>'EODH_INSURANCE_AMT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Ins.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990066290284976127)
,p_db_column_name=>'EODH_CIF_AMT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'CIF<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990066260049976126)
,p_db_column_name=>'EODH_CIFC_AMT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'CIF Comm.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990066100454976125)
,p_db_column_name=>'EODH_CIF_AMT_RND'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'CIF Amt.<br>Rounded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990066072787976124)
,p_db_column_name=>'EODH_CNI_AMT'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'C&I<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990065901026976123)
,p_db_column_name=>'EODH_CNIC_AMT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'C&I Comm.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990065780152976122)
,p_db_column_name=>'EODH_CNI_AMT_RND'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'C&I Amt.<br>Rounded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990065704257976121)
,p_db_column_name=>'EODH_COSTING_TYPE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Eodh Costing Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990065618881976120)
,p_db_column_name=>'EODH_INCOME_TAX_PERC'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Income<br>Tax %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990065513242976119)
,p_db_column_name=>'EODH_BANK_COMM_PERC'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Bank<br>Comm. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990065440576976118)
,p_db_column_name=>'EODH_ENQ_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Eodh Enq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990065366753976117)
,p_db_column_name=>'EODH_ECGC_PERC'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'ECGC %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990065202534976116)
,p_db_column_name=>'EODH_SGST_PERC'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Eodh Sgst Perc'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990065120990976115)
,p_db_column_name=>'EODH_CGST_PERC'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Eodh Cgst Perc'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990065062589976114)
,p_db_column_name=>'EODH_TOTAL_GST_PERC'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'GST %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990064891231976113)
,p_db_column_name=>'EODH_INSURANCE_PERC'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Ins. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990064875853976112)
,p_db_column_name=>'EODH_EOD_CREATED_BY'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Org. Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990064752074976111)
,p_db_column_name=>'EODH_EOD_CREATED_ON'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Org. Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990064584154976110)
,p_db_column_name=>'EODH_EOD_UPDATED_BY'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Org. Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990064562352976109)
,p_db_column_name=>'EODH_EOD_UPDATED_ON'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Org. Updated On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990064414536976108)
,p_db_column_name=>'EODH_GROUP_ID'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Grp.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990064295879976107)
,p_db_column_name=>'EODH_STW_RND_20'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Stw.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990064273975976106)
,p_db_column_name=>'EODH_HSN_CODE'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'HSN<br>Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990064129287976105)
,p_db_column_name=>'EODH_COSTING_REMARKS'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Costing<br>Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990063991697976104)
,p_db_column_name=>'EODH_PRODUCT_STATUS'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Eodh Product Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10990063895699976103)
,p_db_column_name=>'EODH_CIR_DISPLAY_NAME'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Eodh Cir Display Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960368696170253752)
,p_db_column_name=>'EODH_EOD_ID'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Eodh Eod Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960368582566253751)
,p_db_column_name=>'EODH_ACTION'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Action'
,p_column_html_expression=>'<span class="#ICON#" style="color: #ICON_COLOR#"></span>#EODH_ACTION#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960368511820253750)
,p_db_column_name=>'EODH_CREATED_BY'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'History<br>Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960368404834253749)
,p_db_column_name=>'EODH_CREATED_ON'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'History<br>Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960368291099253748)
,p_db_column_name=>'PM_NAME'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Product'
,p_column_html_expression=>'<span style="display:block; width:300px">#PM_NAME#</span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960368181726253747)
,p_db_column_name=>'ICON'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Icon'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960368102377253746)
,p_db_column_name=>'ICON_COLOR'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Icon Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960368069903253745)
,p_db_column_name=>'EODH_MANUFAC_ID'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Eodh Manufac Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960367966325253744)
,p_db_column_name=>'EODH_PRODUCT_ID'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Eodh Product Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960367859676253743)
,p_db_column_name=>'EODH_QUANTITY'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960367743919253742)
,p_db_column_name=>'EODH_MRP'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'MRP'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960367613282253741)
,p_db_column_name=>'EODH_TRADE_PRICE'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Trade<br>Price'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960367532495253740)
,p_db_column_name=>'EODH_PURCHASE_AMT'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Purchase<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960367445102253739)
,p_db_column_name=>'EODH_SCHEME_PERC'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Sch. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960367355424253738)
,p_db_column_name=>'EODH_SCHEME_AMT'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Scheme<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960367205479253737)
,p_db_column_name=>'EODH_DISCOUNT_PERC'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Disc. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960367152081253736)
,p_db_column_name=>'EODH_DISCOUNT_AMT'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Disc.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960366993187253735)
,p_db_column_name=>'EODH_GST_PERC'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'GST<br>Exp. %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960366935474253734)
,p_db_column_name=>'EODH_GST_AMT'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'GST<br>Exp.<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960366815979253733)
,p_db_column_name=>'EODH_TRANS_CHARGES'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Trans.<br>Charges'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960366744085253732)
,p_db_column_name=>'EODH_BAGS_CTNS'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Bags/<br>CTNS'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960366669509253731)
,p_db_column_name=>'EODH_RECOV_ON_FRT'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Recovery<br>On<br>Freight'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960366493613253730)
,p_db_column_name=>'EODH_REPACKING'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Repacking'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960366396689253729)
,p_db_column_name=>'EODH_EXTRA'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Extra'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960366361269253728)
,p_db_column_name=>'EODH_NET_PURCHASE_VAL'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'Net<br>Purchase<br>Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960366194983253727)
,p_db_column_name=>'EODH_VOL_FOB_AMT'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'Vol. FOB<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960366177432253726)
,p_db_column_name=>'EODH_VOL_FOB_EXP'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'Vol. FOB<br>Expense'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960366067553253725)
,p_db_column_name=>'EODH_PROFIT_PERC'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'Profit %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960365942043253724)
,p_db_column_name=>'EODH_PROFIT_AMT'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'Profit<br>Amt.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960365835749253723)
,p_db_column_name=>'EODH_INCOME_TAX'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'Income<br>Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10960365727702253722)
,p_db_column_name=>'EODH_DUTY_PERC'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'Duty %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10960338834241248012)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'8924345'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EODH_ID:EODH_DUTY_AMT:EODH_ECGC:EODH_BANK_COMM:EODH_INTEREST_PERC:EODH_INTEREST_AMT:EODH_EXCHANGE_RATE:EODH_FOB_RS:EODH_FOB_DOLL:EODH_COMMISSION_PERC:EODH_FOBC_AMT:EODH_FOB_DOLL_RND:EODH_OCEAN_FRT:EODH_FRT_PER_CTN:EODH_CANDF_AMT:EODH_CANDFC_AMT:EODH_'
||'CANDF_AMT_RND:EODH_INSURANCE_AMT:EODH_CIF_AMT:EODH_CIFC_AMT:EODH_CIF_AMT_RND:EODH_CNI_AMT:EODH_CNIC_AMT:EODH_CNI_AMT_RND:EODH_COSTING_TYPE:EODH_INCOME_TAX_PERC:EODH_BANK_COMM_PERC:EODH_ENQ_ID:EODH_ECGC_PERC:EODH_SGST_PERC:EODH_CGST_PERC:EODH_TOTAL_GS'
||'T_PERC:EODH_INSURANCE_PERC:EODH_EOD_CREATED_BY:EODH_EOD_CREATED_ON:EODH_EOD_UPDATED_BY:EODH_EOD_UPDATED_ON:EODH_GROUP_ID:EODH_STW_RND_20:EODH_HSN_CODE:EODH_COSTING_REMARKS:EODH_PRODUCT_STATUS:EODH_CIR_DISPLAY_NAME:EODH_EOD_ID:EODH_ACTION:EODH_CREATED'
||'_BY:EODH_CREATED_ON:PM_NAME:ICON:ICON_COLOR:EODH_MANUFAC_ID:EODH_PRODUCT_ID:EODH_QUANTITY:EODH_MRP:EODH_TRADE_PRICE:EODH_PURCHASE_AMT:EODH_SCHEME_PERC:EODH_SCHEME_AMT:EODH_DISCOUNT_PERC:EODH_DISCOUNT_AMT:EODH_GST_PERC:EODH_GST_AMT:EODH_TRANS_CHARGES:'
||'EODH_BAGS_CTNS:EODH_RECOV_ON_FRT:EODH_REPACKING:EODH_EXTRA:EODH_NET_PURCHASE_VAL:EODH_VOL_FOB_AMT:EODH_VOL_FOB_EXP:EODH_PROFIT_PERC:EODH_PROFIT_AMT:EODH_INCOME_TAX:EODH_DUTY_PERC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34099824361928488940)
,p_plug_name=>' &P23_RGN_ENQ_ORD_DESC.'
,p_region_name=>'enq_details'
,p_parent_plug_id=>wwv_flow_imp.id(81051487159893975)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--showIcon:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_region_attributes=>'id = "test"'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'V_ENQUIRIES_ORDERS_MST'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'N',
  'attribute_02', 'TEXT',
  'attribute_03', 'Y')).to_clob
,p_plug_comment=>'style="height:100%;"'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124834821777994487)
,p_plug_name=>'Buttons'
,p_parent_plug_id=>wwv_flow_imp.id(157979776897177780)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(451181853657023255)
,p_plug_name=>'Master List Selection'
,p_region_name=>'ML_SEL'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3042999239259138590)
,p_plug_name=>'Product Status'
,p_region_name=>'RPT_PROD_STATUS'
,p_region_template_options=>'js-dialog-autoheight:js-modal:js-draggable:js-resizable:js-dialog-size720x480'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  eod_product_id product_id',
',max(nvl(eod_quantity,0)) "Total Qty"',
',sum(nvl(po.ord_qty,0)) "Ordered Qty"',
',sum(nvl(po.rec_qty,0)) "Received Qty"',
',max(nvl(eod_quantity,0)) - sum(nvl(po.ord_qty,0)) - max(nvl(sd.sd_quantity,0)) "Pending to Order"',
',max(nvl(eod_quantity,0))  - sum(nvl(po.rec_qty,0)) - max(nvl(sd.sd_quantity,0)) "Pending for Delivery"',
',nvl((select ST_NAME from V_SETUP_TABLE where  EOD_PRODUCT_STATUS = st_code and st_type = ''PRODUCT_STATUS''),''In-Progress'') Status',
',max(nvl(sd.sd_quantity,0)) "Allocated From Stock"',
'FROM V_ENQUIRIES_ORDERS_MST',
'    ,V_ENQUIRIES_ORDERS_DETAILS',
'    ,(SELECT POD_ID,pom_id,pom_ord_id,POD_PRODUCT_ID,POM_SUPPLIER_ID,sum(POD_ORDERED_QUANTITY) ord_qty,sum(POD_DELIVERED_QUANTITY) rec_qty ',
'        FROM V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS ',
'                WHERE pom_id = pod_pom_id',
'                and pom_status not in (''IP'',''RJ'')',
'                --AND pom_id in apex_util.string_to_table(p_string=>:P47_POM_ID_IW, p_separator=>'':'') ',
'               -- AND instr('':'' || :P47_POM_ID_IW || '':'', '':'' || pom_id || '':'') > 0',
'               group by POD_ID,pom_id,pom_ord_id,POD_PRODUCT_ID,POM_SUPPLIER_ID',
'    ) po',
' --   ,V_INWARD_DETAILS',
'    ,(         select sd_enq_id,sd_product_id,nvl(sum(nvl(sd_quantity,0)),0)*-1  sd_quantity',
'				from V_STOCK_DETAILS',
'			   where sd_enq_id =  :P23_EOM_ENQ_ID',
'				and  sd_type = ''OUT''',
'			group by sd_enq_id,sd_product_id',
'    ) sd',
'WHERE eom_enq_id    = eod_enq_id',
'  AND eom_ord_id    = po.pom_ord_id(+)',
'   --AND nvl(po.ord_qty,0) <> nvl(po.rec_qty,0)',
'    AND eod_product_id = po.POD_PRODUCT_ID(+)',
'    and eom_enq_id = :P23_EOM_ENQ_ID',
'    and eod_enq_id = sd.sd_enq_id (+)',
'    and eod_product_id = sd.sd_product_id (+)',
'group by eod_product_id,EOD_PRODUCT_STATUS'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P23_EOM_ENQ_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Product Status'
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
'SELECT  PM_NAME || '' '' ||PM_PACKAGE|| '' '' ||PM_BABY_BOX_UNIT || '' x '' || PM_PACKAGE_1 ',
'								||'' '' || PM_PRODUCT_UNIT  || '' x '' ||   PM_PACKAGE_2 || '' '' ||  PM_PACKAGE_UNIT pm_name',
'							,eod_product_id product_id',
'							,max(nvl(eod_quantity,0)) "Total Qty"',
'							,sum(nvl(po.ord_qty,0)) "Ordered Qty"',
'                            ,sum(nvl(po.rec_qty,0)) "Received Qty"',
'                            ,max(nvl(eod_quantity,0)) - sum(nvl(po.ord_qty,0)) "Pending to Order"',
'							,max(nvl(eod_quantity,0))  - sum(nvl(po.rec_qty,0)) "Pending for Delivery"',
'                            ,nvl((select ST_NAME from V_SETUP_TABLE where  EOD_PRODUCT_STATUS = st_code and st_type = ''PRODUCT_STATUS''),''In-Progress'') Status',
'							FROM V_ENQUIRIES_ORDERS_MST',
'								,V_ENQUIRIES_ORDERS_DETAILS',
'								,V_PRODUCT_MASTER',
'								,(SELECT POD_ID,pom_id,pom_ord_id,POD_PRODUCT_ID,POM_SUPPLIER_ID,sum(POD_ORDERED_QUANTITY) ord_qty,sum(POD_DELIVERED_QUANTITY) rec_qty ',
'									FROM V_PURCHASE_ORDER_MASTER,V_PURCHASE_ORDER_DETAILS ',
'											WHERE pom_id = pod_pom_id',
'                                            and pom_status not in (''IP'',''RJ'')',
'											--AND pom_id in apex_util.string_to_table(p_string=>:P47_POM_ID_IW, p_separator=>'':'') ',
'                                           -- AND instr('':'' || :P47_POM_ID_IW || '':'', '':'' || pom_id || '':'') > 0',
'										   group by POD_ID,pom_id,pom_ord_id,POD_PRODUCT_ID,POM_SUPPLIER_ID',
'								) po',
'                             --   ,V_INWARD_DETAILS',
'								',
'							WHERE eom_enq_id    = eod_enq_id',
'							  AND eom_ord_id    = po.pom_ord_id',
'							  AND pm_manufac_id = eod_manufac_id',
'							  AND pm_id         = eod_product_id',
'								--AND nvl(po.ord_qty,0) <> nvl(po.rec_qty,0)',
'								AND eod_product_id = po.POD_PRODUCT_ID',
'                                and eom_enq_id = :P23_EOM_ENQ_ID',
'group by PM_NAME, PM_PACKAGE,PM_BABY_BOX_UNIT , PM_PACKAGE_1 ',
', PM_PRODUCT_UNIT  ,   PM_PACKAGE_2 , PM_PACKAGE_UNIT ,eod_product_id,EOD_PRODUCT_STATUS',
'union ',
'SELECT  PM_NAME || '' '' ||PM_PACKAGE|| '' '' ||PM_BABY_BOX_UNIT || '' x '' || PM_PACKAGE_1 ',
'								||'' '' || PM_PRODUCT_UNIT  || '' x '' ||   PM_PACKAGE_2 || '' '' ||  PM_PACKAGE_UNIT pm_name',
'							,eod_product_id product_id',
'							,max(nvl(eod_quantity,0)) "Total Qty"',
'							,0 "Ordered Qty"',
'                            ,0 "Received Qty"',
'                            ,max(nvl(eod_quantity,0))  "Pending to Order"',
'							,max(nvl(eod_quantity,0))  "Pending for Delivery"',
'                            ,nvl((select ST_NAME from V_SETUP_TABLE where  EOD_PRODUCT_STATUS = st_code and st_type = ''PRODUCT_STATUS''),''In-Progress'') Status',
'							FROM V_ENQUIRIES_ORDERS_MST',
'								,V_ENQUIRIES_ORDERS_DETAILS',
'								,V_PRODUCT_MASTER',
'                             --   ,V_INWARD_DETAILS',
'								',
'							WHERE eom_enq_id    = eod_enq_id',
'							--  AND eom_ord_id    = po.pom_ord_id',
'							  AND pm_manufac_id = eod_manufac_id',
'							  AND pm_id         = eod_product_id',
'								--AND nvl(po.ord_qty,0) <> nvl(po.rec_qty,0)',
'								--AND eod_product_id = po.POD_PRODUCT_ID',
'                                and eom_enq_id = :P23_EOM_ENQ_ID',
'                                and not exists ( select 1 ',
'                from V_PURCHASE_ORDER_MASTER , V_PURCHASE_ORDER_DETAILS ',
'                where pom_id = pod_pom_id',
'                and pom_status not in (''IP'',''RJ'')',
'                and pom_enq_id = eod_enq_id',
'                and pod_product_id = eod_product_id',
'                )',
'group by PM_NAME, PM_PACKAGE,PM_BABY_BOX_UNIT , PM_PACKAGE_1 ',
', PM_PRODUCT_UNIT  ,   PM_PACKAGE_2 , PM_PACKAGE_UNIT ,eod_product_id,EOD_PRODUCT_STATUS'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3877542545664475113)
,p_name=>'Pending for Delivery'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Pending for Delivery'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pending<br>For Delivery'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3877542688840475114)
,p_name=>'Pending to Order'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Pending to Order'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pending<br>To Order'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3877542778356475115)
,p_name=>'Received Qty'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Received Qty'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Received<br>Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3877542848374475116)
,p_name=>'Ordered Qty'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Ordered Qty'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ordered<br>Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3877543011042475117)
,p_name=>'Total Qty'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Total Qty'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total<br>Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12649730844586902563)
,p_name=>'Allocated From Stock'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'Allocated From Stock'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Allocated<br> From<br> Stock'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12796069627225358530)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(12796069779892358532)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(11504197761410516)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3877543151986475119)
,p_internal_uid=>481706362295715921
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>false
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3874044285688398278)
,p_interactive_grid_id=>wwv_flow_imp.id(3877543151986475119)
,p_static_id=>'123103'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3874044128464398278)
,p_report_id=>wwv_flow_imp.id(3874044285688398278)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3874041190326398265)
,p_view_id=>wwv_flow_imp.id(3874044128464398278)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3877542545664475113)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3874041623379398266)
,p_view_id=>wwv_flow_imp.id(3874044128464398278)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3877542688840475114)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3874042146137398267)
,p_view_id=>wwv_flow_imp.id(3874044128464398278)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3877542778356475115)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3874042636325398269)
,p_view_id=>wwv_flow_imp.id(3874044128464398278)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3877542848374475116)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3874043125731398271)
,p_view_id=>wwv_flow_imp.id(3874044128464398278)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3877543011042475117)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>57
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12647929849300707724)
,p_view_id=>wwv_flow_imp.id(3874044128464398278)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(12649730844586902563)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12703850125930640937)
,p_view_id=>wwv_flow_imp.id(3874044128464398278)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(12796069627225358530)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(12703850649015640941)
,p_view_id=>wwv_flow_imp.id(3874044128464398278)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(12796069779892358532)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>271.5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30966162388055148)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30966061195055147)
,p_button_name=>'P23_ADD_NOTES_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--padRight'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Notes'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.:OTHER:&DEBUG.:34:P34_UN_TYPE,P34_UN_TYPE_ID:ENQ,&P23_EOM_ENQ_ID.'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(451181636529023253)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(451181853657023255)
,p_button_name=>'ADD_TO_ML'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add To Master List'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10990068324923976147)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10990068625709976150)
,p_button_name=>'SEARCH_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124837803968994517)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(143014971104458850)
,p_button_name=>'FOB'
,p_button_static_id=>'btnFOB'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show FOB Columns'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34099825050108488941)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--danger:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Back'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RIR:P22_EOM_ENQ_ID:'
,p_icon_css_classes=>'fa fa-undo-arrow'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34099824919784488941)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P23_EOM_ENQ_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'Delete'
,p_icon_css_classes=>'fa-trash-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_imp.id(69930751139109744)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48134870162567472)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'DISPLAY_ENQ_ORD_NO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P23_RGN_ENQ_ORD_NO_DESC.'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P23_RGN_ENQ_ORD_NO_DESC'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-clipboard-check-alt'
,p_button_cattributes=>'title ="Click if you want to Copy this Enquiry"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6952079736636554123)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6952182783786567352)
,p_button_name=>'SEARCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48134624922567469)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'DISPLAY_INV_NO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P23_RGN_INV_DESC.'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P23_RGN_INV_DESC'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-file-text fam-check fam-is-danger'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1304635658249856)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'DISPLAY_SC_NO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sales Contract# : &P23_SALES_CONTRACT_NO.'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P23_SALES_CONTRACT_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-file-text fam-check fam-is-danger'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48134966059567473)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'DISPLAY_STATUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P23_RGN_ENQ_ORD_STATUS_DESC.'
,p_button_redirect_url=>'javascript:fchange_status_confirm();'
,p_button_execute_validations=>'N'
,p_button_condition=>'P23_RGN_ENQ_ORD_STATUS_DESC'
,p_button_condition2=>'0'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'&P23_RGN_ENQ_ORD_STATUS_ICON.'
,p_button_cattributes=>'title ="Click if you want to Change Status of this Enquiry"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34099824833651488941)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P23_EOM_ENQ_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34099824777999488941)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_condition=>'P23_EOM_ENQ_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163957524239523848)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'P23_ISSUE_PO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Issue PO'
,p_button_redirect_url=>'f?p=&APP_ID.:72:&SESSION.:RP:&DEBUG.:72:P72_POM_CUSTOMER_ID,P72_POM_ORD_ID,P72_POM_ENQ_ID:&P23_EOM_CUSTOMER_ID.,&P23_EOM_ORD_ID.,&P23_EOM_ENQ_ID.'
,p_button_condition=>'P23_EOM_ORD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-clipboard-check-alt'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137807521789754986)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'P23_OUTPUT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Outputs'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.:RP:&DEBUG.::P10_ENQ_ID,P10_OUTPUT_TYPE,P10_CALLING_FROM,APP_OM_ID:&P23_EOM_ENQ_ID.,ENQ,ENQ,'
,p_button_condition=>'P23_EOM_ENQ_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-file-excel-o'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_button_comment=>' <i class="fa fa-file-excel-o" style="font-size:16px;color:white"><i class="fa fa-file-pdf-o" style="font-size:16px;color:pink"></i></i>'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12796068205660358516)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'P23_STOCK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Stock'
,p_button_redirect_url=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:84:P84_ENQ_ID,P84_ORD_ID:&P23_EOM_ENQ_ID.,&P23_EOM_ORD_ID.'
,p_button_condition=>'P23_EOM_ORD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-cart-arrow-down'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_imp.id(69913570901257093)
,p_button_comment=>' <i class="fa fa-file-excel-o" style="font-size:16px;color:white"><i class="fa fa-file-pdf-o" style="font-size:16px;color:pink"></i></i>'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124837474712994513)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'P23_CURRENT_RATE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Current Rate'
,p_button_redirect_url=>'javascript:window.open(''https://xe.com/currencyconverter/convert/?Amount=1&From=USD&To=INR'');void(0);'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-usd fa-anim-vertical-shake'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:window.open(''https://xe.com/currencyconverter/convert/?Amount=1&From=USD&To=INR'');void(0);',
'javascript:window.open("https://xe.com/currencyconverter/convert/?Amount=1&From=USD&To=INR", "rate", ''width=500,height=500'');'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34099834640917489416)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'GET_PREVIOUS_EOM_ENQ_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--padRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Previous'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_EOM_ENQ_ID'')'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34099834536250489416)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'GET_NEXT_EOM_ENQ_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_EOM_ENQ_ID'')'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163386300016834903)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_button_name=>'P23_PLACE_ORDER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--padRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Place Order'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'PL/SQL Expression',
':P23_EOM_ENQ_ID is not null and :P23_EOM_ORD_ID is null and :P23_EOM_ENQ_STATUS = ''AP'''))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30966260890055149)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(30966061195055147)
,p_button_name=>'P23_ADD_DEFAULT_NOTES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--padRight'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Default Notes'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.:OTHER:&DEBUG.:56:P56_TYPE,P56_TYPE_ID:ENQ,&P23_EOM_ENQ_ID.'
,p_button_condition=>'P23_EOM_ENQ_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8209179583487091690)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(8224589094351906742)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.:81:P81_A_TYPE,P81_A_TYPE_ID:ENQ,&P23_EOM_ENQ_ID.'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(137807755192754988)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(143014971104458850)
,p_button_name=>'ADD_OTHER_CHARGES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Other Charges'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP:P64_ENQ_ID:&P23_EOM_ENQ_ID.'
,p_icon_css_classes=>'fa-plus-square-o'
,p_button_cattributes=>'title="Add Other Charges"'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(163249429982294012)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(143014971104458850)
,p_button_name=>'ADD_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Products'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,RIR:P21_ENQ_ID,P21_SELECTED_PRODUCTS,P21_CUST_ID,P21_BTN_LABEL,P21_CALLING_FROM,P21_MASTER_LIST_ID:&P23_EOM_ENQ_ID.,,&P23_EOM_CUSTOMER_ID.,Get Ordered Products,ENQUIRY,'
,p_icon_css_classes=>'fa-cart-plus'
,p_button_cattributes=>'title="Add Products"'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124838473092994523)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(143014971104458850)
,p_button_name=>'Review'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Columns to Review'
,p_button_position=>'LEFT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-file-search'
,p_button_cattributes=>'title="Columns to Review"'
,p_button_comment=>'Server Contd added as Never as we wanted to implement hide/show of columns from Apex Action menu by Rahul on 15-Mar-2024'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(124838131385994520)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(143014971104458850)
,p_button_name=>'All'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show All Columns'
,p_button_position=>'LEFT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-file-check'
,p_button_cattributes=>'title="Show All Columns"'
,p_button_comment=>'Server Contd added as Never as we wanted to implement hide/show of columns from Apex Action menu by Rahul on 15-Mar-2024'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30970109309055188)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(143014971104458850)
,p_button_name=>'UPDATE_PRODUCT_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Product Details'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:78:P78_EOD_ENQ_ID:&P23_EOM_ENQ_ID.'
,p_icon_css_classes=>'fa-cart-edit'
,p_button_cattributes=>'title="Update Product Details"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3022800611531572620)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(143014971104458850)
,p_button_name=>'ProductStatus'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Product Status'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:89:P89_EOM_ENQ_ID:&P23_EOM_ENQ_ID.'
,p_icon_css_classes=>'fa-cart-arrow-down'
,p_button_comment=>'Redirect To URL - javascript:openModal(''RPT_PROD_STATUS'');'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(34099826666601488943)
,p_branch_name=>'Go To Page 22'
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'CANCEL,DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(158325900478274856)
,p_branch_name=>'branch_to_pg23_on_create'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_EOM_ENQ_ID:&P23_EOM_ENQ_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(96363905592558008)
,p_branch_name=>'REFRESH_PAGE'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_EOM_ENQ_ID:&P23_EOM_ENQ_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>50
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'REFRESH_PAGE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(34099841305208489423)
,p_branch_name=>'Go To Page 23'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_EOM_ENQ_ID:&P23_EOM_ENQ_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(34099834536250489416)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(34099841686304489424)
,p_branch_name=>'Go To Page 23'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_EOM_ENQ_ID:&P23_EOM_ENQ_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(34099834640917489416)
,p_branch_sequence=>20
,p_branch_condition_type=>'NEVER'
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1304868193249858)
,p_name=>'P23_SALES_CONTRACT_NO'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ml_sales_contract_no ',
'from master_list ',
'where ml_id = (select eom_sales_contract_id from enquiries_orders_mst where eom_enq_id = :P23_EOM_ENQ_ID)'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12861121392108248)
,p_name=>'P23_EOM_WEIGH_METHOD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Weighing Method'
,p_source=>'EOM_WEIGH_METHOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_WEIGH_METHOD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''WEIGH_METHOD''',
' and nvl(st_display,''Y'') =''Y''',
' order by st_display_order'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20491323267539780)
,p_name=>'P23_EOM_NO_OF_CONTAINERS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'No. of Containers'
,p_source=>'EOM_NO_OF_CONTAINERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
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
 p_id=>wwv_flow_imp.id(20491450832539781)
,p_name=>'P23_EOM_BROKER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Broker'
,p_source=>'EOM_BROKER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_BROKER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CTM_NAME as d, CTM_ID as r',
'From V_CONTACTS_MASTER ',
'where CTM_CATEGORY = ''BROKER''',
'and nvl(CTM_ACTIVE,''Y'') = ''Y''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Broker -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22346296285143017)
,p_name=>'P23_CONTAINER_SIZE_IDENTIFIER'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_contrainer_size varchar2(50);',
'begin',
'select st_extra2',
'into v_contrainer_size',
'from V_SETUP_TABLE , V_ENQUIRIES_ORDERS_MST',
'where st_type = ''CONTAINER_SIZE'' ',
'and st_code  = eom_container_size',
'and eom_enq_id = :P23_EOM_ENQ_ID;',
'return v_contrainer_size;',
'exception when others then',
'return 20;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47919889785780542)
,p_name=>'P23_EOM_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Created By'
,p_source=>'EOM_CREATED_BY'
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
 p_id=>wwv_flow_imp.id(47920157597784479)
,p_name=>'P23_EOM_CREATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Created On'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'EOM_CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>4
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
 p_id=>wwv_flow_imp.id(47920463379787425)
,p_name=>'P23_EOM_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Updated By'
,p_source=>'EOM_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ENQ_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(47920744115792349)
,p_name=>'P23_EOM_UPDATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Updated On'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'EOM_UPDATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_display_when=>'P23_EOM_ENQ_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(48134691003567470)
,p_name=>'P23_RGN_ENQ_ORD_STATUS_DESC'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48135032593567474)
,p_name=>'P23_RGN_ENQ_ORD_STATUS_ICON'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_source=>'fa-battery-1'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48135199999567475)
,p_name=>'P23_RGN_ENQ_ORD_NO_DESC'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48135615660567479)
,p_name=>'P23_CONFIRM_STATUS_REQ'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48135668620567480)
,p_name=>'P23_CONFIRM_STATUS_MSG'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54354679115088996)
,p_name=>'P23_EM_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(54356444099089013)
,p_name=>'P23_EXPENSE_DETAILS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(54356488604089014)
,p_prompt=>'Expense Details'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
 p_id=>wwv_flow_imp.id(79195171835031508)
,p_name=>'P23_EOM_VESSEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Vessel#'
,p_source=>'EOM_VESSEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1000
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(79195290442031509)
,p_name=>'P23_EOM_FREIGHT_MODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Freight Mode'
,p_source=>'EOM_FREIGHT_MODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PREPAID;Prepaid,COLLECT;Collect'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Freight Mode -'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(79195305607031510)
,p_name=>'P23_EOM_INS_POLICY_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Insurance Policy#'
,p_source=>'EOM_INS_POLICY_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(79195622962031513)
,p_name=>'P23_EOM_INS_POLICY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Insurance Policy Date'
,p_source=>'EOM_INS_POLICY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82482290211714177)
,p_name=>'P23_EOM_INVOICE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Invoice Date'
,p_source=>'EOM_INVOICE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'NEVER'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82482306778714178)
,p_name=>'P23_EOM_MODE_OF_SHIIPMENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Shipment Mode'
,p_source=>'EOM_MODE_OF_SHIPMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MODE_OF_SHIPMENT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ST_NAME d, ST_CODE r ',
'FROM V_SETUP_TABLE',
'WHERE ST_TYPE = ''SHIPPMENT_MODE''',
'ORDER BY ST_DISPLAY_ORDER'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Shipment Mode  -'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
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
 p_id=>wwv_flow_imp.id(83408092686493080)
,p_name=>'P23_RGN_ENQ_ORD_DESC'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83408261771493081)
,p_name=>'P23_RGN_INV_DESC'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109304032872207099)
,p_name=>'P23_FINAL_COSTING_TYPE_FLAG'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
' v_ct_flag varchar2(1);',
'begin',
'select case when EOM_FINAL_COSTING_TYPE is not null then ''Y'' else ''N'' end ',
'into v_ct_flag',
'from V_ENQUIRIES_ORDERS_MST',
'where EOM_ENQ_ID = :P23_EOM_ENQ_ID;',
'',
'return v_ct_flag;',
'',
'exception when others then',
'return ''N'';',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Final Costing Type different ?;Y'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109304178361207100)
,p_name=>'P23_EOM_FINAL_COSTING_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Costing Type'
,p_source=>'EOM_FINAL_COSTING_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_COSTING_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ST_NAME d, ST_CODE r ',
'FROM V_SETUP_TABLE',
'WHERE ST_TYPE = ''COSTING_TYPE''',
'ORDER BY ST_DISPLAY_ORDER'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Final Costing Type -'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
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
 p_id=>wwv_flow_imp.id(124954548168369767)
,p_name=>'P23_EOM_VERIFIED_GROSSMASS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Verified Gross Mass of Container'
,p_source=>'EOM_VERIFIED_GROSSMASS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(124954639980369768)
,p_name=>'P23_EOM_WEIGH_DATETIME'
,p_source_data_type=>'DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Date and Time of Weighing'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'EOM_WEIGH_DATETIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'button',
  'show_other_months', 'N',
  'year_range', '2005:2050')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124954772029369769)
,p_name=>'P23_EOM_WEIGH_SLIPNO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Weighing Slip No.'
,p_source=>'EOM_WEIGH_SLIPNO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(124954818068369770)
,p_name=>'P23_EOM_WEIGHBRIDGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'WeighBridge Details'
,p_source=>'EOM_WEIGHBRIDGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_WEIGHBRIDGE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  OFD_MESSAGE,OFD_ID',
'from V_OUTPUT_FORMS_MASTER ,',
'    V_OUTPUT_FORMS_DETAILS',
'where ofm_id = ofd_ofm_id',
'and OFM_NAME = ''ALL''',
'and OFD_CATEGORY = ''WEIGHBRIDGE''',
'order by OFD_DISPLAY_ORDER'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Weighbridge -'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124968619609357168)
,p_name=>'P23_EOM_ANALYST_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Authorized to sign'
,p_source=>'EOM_ANALYST_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_COMPANY_CONTACTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CTM_NAME d,',
'        CTM_ID r',
'from V_CONTACTS_MASTER',
'where CTM_CATEGORY = ''COMPANY''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>3
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124968863694357170)
,p_name=>'P23_EOM_MAX_WT_CSCPLATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Max. permissible wt. of container (CSC plate)'
,p_source=>'EOM_MAX_WT_CSCPLATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_item_comment=>'Maximum permissible weight of container as per the CSC plate'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(124968963327357171)
,p_name=>'P23_EOM_BOOKING_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Booking#'
,p_source=>'EOM_BOOKING_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(124969068635357172)
,p_name=>'P23_EOM_DESC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Description'
,p_source=>'EOM_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>250
,p_cMaxlength=>1000
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>12
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(124969111005357173)
,p_name=>'P23_CONTAINER_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_default=>'30'
,p_prompt=>'Container Type'
,p_source=>'EOM_CONTAINER_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_CONTAINER_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''CONTAINER_TYPE''',
' order by st_display_order'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Container Type -'
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
 p_id=>wwv_flow_imp.id(124969254007357174)
,p_name=>'P23_EOM_HAZARD_DETAILS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Hazardous Details (UN No., IMDG Class)'
,p_source=>'EOM_HAZARD_DETAILS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>500
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
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
 p_id=>wwv_flow_imp.id(125358271742264190)
,p_name=>'P23_EOM_NOTIFY_FLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_default=>'N'
,p_source=>'EOM_NOTIFY_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Notifying Party different ?;Y'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125358313410264191)
,p_name=>'P23_EOM_NOTIFY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Notifying Party'
,p_source=>'EOM_NOTIFY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cm_name as d,',
'       cm_id as r',
'  from V_CUSTOMER_MASTER',
' where nvl(cm_active,''Y'') = ''Y''',
'and cm_id <> :P23_EOM_CUSTOMER_ID',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select Notifying Party - '
,p_lov_cascade_parent_items=>'P23_EOM_CUSTOMER_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125416523464564088)
,p_name=>'P23_EOM_PORT_OF_LOADING'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Port of Loading'
,p_source=>'EOM_PORT_OF_LOADING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_PORT_OF_LOADING'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''PORT_OF_LOADING''',
' order by st_display_order'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Port of Loading -'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132380868373992600)
,p_name=>'P23_EOM_ENQ_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_source=>'EOM_ENQ_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132381104986992603)
,p_name=>'P23_EOM_COVER_NOTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Cover Note'
,p_source=>'EOM_COVER_NOTE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(132381255049992604)
,p_name=>'P23_EOM_BL_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'B/L#'
,p_source=>'EOM_BL_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(132381296175992605)
,p_name=>'P23_EOM_BL_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'B/L Date'
,p_source=>'EOM_BL_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(132381437137992606)
,p_name=>'P23_EOM_PRE_CARRIAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Pre Carriage'
,p_source=>'EOM_PRE_CARRIAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(132381511714992607)
,p_name=>'P23_EOM_VOYAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Voyage'
,p_source=>'EOM_VOYAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(132381600251992608)
,p_name=>'P23_EOM_CONTAINER_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Container#'
,p_source=>'EOM_CONTAINER_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_colspan=>3
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(132381746813992609)
,p_name=>'P23_EOM_SEAL_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Seal#'
,p_source=>'EOM_SEAL_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(132381888290992610)
,p_name=>'P23_EOM_SHIPPING_BILL_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Shipping Bill#'
,p_source=>'EOM_SHIPPING_BILL_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(132381987738992611)
,p_name=>'P23_EOM_SHIPPING_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Shipping Date'
,p_source=>'EOM_SHIPPING_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137341864688415287)
,p_name=>'P23_EOM_QUOTE_IN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Quote In'
,p_source=>'EOM_QUOTE_IN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'LOV_QUOTE_IN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r,',
'       st_extra2  as icon_column',
'  from V_SETUP_TABLE',
' where st_type = ''QUOTE_IN''',
' order by st_display_order'))
,p_cSize=>30
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137341985441415288)
,p_name=>'P23_EOM_COSTING_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Costing Type'
,p_source=>'EOM_COSTING_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_COSTING_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ST_NAME d, ST_CODE r ',
'FROM V_SETUP_TABLE',
'WHERE ST_TYPE = ''COSTING_TYPE''',
'ORDER BY ST_DISPLAY_ORDER'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Costing Type -'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(138315548459019615)
,p_name=>'P23_CONTAINER_SIZE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_default=>'30'
,p_prompt=>'Container Size'
,p_source=>'EOM_CONTAINER_SIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_CONTAINER_SIZE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''CONTAINER_SIZE''',
' and nvl(st_display,''Y'') =''Y''',
' order by st_display_order'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Container Size -'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_security_scheme=>'!'||wwv_flow_imp.id(102149068872733649)
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(284753074862745882)
,p_name=>'P23_EOM_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(81051487159893975)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Remarks'
,p_source=>'EOM_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="height:1px"'
,p_begin_on_new_line=>'N'
,p_colspan=>7
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
 p_id=>wwv_flow_imp.id(300382459300045916)
,p_name=>'P23_EOM_BANK_DUE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Bank Due Date'
,p_source=>'EOM_BANK_DUE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cattributes_element=>'onchange="htmldb_item_change(this)"'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300382586380045917)
,p_name=>'P23_EOM_OUR_DUE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Our Due Date'
,p_source=>'EOM_OUR_DUE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cattributes_element=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(300382700901045918)
,p_name=>'P23_EOM_ACTUAL_DUE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Actual Due Date'
,p_source=>'EOM_ACTUAL_DUE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cattributes_element=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451170241414787929)
,p_name=>'P23_CUSTOMER_LIST'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(451181853657023255)
,p_prompt=>'Customers'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CUSTOMER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cm_name as d,',
'       cm_id as r',
'  from V_CUSTOMER_MASTER',
' where nvl(cm_active,''Y'') = ''Y''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Customer -'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
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
 p_id=>wwv_flow_imp.id(451181793336023254)
,p_name=>'P23_MASTER_LIST'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(451181853657023255)
,p_prompt=>'Master List'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ml_name, ml_id',
'from V_MASTER_LIST',
'where nvl(ml_is_internal,''Y'') = ''N''',
'and ml_customer_id = :P23_CUSTOMER_LIST'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Master List -'
,p_lov_cascade_parent_items=>'P23_CUSTOMER_LIST'
,p_ajax_items_to_submit=>'P23_CUSTOMER_LIST,ML_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>1609122147107268652
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
 p_id=>wwv_flow_imp.id(3877542145785475109)
,p_name=>'P23_EOM_PORT_OF_DISCHARGE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Port of Discharge'
,p_source=>'EOM_PORT_OF_DISCHARGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ST_NAME,ST_CODE ',
'from V_SETUP_TABLE',
'where st_type = ''PORT_OF_DISCHARGE''',
'and ST_CODE in (SELECT REGEXP_SUBSTR ( CM_PORT_OF_DISCHARGE, ''([^:]+)'', 1, lvl)',
'    FROM V_CUSTOMER_MASTER,',
'         (SELECT LEVEL lvl',
'            FROM (SELECT MAX (LENGTH (REGEXP_REPLACE ( CM_PORT_OF_DISCHARGE || '':'', ''[^:]''))) mx',
'                    FROM V_CUSTOMER_MASTER',
'                    where CM_ID = :P23_EOM_CUSTOMER_ID)',
'          CONNECT BY LEVEL <= mx + 1)',
'   WHERE lvl - 1 <= LENGTH (REGEXP_REPLACE ( CM_PORT_OF_DISCHARGE || '':'', ''[^:]''))',
'     AND REGEXP_SUBSTR ( CM_PORT_OF_DISCHARGE, ''([^:]+)'', 1, lvl) IS NOT NULL',
'     AND CM_ID = :P23_EOM_CUSTOMER_ID)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Port of Discharge -'
,p_lov_cascade_parent_items=>'P23_EOM_CUSTOMER_ID'
,p_ajax_items_to_submit=>'P23_EOM_CUSTOMER_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ST_NAME,ST_CODE ',
'from V_SETUP_TABLE',
'where st_type = ''PORT_OF_DISCHARGE''',
'and ST_CODE in (SELECT distinct  trim(regexp_substr(CM_PORT_OF_DISCHARGE, ''[^:]+'', 1, level)) str',
'                  FROM V_CUSTOMER_MASTER ',
'                  where CM_ID = :P23_EOM_CUSTOMER_ID',
'                CONNECT BY instr(CM_PORT_OF_DISCHARGE, '':'', 1, level - 1) > 0',
'                )',
'                ',
'                ',
'select ST_NAME,ST_CODE ',
'from V_SETUP_TABLE',
'where st_type = ''PORT_OF_DISCHARGE''',
'and ST_CODE in (SELECT  APEX_UTIL.STRING_TO_TABLE(CM_PORT_OF_DISCHARGE)',
'                  FROM V_CUSTOMER_MASTER ',
'                  where CM_ID = :P23_EOM_CUSTOMER_ID);                '))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6952080218668554128)
,p_name=>'P23_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6952182783786567352)
,p_item_default=>'to_char(SYSDATE,''DD-MON-YYYY HH24:MI:SS'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To Date'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6952080336134554129)
,p_name=>'P23_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6952182783786567352)
,p_item_default=>'P23_EOM_CREATED_ON'
,p_item_default_type=>'ITEM'
,p_prompt=>'From Date'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_item_comment=>'to_char(&P23_EOM_CREATED_ON.,''DD-MON-YYYY HH:MIPM'')'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10990068423146976148)
,p_name=>'P23_TO_DATE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10990068625709976150)
,p_item_default=>'to_char(SYSDATE,''DD-MON-YYYY HH24:MI:SS'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To Date'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10990068493094976149)
,p_name=>'P23_FROM_DATE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10990068625709976150)
,p_item_default=>'P23_EOM_CREATED_ON'
,p_item_default_type=>'ITEM'
,p_prompt=>'From Date'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'MONTH_AND_YEAR',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_item_comment=>'to_char(&P23_EOM_CREATED_ON.,''DD-MON-YYYY HH:MIPM'')'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22047780618036672109)
,p_name=>'P23_EOM_STUFFING_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Stuffing Date'
,p_source=>'EOM_STUFFING_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22047782420115672127)
,p_name=>'P23_EOM_ESEAL_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(124968784791357169)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'E-Seal#'
,p_source=>'EOM_ESEAL_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(34099827085994489390)
,p_name=>'P23_EOM_ENQ_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_source=>'EOM_ENQ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099827403733489407)
,p_name=>'P23_EOM_ORD_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_source=>'EOM_ORD_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099827836618489407)
,p_name=>'P23_EOM_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81051487159893975)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Customer'
,p_source=>'EOM_CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CUSTOMER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cm_name as d,',
'       cm_id as r',
'  from V_CUSTOMER_MASTER',
' where nvl(cm_active,''Y'') = ''Y''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Customer -'
,p_cSize=>30
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_read_only_when=>'P23_EOM_ORD_ID'
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
 p_id=>wwv_flow_imp.id(34099828257503489408)
,p_name=>'P23_EOM_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_default=>'ENQUIRY'
,p_source=>'EOM_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099828607095489408)
,p_name=>'P23_EOM_ENQ_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_default=>'IP'
,p_source=>'EOM_ENQ_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099829005100489409)
,p_name=>'P23_EOM_ENQ_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Enquiry Date'
,p_source=>'EOM_ENQ_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_read_only_when=>'P23_EOM_ORD_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099829414583489410)
,p_name=>'P23_EOM_ENQ_DEL_DT'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Delivery Date'
,p_source=>'EOM_ENQ_DEL_DT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099829815079489410)
,p_name=>'P23_EOM_ORDER_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Order Date'
,p_source=>'EOM_ORDER_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_display_when=>'P23_EOM_ORD_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099830227441489410)
,p_name=>'P23_EOM_ORDER_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_default=>'IP'
,p_source=>'EOM_ORDER_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'Item Not NULL - P23_EOM_ORD_ID - Server Side condition removed to mark it as Never'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099830586854489411)
,p_name=>'P23_EOM_PAY_TERMS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
'Price : ',
'Delivery Period : ',
'Partial Shipment : ',
'Neg. Bank : '))
,p_prompt=>'Pay Terms'
,p_source=>'EOM_PAY_TERMS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>1
,p_tag_attributes=>'onchange="htmldb_item_change(this)" style="height:1px"'
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
 p_id=>wwv_flow_imp.id(34099831024404489411)
,p_name=>'P23_EOM_FRT_AMT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_source=>'EOM_FRT_AMT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099831402651489412)
,p_name=>'P23_EOM_CURRENT_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_source=>'EOM_CURRENT_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099831855552489412)
,p_name=>'P23_EOM_REALISE_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_item_source_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_prompt=>'Custom Rate'
,p_source=>'EOM_REALISE_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="htmldb_item_change(this)"'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099839275602489421)
,p_name=>'P23_EOM_ENQ_ID_NEXT'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099839671191489421)
,p_name=>'P23_EOM_ENQ_ID_PREV'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(34099824361928488940)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099840049297489421)
,p_name=>'P23_EOM_ENQ_ID_COUNT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(124834821777994487)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(34099878635531489472)
,p_computation_sequence=>1
,p_computation_item=>'P24_EOD_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_comment=>'This was called when Request = CREATE'
,p_compute_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(34107266877250017399)
,p_tabular_form_region_id=>wwv_flow_imp.id(143014971104458850)
,p_validation_name=>'EOD_ENQ_ID not null'
,p_validation_sequence=>30
,p_validation=>'EOD_ENQ_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'EOD_ENQ_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(34107267187226017402)
,p_tabular_form_region_id=>wwv_flow_imp.id(143014971104458850)
,p_validation_name=>'EOD_ENQ_ID must be numeric'
,p_validation_sequence=>30
,p_validation=>'EOD_ENQ_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_associated_column=>'EOD_ENQ_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(34107267671206017402)
,p_tabular_form_region_id=>wwv_flow_imp.id(143014971104458850)
,p_validation_name=>'EOD_MANUFAC_ID must be numeric'
,p_validation_sequence=>40
,p_validation=>'EOD_MANUFAC_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_associated_column=>'EOD_MANUFAC_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(34107268026704017402)
,p_tabular_form_region_id=>wwv_flow_imp.id(143014971104458850)
,p_validation_name=>'EOD_PRODUCT_ID not null'
,p_validation_sequence=>50
,p_validation=>'EOD_PRODUCT_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition_type=>'NEVER'
,p_associated_column=>'EOD_PRODUCT_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(34107268459676017403)
,p_tabular_form_region_id=>wwv_flow_imp.id(143014971104458850)
,p_validation_name=>'EOD_PRODUCT_ID must be numeric'
,p_validation_sequence=>50
,p_validation=>'EOD_PRODUCT_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_associated_column=>'EOD_PRODUCT_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(34107268858434017403)
,p_tabular_form_region_id=>wwv_flow_imp.id(143014971104458850)
,p_validation_name=>'EOD_QUANTITY must be numeric'
,p_validation_sequence=>60
,p_validation=>'EOD_QUANTITY'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'Y'
,p_associated_column=>'EOD_QUANTITY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(158195580337513008)
,p_tabular_form_region_id=>wwv_flow_imp.id(143014971104458850)
,p_validation_name=>'EOD_PRODUCT_ID'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_product_id varchar2(4000);',
'v_flag number := 0;',
'v_product_names varchar2(4000);',
'v_err_msg varchar2(4000);',
'v_sel_stmt varchar2(4000);',
'BEGIN ',
'	FOR i IN 1..APEX_APPLICATION.G_F04.COUNT LOOP',
'',
'	  IF (APEX_APPLICATION.G_F04(i) IS NOT NULL) THEN',
'',
'		FOR j IN 1..APEX_APPLICATION.G_F04.COUNT LOOP',
'		  IF (APEX_APPLICATION.G_F04(j) IS NOT NULL) THEN',
'',
'			 IF (APEX_APPLICATION.G_F05(i) = APEX_APPLICATION.G_F05(j)) AND (i != j) THEN',
'',
'				v_product_id := v_product_id || APEX_APPLICATION.G_F05(i) || '',''; ',
'				v_flag := 1;',
'			 END IF;',
'		  END IF;',
'',
'		END LOOP;',
'',
'	  END IF;',
'',
'	END LOOP;',
'',
'if v_flag = 1 then',
'    v_product_id := ''('' || SUBSTR(v_product_id , 1, INSTR(v_product_id , '','', -1)-1) || '')'';',
'	',
'        v_sel_stmt := ''select pm_name ',
'	 from V_PRODUCT_MASTER ',
'	  where pm_id in '' || v_product_id; ',
'',
'   insert into error_log (el_text) values (v_sel_stmt );',
'   commit;',
'',
'execute immediate v_sel_stmt INTO v_product_names ;',
'',
'',
'	v_err_msg := ''Duplicate products '' || v_product_names ||'' are selected'';',
'	',
'	v_flag := 0;',
'	',
'   RETURN v_err_msg;',
'end if;',
'    RETURN null;',
'exception when others then',
'	v_err_msg := ''Error while validating Duplicate Proucts'' || sqlerrm;',
'	  RETURN v_err_msg;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'EOD_PRODUCT_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(125660678768889700)
,p_validation_name=>'P23_EOM_NOTIFY_ID must be selected'
,p_validation_sequence=>80
,p_validation=>'P23_EOM_NOTIFY_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Notifying Party must have a value.'
,p_validation_condition=>'P23_EOM_NOTIFY_FLAG'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_imp.id(125358313410264191)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(20491497944539782)
,p_tabular_form_region_id=>wwv_flow_imp.id(143014971104458850)
,p_validation_name=>'Dynamic Validations Hook - Products IG'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_sql varchar2(4000);',
'v_cnt number;',
'v_error_msg varchar2(4000);',
'v_fail_flag number := 0;',
'',
'cursor cur_validations is ',
'select VM_SQL , VM_ERROR_MSG',
'from V_VALIDATION_MASTER',
'where vm_page_no = :APP_PAGE_ID',
'and nvl(VM_ACTIVE_YN,''Y'') = ''Y''',
'and vm_page_section = ''PRODUCTS_IG'';',
'begin',
'--insert into error_log(el_text) values (''inside dynamic validation block - '' || :EOD_PRODUCT_ID || '' qty - ''  || :EOD_QUANTITY);',
'for i in cur_validations loop',
'v_sql := i.VM_SQL;',
'--v_sql := ''select count (distinct eod_exchange_rate) from V_ENQUIRIES_ORDERS_DETAILS where eod_enq_id = '' ||:P23_EOM_ENQ_ID ||''and eod_exchange_rate != ''|| :P23_EOM_REALISE_RATE;',
'--insert into error_log(el_text) values (''product id - '' ||:EOD_PRODUCT_ID || '' qty - ''  || :EOD_QUANTITY);',
'',
'execute immediate v_sql into v_cnt;',
'',
'if v_cnt != 0 then ',
'    v_error_msg := i.VM_ERROR_MSG;',
'    	apex_error.add_error (',
'			p_message          => v_error_msg,',
'			p_display_location => apex_error.c_inline_in_notification );  ',
'   v_fail_flag := 1;',
'   --insert into error_log(el_text) values (v_sql);',
'end if;',
'end loop;',
'',
'if v_fail_flag = 0 then ',
'--insert into error_log(el_text) values (''v_fail_flag - '' || v_fail_flag);',
'    return null;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(164194543338127383)
,p_name=>'notes nolink'
,p_event_sequence=>5
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(164194966808127395)
,p_event_id=>wwv_flow_imp.id(164194543338127383)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''a.nolink'').attr("onclick","alert(''You cannot edit this Note'');return false;");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(138091387782356490)
,p_name=>'Add Notes - Dialog Closed'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(30966061195055147)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(138091772034356508)
,p_event_id=>wwv_flow_imp.id(138091387782356490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30966061195055147)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(103494495364742035)
,p_name=>'Products Detial Region Popup - Dialog Closed'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_da_event_comment=>'This dynamic action will be called if any popup initiated from this region is closed programmatically i.e. dialog closed is called after save and it closes. This is not triggered when ESC or close button is hit.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82481729537714172)
,p_event_id=>wwv_flow_imp.id(103494495364742035)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11430727869904641)
,p_name=>'Close event'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'body'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'dialogclose'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11430626016904640)
,p_event_id=>wwv_flow_imp.id(11430727869904641)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34099824361928488940)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284751637994745867)
,p_event_id=>wwv_flow_imp.id(11430727869904641)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34099824361928488940)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alert(''in referesh of close event dynamic action'');',
'apex.event.trigger( "#ENQ_MST_RGN", "apexrefresh" );'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124710179234430465)
,p_name=>'calculate_base_price'
,p_event_sequence=>90
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_triggering_element=>'EOD_TRADE_PRICE,EOD_SCHEME_PERC,EOD_DISCOUNT_PERC,EOD_GST_PERC,EOD_PURCHASE_AMT,EOD_TOTAL_GST_PERC,EOD_STW_RND_20,EOD_COSTING_UNIT,EOD_STW_RND_40,EOD_STW_RND_40HC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_da_event_comment=>'Added EOD_TOTAL_GST_PERC on 12-Dec-18 as costing should be recalc. on change of GST%'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124710500212430545)
,p_event_id=>wwv_flow_imp.id(124710179234430465)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EOD_SCHEME_AMT,EOD_PURCHASE_AMT,EOD_DISCOUNT_AMT,EOD_CALC_AMT_UNITWISE_RND'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''i am in calc base price dynamic action'');',
'initialize();',
'fcalc_base_price();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124171906490665176)
,p_name=>'calc_when_tradeprice_0'
,p_event_sequence=>100
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_triggering_element=>'EOD_TRADE_PRICE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EOD_TRADE_PRICE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_da_event_comment=>'When manually Trade Price is modified to 0 then Purchase Amt should be set as 0 and recalculated'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124172090333665177)
,p_event_id=>wwv_flow_imp.id(124171906490665176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EOD_SCHEME_AMT,EOD_PURCHASE_AMT,EOD_DISCOUNT_AMT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''i am in calc base price dynamic action'');',
'fset_value(''EOD_PURCHASE_AMT'',0);',
'initialize();',
'fcalc_base_price();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124710974216436140)
,p_name=>'calculate net purchase'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_triggering_element=>'EOD_TRANS_CHARGES,EOD_BAGS_CTNS,EOD_RECOV_ON_FRT,EOD_REPACKING,EOD_EXTRA,EOD_GODOWN_CHARGES,EOD_TESTING_CHARGES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124711348100436142)
,p_event_id=>wwv_flow_imp.id(124710974216436140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EOD_NET_PURCHASE_VAL'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''i am in net purchase amt dynamic action'');',
'initialize();',
'fcalc_net_purchase();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124741280296072710)
,p_name=>'calculate financials'
,p_event_sequence=>120
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_triggering_element=>'EOD_PROFIT_PERC,EOD_INTEREST_PERC,EOD_DUTY_PERC,EOD_ECGC_PERC,EOD_BANK_COMM_PERC,EOD_INCOME_TAX_PERC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_da_event_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Original Cols. changed on 04/22/18 as initialize called multiple times so removed non-perc. cols -',
'',
'EOD_PROFIT_PERC,EOD_INCOME_TAX,EOD_DUTY_PERC,EOD_ECGC,EOD_BANK_COMM,EOD_INTEREST_PERC,EOD_DUTY_PERC,EOD_ECGC_PERC,EOD_BANK_COMM_PERC,EOD_INCOME_TAX_PERC'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124741689952072731)
,p_event_id=>wwv_flow_imp.id(124741280296072710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EOD_NET_PURCHASE_VAL'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''i am in calac financials dynamic action'');',
'initialize();',
'fcalc_financials();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124744225450435590)
,p_name=>'calculate costing type'
,p_event_sequence=>130
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_triggering_element=>'EOD_EXCHANGE_RATE,EOD_COMMISSION_PERC,EOD_OCEAN_FRT,EOD_INSURANCE_PERC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124744683769435592)
,p_event_id=>wwv_flow_imp.id(124744225450435590)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'EOD_FOB_RS,EOD_FOB_DOLL,EOD_FOBC_AMT,EOD_FOB_DOLL_RND,EOD_FRT_PER_CTN,EOD_CANDF_AMT,EOD_CANDFC_AMT,EOD_CANDF_AMT_RND,EOD_INSURANCE_AMT,EOD_CIF_AMT,EOD_CIFC_AMT,EOD_CIF_AMT_RND,EOD_CNI_AMT,EOD_CNIC_AMT,EOD_CNI_AMT_RND'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''i am in calc costing dynamic action'');',
'initialize();',
'fcalc_financials();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124780936178403050)
,p_name=>'calculate fob exp amt'
,p_event_sequence=>140
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_triggering_element=>'EOD_VOL_FOB_AMT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124781389949403063)
,p_event_id=>wwv_flow_imp.id(124780936178403050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EOD_VOL_FOB_EXP'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''i am in calc fob exp dynamic action'');',
'initialize();',
'fcalc_fob_exp_amt();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124835637434994495)
,p_name=>'Refresh Header Container section on IG save'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124836637720994505)
,p_event_id=>wwv_flow_imp.id(124835637434994495)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124836476526994503)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124836071893994499)
,p_event_id=>wwv_flow_imp.id(124835637434994495)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124835053954994489)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284751483500745866)
,p_event_id=>wwv_flow_imp.id(124835637434994495)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143014971104458850)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28841506937397874445)
,p_event_id=>wwv_flow_imp.id(124835637434994495)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28841508366671874459)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124836709093994506)
,p_name=>'Onchange Container Type - Refresh Header Container'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_CONTAINER_SIZE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124836953224994508)
,p_event_id=>wwv_flow_imp.id(124836709093994506)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(124836476526994503)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22346570322143020)
,p_event_id=>wwv_flow_imp.id(124836709093994506)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Costing Recalculate'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Kindly re-calculate the Per MT / Per KG product costing if container size is modified and saved'
,p_attribute_02=>'Re-calculate Costing'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124837950636994518)
,p_name=>'Other than FOB Hide columns'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_EOM_COSTING_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124838035522994519)
,p_event_id=>wwv_flow_imp.id(124837950636994518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'fdisp_calc_type();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124838278861994521)
,p_name=>'Show All columns'
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124838131385994520)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124838390010994522)
,p_event_id=>wwv_flow_imp.id(124838278861994521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'fdisp_calc_type();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124838512735994524)
,p_name=>'Show Columns to Review'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(124838473092994523)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124838661186994525)
,p_event_id=>wwv_flow_imp.id(124838512735994524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var gridView = apex.region("product_details").widget().interactiveGrid("getViews").grid;',
'var col, colName;',
'var v_cols = ''PM_NAME,EOD_MANUFAC_ID,EOD_PRODUCT_ID,EOD_QUANTITY,HCM_DRAWBACK,EOD_PROFIT_PERC,EOD_PROFIT_AMT,EOD_EXCHANGE_RATE,EOD_FOB_RS,EOD_FOB_DOLL,EOD_COMMISSION_PERC,EOD_FOBC_AMT,EOD_FOB_DOLL_RND,EOD_VERIFIED,TOTALPURCHASE,EOD_PURCHASE_AMT'';',
'//EOD_DISCOUNT_PERC,EOD_DISCOUNT_AMT,',
'col = gridView.view$.grid("getColumns");',
'//alert (col.length);',
'for( i = 1; i < col.length-1; i++) {',
'colName = col[i].property;',
'//alert (isHidden(colName));',
'    if ((gridView.modelColumns[colName].hidden  === false) && (!v_cols.includes(colName))){',
'   apex.region("product_details").widget().interactiveGrid("getViews","grid").view$.grid("hideColumn",colName);',
'',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(125358480599264192)
,p_name=>'Hide Show Notify Party'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_EOM_NOTIFY_FLAG'
,p_condition_element=>'P23_EOM_NOTIFY_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125358546271264193)
,p_event_id=>wwv_flow_imp.id(125358480599264192)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_EOM_NOTIFY_ID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125358643987264194)
,p_event_id=>wwv_flow_imp.id(125358480599264192)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_EOM_NOTIFY_ID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125358784809264195)
,p_event_id=>wwv_flow_imp.id(125358480599264192)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_EOM_NOTIFY_ID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109304247925207101)
,p_name=>'Hide Show Final Costing Type'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_FINAL_COSTING_TYPE_FLAG'
,p_condition_element=>'P23_FINAL_COSTING_TYPE_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109304297574207102)
,p_event_id=>wwv_flow_imp.id(109304247925207101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_EOM_FINAL_COSTING_TYPE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109304405501207103)
,p_event_id=>wwv_flow_imp.id(109304247925207101)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_EOM_FINAL_COSTING_TYPE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109304548742207104)
,p_event_id=>wwv_flow_imp.id(109304247925207101)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_EOM_FINAL_COSTING_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124969370587357175)
,p_name=>'Hide Show Hazard Details'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_CONTAINER_TYPE'
,p_condition_element=>'P23_CONTAINER_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'HAZARDOUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124969409959357176)
,p_event_id=>wwv_flow_imp.id(124969370587357175)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_EOM_HAZARD_DETAILS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124969521676357177)
,p_event_id=>wwv_flow_imp.id(124969370587357175)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_EOM_HAZARD_DETAILS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124969663471357178)
,p_event_id=>wwv_flow_imp.id(124969370587357175)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_EOM_HAZARD_DETAILS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(29213180845572683)
,p_name=>'Update Status - ORD_STATUS'
,p_event_sequence=>230
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
,p_display_when_type=>'NEVER'
,p_da_event_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Added this to refresh the page after the IG save is used, to fetch the latest status on screen.',
'removed request = value (DELETE) condition on 13-jul-20'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(29213292847572684)
,p_event_id=>wwv_flow_imp.id(29213180845572683)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27514097833570998)
,p_name=>'Assign IG Row Color based on status'
,p_event_sequence=>240
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27514164893570999)
,p_event_id=>wwv_flow_imp.id(27514097833570998)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'igStatusColor("product_details","ST_EXTRA1","ST_EXTRA2");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28147290366058943)
,p_name=>'Click Main Save - save IG data also'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(34099824833651488941)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28147495240058945)
,p_event_id=>wwv_flow_imp.id(28147290366058943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'SAVE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28147453327058944)
,p_event_id=>wwv_flow_imp.id(28147290366058943)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.region("product_details").widget().interactiveGrid("getActions").invoke("save");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30968968209055176)
,p_name=>'After Save of Notes IG'
,p_event_sequence=>260
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(30966061195055147)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
,p_da_event_comment=>'This dynamic action is used to refresh the Notes Detail view (with icon and text). '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30969086962055177)
,p_event_id=>wwv_flow_imp.id(30968968209055176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(30966061195055147)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(143014962724343578)
,p_name=>'Apply Row Color When View Changes'
,p_event_sequence=>270
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(143014844758343577)
,p_event_id=>wwv_flow_imp.id(143014962724343578)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(143014971104458850)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'igStatusColor("product_details","ST_EXTRA1","ST_EXTRA2");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(283893499709178696)
,p_name=>'Click Generate Invoice#'
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48134624922567469)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from V_ENQUIRIES_ORDERS_MST',
'where EOM_ENQ_ID = :P23_EOM_ENQ_ID',
'and EOM_INVOICE_NO is null'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(283893152156178692)
,p_event_id=>wwv_flow_imp.id(283893499709178696)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P0_CONFIRM_MSG'',''Do you want to generate Invoice# ?'');',
'$s(''P0_REQ'',''SB_GEN_INV'');',
'openModal(''SB_CONFIRM'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1456544414401787594)
,p_name=>'Validate FOB Rounded Amount'
,p_event_sequence=>290
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_triggering_element=>'EOD_FOB_DOLL_RND'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1456544262322787593)
,p_event_id=>wwv_flow_imp.id(1456544414401787594)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fobrndtol = &APP_FOB_RND_TOLERANCE.; ',
'',
'if (Math.abs($v(''EOD_FOB_DOLL'') - $v(''EOD_FOB_DOLL_RND'')) > fobrndtol )',
'     {',
'        // $s(''P0_CONFIRM_MSG'',"This FOB Rounded amount is more than the rounding tolerance amount of 5 ( FOB = "+ $v(''EOD_FOB_DOLL'') + " and FOB Rounded = " + $v(''EOD_FOB_DOLL_RND'')+ " ), Do you really want to update it ?");',
'          $s(''P0_CONFIRM_MSG'',"This FOB Rounded amount is more than the FOB rounding tolerance amount of "+ fobrndtol +" ( FOB = "+ $v(''EOD_FOB_DOLL'') + " ), Do you really want to update it to "+ $v(''EOD_FOB_DOLL_RND'') +" ?");',
'         $s(''P0_REQ'',''SB_CONFIRM_FOBRND'');',
'         openModal(''SB_CONFIRM'');',
'     }',
'     ',
'',
'/*apex.message.confirm( "This entered value is more than the rounding tolerance amount of 5, Do you really want to update it ?", function( okPressed ) { ',
'if( !(okPressed) ) {',
'   //apex.item("P1_YOURITEM").setValue("Y"); ',
'   // change the item above with your page item',
'   $s(''EOD_FOB_DOLL_RND'',$v(''EOD_FOB_DOLL''));',
'} ',
'});*/'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1456543311076787583)
,p_name=>'Click Copy Enquiry'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48134870162567472)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1456543202164787582)
,p_event_id=>wwv_flow_imp.id(1456543311076787583)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P0_CONFIRM_MSG'',"Do you want to Copy this "+ $v(''P23_RGN_ENQ_ORD_NO_DESC'')  +" ?");',
'//$s(''P0_REQ'',''SB_CONFIRM_COPY'');',
'$s(''P0_REQ'',''COPY'');',
'openModal(''SB_CONFIRM'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6952079681304554122)
,p_name=>'SearchHistory'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(6952079736636554123)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6951883186527450271)
,p_event_id=>wwv_flow_imp.id(6952079681304554122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6952182783786567352)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8209193016306718460)
,p_name=>'Add Attachment - Dialog Closed'
,p_event_sequence=>340
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8224589094351906742)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8209192936674718459)
,p_event_id=>wwv_flow_imp.id(8209193016306718460)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8224589094351906742)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43947708136486738)
,p_name=>'AlertCalcAmtRndForToleranceDiff'
,p_event_sequence=>345
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_triggering_element=>'EOD_CALC_AMT_UNITWISE_RND'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43947619189486737)
,p_event_id=>wwv_flow_imp.id(43947708136486738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_rnd_tolerance = &APP_FOB_RND_TOLERANCE.; ',
'',
'if (Math.abs($v(''EOD_CALC_AMT_UNITWISE_RND'') - $v(''EOD_CALC_AMT_UNITWISE'')) > v_rnd_tolerance )',
'     {',
'        // $s(''P0_CONFIRM_MSG'',"This FOB Rounded amount is more than the rounding tolerance amount of 5 ( FOB = "+ $v(''EOD_FOB_DOLL'') + " and FOB Rounded = " + $v(''EOD_FOB_DOLL_RND'')+ " ), Do you really want to update it ?");',
'          $s(''P0_CONFIRM_MSG'',"This rounded amount is more than the rounding tolerance amount of "+ v_rnd_tolerance +" ( calculated amount = "+ $v(''EOD_CALC_AMT_UNITWISE'') + " ), Do you really want to update it to "+ $v(''EOD_CALC_AMT_UNITWISE_RND'') +'
||'" ?");',
'         $s(''P0_REQ'',''SB_CONFIRM_FOBRND'');',
'         openModal(''SB_CONFIRM'');',
'     }',
'     ',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(43948070471486742)
,p_name=>'Calculate Unit Price Based on Calc Round Amt'
,p_event_sequence=>350
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_triggering_element=>'EOD_CALC_AMT_UNITWISE_RND'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(43948021948486741)
,p_event_id=>wwv_flow_imp.id(43948070471486742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Calc Unit Price Based on Calc Amt Rnd'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initialize();',
'fcalc_onChange_CalcRndAmt();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(96365066384558020)
,p_name=>'Stock - Dialog Closed'
,p_event_sequence=>360
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12796068205660358516)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96364905365558018)
,p_event_id=>wwv_flow_imp.id(96365066384558020)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Submit Page to refresh status of product & order'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'REFRESH_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71398846088601226)
,p_name=>'Calculate Profit%'
,p_event_sequence=>370
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_triggering_element=>'EOD_PROFIT_PERC_GST_PURCHASE,EOD_TOTAL_GST_PERC'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EOD_PROFIT_PERC_GST_PURCHASE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71398904410601227)
,p_event_id=>wwv_flow_imp.id(71398846088601226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Calculate Profit%'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_amt number := 100;',
'v_net_amt number;',
'v_profit_perc number;',
'BEGIN',
'',
'v_net_amt := v_amt - round((v_amt * :EOD_TOTAL_GST_PERC)/100,2);',
'insert into error_log(el_text) values (''v_net_amt - '' || v_net_amt);',
'',
'v_profit_perc := round((:EOD_PROFIT_PERC_GST_PURCHASE/v_net_amt)*100,2);',
'',
'insert into error_log(el_text) values (''EOD_PROFIT_PERC_GST_PURCHASE - '' || :EOD_PROFIT_PERC_GST_PURCHASE);',
'',
':EOD_PROFIT_PERC := v_profit_perc;',
'',
'END;'))
,p_attribute_02=>'EOD_PROFIT_PERC_GST_PURCHASE,EOD_TOTAL_GST_PERC'
,p_attribute_03=>'EOD_PROFIT_PERC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3537531754599368)
,p_name=>'Calculate CGST% and SGST%'
,p_event_sequence=>380
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(143014971104458850)
,p_triggering_element=>'EOD_TOTAL_GST_PERC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3537362109599367)
,p_event_id=>wwv_flow_imp.id(3537531754599368)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Set value of CGST%  and SGST%'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':EOD_CGST_PERC := (:EOD_TOTAL_GST_PERC/2);',
':EOD_SGST_PERC := (:EOD_TOTAL_GST_PERC/2);',
'END;'))
,p_attribute_02=>'EOD_TOTAL_GST_PERC'
,p_attribute_03=>'EOD_CGST_PERC,EOD_SGST_PERC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34099833014479489414)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(34099824361928488940)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from V_ENQUIRIES_ORDERS_MST'
,p_process_error_message=>'Error : Automatic Row Fetch'
,p_internal_uid=>34099884164110317910
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44773687385610888)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize App or Page Items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    begin',
'        select ST_EXTRA2 ,ST_EXTRA1',
'        into :APP_QUOTE_IN ,:APP_QUOTE_IN_SYMBOL',
'        From V_SETUP_TABLE ',
'        where ST_TYPE = ''QUOTE_IN'' ',
'        and ST_CODE = :P23_EOM_QUOTE_IN;',
'    exception when others then',
'        :APP_QUOTE_IN  := ''fa-usd'';',
'        :APP_QUOTE_IN_SYMBOL := ''$'';',
'    end;',
'',
'    begin',
'    select EM_ID into :P23_EM_ID from V_EXPENSE_MASTER where EM_ENQ_ID = :P23_EOM_ENQ_ID;',
'    exception when others then',
'    :P23_EM_ID := '''';',
'    end;',
'    ',
'    /*',
'    begin',
'    if :P23_EM_ID is not null then',
'         select listagg(ST_NAME || ''-'' || ED_EXPENSE_AMOUNT,chr(10)) expenses  ',
'         into :P23_EXPENSE_DETAILS',
'         from V_EXPENSE_DETAILS , V_SETUP_TABLE ',
'        where st_type = ''EXPENSE_TYPE''',
'        and ED_EXPENSE_TYPE = ST_CODE',
'        and ED_EM_ID = :P23_EM_ID',
'        and ED_EXPENSE_AMOUNT is not null;',
'    end if;',
'    exception when others then',
'    :P23_EXPENSE_DETAILS := '''';',
'    end;*/',
'    ',
'    begin',
'        select  NVL2(EOM_ORD_ID,''Order Details'',''Enquiry Details'') enq_ord,',
'        NVL2(EOM_ORD_ID,''Order# : '',''Enquiry# : '') || EOM_ENQ_NO enq_ord_no,',
'        NVL2(EOM_ORD_ID,''Status : '' || (select ST_NAME from V_SETUP_TABLE where ST_TYPE= ''ORDER_STATUS'' and ST_CODE = EOM_ORDER_STATUS),',
'                             ''Status : '' || (select ST_NAME from V_SETUP_TABLE where ST_TYPE= ''ENQUIRY_STATUS'' and ST_CODE = EOM_ENQ_STATUS)) enq_ord_status,',
'        NVL2(EOM_ORD_ID, case when EOM_ORDER_STATUS = ''IP'' then ''fa-battery-0''',
'                                  when EOM_ORDER_STATUS = ''PPO'' then ''fa-battery-1''',
'                                  when EOM_ORDER_STATUS = ''POI'' then ''fa-battery-2''',
'                                  when EOM_ORDER_STATUS = ''PR'' then ''fa-battery-3''',
'                                  when EOM_ORDER_STATUS = ''RC'' then ''fa-battery-4''',
'                                  when EOM_ORDER_STATUS = ''SHP'' then decode(EOM_MODE_OF_SHIPMENT,''AIR'',''fa-plane'',''fa-ship'')',
'                                  --when EOM_ORDER_STATUS = ''PPO'' then ''''',
'                                  else ''fa-battery-0''',
'                                  end,',
'                             case when EOM_ENQ_STATUS = ''IP'' then ''fa-battery-0''',
'                                  when EOM_ENQ_STATUS = ''AW'' then ''fa-battery-2 fam-warning fam-is-warning''',
'                                  when EOM_ENQ_STATUS = ''AP'' then ''fa-battery-4 fam-check fam-is-success''',
'                                  when EOM_ENQ_STATUS = ''RJ'' then ''fa-battery-0 fam-x fam-is-danger''',
'                                  else ''fa-battery-0''',
'                                  end',
'                            ) enq_ord_status_icon,',
'        NVL2(EOM_ORD_ID ,NVL2(EOM_INVOICE_NO,''Invoice# : '',''Generate Invoice#'') || EOM_INVOICE_NO, '''')  inv_no ',
'        --NVL2(EOM_INVOICE_NO,''Order Details : '',''Enquiry Details : '') || EOM_ENQ_NO || ',
'        into :P23_RGN_ENQ_ORD_DESC,:P23_RGN_ENQ_ORD_NO_DESC , :P23_RGN_ENQ_ORD_STATUS_DESC,  :P23_RGN_ENQ_ORD_STATUS_ICON, :P23_RGN_INV_DESC',
'        from V_ENQUIRIES_ORDERS_MST',
'        where EOM_ENQ_ID = :P23_EOM_ENQ_ID;',
'    exception when others then',
'        :P23_RGN_ENQ_ORD_DESC := '''';',
'        :P23_RGN_ENQ_ORD_NO_DESC := '''';',
'        :P23_RGN_ENQ_ORD_STATUS_DESC := '''';  ',
'        :P23_RGN_ENQ_ORD_STATUS_ICON := '''';  ',
'        :P23_RGN_INV_DESC := '''';',
'    end;',
'    ',
'/*    ',
'    if :P23_EOM_ENQ_STATUS = ''IP'' then',
'        :P23_CONFIRM_STATUS_MSG := ''Do you want to send this Enquiry for Customer Approval ?'';',
'        :P23_CONFIRM_STATUS_REQ := ''UPDATE_STATUS_ENQORD'';',
'    elsif :P23_EOM_ENQ_STATUS = ''AW'' then',
'        :P23_CONFIRM_STATUS_MSG := ''Do you want to Approve and Place Order for this Enquiry ?'';',
'        :P23_CONFIRM_STATUS_REQ := ''UPDATE_STATUS_ENQORD'';',
'    elsif :P23_EOM_ORDER_STATUS = ''RC'' then',
'        :P23_CONFIRM_STATUS_MSG := ''Do you want to mark this Order as Shipped ?'';',
'        :P23_CONFIRM_STATUS_REQ := ''UPDATE_STATUS_ENQORD'';',
'    end if;',
'   */ ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P23_EOM_ENQ_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>44824837016439384
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27512155510570979)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize App or Page Items Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   ',
'        :P23_RGN_ENQ_ORD_DESC := ''Enquiry Details'';',
'        :P23_RGN_ENQ_ORD_NO_DESC := '''';',
'        :P23_RGN_ENQ_ORD_STATUS_DESC := '''';  ',
'        :P23_RGN_ENQ_ORD_STATUS_ICON := '''';  ',
'        :P23_RGN_INV_DESC := '''';',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P23_EOM_ENQ_ID'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>27563305141399475
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34099833466662489415)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK - Enq. Master'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P23_EOM_ENQ_ID is null then',
'        select "#OWNER#"."SEQ_EOM_ID".nextval',
'          into :P23_EOM_ENQ_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(34099824777999488941)
,p_internal_uid=>34099884616293317911
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34099833828692489415)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(34099824361928488940)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of V_ENQUIRIES_ORDERS_MST'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_process_error_message=>'Enquiry/Order failed to save.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Enquiry/Order saved successfully.'
,p_internal_uid=>34099884978323317911
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(5911359372714961996)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(143014971104458850)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Status to Costing Done'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_error_msg varchar2(4000);',
'	l_scope logger_logs.scope%type := ''Update Status to Costing Done -23 '';',
'	l_params logger.tab_param;',
'    v_fob_doll    number;',
'BEGIN',
'    logger.LOG(''START'', l_scope);',
'       ',
'    ',
'    select    nvl(EOD_FOB_DOLL,-1) into v_fob_doll',
'    from      V_ENQUIRIES_ORDERS_DETAILS',
'    where     EOD_ENQ_ID = :P23_EOM_ENQ_ID',
'    and       EOD_ID = :EOD_ID',
'    and       EOD_PRODUCT_STATUS is null;',
'    ',
'     logger.LOG(''ranu'' || v_fob_doll , l_scope);',
'     ',
'    IF v_fob_doll <> nvl(:EOD_FOB_DOLL,-1) THEN',
'    :EOD_PRODUCT_STATUS    := ''CD'';',
'   END IF;',
'',
'     logger.log(''END'', l_scope, null, l_params);',
'     ',
'EXCEPTION WHEN OTHERS THEN',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
' logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'END;     '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>5911410522345790492
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(143024347509459010)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(143014971104458850)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Products - Save IG'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_process_error_message=>'Error while saving Product Costing'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>143075497140287506
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(132380620744992598)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(30966061195055147)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Notes - Save IG'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>132431770375821094
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(158173005790149614)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(143014971104458850)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update_mst_prod_details -NEVER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	v_product_id varchar2(4000);',
'    v_msg varchar2(4000);',
'    v_update_stmt varchar2(4000);',
'    v_flag number := 0;',
'    v_success_failure number;',
'    v_err_msg varchar2(2000);',
'    ',
'    V_TOTAL_CBM           number    := 0;    ',
'    V_TOTAL_NET_WT        number := 0;    ',
'    V_TOTAL_GROSS_WT      number := 0;      ',
'    V_TOTAL_CONTAINER_AMT number := 0;    ',
'    V_TOTAL_PROFIT_AMT    number:= 0;    ',
'    V_TOTAL_QTY           number:= 0; ',
'    ',
'   ',
'  /*Added by Rahul on 08212019 to implement logger Start */',
'	l_scope logger_logs.scope%type := ''update_mst_prod_details'';',
'	l_params logger.tab_param;',
'	--End Rahul 08212019',
'    ',
'begin',
'    logger.LOG(''START'', l_scope);',
'   ',
'    declare',
'	v_product_id varchar2(4000);',
'    v_msg varchar2(4000);',
'    v_update_stmt varchar2(4000);',
'    v_success_failure number;',
'    v_err_msg varchar2(2000);',
'begin',
'select LISTAGG(EOD_PRODUCT_ID, '', '')',
'         WITHIN GROUP (ORDER BY EOD_PRODUCT_ID)',
' into 	v_product_id	 ',
'from V_ENQUIRIES_ORDERS_DETAILS',
'where eod_enq_id = :P23_EOM_ENQ_ID',
'and nvl (EOD_NET_PURCHASE_VAL,0) = 0;',
'',
'if v_product_id is not null then',
'  v_product_id := v_product_id || '','';',
'  v_product_id := ''('' || SUBSTR(v_product_id , 1, INSTR(v_product_id , '','', -1)-1) || '')'';',
'   ',
'   --insert into error_log (el_text) values (v_product_id );',
'  ',
'  ',
' v_update_stmt :=  ''update V_ENQUIRIES_ORDERS_DETAILS',
'set (EOD_MRP,',
'  EOD_TRADE_PRICE,    ',
'  EOD_PURCHASE_AMT,',
'  EOD_SCHEME_PERC,',
'  EOD_SCHEME_AMT,',
'  EOD_DISCOUNT_PERC,',
'  EOD_DISCOUNT_AMT,',
'  EOD_GST_PERC,',
'  EOD_GST_AMT,',
'  EOD_SGST_PERC,',
'  EOD_CGST_PERC,',
'  EOD_TOTAL_GST_PERC,  ',
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
'  EOD_INCOME_TAX_PERC,',
'  EOD_INCOME_TAX,',
'  EOD_DUTY_PERC,',
'  EOD_DUTY_AMT,',
'  EOD_ECGC_PERC,',
'  EOD_ECGC,',
'  EOD_BANK_COMM_PERC,',
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
'  EOD_COSTING_TYPE)',
'  =',
'  (',
'    SELECT ',
'  PM_MRP,',
'  PM_TRADE_PRICE,',
'  PM_PURCHASE_AMT,',
'  PM_SCHEME_PERC,',
'  PM_SCHEME_AMT,',
'  PM_DISCOUNT_PERC,',
'  PM_DISCOUNT_AMT,',
'  PM_GST_PERC,',
'  PM_GST_AMT,',
'  PM_SGST_PERC,',
'  PM_CGST_PERC,',
'  PM_TOTAL_GST_PERC,      ',
'  PM_TRANS_CHARGES,',
'  PM_BAGS_CTNS,',
'  PM_RECOV_ON_FRT,',
'  PM_REPACKING,',
'  PM_EXTRA,',
'  PM_NET_PURCHASE_VAL,',
'  PM_VOL_FOB_AMT,',
'  PM_VOL_FOB_EXP,',
'  PM_PROFIT_PERC,',
'  PM_PROFIT_AMT,',
'  PM_INCOME_TAX_PERC,',
'  PM_INCOME_TAX,',
'  PM_DUTY_PERC,',
'  PM_DUTY_AMT,',
'  PM_ECGC_PERC,',
'  PM_ECGC,',
'  PM_BANK_COMM_PERC,',
'  PM_BANK_COMM,',
'  PM_INTEREST_PERC,',
'  PM_INTEREST_AMT,',
'  PM_EXCHANGE_RATE,',
'  PM_FOB_RS,',
'  PM_FOB_DOLL,',
'  PM_COMMISSION_PERC,',
'  PM_FOBC_AMT,',
'  PM_FOB_DOLL_RND,',
'  PM_OCEAN_FRT,',
'  PM_FRT_PER_CTN,',
'  PM_CANDF_AMT,',
'  PM_CANDFC_AMT,',
'  PM_CANDF_AMT_RND,',
'  PM_INSURANCE_AMT,',
'  PM_CIF_AMT,',
'  PM_CIFC_AMT,',
'  PM_CIF_AMT_RND,',
'  PM_CNI_AMT,',
'  PM_CNIC_AMT,',
'  PM_CNI_AMT_RND,',
'  PM_COSTING_TYPE',
'FROM V_PRODUCT_MASTER',
'WHERE EOD_PRODUCT_ID = pm_id',
'  )',
'where eod_enq_id = '' ||  :P23_EOM_ENQ_ID || ''',
'and EOD_PRODUCT_ID in '' || v_product_id  ;',
'',
'--insert into error_log (el_text) values (v_update_stmt);',
'',
'execute immediate v_update_stmt;',
'end if;',
'exception when others then',
'  v_err_msg := ''Error : Updating costing from product master Pg. 23 - '' || sqlerrm;',
'  logger.append_param(l_params, ''v_product_id'', v_product_id);',
'  logger.log_error(v_err_msg, l_scope, null, l_params);',
'  logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'-- insert into error_log (el_text) values (''Error : Updating costing from product master Pg. 23 - '' || v_err_msg);',
'end;',
'',
'	/*DECLARE',
'	   Prod_Details ProductDetailsTab := ProductDetailsTab();',
'	 --  Type ProductDetailsTab IS TABLE OF ProductDetailsType;',
'	  -- Prod_Details ProductDetailsTab := ProductDetailsTab();',
'',
'	v_msg VARCHAR2(4000);',
'	BEGIN',
'		insert into error_log (el_text) values (''Rahul before for loop inside new block'');',
'',
'		 Prod_Details.extend;',
'		 insert into error_log (el_text) values (''Rahul in loop inside new block - '');',
'			Prod_Details(Prod_Details.last) := ',
'		  ProductDetailsType(:EOD_ID,:EOD_ENQ_ID,:EOD_PRODUCT_ID,:EOD_PROFIT_PERC,:EOD_PROFIT_AMT, :EOD_EXCHANGE_RATE);',
'		   ',
'		  insert into error_log (el_text) values (''Rahul after nested table initialization'');',
'			 ',
'			-- insert into error_log(el_text) values (''id - '' || Prod_Details(i).id || '' - ENQ_ID - '' || Prod_Details(i).ENQ_ID || '' - PRODUCT_ID - '' || Prod_Details(i).PRODUCT_ID || '' - DISCOUNT_PERC '' || Prod_Details(i).DISCOUNT_PERC );',
'	   ',
'	  ',
'		calc_product_cost(Prod_Details,v_success_failure,v_err_msg);',
'',
'		apex_application.g_print_success_message := ''Product Costing saved successfully '';',
'		',
'	Exception when others then   ',
'		v_msg := ''Error from Page 23 new block of nested tables'' || sqlerrm;',
'		insert into error_log (el_text) values (v_msg);',
'	END;',
'    */',
'',
'    UPDATE V_ENQUIRIES_ORDERS_DETAILS',
'    SET EOD_COSTING_TYPE = :P23_EOM_COSTING_TYPE',
'	WHERE EOD_ENQ_ID = :P23_EOM_ENQ_ID;',
'    ',
'    ',
'    with product_grp as (select max(EOD_QUANTITY) grp_qty,eod_group_id grp_id ',
'					from V_ENQUIRIES_ORDERS_DETAILS b ',
'					where eod_enq_id = b.eod_enq_id ',
'                    group by b.eod_group_id',
'                    )',
'				SELECT',
'					nvl(round(sum(NVL(eod_quantity,0)*NVL(pm_cubic_space,0)),2),0) TotalCubic,',
'					nvl(round(SUM(nvl(eod_quantity,0) * nvl(pm_net_weight,0) ),2),0) NetWt,',
'					nvl(round(SUM(nvl(eod_quantity,0) * nvl(pm_gross_weight,0) ),2),0) GrossWt,',
'					--nvl(round(SUM(nvl(eod_quantity,0) * nvl(eod_fob_doll_rnd,0) ),2),0) ContainerValue,',
'					sum(CASE WHEN eod_group_id IS NULL then eod_quantity',
'						WHEN eod_group_id IS NOT NULL then',
'						(select grp_qty from product_grp where grp_id = eod_group_id)',
'						END',
'						* case when nvl(EOD_COSTING_TYPE,''FOB'') = ''FOB'' then nvl(EOD_FOB_DOLL_RND ,0)',
'								when nvl(EOD_COSTING_TYPE,''FOB'') = ''CF'' then nvl(EOD_CANDF_AMT_RND,0)',
'								when nvl(EOD_COSTING_TYPE,''FOB'') = ''CIF'' then nvl(EOD_CIF_AMT_RND,0)',
'								when nvl(EOD_COSTING_TYPE,''FOB'') = ''CI'' then nvl(EOD_CNI_AMT_RND,0)',
'						 end) ContainerValue,',
'					nvl(round(SUM(nvl(eod_quantity,0) * nvl(eod_profit_amt,0) ),2),0) ProfitAmt,',
'					nvl(SUM(nvl(eod_quantity,0)),0) TotalQty',
'				into V_TOTAL_CBM,V_TOTAL_NET_WT,V_TOTAL_GROSS_WT,V_TOTAL_CONTAINER_AMT,V_TOTAL_PROFIT_AMT,V_TOTAL_QTY',
'				FROM',
'					V_ENQUIRIES_ORDERS_DETAILS,',
'					V_PRODUCT_MASTER',
'				WHERE',
'					eod_enq_id =:p23_eom_enq_id',
'					AND   eod_product_id = pm_id;',
'                    ',
'                    ',
'     ',
'          ',
'          ',
'         UPDATE V_ENQUIRIES_ORDERS_MST',
'         SET (EOM_TOTAL_CBM,EOM_TOTAL_NET_WT,EOM_TOTAL_GROSS_WT,',
'            EOM_TOTAL_CONTAINER_AMT,EOM_TOTAL_PROFIT_AMT,EOM_TOTAL_QTY) = (select V_TOTAL_CBM,V_TOTAL_NET_WT,V_TOTAL_GROSS_WT',
'                                                                       ,V_TOTAL_CONTAINER_AMT,V_TOTAL_PROFIT_AMT,V_TOTAL_QTY',
'                                                                          from dual)                                ',
'    WHERE   eom_enq_id = :P23_eom_enq_id;  ',
'    ',
'       logger.log(''END'', l_scope);',
'',
'exception when others ',
'then ',
'v_msg := ''Error from Page 23 Process to update product details in EOD'' || sqlerrm;',
'    logger.append_param(l_params, ''V_TOTAL_CBM'', V_TOTAL_CBM);',
'    logger.append_param(l_params, ''V_TOTAL_NET_WT'', V_TOTAL_NET_WT);',
'    logger.append_param(l_params, ''V_TOTAL_GROSS_WT'', V_TOTAL_GROSS_WT);',
'    logger.append_param(l_params, ''V_TOTAL_CONTAINER_AMT'', V_TOTAL_CONTAINER_AMT);',
'    logger.append_param(l_params, ''V_TOTAL_PROFIT_AMT'', V_TOTAL_PROFIT_AMT);',
'    logger.append_param(l_params, ''V_TOTAL_QTY'', V_TOTAL_QTY);    ',
'       ',
'  logger.log_error(v_msg, l_scope, null, l_params);',
'  logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'--insert into error_log (el_text) values (v_msg);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error: update_mst_prod_details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_only_for_changed_rows=>'N'
,p_internal_uid=>158224155420978110
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(163399989631029198)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'place_order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	v_error_msg varchar2(4000);',
'	v_cnt_prod	number;',
'    ',
'    /*Added by Rahul on 08212019 to implement logger Start */',
'	l_scope logger_logs.scope%type := ''place_order'';',
'	l_params logger.tab_param;',
'	--End Rahul 08212019',
'    ',
'    --Added by Rahul on 09/02/2019 to generate invoice no Start',
'    v_inv_no varchar2(100); ',
'    v_inv_no_cnt number;',
'    v_total_qty  number;',
'    --End Rahul 09/02/2019',
'    ',
'BEGIN',
'    logger.LOG(''START'', l_scope);',
'    ',
'	select count(1) , nvl(SUM(nvl(EOD_QUANTITY,0)),0)',
'    into v_cnt_prod , v_total_qty',
'	from V_ENQUIRIES_ORDERS_DETAILS',
'    where eod_enq_id = :P23_EOM_ENQ_ID;',
'    ',
'    logger.append_param(l_params, ''P23_EOM_ENQ_ID'', :P23_EOM_ENQ_ID);',
'    logger.append_param(l_params, ''v_cnt_prod'', v_cnt_prod);',
'',
'	if (v_cnt_prod = 0  or v_total_qty = 0) then	',
'		v_error_msg := ''Please add atleast one or more product(s) to the enquiry before placing order.'';',
'        ',
'		apex_error.add_error (',
'			p_message          => v_error_msg,',
'			p_display_location => apex_error.c_inline_in_notification );  ',
'			',
'		--insert into error_log (el_text) values (v_error_msg);',
'          logger.log_error(v_error_msg, l_scope, null, l_params);',
'	else',
'		--insert into error_log (el_text) values (''inside place order - '' || :P23_EOM_ENQ_ID);',
'        logger.LOG(''inside place order'', l_scope, null, l_params);',
'        ',
'	--Added by Rahul on 09/02/2019 to generate invoice no Start	',
'        select count(EOM_ENQ_ID)',
'        into v_inv_no_cnt',
'        from V_ENQUIRIES_ORDERS_MST',
'        where EOM_ENQ_ID = :P23_EOM_ENQ_ID',
'        and EOM_INVOICE_NO is null;',
'        ',
'     logger.LOG(''before calling function GENERATE_ENQ_INV_NO - '' || :P23_EOM_ENQ_ID || '' - ''|| v_inv_no_cnt, l_scope);',
'        ',
'        IF v_inv_no_cnt = 1 THEN',
'            v_inv_no := GENERATE_ENQ_INV_NO(''INV'',:P23_EOM_ENQ_ID);',
'        END IF;',
'        logger.LOG(''after calling function GENERATE_ENQ_INV_NO - '' || v_inv_no, l_scope);',
'        --End Rahul 09/02/2019',
'        ',
'		update V_ENQUIRIES_ORDERS_MST',
'		set eom_ord_id = seq_eom_ord_id.nextval,',
'		eom_type = ''ORDER'',',
'		eom_order_date = sysdate,',
'		EOM_ORDER_STATUS = ''IP'',',
'		EOM_ENQ_STATUS = ''AP'',',
'        EOM_INVOICE_NO = nvl(v_inv_no,EOM_INVOICE_NO), --Added by Rahul on 09/02/2019 to generate invoice',
'        EOM_INVOICE_DATE = SYSDATE  --Added by Rahul on 09/02/2019 to generate invoice',
'		where eom_enq_id = :P23_EOM_ENQ_ID;',
'',
'         logger.LOG(''after update of place order'', l_scope);',
'	/* Commented by Rahul on 15-Dec-2019  as below update is incorrect as it updates unmatched records value to 0. Instead merge statement is created to update the latest costing of the products in product master',
'    This is called only on the click of Place Order and amounts are updated after this action as well. Hence, moving this update on the status change of orders to ''Completed''',
'    UPDATE V_PRODUCT_MASTER    ',
'			SET  (PM_MRP,',
'			  PM_TRADE_PRICE,',
'			  PM_PURCHASE_AMT,',
'			  PM_SCHEME_PERC,',
'			  PM_SCHEME_AMT,',
'			  PM_DISCOUNT_PERC,',
'			  PM_DISCOUNT_AMT,',
'			  PM_GST_PERC,',
'			  PM_GST_AMT,',
'			  PM_TRANS_CHARGES,',
'			  PM_BAGS_CTNS,',
'			  PM_RECOV_ON_FRT,',
'			  PM_REPACKING,',
'			  PM_EXTRA,',
'			  PM_NET_PURCHASE_VAL,',
'			  PM_VOL_FOB_AMT,',
'			  PM_VOL_FOB_EXP,',
'			  PM_PROFIT_PERC,',
'			  PM_PROFIT_AMT,',
'			  PM_INCOME_TAX_PERC,',
'			  PM_INCOME_TAX,',
'			  PM_DUTY_PERC,',
'			  PM_DUTY_AMT,',
'			  PM_ECGC_PERC,',
'			  PM_ECGC,',
'			  PM_BANK_COMM_PERC,',
'			  PM_BANK_COMM,',
'			  PM_INTEREST_PERC,',
'			  PM_INTEREST_AMT,',
'			  PM_EXCHANGE_RATE,',
'			  PM_FOB_RS,',
'			  PM_FOB_DOLL,',
'			  PM_COMMISSION_PERC,',
'			  PM_FOBC_AMT,',
'			  PM_FOB_DOLL_RND,',
'			  PM_OCEAN_FRT,',
'			  PM_FRT_PER_CTN,',
'			  PM_CANDF_AMT,',
'			  PM_CANDFC_AMT,',
'			  PM_CANDF_AMT_RND,',
'			  PM_INSURANCE_AMT,',
'			  PM_CIF_AMT,',
'			  PM_CIFC_AMT,',
'			  PM_CIF_AMT_RND,',
'			  PM_CNI_AMT,',
'			  PM_CNIC_AMT,',
'			  PM_CNI_AMT_RND,',
'			  PM_COSTING_TYPE,',
'			  PM_SGST_PERC,',
'			  PM_CGST_PERC,',
'			  PM_TOTAL_GST_PERC',
'			  ) = (  select',
'			EOD_MRP,',
'			  EOD_TRADE_PRICE,    ',
'			  EOD_PURCHASE_AMT,',
'			  EOD_SCHEME_PERC,',
'			  EOD_SCHEME_AMT,',
'			  EOD_DISCOUNT_PERC,',
'			  EOD_DISCOUNT_AMT,',
'			  EOD_GST_PERC,',
'			  EOD_GST_AMT,',
'			  EOD_TRANS_CHARGES,',
'			  EOD_BAGS_CTNS,',
'			  EOD_RECOV_ON_FRT,',
'			  EOD_REPACKING,',
'			  EOD_EXTRA,',
'			  EOD_NET_PURCHASE_VAL,',
'			  EOD_VOL_FOB_AMT,',
'			  EOD_VOL_FOB_EXP,',
'			  EOD_PROFIT_PERC,',
'			  EOD_PROFIT_AMT,',
'			  EOD_INCOME_TAX_PERC,',
'			  EOD_INCOME_TAX,',
'			  EOD_DUTY_PERC,',
'			  EOD_DUTY_AMT,',
'			  EOD_ECGC_PERC,',
'			  EOD_ECGC,',
'			  EOD_BANK_COMM_PERC,',
'			  EOD_BANK_COMM,',
'			  EOD_INTEREST_PERC,',
'			  EOD_INTEREST_AMT,',
'			  EOD_EXCHANGE_RATE,',
'			  EOD_FOB_RS,',
'			  EOD_FOB_DOLL,',
'			  EOD_COMMISSION_PERC,',
'			  EOD_FOBC_AMT,',
'			  EOD_FOB_DOLL_RND,',
'			  EOD_OCEAN_FRT,',
'			  EOD_FRT_PER_CTN,',
'			  EOD_CANDF_AMT,',
'			  EOD_CANDFC_AMT,',
'			  EOD_CANDF_AMT_RND,',
'			  EOD_INSURANCE_AMT,',
'			  EOD_CIF_AMT,',
'			  EOD_CIFC_AMT,',
'			  EOD_CIF_AMT_RND,',
'			  EOD_CNI_AMT,',
'			  EOD_CNIC_AMT,',
'			  EOD_CNI_AMT_RND,',
'			  EOD_COSTING_TYPE,',
'			  EOD_SGST_PERC,',
'			  EOD_CGST_PERC,',
'			  EOD_TOTAL_GST_PERC',
'			from V_ENQUIRIES_ORDERS_DETAILS',
'			where EOD_ENQ_ID = :P23_EOM_ENQ_ID ',
'			and EOD_PRODUCT_ID = PM_ID); ',
'',
'        logger.LOG(''after updating costing values in prodcut master'', l_scope);',
'     Rahul End 15-Dec-2019    */',
'         ',
'	end if;',
'   ',
'       logger.log(''END'', l_scope, null, l_params);',
'exception when others then',
'    ',
'    v_error_msg := ''Main Exception of place order page process - '' || sqlerrm;',
'    logger.log_error(v_error_msg, l_scope, null, l_params);',
'    logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error:Placing Order'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(163386300016834903)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Order Placed'
,p_internal_uid=>163451139261857694
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(125358042780264188)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Acc. Year Month'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_enq_acc_year   VARCHAR2(6);',
'    v_ord_acc_year   VARCHAR2(6);',
'    v_error_msg      VARCHAR2(4000);',
'    v_enq_acc_fy   VARCHAR2(20);',
'    v_ord_acc_fy   VARCHAR2(20);',
'    v_inv_no        VARCHAR2(4000); ',
'        ',
'    v_inv_code        VARCHAR2(10);',
'    v_enq_no varchar2(100);',
'    v_enq_no_cnt  number;',
'     /*Added by Rahul on 08212019 to implement logger Start */',
'	l_scope logger_logs.scope%type := ''Update Acc. Year Month'';',
'	l_params logger.tab_param;',
'	--End Rahul 08212019',
'    ',
'    v_add_amt number;    ',
'BEGIN',
'    logger.LOG(''START'', l_scope);',
'    SELECT  as_year_month,AS_CMPY_FY INTO v_enq_acc_year,v_enq_acc_fy',
'    FROM    V_ACCOUNTING_SETUP',
'    WHERE   trunc(nvl(to_date(:P23_EOM_ENQ_DATE,''DD-MON-RR''),SYSDATE) ) BETWEEN as_open_date AND as_close_date;',
'    ',
'    logger.append_param(l_params, ''v_enq_acc_year'', v_enq_acc_year);',
'	logger.append_param(l_params, ''v_enq_acc_fy'', v_enq_acc_fy);',
'	logger.append_param(l_params, ''P23_EOM_ENQ_DATE'', :P23_EOM_ENQ_DATE);',
'',
'    ',
'    SELECT  as_year_month,AS_CMPY_FY INTO v_ord_acc_year,v_ord_acc_fy',
'    FROM    V_ACCOUNTING_SETUP',
'    WHERE   trunc(nvl(to_date(:P23_EOM_ORDER_DATE,''DD-MON-RR''),SYSDATE) ) BETWEEN as_open_date AND as_close_date;',
'    ',
'    logger.append_param(l_params, ''v_ord_acc_year'', v_ord_acc_year);',
'	logger.append_param(l_params, ''v_ord_acc_fy'', v_ord_acc_fy);',
'	logger.append_param(l_params, ''P23_EOM_ORDER_DATE'', :P23_EOM_ORDER_DATE);',
'    ',
'    select count(EOM_ENQ_ID)',
'    into v_enq_no_cnt',
'    from V_ENQUIRIES_ORDERS_MST',
'    where EOM_ENQ_ID = :P23_EOM_ENQ_ID',
'    and EOM_ENQ_NO is null;',
'     logger.LOG(''before calling function GENERATE_ENQ_INV_NO - '' || :P23_EOM_ENQ_ID || '' - ''|| v_enq_no_cnt, l_scope);',
'     ',
'    IF  v_enq_no_cnt = 1 THEN',
'        v_enq_no := FN_GENERATE_ENQ_INV_NO(''ENQ'',:P23_EOM_ENQ_ID); --To generate ENQ Number',
'    END IF;',
'    ',
'    /*If costing type is updated for an ENQ/ORD then its already added products costing type to be updated*/',
'    UPDATE V_ENQUIRIES_ORDERS_DETAILS',
'    SET EOD_COSTING_TYPE = :P23_EOM_COSTING_TYPE',
'	WHERE EOD_ENQ_ID = :P23_EOM_ENQ_ID',
'    AND EOD_COSTING_TYPE <> :P23_EOM_COSTING_TYPE;',
'    ',
'    ',
'      UPDATE V_ENQUIRIES_ORDERS_MST',
'         SET eom_enq_acc_year =  (CASE WHEN eom_enq_acc_year IS NULL THEN  v_enq_acc_year ',
'                                  ELSE eom_enq_acc_year',
'                                  END),',
'            eom_ord_acc_year =  (CASE WHEN eom_ord_id IS NOT NULL and eom_ord_acc_year IS NULL THEN v_ord_acc_year',
'                                ELSE eom_ord_acc_year',
'                                END),',
'         --   EOM_ENQ_NO = (CASE WHEN EOM_ENQ_NO IS NULL THEN v_inv_code || ''-'' || v_inv_no||''/'' || v_enq_acc_fy ELSE EOM_ENQ_NO',
'            --                    END) ,',
'                EOM_ENQ_NO = (CASE WHEN EOM_ENQ_NO IS NULL THEN v_enq_no ELSE EOM_ENQ_NO',
'                                END)                 ',
'                                           ',
'           WHERE   eom_enq_id = :P23_eom_enq_id;  ',
'	',
'	v_error_msg := fn_update_container_summary(:P23_eom_enq_id);',
'	',
'	if v_error_msg  != ''00'' then',
'		v_error_msg := ''Error in executing function fn_update_container_summary  from Page 23 - '' || v_error_msg;',
'		logger.log_error(v_error_msg, l_scope, null, l_params);',
'        logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'	end if;',
'    ',
'     logger.LOG(''After updating enq_no and other enq master details'', l_scope, NULL, l_params);',
'     logger.log(''END'', l_scope, null, l_params);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        v_error_msg := ''Error in Update Acc. Year Month of Page 23 - '' || substr(sqlerrm,1,2000);',
'        logger.log_error(v_error_msg, l_scope, null, l_params);',
'        logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>125409192411092684
);
end;
/
begin
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71143563889821689)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(143014971104458850)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Product Costing To Product Master'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'l_scope logger_logs.scope%type := ''Update Product Costing to Product Master'';',
'l_params logger.tab_param;',
'v_error_msg varchar2(4000);',
'v_ord_id number;',
'',
'BEGIN',
'',
'logger.LOG(''START'', l_scope);',
'',
'select eom_ord_id',
'into v_ord_id',
'from V_ENQUIRIES_ORDERS_MST',
'where   EOM_ENQ_ID = :P23_EOM_ENQ_ID; ',
'',
'logger.append_param(l_params, ''P23_EOM_ENQ_ID'', :P23_EOM_ENQ_ID);',
'logger.append_param(l_params, ''P23_EOM_ORD_ID'', v_ord_id);',
'',
'',
'IF v_ord_id is not null THEN',
'logger.LOG(''Inside If of update product costing to product master'', l_scope, null, l_params);',
'',
'merge into V_PRODUCT_MASTER ',
'using V_ENQUIRIES_ORDERS_DETAILS ',
'ON (EOD_ENQ_ID = :P23_EOM_ENQ_ID AND EOD_PRODUCT_ID = PM_ID)',
'WHEN matched THEN',
'  UPDATE',
'  SET PM_MRP            = EOD_MRP,',
'    PM_TRADE_PRICE      = EOD_TRADE_PRICE,',
'    PM_PURCHASE_AMT     = EOD_PURCHASE_AMT,',
'    PM_SCHEME_PERC      = EOD_SCHEME_PERC,',
'    PM_SCHEME_AMT       = EOD_SCHEME_AMT,',
'    PM_DISCOUNT_PERC    = EOD_DISCOUNT_PERC,',
'    PM_DISCOUNT_AMT     = EOD_DISCOUNT_AMT,',
'    PM_GST_PERC         = EOD_GST_PERC,',
'    PM_GST_AMT          = EOD_GST_AMT,',
'    PM_TRANS_CHARGES    = EOD_TRANS_CHARGES,',
'    PM_BAGS_CTNS        = EOD_BAGS_CTNS,',
'    PM_RECOV_ON_FRT     = EOD_RECOV_ON_FRT,',
'    PM_REPACKING        = EOD_REPACKING,',
'    PM_EXTRA            = EOD_EXTRA,',
'    PM_NET_PURCHASE_VAL = EOD_NET_PURCHASE_VAL,',
'    PM_VOL_FOB_AMT      = EOD_VOL_FOB_AMT,',
'    PM_VOL_FOB_EXP      = EOD_VOL_FOB_EXP,',
'    PM_PROFIT_PERC      = EOD_PROFIT_PERC,',
'    PM_PROFIT_AMT       = EOD_PROFIT_AMT,',
'    PM_INCOME_TAX_PERC  = EOD_INCOME_TAX_PERC,',
'    PM_INCOME_TAX       = EOD_INCOME_TAX,',
'    PM_DUTY_PERC        = EOD_DUTY_PERC,',
'    PM_DUTY_AMT         = EOD_DUTY_AMT,',
'    PM_ECGC_PERC        = EOD_ECGC_PERC,',
'    PM_ECGC             = EOD_ECGC,',
'    PM_BANK_COMM_PERC   = EOD_BANK_COMM_PERC,',
'    PM_BANK_COMM        = EOD_BANK_COMM,',
'    PM_INTEREST_PERC    = EOD_INTEREST_PERC,',
'    PM_INTEREST_AMT     = EOD_INTEREST_AMT,',
'    PM_EXCHANGE_RATE    = EOD_EXCHANGE_RATE,',
'    PM_FOB_RS           = EOD_FOB_RS,',
'    PM_FOB_DOLL         = EOD_FOB_DOLL,',
'    PM_COMMISSION_PERC  = EOD_COMMISSION_PERC,',
'    PM_FOBC_AMT         = EOD_FOBC_AMT,',
'    PM_FOB_DOLL_RND     = EOD_FOB_DOLL_RND,',
'    PM_OCEAN_FRT        = EOD_OCEAN_FRT,',
'    PM_FRT_PER_CTN      = EOD_FRT_PER_CTN,',
'    PM_CANDF_AMT        = EOD_CANDF_AMT,',
'    PM_CANDFC_AMT       = EOD_CANDFC_AMT,',
'    PM_CANDF_AMT_RND    = EOD_CANDF_AMT_RND,',
'    PM_INSURANCE_AMT    = EOD_INSURANCE_AMT,',
'    PM_CIF_AMT          = EOD_CIF_AMT,',
'    PM_CIFC_AMT         = EOD_CIFC_AMT,',
'    PM_CIF_AMT_RND      = EOD_CIF_AMT_RND,',
'    PM_CNI_AMT          = EOD_CNI_AMT,',
'    PM_CNIC_AMT         = EOD_CNIC_AMT,',
'    PM_CNI_AMT_RND      = EOD_CNI_AMT_RND,',
'    PM_COSTING_TYPE     = EOD_COSTING_TYPE,',
'    PM_SGST_PERC        = EOD_SGST_PERC,',
'    PM_CGST_PERC        = EOD_CGST_PERC,',
'    PM_TOTAL_GST_PERC   = EOD_TOTAL_GST_PERC,',
'    --added by Ranu on 150320',
'    PM_COSTING_REMARKS  = EOD_COSTING_REMARKS,',
'    PM_STW_RND_20       = EOD_STW_RND_20,',
'    PM_HSN_CODE         = nvl(PM_HSN_CODE,EOD_HSN_CODE),',
'    --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal start',
'    PM_GODOWN_CHARGES   = EOD_GODOWN_CHARGES , 	',
'    PM_TESTING_CHARGES  = EOD_TESTING_CHARGES,		',
'    PM_CALC_AMT_UNITWISE = EOD_CALC_AMT_UNITWISE,	',
'    PM_COSTING_UNIT     = EOD_COSTING_UNIT,',
'    --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal stop',
'    PM_CALC_AMT_UNITWISE_RND = EOD_CALC_AMT_UNITWISE_RND       --Added by Rahul on 11-Sep-24 to populate additional fields unitwise consting Satkamal stop',
'    ,PM_EXCLUDE_PDI_RPT  = EOD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
'    ,PM_STW_RND_40      =   EOD_STW_RND_40      --Added by Rahul on 19-May-25     ',
'    ,PM_STW_RND_40HC    =   EOD_STW_RND_40HC    --Added by Rahul on 19-May-25',
'    ,PM_EOD_PROFIT_PERC_GST_PURCHASE = EOD_PROFIT_PERC_GST_PURCHASE --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
'    where pm_id = eod_product_id',
'    and EOD_ENQ_ID = :P23_EOM_ENQ_ID;',
'    ',
'    logger.LOG(''After Update Product Costing to Product Master'', l_scope, NULL, l_params);',
'   END IF;',
'   ',
'     EXCEPTION WHEN OTHERS THEN',
' v_error_msg := ''Error in Update Product Costing to Product Master - '' || substr(sqlerrm,1,2000);',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
'END;     ',
'      '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>71194713520650185
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28147632831058946)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(143014971104458850)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Status - ORD_STATUS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	v_error_msg varchar2(4000);',
'	v_success_failure  varchar2(4000);',
'	gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT);',
'	l_scope logger_logs.scope%type := gc_scope_prefix;',
'	l_params logger.tab_param;',
'    v_cnt_prod	number;',
'    v_total_qty  number;',
'    v_ord_id number;',
'begin',
'',
'    select eom_ord_id',
'    into v_ord_id',
'    from V_ENQUIRIES_ORDERS_MST',
'    where   EOM_ENQ_ID = :P23_EOM_ENQ_ID; ',
'',
'    logger.append_param(l_params, ''P23_CONFIRM_STATUS_MSG'', :P23_CONFIRM_STATUS_MSG);',
'    logger.append_param(l_params, ''P23_CONFIRM_STATUS_REQ'', :P23_CONFIRM_STATUS_REQ); ',
'	logger.append_param(l_params, ''P23_EOM_ENQ_ID'', :P23_EOM_ENQ_ID); ',
'	logger.append_param(l_params, ''P23_EOM_ORD_ID'', v_ord_id); ',
'    ',
'    logger.LOG(''START of dynamic action on Product Details IG to Update Status'', l_scope, NULL, l_params);',
'    ',
'	pkg_status.update_status(''ORD_STATUS'',:P23_EOM_ENQ_ID,null,v_error_msg,v_success_failure,v_ord_id);',
'	',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_internal_uid=>28198782461887442
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(48135268581567476)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Status of Enq/Ord'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	v_error_msg varchar2(4000);',
'	v_success_failure  varchar2(4000);',
'	gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT);',
'	l_scope logger_logs.scope%type := gc_scope_prefix;',
'	l_params logger.tab_param;',
'    v_cnt_prod	number;',
'    v_total_qty  number;',
'',
'begin',
'    logger.append_param(l_params, ''P23_CONFIRM_STATUS_MSG'', :P23_CONFIRM_STATUS_MSG);',
'    logger.append_param(l_params, ''P23_CONFIRM_STATUS_REQ'', :P23_CONFIRM_STATUS_REQ); ',
'	logger.append_param(l_params, ''P23_EOM_ENQ_ID'', :P23_EOM_ENQ_ID); ',
'	logger.append_param(l_params, ''P23_EOM_ORD_ID'', :P23_EOM_ORD_ID); ',
'    ',
'    logger.LOG(''START of Page Process of Enquiry Order To Update Status'', l_scope, NULL, l_params);',
'    ',
'    select count(1) , nvl(SUM(nvl(EOD_QUANTITY,0)),0)',
'    into v_cnt_prod , v_total_qty',
'	from V_ENQUIRIES_ORDERS_DETAILS',
'    where eod_enq_id = :P23_EOM_ENQ_ID;',
'    ',
'    logger.append_param(l_params, ''v_total_qty'', v_total_qty);',
'    logger.append_param(l_params, ''v_cnt_prod'', v_cnt_prod);',
'    ',
'    if (v_cnt_prod = 0  or v_total_qty = 0) then	',
'		v_error_msg := ''Please add atleast one or more product(s) with correct non-zero quantity to the enquiry.'';',
'        ',
'		apex_error.add_error (',
'			p_message          => v_error_msg,',
'			p_display_location => apex_error.c_inline_in_notification );  ',
'			',
'		--insert into error_log (el_text) values (v_error_msg);',
'          logger.log_error(v_error_msg, l_scope, null, l_params);',
'    else   ',
'            if :P23_EOM_ENQ_STATUS = ''IP'' then',
'                pkg_status.update_status(''ENQ'',:P23_EOM_ENQ_ID,''AW'',v_error_msg,v_success_failure);',
'            elsif :P23_EOM_ENQ_STATUS = ''AW'' then',
'                pkg_status.update_status(''ENQ'',:P23_EOM_ENQ_ID,''AP'',v_error_msg,v_success_failure);',
'                pkg_status.update_status(''ORD'',:P23_EOM_ORD_ID,''IP'',v_error_msg,v_success_failure);',
'',
'            --Added by Rahul on 19-May-25 to update costing in PM when enq is converted to order start',
'                merge into V_PRODUCT_MASTER ',
'                using V_ENQUIRIES_ORDERS_DETAILS ',
'                ON (EOD_ENQ_ID = :P23_EOM_ENQ_ID AND EOD_PRODUCT_ID = PM_ID)',
'                WHEN matched THEN',
'                  UPDATE',
'                  SET PM_MRP            = EOD_MRP,',
'                    PM_TRADE_PRICE      = EOD_TRADE_PRICE,',
'                    PM_PURCHASE_AMT     = EOD_PURCHASE_AMT,',
'                    PM_SCHEME_PERC      = EOD_SCHEME_PERC,',
'                    PM_SCHEME_AMT       = EOD_SCHEME_AMT,',
'                    PM_DISCOUNT_PERC    = EOD_DISCOUNT_PERC,',
'                    PM_DISCOUNT_AMT     = EOD_DISCOUNT_AMT,',
'                    PM_GST_PERC         = EOD_GST_PERC,',
'                    PM_GST_AMT          = EOD_GST_AMT,',
'                    PM_TRANS_CHARGES    = EOD_TRANS_CHARGES,',
'                    PM_BAGS_CTNS        = EOD_BAGS_CTNS,',
'                    PM_RECOV_ON_FRT     = EOD_RECOV_ON_FRT,',
'                    PM_REPACKING        = EOD_REPACKING,',
'                    PM_EXTRA            = EOD_EXTRA,',
'                    PM_NET_PURCHASE_VAL = EOD_NET_PURCHASE_VAL,',
'                    PM_VOL_FOB_AMT      = EOD_VOL_FOB_AMT,',
'                    PM_VOL_FOB_EXP      = EOD_VOL_FOB_EXP,',
'                    PM_PROFIT_PERC      = EOD_PROFIT_PERC,',
'                    PM_PROFIT_AMT       = EOD_PROFIT_AMT,',
'                    PM_INCOME_TAX_PERC  = EOD_INCOME_TAX_PERC,',
'                    PM_INCOME_TAX       = EOD_INCOME_TAX,',
'                    PM_DUTY_PERC        = EOD_DUTY_PERC,',
'                    PM_DUTY_AMT         = EOD_DUTY_AMT,',
'                    PM_ECGC_PERC        = EOD_ECGC_PERC,',
'                    PM_ECGC             = EOD_ECGC,',
'                    PM_BANK_COMM_PERC   = EOD_BANK_COMM_PERC,',
'                    PM_BANK_COMM        = EOD_BANK_COMM,',
'                    PM_INTEREST_PERC    = EOD_INTEREST_PERC,',
'                    PM_INTEREST_AMT     = EOD_INTEREST_AMT,',
'                    PM_EXCHANGE_RATE    = EOD_EXCHANGE_RATE,',
'                    PM_FOB_RS           = EOD_FOB_RS,',
'                    PM_FOB_DOLL         = EOD_FOB_DOLL,',
'                    PM_COMMISSION_PERC  = EOD_COMMISSION_PERC,',
'                    PM_FOBC_AMT         = EOD_FOBC_AMT,',
'                    PM_FOB_DOLL_RND     = EOD_FOB_DOLL_RND,',
'                    PM_OCEAN_FRT        = EOD_OCEAN_FRT,',
'                    PM_FRT_PER_CTN      = EOD_FRT_PER_CTN,',
'                    PM_CANDF_AMT        = EOD_CANDF_AMT,',
'                    PM_CANDFC_AMT       = EOD_CANDFC_AMT,',
'                    PM_CANDF_AMT_RND    = EOD_CANDF_AMT_RND,',
'                    PM_INSURANCE_AMT    = EOD_INSURANCE_AMT,',
'                    PM_CIF_AMT          = EOD_CIF_AMT,',
'                    PM_CIFC_AMT         = EOD_CIFC_AMT,',
'                    PM_CIF_AMT_RND      = EOD_CIF_AMT_RND,',
'                    PM_CNI_AMT          = EOD_CNI_AMT,',
'                    PM_CNIC_AMT         = EOD_CNIC_AMT,',
'                    PM_CNI_AMT_RND      = EOD_CNI_AMT_RND,',
'                    PM_COSTING_TYPE     = EOD_COSTING_TYPE,',
'                    PM_SGST_PERC        = EOD_SGST_PERC,',
'                    PM_CGST_PERC        = EOD_CGST_PERC,',
'                    PM_TOTAL_GST_PERC   = EOD_TOTAL_GST_PERC,',
'                    PM_COSTING_REMARKS  = EOD_COSTING_REMARKS,',
'                    PM_STW_RND_20       = EOD_STW_RND_20,',
'                    PM_HSN_CODE         = nvl(PM_HSN_CODE,EOD_HSN_CODE),',
'                    PM_GODOWN_CHARGES   = EOD_GODOWN_CHARGES , 	',
'                    PM_TESTING_CHARGES  = EOD_TESTING_CHARGES,		',
'                    PM_CALC_AMT_UNITWISE = EOD_CALC_AMT_UNITWISE,	',
'                    PM_COSTING_UNIT     = EOD_COSTING_UNIT,',
'                    PM_CALC_AMT_UNITWISE_RND = EOD_CALC_AMT_UNITWISE_RND',
'                    ,PM_EXCLUDE_PDI_RPT  = EOD_EXCLUDE_PDI_RPT',
'                    ,PM_STW_RND_40      =   EOD_STW_RND_40',
'                    ,PM_STW_RND_40HC   =   EOD_STW_RND_40HC',
'                    where pm_id = eod_product_id',
'                    and EOD_ENQ_ID = :P23_EOM_ENQ_ID;    ',
'',
'                 --Added by Rahul on 19-May-25 to update costing in PM when enq is converted to order end',
'',
'            elsif :P23_EOM_ORDER_STATUS = ''RC'' then',
'			logger.LOG(''Package Stock - Update Stock called from Page 23 on status link click when ord status is RC'',l_scope, NULL, l_params);',
'	',
'			pkg_stock.update_stock(''ENQ'',:P23_EOM_ENQ_ID,''OUT'',v_success_failure,v_error_msg);',
'				',
'			logger.LOG(''After Package Stock - Update Stock called from Page 23 on status link click when ord status is RC'', l_scope, NULL, l_params);',
'			logger.LOG('' Inside status update page process v_success_failure - '' || v_success_failure);',
'				if v_success_failure = ''00'' then ',
'		           pkg_status.update_status(''ORD'',:P23_EOM_ORD_ID,''SHP'',v_error_msg,v_success_failure);			',
'				else',
'					v_error_msg := ''Error updating stock while changing order status to Shipped'';',
'					',
'					apex_error.add_error (',
'					p_message          => v_error_msg,',
'					p_display_location => apex_error.c_inline_in_notification ); ',
'					v_error_msg := v_error_msg || sqlerrm;',
'					logger.log_error(v_error_msg, l_scope, null, l_params);					',
'				end if;',
'            end if;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'UPDATE_STATUS_ENQORD'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>48186418212395972
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27925742532223329)
,p_process_sequence=>130
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
'    PKG_COPY_ALL_DETAILS.initialize (''PROFORMA'',:P23_EOM_ENQ_ID,v_success_failure,v_error_msg,v_id_new);',
'    --insert into error_log (el_text) values (''after'' || :P22_EOM_ENQ_ID || p_error_msg); ',
'    ',
'    :P23_EOM_ENQ_ID := v_id_new;',
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
,p_internal_uid=>27976892163051825
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34099834216350489415)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(34099824919784488941)
,p_internal_uid=>34099885365981317911
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1986860865596172413)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate Invoice'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_inv_no varchar2(100); ',
'    v_inv_no_cnt number;',
'    gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT) || ''.''; ',
'    l_params logger.tab_param;',
'    l_scope logger_logs.scope%type := lower($$PLSQL_UNIT);',
'begin',
'',
'    select count(EOM_ENQ_ID)',
'    into v_inv_no_cnt',
'    from V_ENQUIRIES_ORDERS_MST',
'    where EOM_ENQ_ID = :P23_EOM_ENQ_ID',
'    and EOM_INVOICE_NO is not null;',
'',
'    logger.LOG(''before calling function GENERATE_ENQ_INV_NO - '' || :P23_EOM_ENQ_ID || '' - ''|| v_inv_no_cnt, l_scope);',
'',
'    IF v_inv_no_cnt = 0 THEN',
'        v_inv_no := FN_GENERATE_ENQ_INV_NO(''INV'',:P23_EOM_ENQ_ID);',
'    END IF;',
'    logger.LOG(''after calling function GENERATE_ENQ_INV_NO - '' || v_inv_no, l_scope);',
'',
'',
'    update V_ENQUIRIES_ORDERS_MST',
'    set EOM_INVOICE_NO = nvl(v_inv_no,EOM_INVOICE_NO), ',
'        EOM_INVOICE_DATE = SYSDATE ',
'    where eom_enq_id = :P23_EOM_ENQ_ID',
'    and EOM_INVOICE_NO is null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'SB_GEN_INV'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>1986912015227000909
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(451181543584023252)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(143014971104458850)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add To Master List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'	l_scope logger_logs.scope%type := ''Add Products to MLD from EOD'';',
'	l_params logger.tab_param;',
'	v_error_msg varchar2(4000);',
'',
'BEGIN',
'logger.LOG(''START'', l_scope);',
'logger.append_param(l_params, ''P23_MASTER_LIST'', :P23_MASTER_LIST);',
'logger.append_param(l_params, ''eod_id'', :eod_id);',
'logger.append_param(l_params, ''eod_product_id'', :eod_product_id);',
'logger.append_param(l_params, ''tmp_qty'', :tmp_qty);',
'',
'   logger.LOG(''before merge statement of MLD'', l_scope, NULL, l_params);',
'   ',
'merge into V_MASTER_LIST_DETAILS ',
'using (select * from V_ENQUIRIES_ORDERS_DETAILS where  eod_enq_id = :eod_enq_id and eod_id = :eod_id)',
'ON (nvl(MLD_ENQ_ID,-1) = EOD_ENQ_ID AND MLD_PRODUCT_ID = EOD_PRODUCT_ID  ',
'	AND nvl(MLD_FOC_FLAG,''N'') = nvl(EOD_FOC_FLAG,''N'') AND MLD_ML_ID = :P23_MASTER_LIST ',
'   )',
'WHEN matched THEN',
'  UPDATE',
'  SET',
'	MLD_MANUFAC_ID		 = :EOD_MANUFAC_ID,',
'	MLD_QUANTITY		 =  MLD_QUANTITY + :tmp_qty,',
'    MLD_MRP              = :EOD_MRP,',
'    MLD_TRADE_PRICE      = :EOD_TRADE_PRICE,',
'    MLD_PURCHASE_AMT     = :EOD_PURCHASE_AMT,',
'    MLD_SCHEME_PERC      = :EOD_SCHEME_PERC,',
'    MLD_SCHEME_AMT       = :EOD_SCHEME_AMT,',
'    MLD_DISCOUNT_PERC    = :EOD_DISCOUNT_PERC,',
'    MLD_DISCOUNT_AMT     = :EOD_DISCOUNT_AMT,',
'    MLD_GST_PERC         = :EOD_GST_PERC,',
'    MLD_GST_AMT          = :EOD_GST_AMT,',
'    MLD_TRANS_CHARGES    = :EOD_TRANS_CHARGES,',
'    MLD_BAGS_CTNS        = :EOD_BAGS_CTNS,',
'    MLD_RECOV_ON_FRT     = :EOD_RECOV_ON_FRT,',
'    MLD_REPACKING        = :EOD_REPACKING,',
'    MLD_EXTRA            = :EOD_EXTRA,',
'    MLD_NET_PURCHASE_VAL = :EOD_NET_PURCHASE_VAL,',
'    MLD_VOL_FOB_AMT      = :EOD_VOL_FOB_AMT,',
'    MLD_VOL_FOB_EXP      = :EOD_VOL_FOB_EXP,',
'    MLD_PROFIT_PERC      = :EOD_PROFIT_PERC,',
'    MLD_PROFIT_AMT       = :EOD_PROFIT_AMT,',
'    MLD_INCOME_TAX_PERC  = :EOD_INCOME_TAX_PERC,',
'    MLD_INCOME_TAX       = :EOD_INCOME_TAX,',
'    MLD_DUTY_PERC        = :EOD_DUTY_PERC,',
'    MLD_DUTY_AMT         = :EOD_DUTY_AMT,',
'    MLD_ECGC_PERC        = :EOD_ECGC_PERC,',
'    MLD_ECGC             = :EOD_ECGC,',
'    MLD_BANK_COMM_PERC   = :EOD_BANK_COMM_PERC,',
'    MLD_BANK_COMM        = :EOD_BANK_COMM,',
'    MLD_INTEREST_PERC    = :EOD_INTEREST_PERC,',
'    MLD_INTEREST_AMT     = :EOD_INTEREST_AMT,',
'    MLD_EXCHANGE_RATE    = :EOD_EXCHANGE_RATE,',
'    MLD_FOB_RS           = :EOD_FOB_RS,',
'    MLD_FOB_DOLL         = :EOD_FOB_DOLL,',
'    MLD_COMMISSION_PERC  = :EOD_COMMISSION_PERC,',
'    MLD_FOBC_AMT         = :EOD_FOBC_AMT,',
'    MLD_FOB_DOLL_RND     = :EOD_FOB_DOLL_RND,',
'    MLD_OCEAN_FRT        = :EOD_OCEAN_FRT,',
'    MLD_FRT_PER_CTN      = :EOD_FRT_PER_CTN,',
'    MLD_CANDF_AMT        = :EOD_CANDF_AMT,',
'    MLD_CANDFC_AMT       = :EOD_CANDFC_AMT,',
'    MLD_CANDF_AMT_RND    = :EOD_CANDF_AMT_RND,',
'	MLD_INSURANCE_PERC	 = :EOD_INSURANCE_PERC,',
'    MLD_INSURANCE_AMT    = :EOD_INSURANCE_AMT,',
'    MLD_CIF_AMT          = :EOD_CIF_AMT,',
'    MLD_CIFC_AMT         = :EOD_CIFC_AMT,',
'    MLD_CIF_AMT_RND      = :EOD_CIF_AMT_RND,',
'    MLD_CNI_AMT          = :EOD_CNI_AMT,',
'    MLD_CNIC_AMT         = :EOD_CNIC_AMT,',
'    MLD_CNI_AMT_RND      = :EOD_CNI_AMT_RND,',
'    MLD_COSTING_TYPE     = :EOD_COSTING_TYPE,',
'    MLD_SGST_PERC        = :EOD_SGST_PERC,',
'    MLD_CGST_PERC        = :EOD_CGST_PERC,',
'    MLD_TOTAL_GST_PERC   = :EOD_TOTAL_GST_PERC,',
'    MLD_COSTING_REMARKS  = :EOD_COSTING_REMARKS,',
'    MLD_STW_RND_20       = :EOD_STW_RND_20,',
'    MLD_HSN_CODE         = :EOD_HSN_CODE,',
'	MLD_CIR_DISPLAY_NAME = :EOD_CIR_DISPLAY_NAME,',
'    MLD_NET_WT           = EOD_NET_WT,  --colon not added as data fetched from db table and not grid',
'    MLD_GROSS_WT         = EOD_GROSS_WT,',
'    MLD_LENGTH			 = EOD_LENGTH,',
'	MLD_BREADTH 		 = EOD_BREADTH,',
'	MLD_HEIGHT 			 = EOD_HEIGHT,',
'	MLD_CUBIC_SPACE		 = EOD_CUBIC_SPACE,',
'	MLD_VERIFIED		 = EOD_VERIFIED,',
'    --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal start',
'    MLD_GODOWN_CHARGES 	 = :EOD_GODOWN_CHARGES,',
'    MLD_TESTING_CHARGES  = :EOD_TESTING_CHARGES,		',
'    MLD_CALC_AMT_UNITWISE = :EOD_CALC_AMT_UNITWISE,	',
'    MLD_COSTING_UNIT     = :EOD_COSTING_UNIT,',
'    --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal end',
'    --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes start',
'    MLD_STW_RND_40      =   EOD_STW_RND_40,			',
'	MLD_STW_RND_40HC    =   EOD_STW_RND_40HC,',
'    --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes end',
'    MLD_CALC_AMT_UNITWISE_RND = :EOD_CALC_AMT_UNITWISE_RND  --Added by Rahul on 11-Sep-24 for Satkamal Costing Changes ',
'    ,MLD_EXCLUDE_PDI_RPT  = :EOD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
'    ,MLD_PROFIT_PERC_GST_PURCHASE = :EOD_PROFIT_PERC_GST_PURCHASE --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
'    where MLD_PRODUCT_ID = eod_product_id',
'    and MLD_ENQ_ID = EOD_ENQ_ID',
'	and MLD_ML_ID = :P23_MASTER_LIST ',
'	and nvl(MLD_FOC_FLAG,''N'') = nvl(EOD_FOC_FLAG,''N'') ',
' WHEN not MATCHED THEN	',
'	INSERT',
'	(',
'		MLD_ID	,',
'		MLD_ML_ID,',
'		MLD_ENQ_ID ,',
'		MLD_MANUFAC_ID	,',
'		MLD_PRODUCT_ID	,',
'		MLD_QUANTITY	,',
'		MLD_MRP	,',
'		MLD_TRADE_PRICE	,',
'		MLD_PURCHASE_AMT	,',
'		MLD_SCHEME_PERC	,',
'		MLD_SCHEME_AMT	,',
'		MLD_DISCOUNT_PERC	,',
'		MLD_DISCOUNT_AMT	,',
'		MLD_GST_PERC	,',
'		MLD_GST_AMT	,',
'		MLD_TRANS_CHARGES	,',
'		MLD_BAGS_CTNS	,',
'		MLD_RECOV_ON_FRT	,',
'		MLD_REPACKING	,',
'		MLD_EXTRA	,',
'		MLD_NET_PURCHASE_VAL	,',
'		MLD_VOL_FOB_AMT	,',
'		MLD_VOL_FOB_EXP	,',
'		MLD_PROFIT_PERC	,',
'		MLD_PROFIT_AMT	,',
'		MLD_INCOME_TAX	,',
'		MLD_DUTY_PERC	,',
'		MLD_DUTY_AMT	,',
'		MLD_ECGC	,',
'		MLD_BANK_COMM	,',
'		MLD_INTEREST_PERC	,',
'		MLD_INTEREST_AMT	,',
'		MLD_EXCHANGE_RATE	,',
'		MLD_FOB_RS	,',
'		MLD_FOB_DOLL	,',
'		MLD_COMMISSION_PERC	,',
'		MLD_FOBC_AMT	,',
'		MLD_FOB_DOLL_RND	,',
'		MLD_OCEAN_FRT	,',
'		MLD_FRT_PER_CTN	,',
'		MLD_CANDF_AMT	,',
'		MLD_CANDFC_AMT	,',
'		MLD_CANDF_AMT_RND	,',
'		MLD_INSURANCE_AMT	,',
'		MLD_CIF_AMT	,',
'		MLD_CIFC_AMT	,',
'		MLD_CIF_AMT_RND	,',
'		MLD_CNI_AMT	,',
'		MLD_CNIC_AMT	,',
'		MLD_CNI_AMT_RND	,',
'		MLD_COSTING_TYPE	,',
'		MLD_INCOME_TAX_PERC	,',
'		MLD_BANK_COMM_PERC	,',
'		MLD_ECGC_PERC	,',
'		MLD_SGST_PERC	,',
'		MLD_CGST_PERC	,',
'		MLD_TOTAL_GST_PERC	,',
'		MLD_INSURANCE_PERC	,',
'		MLD_STW_RND_20	,',
'		MLD_HSN_CODE	,',
'		MLD_COSTING_REMARKS	,',
'		MLD_CIR_DISPLAY_NAME	,',
'		MLD_FOC_FLAG,',
'        MLD_NET_WT,',
'        MLD_GROSS_WT,',
'        MLD_LENGTH, ',
'		MLD_BREADTH, ',
'		MLD_HEIGHT, ',
'		MLD_CUBIC_SPACE,',
'		MLD_VERIFIED,',
'        --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal start',
'        MLD_GODOWN_CHARGES, 	',
'        MLD_TESTING_CHARGES, 		',
'        MLD_CALC_AMT_UNITWISE, 	',
'        MLD_COSTING_UNIT,',
'        --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal end',
'        --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes start',
'        MLD_STW_RND_40,			',
'	    MLD_STW_RND_40HC,',
'        --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes end',
'         MLD_CALC_AMT_UNITWISE_RND  --Added by Rahul on 11-Sep-24 for Satkamal Costing Changes ',
'	    ,MLD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
'        ,MLD_PROFIT_PERC_GST_PURCHASE  --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
'    )',
' VALUES	 ( ',
'		SEQ_MLD_ID.nextval,',
'		:P23_MASTER_LIST,',
'		:eod_enq_id,',
'		:eod_manufac_id,',
'		:eod_product_id,',
'		:tmp_qty,',
'		:eod_mrp,',
'		:eod_trade_price,',
'		:eod_purchase_amt,',
'		:eod_scheme_perc,',
'		:eod_scheme_amt,',
'		:eod_discount_perc,',
'		:eod_discount_amt,',
'		:eod_gst_perc,',
'		:eod_gst_amt,',
'		:eod_trans_charges,',
'		:eod_bags_ctns,',
'		:eod_recov_on_frt,',
'		:eod_repacking,',
'		:eod_extra,',
'		:eod_net_purchase_val,',
'		:eod_vol_fob_amt,',
'		:eod_vol_fob_exp,',
'		:eod_profit_perc,',
'		:eod_profit_amt,',
'		:eod_income_tax,',
'		:eod_duty_perc,',
'		:eod_duty_amt,',
'		:eod_ecgc,',
'		:eod_bank_comm,',
'		:eod_interest_perc,',
'		:eod_interest_amt,',
'		:eod_exchange_rate,',
'		:eod_fob_rs,',
'		:eod_fob_doll,',
'		:eod_commission_perc,',
'		:eod_fobc_amt,',
'		:eod_fob_doll_rnd,',
'		:eod_ocean_frt,',
'		:eod_frt_per_ctn,',
'		:eod_candf_amt,',
'		:eod_candfc_amt,',
'		:eod_candf_amt_rnd,',
'		:eod_insurance_amt,',
'		:eod_cif_amt,',
'		:eod_cifc_amt,',
'		:eod_cif_amt_rnd,',
'		:eod_cni_amt,',
'		:eod_cnic_amt,',
'		:eod_cni_amt_rnd,',
'		:eod_costing_type,',
'		:eod_income_tax_perc,',
'		:eod_bank_comm_perc,',
'		:eod_ecgc_perc,',
'		:eod_sgst_perc,',
'		:eod_cgst_perc,',
'		:eod_total_gst_perc,',
'		:eod_insurance_perc,    ',
'		:eod_stw_rnd_20,',
'		:eod_hsn_code,',
'		:eod_costing_remarks,',
'		:eod_cir_display_name,',
'		:eod_foc_flag,',
'        EOD_NET_WT, --colon not added as data fetched from db table and not grid',
'        EOD_GROSS_WT,',
'		eod_length, ',
'		eod_breadth, ',
'		eod_height, ',
'		eod_cubic_space,',
'		eod_verified,',
'        --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal start',
'        :EOD_GODOWN_CHARGES, 	',
'        :EOD_TESTING_CHARGES, 		',
'        :EOD_CALC_AMT_UNITWISE, 	',
'        :EOD_COSTING_UNIT,',
'        --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal start',
'        --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes start',
'        EOD_STW_RND_40,',
'        EOD_STW_RND_40HC,',
'        --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes end',
'        :EOD_CALC_AMT_UNITWISE_RND  --Added by Rahul on 11-Sep-24 for Satkamal Costing Changes ',
'	    ,:EOD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
'        ,:EOD_PROFIT_PERC_GST_PURCHASE --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
'    ) ;',
'    ',
'    update V_ENQUIRIES_ORDERS_DETAILS',
'    set eod_quantity = eod_quantity - :tmp_qty',
'    where eod_id = :eod_id;',
'    ',
'    delete from V_ENQUIRIES_ORDERS_DETAILS where eod_quantity = 0 and eod_id = :eod_id;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(451181636529023253)
,p_internal_uid=>451232693214851748
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(933638052651052910)
,p_process_sequence=>170
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create/Copy Master List on New ENQ Creation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'          v_success_failure    VARCHAR2(4000);',
'          v_error_msg          VARCHAR2(4000);',
'          v_id_new             NUMBER;',
'          v_ora_err 		   varchar2(4000);',
'		  gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT);',
'		  l_scope logger_logs.scope%type := gc_scope_prefix;',
'		  l_params logger.tab_param;',
'begin',
'	logger.append_param(l_params, ''P23_EOM_ENQ_ID'', :P23_EOM_ENQ_ID);',
'    logger.append_param(l_params, ''P23_EOM_CUSTOMER_ID'', :P23_EOM_CUSTOMER_ID); ',
'    ',
'    logger.LOG(''START of creating or copying master list on new enquiry creation'', l_scope, NULL, l_params);',
'    ',
'    PKG_COPY_ALL_DETAILS.initialize (''MASTER_LIST'',:P23_EOM_ENQ_ID,v_success_failure,v_error_msg,v_id_new,:P23_EOM_CUSTOMER_ID);',
'        ',
'    logger.LOG(''End of creating or copying master list on new enquiry creation'', l_scope, NULL, l_params);',
'',
'exception when others then',
'        v_ora_err := ''Error in creating internal master list - '' || substr(sqlerrm,1,2000);',
'		logger.log_error(v_ora_err, l_scope, null, l_params);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(34099824777999488941)
,p_internal_uid=>933689202281881406
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(932237231158009400)
,p_process_sequence=>180
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(204258780211949495)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Master List - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>932288380788837896
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8209193298331718463)
,p_process_sequence=>190
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8224589094351906742)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' V_ATTACHMENTS - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8209244447962546959
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(82482423811714179)
,p_process_sequence=>200
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(143014971104458850)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Container Summary'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_error_msg varchar2(4000);',
'	l_scope logger_logs.scope%type := ''Update Container Summary '';',
'	l_params logger.tab_param;',
'',
'BEGIN',
'    logger.LOG(''START'', l_scope);',
'    --    logger.LOG(''ranu'' || :EOD_FOB_DOLL, l_scope);',
'    ',
' /*   update    V_ENQUIRIES_ORDERS_DETAILS',
'    set       EOD_PRODUCT_STATUS    = ''CD''',
'    where     EOD_ENQ_ID = :P23_EOM_ENQ_ID',
'    and       EOD_ID = :EOD_ID',
'    and       EOD_PRODUCT_STATUS is null',
'    and        EOD_FOB_DOLL <> :EOD_FOB_DOLL;',
'   */ ',
'   ',
'    ',
'    --Inside function, status package called so that data version conflict while adding products as EOM was upadated from both places',
'    v_error_msg := fn_update_container_summary(:P23_eom_enq_id);',
'	',
'	if v_error_msg  != ''00'' then',
'		v_error_msg := ''Error in executing function fn_update_container_summary  from Page 23 - '' || v_error_msg;',
'		logger.log_error(v_error_msg, l_scope, null, l_params);',
'        logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'	end if;',
'',
'',
'     logger.LOG(''After updating Container Summary details'', l_scope, NULL, l_params);',
'     logger.log(''END'', l_scope, null, l_params);',
'     ',
'EXCEPTION WHEN OTHERS THEN',
' v_error_msg := ''Error in Update Container Summary of Page 23 - '' || substr(sqlerrm,1,2000);',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
' logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'END;     '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>82533573442542675
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(932237040909009398)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AJAX_MOVE_PRODUCTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	l_selected_ids_json          varchar2(4000);',
'    type numTab is table of number  index by binary_integer;',
'    l_mld_id                     numTab;',
'    l_array                      JSON_ARRAY_T;',
'    l_error_msg                   varchar2(4000);',
'BEGIN',
' ',
'      l_selected_ids_json := apex_application.g_x01;',
'      l_array := json_array_t(l_selected_ids_json) ;',
'',
'    for j in 0 .. l_array.get_size() - 1 loop',
'        l_mld_id(j+1) := l_array.get_number(j);',
'    end loop;',
'',
'    forall j in 1..l_mld_id.count   ',
'  	INSERT INTO V_ENQUIRIES_ORDERS_DETAILS(',
'    eod_id,',
'    eod_enq_id,',
'    eod_manufac_id,',
'    eod_product_id,',
'    eod_quantity,',
'    eod_mrp,',
'    eod_trade_price,',
'    eod_purchase_amt,',
'    eod_scheme_perc,',
'    eod_scheme_amt,',
'    eod_discount_perc,',
'    eod_discount_amt,',
'    eod_gst_perc,',
'    eod_gst_amt,',
'    eod_trans_charges,',
'    eod_bags_ctns,',
'    eod_recov_on_frt,',
'    eod_repacking,',
'    eod_extra,',
'    eod_net_purchase_val,',
'    eod_vol_fob_amt,',
'    eod_vol_fob_exp,',
'    eod_profit_perc,',
'    eod_profit_amt,',
'    eod_income_tax,',
'    eod_duty_perc,',
'    eod_duty_amt,',
'    eod_ecgc,',
'    eod_bank_comm,',
'    eod_interest_perc,',
'    eod_interest_amt,',
'    eod_exchange_rate,',
'    eod_fob_rs,',
'    eod_fob_doll,',
'    eod_commission_perc,',
'    eod_fobc_amt,',
'    eod_fob_doll_rnd,',
'    eod_ocean_frt,',
'    eod_frt_per_ctn,',
'    eod_candf_amt,',
'    eod_candfc_amt,',
'    eod_candf_amt_rnd,',
'    eod_insurance_amt,',
'    eod_cif_amt,',
'    eod_cifc_amt,',
'    eod_cif_amt_rnd,',
'    eod_cni_amt,',
'    eod_cnic_amt,',
'    eod_cni_amt_rnd,',
'    eod_costing_type,',
'    eod_income_tax_perc,',
'    eod_bank_comm_perc,',
'    eod_ecgc_perc,',
'    eod_sgst_perc,',
'    eod_cgst_perc,',
'    eod_total_gst_perc,',
'    eod_insurance_perc,    ',
'    eod_stw_rnd_20,',
'    eod_hsn_code,',
'    eod_costing_remarks,',
'    eod_cir_display_name,',
'	eod_foc_flag,',
'    eod_net_wt,',
'    eod_gross_wt,',
'    eod_LENGTH,                    ',
'    eod_BREADTH,                 ',
'    eod_HEIGHT,                    ',
'    eod_CUBIC_SPACE  ,',
'    eod_VERIFIED,',
'    --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal start',
'    EOD_GODOWN_CHARGES, 	',
'    EOD_TESTING_CHARGES,		',
'    EOD_CALC_AMT_UNITWISE,	',
'    EOD_COSTING_UNIT,',
'    --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal stop',
'    --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes start',
'    EOD_STW_RND_40,		',
'	EOD_STW_RND_40HC,		',
'    --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes end',
'    EOD_CALC_AMT_UNITWISE_RND   --Added by Rahul on 11-Sep-24 for Satkamal Costing Changes',
'    ,EOD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
'    ,EOD_PROFIT_PERC_GST_PURCHASE  --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
'',
'	)',
'	SELECT ',
'	SEQ_EOD_ID.nextval	,',
'	apex_application.g_x02 ,',
'	MLD_MANUFAC_ID	,',
'	MLD_PRODUCT_ID	,',
'	MLD_QUANTITY	,',
'	MLD_MRP	,',
'	MLD_TRADE_PRICE	,',
'	MLD_PURCHASE_AMT	,',
'	MLD_SCHEME_PERC	,',
'	MLD_SCHEME_AMT	,',
'	MLD_DISCOUNT_PERC	,',
'	MLD_DISCOUNT_AMT	,',
'	MLD_GST_PERC	,',
'	MLD_GST_AMT	,',
'	MLD_TRANS_CHARGES	,',
'	MLD_BAGS_CTNS	,',
'	MLD_RECOV_ON_FRT	,',
'	MLD_REPACKING	,',
'	MLD_EXTRA	,',
'	MLD_NET_PURCHASE_VAL	,',
'	MLD_VOL_FOB_AMT	,',
'	MLD_VOL_FOB_EXP	,',
'	MLD_PROFIT_PERC	,',
'	MLD_PROFIT_AMT	,',
'	MLD_INCOME_TAX	,',
'	MLD_DUTY_PERC	,',
'	MLD_DUTY_AMT	,',
'	MLD_ECGC	,',
'	MLD_BANK_COMM	,',
'	MLD_INTEREST_PERC	,',
'	MLD_INTEREST_AMT	,',
'	MLD_EXCHANGE_RATE	,',
'	MLD_FOB_RS	,',
'	MLD_FOB_DOLL	,',
'	MLD_COMMISSION_PERC	,',
'	MLD_FOBC_AMT	,',
'	MLD_FOB_DOLL_RND	,',
'	MLD_OCEAN_FRT	,',
'	MLD_FRT_PER_CTN	,',
'	MLD_CANDF_AMT	,',
'	MLD_CANDFC_AMT	,',
'	MLD_CANDF_AMT_RND	,',
'	MLD_INSURANCE_AMT	,',
'	MLD_CIF_AMT	,',
'	MLD_CIFC_AMT	,',
'	MLD_CIF_AMT_RND	,',
'	MLD_CNI_AMT	,',
'	MLD_CNIC_AMT	,',
'	MLD_CNI_AMT_RND	,',
'	MLD_COSTING_TYPE	,',
'	MLD_INCOME_TAX_PERC	,',
'	MLD_BANK_COMM_PERC	,',
'	MLD_ECGC_PERC	,',
'	MLD_SGST_PERC	,',
'	MLD_CGST_PERC	,',
'	MLD_TOTAL_GST_PERC	,',
'	MLD_INSURANCE_PERC	,',
'	MLD_STW_RND_20	,',
'	MLD_HSN_CODE	,',
'	MLD_COSTING_REMARKS	,',
'	MLD_CIR_DISPLAY_NAME	,',
'	MLD_FOC_FLAG ,',
'    MLD_NET_WT,',
'    MLD_GROSS_WT,',
'    MLD_LENGTH ,                   ',
'    MLD_BREADTH      ,             ',
'    MLD_HEIGHT  ,                  ',
'    MLD_CUBIC_SPACE,',
'    MLD_VERIFIED,',
'    --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal start',
'    MLD_GODOWN_CHARGES, 	',
'    MLD_TESTING_CHARGES, 		',
'    MLD_CALC_AMT_UNITWISE, 	',
'    MLD_COSTING_UNIT,',
'    --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal stop',
'    --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes start',
'    MLD_STW_RND_40,',
'	MLD_STW_RND_40HC,	',
'    --Added by Rahul on 27-Jun-24 for Satkamal Costing end    ',
'    MLD_CALC_AMT_UNITWISE_RND --Added by Rahul on 11-Sep-24 for Satkamal Costing Changes',
'    ,MLD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
'    ,MLD_PROFIT_PERC_GST_PURCHASE --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
'    FROM V_MASTER_LIST_DETAILS',
'	WHERE MLD_ID = l_mld_id(j);',
'    ',
'    forall j in 1..l_mld_id.count',
'    delete ',
'    FROM V_MASTER_LIST_DETAILS',
'	WHERE MLD_ID = l_mld_id(j);',
'',
'    l_error_msg := fn_update_container_summary(apex_application.g_x02);',
'',
'    --insert into error_log (el_text) values (SQL%ROWCOUNT || ''-j-test'');',
'exception when others then',
'    l_error_msg := SQLERRM;',
'    insert into error_log (el_text) values (l_error_msg);',
'	commit;  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>932288190539837894
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(932237010855009397)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'AJAX_MOVE_OUT_PRODUCTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	l_selected_ids_json          varchar2(4000);',
'    type numTab is table of number  index by binary_integer;',
'    l_eod_id                     numTab;',
'    l_array                      JSON_ARRAY_T;',
'    l_error_msg                   varchar2(4000);',
'    l_master_list_id              number;',
'BEGIN',
' ',
'      l_selected_ids_json := apex_application.g_x01;',
'      l_array := json_array_t(l_selected_ids_json) ;',
'        ',
'      select eom_master_list_id',
'      into l_master_list_id',
'      from V_ENQUIRIES_ORDERS_MST',
'      where eom_enq_id = apex_application.g_x02;',
'      insert into error_log(el_text) values (apex_application.g_x02 || '' g_x02 enq id rahul'');',
'      insert into error_log (el_text) values (l_master_list_id || ''-l_master_list_id'');',
'      commit;',
'',
'    for j in 0 .. l_array.get_size() - 1 loop',
'        l_eod_id(j+1) := l_array.get_number(j);',
'    end loop;',
'',
'    forall j in 1..l_eod_id.count   ',
'  	INSERT INTO V_MASTER_LIST_DETAILS',
'	(',
'		MLD_ID	,',
'		MLD_ML_ID,',
'		MLD_ENQ_ID ,',
'		MLD_MANUFAC_ID	,',
'		MLD_PRODUCT_ID	,',
'		MLD_QUANTITY	,',
'		MLD_MRP	,',
'		MLD_TRADE_PRICE	,',
'		MLD_PURCHASE_AMT	,',
'		MLD_SCHEME_PERC	,',
'		MLD_SCHEME_AMT	,',
'		MLD_DISCOUNT_PERC	,',
'		MLD_DISCOUNT_AMT	,',
'		MLD_GST_PERC	,',
'		MLD_GST_AMT	,',
'		MLD_TRANS_CHARGES	,',
'		MLD_BAGS_CTNS	,',
'		MLD_RECOV_ON_FRT	,',
'		MLD_REPACKING	,',
'		MLD_EXTRA	,',
'		MLD_NET_PURCHASE_VAL	,',
'		MLD_VOL_FOB_AMT	,',
'		MLD_VOL_FOB_EXP	,',
'		MLD_PROFIT_PERC	,',
'		MLD_PROFIT_AMT	,',
'		MLD_INCOME_TAX	,',
'		MLD_DUTY_PERC	,',
'		MLD_DUTY_AMT	,',
'		MLD_ECGC	,',
'		MLD_BANK_COMM	,',
'		MLD_INTEREST_PERC	,',
'		MLD_INTEREST_AMT	,',
'		MLD_EXCHANGE_RATE	,',
'		MLD_FOB_RS	,',
'		MLD_FOB_DOLL	,',
'		MLD_COMMISSION_PERC	,',
'		MLD_FOBC_AMT	,',
'		MLD_FOB_DOLL_RND	,',
'		MLD_OCEAN_FRT	,',
'		MLD_FRT_PER_CTN	,',
'		MLD_CANDF_AMT	,',
'		MLD_CANDFC_AMT	,',
'		MLD_CANDF_AMT_RND	,',
'		MLD_INSURANCE_AMT	,',
'		MLD_CIF_AMT	,',
'		MLD_CIFC_AMT	,',
'		MLD_CIF_AMT_RND	,',
'		MLD_CNI_AMT	,',
'		MLD_CNIC_AMT	,',
'		MLD_CNI_AMT_RND	,',
'		MLD_COSTING_TYPE	,',
'		MLD_INCOME_TAX_PERC	,',
'		MLD_BANK_COMM_PERC	,',
'		MLD_ECGC_PERC	,',
'		MLD_SGST_PERC	,',
'		MLD_CGST_PERC	,',
'		MLD_TOTAL_GST_PERC	,',
'		MLD_INSURANCE_PERC	,',
'		MLD_STW_RND_20	,',
'		MLD_HSN_CODE	,',
'		MLD_COSTING_REMARKS	,',
'		MLD_CIR_DISPLAY_NAME	,',
'		MLD_FOC_FLAG,',
'        MLD_NET_WT,',
'        MLD_GROSS_WT,',
'        MLD_LENGTH  ,                  ',
'        MLD_BREADTH  ,                 ',
'        MLD_HEIGHT  ,                  ',
'        MLD_CUBIC_SPACE,',
'        MLD_VERIFIED,',
'     --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal start',
'        MLD_GODOWN_CHARGES, 	',
'        MLD_TESTING_CHARGES, 		',
'        MLD_CALC_AMT_UNITWISE, 	',
'        MLD_COSTING_UNIT,',
'     --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal stop',
'     --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes start',
'        MLD_STW_RND_40,',
'	    MLD_STW_RND_40HC,	',
'    --Added by Rahul on 27-Jun-24 for Satkamal Costing end      ',
'        MLD_CALC_AMT_UNITWISE_RND --Added by Rahul on 11-Sep-24 for Satkamal Costing Changes',
'        ,MLD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list	',
'        ,MLD_PROFIT_PERC_GST_PURCHASE  --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
'',
'    )',
' SELECT	  ',
'		SEQ_MLD_ID.nextval,',
'		l_master_list_id,',
'		eod_enq_id,',
'		eod_manufac_id,',
'		eod_product_id,',
'		eod_quantity,',
'		eod_mrp,',
'		eod_trade_price,',
'		eod_purchase_amt,',
'		eod_scheme_perc,',
'		eod_scheme_amt,',
'		eod_discount_perc,',
'		eod_discount_amt,',
'		eod_gst_perc,',
'		eod_gst_amt,',
'		eod_trans_charges,',
'		eod_bags_ctns,',
'		eod_recov_on_frt,',
'		eod_repacking,',
'		eod_extra,',
'		eod_net_purchase_val,',
'		eod_vol_fob_amt,',
'		eod_vol_fob_exp,',
'		eod_profit_perc,',
'		eod_profit_amt,',
'		eod_income_tax,',
'		eod_duty_perc,',
'		eod_duty_amt,',
'		eod_ecgc,',
'		eod_bank_comm,',
'		eod_interest_perc,',
'		eod_interest_amt,',
'		eod_exchange_rate,',
'		eod_fob_rs,',
'		eod_fob_doll,',
'		eod_commission_perc,',
'		eod_fobc_amt,',
'		eod_fob_doll_rnd,',
'		eod_ocean_frt,',
'		eod_frt_per_ctn,',
'		eod_candf_amt,',
'		eod_candfc_amt,',
'		eod_candf_amt_rnd,',
'		eod_insurance_amt,',
'		eod_cif_amt,',
'		eod_cifc_amt,',
'		eod_cif_amt_rnd,',
'		eod_cni_amt,',
'		eod_cnic_amt,',
'		eod_cni_amt_rnd,',
'		eod_costing_type,',
'		eod_income_tax_perc,',
'		eod_bank_comm_perc,',
'		eod_ecgc_perc,',
'		eod_sgst_perc,',
'		eod_cgst_perc,',
'		eod_total_gst_perc,',
'		eod_insurance_perc,    ',
'		eod_stw_rnd_20,',
'		eod_hsn_code,',
'		eod_costing_remarks,',
'		eod_cir_display_name,',
'		eod_foc_flag,',
'        eod_net_wt,',
'        eod_gross_wt,',
'        EOD_LENGTH  ,                  ',
'        EOD_BREADTH  ,                 ',
'        EOD_HEIGHT  ,                  ',
'        EOD_CUBIC_SPACE,',
'        EOD_VERIFIED,',
'     --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal start',
'        EOD_GODOWN_CHARGES, 	',
'        EOD_TESTING_CHARGES,		',
'        EOD_CALC_AMT_UNITWISE,	',
'        EOD_COSTING_UNIT,',
'    --Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal stop',
'    --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes start',
'        EOD_STW_RND_40,		',
'    	EOD_STW_RND_40HC,		',
'    --Added by Rahul on 27-Jun-24 for Satkamal Costing Changes end',
'        EOD_CALC_AMT_UNITWISE_RND   --Added by Rahul on 11-Sep-24 for Satkamal Costing Changes',
'        ,EOD_EXCLUDE_PDI_RPT --Added by Ranu on 29-Nov-2024 for Product Dec Ingredient list',
'        ,EOD_PROFIT_PERC_GST_PURCHASE --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
'	',
'    FROM V_ENQUIRIES_ORDERS_DETAILS',
'	WHERE EOD_ID =  l_eod_id(j);',
'    ',
'    forall j in 1..l_eod_id.count',
'    delete ',
'    FROM V_ENQUIRIES_ORDERS_DETAILS',
'	WHERE EOD_ID = l_eod_id(j);',
'',
'    l_error_msg := fn_update_container_summary(apex_application.g_x02);',
'',
'    --insert into error_log (el_text) values (SQL%ROWCOUNT || ''-j-test'');',
'exception when others then',
'    l_error_msg := SQLERRM;',
'    insert into error_log (el_text) values (l_error_msg);',
'	commit;  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>932288160485837893
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8209193062467718461)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_region_id=>wwv_flow_imp.id(8224589094351906742)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PREPARE_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   result varchar2(32767);',
'begin',
'   result:=apex_util.prepare_url(apex_application.g_x01);',
'   apex_json.open_object;',
'   apex_json.write(''success'', true);',
'   apex_json.write(''url'', result);',
'   apex_json.close_object;',
'exception',
' when others then',
'   apex_json.open_object;',
'   apex_json.write(''success'', false);',
'   apex_json.write(''message'', sqlerrm);',
'   apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_only_for_changed_rows=>'N'
,p_internal_uid=>8209244212098546957
);
wwv_flow_imp.component_end;
end;
/
