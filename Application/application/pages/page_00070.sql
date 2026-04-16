prompt --application/pages/page_00070
begin
--   Manifest
--     PAGE: 00070
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
 p_id=>70
,p_name=>'Charts'
,p_step_title=>'Charts'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'function refreshDetailReport(custID, statusID)',
'    {',
'        //alert (custID + status);',
'        $s (''P70_CUST_ID'',custID);',
'        $s (''P70_STATUS'',statusID);',
'        ',
'        $.event.trigger("refreshDetailReportEvent");',
'    }',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92504172649283796)
,p_plug_name=>'Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92504509637283800)
,p_plug_name=>'Trend Analysis Old'
,p_region_name=>'TREND'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select round(AVG(EOD_NET_PURCHASE_VAL),2) EOD_NET_PURCHASE_VAL, regexp_replace(EOM_ORD_ACC_YEAR, ''([0-9]{4})([0-9]{2})'', ''\1-\2'') EOM_ORD_ACC_YEAR,EOD_PRODUCT_ID',
'from V_ENQUIRIES_ORDERS_DETAILS,V_ENQUIRIES_ORDERS_MST',
'where EOD_ENQ_ID = EOM_ENQ_ID',
'and eom_type = ''ORDER''',
'and EOD_PRODUCT_ID = :P70_PRODUCT',
'AND ((:P70_CUSTOMER_LIST is not null and  (instr('':''|| :P70_CUSTOMER_LIST  ||'':'','':''|| EOM_CUSTOMER_ID  ||'':'',1) > 0 ) ) or :P70_CUSTOMER_LIST is null  )  ',
'and EOM_ORD_ACC_YEAR between :P70_FROM_FY and :P70_TO_FY',
'group by EOM_ORD_ACC_YEAR,EOD_PRODUCT_ID',
'order by EOM_ORD_ACC_YEAR'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P70_PRODUCT,P70_FROM_FY,P70_TO_FY'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with product_list  as (',
'                        select regexp_substr(:P70_PRODUCT, ''[^:]+'', 1, level) product_items',
'                        from dual',
'                        connect by level <= regexp_count(:P70_PRODUCT, '':'') + 1',
'                      )',
'select AVG(EOD_NET_PURCHASE_VAL), EOM_ORD_ACC_YEAR,EOD_PRODUCT_ID',
'from V_ENQUIRIES_ORDERS_DETAILS,V_ENQUIRIES_ORDERS_MST,product_list',
'where EOD_ENQ_ID = EOM_ENQ_ID',
'and eom_type = ''ORDER''',
'and EOD_PRODUCT_ID in  product_items',
'and EOM_ORD_ACC_YEAR between :P70_FROM_FY and :P70_TO_FY',
'group by EOM_ORD_ACC_YEAR,EOD_PRODUCT_ID',
'order by EOM_ORD_ACC_YEAR'))
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(93223178547311468)
,p_region_id=>wwv_flow_imp.id(92504509637283800)
,p_chart_type=>'line'
,p_title=>'Cost Trend Analysis of Product'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_no_data_found_message=>'For the selected criteria, there are no records in the system to generate "Cost Trend Analysis of Product" Report.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(93223225758311469)
,p_chart_id=>wwv_flow_imp.id(93223178547311468)
,p_seq=>10
,p_name=>'Product Cost Trend'
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'EOD_NET_PURCHASE_VAL'
,p_items_label_column_name=>'EOM_ORD_ACC_YEAR'
,p_line_style=>'solid'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'diamond'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(93223390425311470)
,p_chart_id=>wwv_flow_imp.id(93223178547311468)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Year-Month'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(93223489173311471)
,p_chart_id=>wwv_flow_imp.id(93223178547311468)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Product Cost'
,p_format_type=>'currency'
,p_currency=>'INR'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(90323196688974054)
,p_chart_id=>wwv_flow_imp.id(93223178547311468)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92505483961283809)
,p_plug_name=>'Customer-Wise Cubic'
,p_region_name=>'CUBIC'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SUM(NVL(EOM_TOTAL_CBM,0))  value, cm_name,regexp_replace(EOM_ORD_ACC_YEAR, ''([0-9]{4})([0-9]{2})'', ''\1-\2'')   accyear',
'from V_ENQUIRIES_ORDERS_MST,V_CUSTOMER_MASTER',
'where EOM_TYPE = ''ORDER''',
'and eom_customer_id = cm_id',
'and EOM_ORD_ACC_YEAR between :P70_FROM_FY and :P70_TO_FY',
'AND ((:P70_CUSTOMER_LIST is not null and  (instr('':''|| :P70_CUSTOMER_LIST  ||'':'','':''|| EOM_CUSTOMER_ID  ||'':'',1) > 0 )) or :P70_CUSTOMER_LIST is null  )   ',
'group by cm_name,EOM_ORD_ACC_YEAR ',
'order by EOM_ORD_ACC_YEAR'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P70_FROM_FY,P70_TO_FY,P70_CUSTOMER_LIST'
,p_plug_query_num_rows=>15
,p_plug_column_width=>'stack-label="on"'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(90323414546974056)
,p_region_id=>wwv_flow_imp.id(92505483961283809)
,p_chart_type=>'combo'
,p_title=>'Customer-Wise Cubic'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_no_data_found_message=>'For the selected "Financial Year-Month", there are no records in the system to generate Customer-Wise Cubic Report.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ options.stackLabel = "on";',
'    return options;      ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(90323482523974057)
,p_chart_id=>wwv_flow_imp.id(90323414546974056)
,p_seq=>10
,p_name=>'Cubic'
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_series_name_column_name=>'CM_NAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'ACCYEAR'
,p_aggregate_function=>'SUM'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(90323577689974058)
,p_chart_id=>wwv_flow_imp.id(90323414546974056)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Year-Month'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(90323699435974059)
,p_chart_id=>wwv_flow_imp.id(90323414546974056)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Cubic Value'
,p_format_type=>'decimal'
,p_decimal_places=>2
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92604903894201482)
,p_plug_name=>'Customer-wise Sales'
,p_region_name=>'SALES'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92604352090201476)
,p_plug_name=>'Rejected Enquiries'
,p_parent_plug_id=>wwv_flow_imp.id(92604903894201482)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>8
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(92604401741201477)
,p_region_id=>wwv_flow_imp.id(92604352090201476)
,p_chart_type=>'pie'
,p_title=>'Rejected Enquiries'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
,p_no_data_found_message=>'For the selected "Financial Year-Month", there are no records in the system to generate "Rejected Enquiries" Report.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'	options.styleDefaults.threeDEffect = "on";',
'    options.title = $.extend( options.title, {',
'        halign: ''center'', ',
'        style: ''font-weight:bold;color:#ED6647;font-size:15px;''',
'    });',
'	return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(92604507589201478)
,p_chart_id=>wwv_flow_imp.id(92604401741201477)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.CM_ID,',
'       B.CM_NAME LABEL,',
'       nvl(sum(a.EOM_TOTAL_CONTAINER_AMT),0) value',
'  from V_ENQUIRIES_ORDERS_MST a,',
'       V_CUSTOMER_MASTER b',
' where a.EOM_CUSTOMER_ID = b.CM_ID',
'and a.EOM_ENQ_STATUS = ''RJ''',
'and a.EOM_ENQ_ACC_YEAR between :P70_FROM_FY and :P70_TO_FY',
'AND ((:P70_CUSTOMER_LIST is not null and  (instr('':''|| :P70_CUSTOMER_LIST  ||'':'','':''|| a.EOM_CUSTOMER_ID  ||'':'',1) > 0 )) or :P70_CUSTOMER_LIST is null  ) ',
' group by B.CM_ID, B.CM_NAME',
'having nvl(sum(a.EOM_TOTAL_CONTAINER_AMT),0) != 0',
'order by 3 desc'))
,p_ajax_items_to_submit=>'P70_FROM_FY,P70_TO_FY,P70_CUSTOMER_LIST'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'javascript:refreshDetailReport(&CM_ID.,''RJ'');'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92604685351201479)
,p_plug_name=>'On-going Enquiries'
,p_parent_plug_id=>wwv_flow_imp.id(92604903894201482)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>7
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(92604768413201480)
,p_region_id=>wwv_flow_imp.id(92604685351201479)
,p_chart_type=>'pie'
,p_title=>'On-going Enquiries'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
,p_no_data_found_message=>'For the selected "Financial Year-Month", there are no records in the system to generate "On-going Enquiries" Report.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'	options.styleDefaults.threeDEffect = "on";',
'    options.title = $.extend( options.title, {',
'        halign: ''center'', ',
'        style: ''font-weight:bold;color:#F1C40F;font-size:15px;''',
'    });',
'	return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(92604846922201481)
,p_chart_id=>wwv_flow_imp.id(92604768413201480)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.CM_ID,',
'       B.CM_NAME LABEL,',
'       nvl(sum(a.EOM_TOTAL_CONTAINER_AMT),0) value',
'  from V_ENQUIRIES_ORDERS_MST a,',
'       V_CUSTOMER_MASTER b',
' where a.EOM_CUSTOMER_ID = b.CM_ID',
'and a.EOM_ENQ_STATUS = ''IP''',
'and a.EOM_ENQ_ACC_YEAR between :P70_FROM_FY and :P70_TO_FY',
'AND ((:P70_CUSTOMER_LIST is not null and  (instr('':''|| :P70_CUSTOMER_LIST  ||'':'','':''|| a.EOM_CUSTOMER_ID  ||'':'',1) > 0 )) or :P70_CUSTOMER_LIST is null  )  ',
' group by B.CM_ID, B.CM_NAME',
'having nvl(sum(a.EOM_TOTAL_CONTAINER_AMT),0) != 0',
'order by 3 desc'))
,p_ajax_items_to_submit=>'P70_FROM_FY,P70_TO_FY,P70_CUSTOMER_LIST'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'javascript:refreshDetailReport(&CM_ID.,''IP'');'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(92605611102201489)
,p_plug_name=>'Enquiry Details'
,p_parent_plug_id=>wwv_flow_imp.id(92604903894201482)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>9
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(92605851261201491)
,p_region_id=>wwv_flow_imp.id(92605611102201489)
,p_chart_type=>'bar'
,p_title=>'Enquiry/ Order Details (click on below bar to view detailed Enquiry information)'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_no_data_found_message=>'For the selected criteria, there are no records in the system to generate "Enquiry Details" Report.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'	options.styleDefaults.threeDEffect = "on";',
'    options.title = $.extend( options.title, {',
'        halign: ''center'', ',
'        style: ''font-weight:bold;color:#000000;font-size:15px;''',
'    });',
'	return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(92605957705201492)
,p_chart_id=>wwv_flow_imp.id(92605851261201491)
,p_seq=>10
,p_name=>'Enquiry Details'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.EOM_ENQ_ID,',
'       A.EOM_ENQ_NO || ''-'' || trunc(nvl (a.EOM_ORDER_DATE,a.EOM_ENQ_DATE ))  LABEL,',
'       a.EOM_ENQ_ACC_YEAR,',
'       a.EOM_ENQ_STATUS,',
'       nvl(sum(a.EOM_TOTAL_CONTAINER_AMT),0) value,',
'       case when EOM_ENQ_STATUS = ''RJ'' then ''#ED6647'' --Red',
'			when EOM_ENQ_STATUS = ''IP'' then ''#F1C40F'' --Yellow',
'			when EOM_ENQ_STATUS = ''AP'' then ''#68C182'' --Green',
'			else ''#267DB3'' --Blue',
'			end color_value,',
'            B.CM_NAME || ''-'' || trunc(nvl (a.EOM_ORDER_DATE,a.EOM_ENQ_DATE )) || CHR(10) ',
'            || c.st_extra1 || '' ''|| TO_CHAR(nvl(sum(a.EOM_TOTAL_CONTAINER_AMT),0) ,''999,999,999.99'') custom_tooltip',
'  from V_ENQUIRIES_ORDERS_MST a,',
'       V_CUSTOMER_MASTER b,',
'       V_SETUP_TABLE c',
' where a.EOM_CUSTOMER_ID = B.CM_ID',
'and EOM_ENQ_STATUS = :P70_STATUS',
'and cm_id = :P70_CUST_ID',
'and a.EOM_QUOTE_IN = c.st_code',
'and st_type =''QUOTE_IN''',
'and a.EOM_ENQ_ACC_YEAR between :P70_FROM_FY and :P70_TO_FY',
' group by a.EOM_ENQ_ID, B.CM_NAME,a.EOM_ENQ_ACC_YEAR,',
'       a.EOM_ENQ_STATUS,a.EOM_ORDER_DATE,a.EOM_ENQ_DATE , c.st_extra1,A.EOM_ENQ_NO',
'having nvl(sum(a.EOM_TOTAL_CONTAINER_AMT),0) != 0       ',
'order by 3 desc'))
,p_ajax_items_to_submit=>'P70_STATUS,P70_CUST_ID'
,p_series_name_column_name=>'LABEL'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_short_desc_column_name=>'CUSTOM_TOOLTIP'
,p_color=>'&COLOR_VALUE.'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,23:P23_EOM_ENQ_ID:&EOM_ENQ_ID.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(92606070143201493)
,p_chart_id=>wwv_flow_imp.id(92605851261201491)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Enquiry#- Order/ Enquiry Date'
,p_format_type=>'currency'
,p_currency=>'INR'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'inside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(92606160972201494)
,p_chart_id=>wwv_flow_imp.id(92605851261201491)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Container Value'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(92606830261201501)
,p_chart_id=>wwv_flow_imp.id(92605851261201491)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(93063891852776302)
,p_plug_name=>'Total Sales'
,p_parent_plug_id=>wwv_flow_imp.id(92604903894201482)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>5
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(93064383398776305)
,p_region_id=>wwv_flow_imp.id(93063891852776302)
,p_chart_type=>'pie'
,p_title=>'Total Sales'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
,p_no_data_found_message=>'For the selected "Financial Year-Month", there are no records in the system to generate "Total Sales" Report.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'	options.styleDefaults.threeDEffect = "on";',
'    options.title = $.extend( options.title, {',
'        halign: ''center'', ',
'        style: ''font-weight:bold;color:#68C182;font-size:15px;''',
'    });',
'	return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(93064854448776308)
,p_chart_id=>wwv_flow_imp.id(93064383398776305)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.CM_ID,',
'       B.CM_NAME LABEL,',
'       nvl(sum(a.EOM_TOTAL_CONTAINER_AMT),0) value',
'  from V_ENQUIRIES_ORDERS_MST a,',
'       V_CUSTOMER_MASTER b',
' where a.EOM_CUSTOMER_ID = b.CM_ID',
'and a.EOM_ENQ_STATUS = ''AP''',
'and a.EOM_ENQ_ACC_YEAR between :P70_FROM_FY and :P70_TO_FY',
'AND ((:P70_CUSTOMER_LIST is not null and  (instr('':''|| :P70_CUSTOMER_LIST  ||'':'','':''|| a.EOM_CUSTOMER_ID  ||'':'',1) > 0 )) or :P70_CUSTOMER_LIST is null  )  ',
' group by B.CM_ID, B.CM_NAME',
'having nvl(sum(a.EOM_TOTAL_CONTAINER_AMT),0) != 0',
'order by 3 desc'))
,p_ajax_items_to_submit=>'P70_FROM_FY,P70_TO_FY,P70_CUSTOMER_LIST'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'javascript:refreshDetailReport(&CM_ID.,''AP'');'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28891056990757952771)
,p_plug_name=>'Earnings'
,p_region_name=>'EARNINGS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.CM_name,',
'       to_number(EOM_ORD_ACC_YEAR) LABEL,',
'       nvl(sum(a.eom_total_profit_amt),0) value ',
'  from V_ENQUIRIES_ORDERS_MST a,',
'       V_CUSTOMER_MASTER b',
' where a.EOM_CUSTOMER_ID = b.CM_ID',
'and a.EOM_ENQ_STATUS = ''AP''',
'and a.EOM_ORD_ACC_YEAR between :P70_FROM_FY and :P70_TO_FY',
'AND ((:P70_CUSTOMER_LIST is not null and  (instr('':''|| :P70_CUSTOMER_LIST  ||'':'','':''|| EOM_CUSTOMER_ID  ||'':'',1) > 0 )) or :P70_CUSTOMER_LIST is null  )   ',
'group by EOM_ORD_ACC_YEAR,b.CM_name',
'order by EOM_ORD_ACC_YEAR',
'--having nvl(sum(a.EOM_TOTAL_CONTAINER_AMT),0) != 0'''))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P70_FROM_FY,P70_TO_FY,P70_CUSTOMER_LIST'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(28891056893184952770)
,p_region_id=>wwv_flow_imp.id(28891056990757952771)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'on'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(28891056792681952769)
,p_chart_id=>wwv_flow_imp.id(28891056893184952770)
,p_seq=>10
,p_name=>'Earnings'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'CM_NAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(28891056688726952768)
,p_chart_id=>wwv_flow_imp.id(28891056893184952770)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Accounting Month-Year'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(28891056547258952767)
,p_chart_id=>wwv_flow_imp.id(28891056893184952770)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Profit Amount ( &APP_LOCAL_CURR_SYMBOL. )'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_numeric_pattern=>'##,##,##,##,###'
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28933951001234406133)
,p_plug_name=>'Trend Analysis'
,p_region_name=>'TREND'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P70_PRODUCT,P70_FROM_FY,P70_TO_FY'
,p_plug_query_num_rows=>15
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with product_list  as (',
'                        select regexp_substr(:P70_PRODUCT, ''[^:]+'', 1, level) product_items',
'                        from dual',
'                        connect by level <= regexp_count(:P70_PRODUCT, '':'') + 1',
'                      )',
'select AVG(EOD_NET_PURCHASE_VAL), EOM_ORD_ACC_YEAR,EOD_PRODUCT_ID',
'from V_ENQUIRIES_ORDERS_DETAILS,V_ENQUIRIES_ORDERS_MST,product_list',
'where EOD_ENQ_ID = EOM_ENQ_ID',
'and eom_type = ''ORDER''',
'and EOD_PRODUCT_ID in  product_items',
'and EOM_ORD_ACC_YEAR between :P70_FROM_FY and :P70_TO_FY',
'group by EOM_ORD_ACC_YEAR,EOD_PRODUCT_ID',
'order by EOM_ORD_ACC_YEAR'))
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(28933950665103406130)
,p_region_id=>wwv_flow_imp.id(28933951001234406133)
,p_chart_type=>'line'
,p_title=>'Cost Trend Analysis of Product'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_no_data_found_message=>'For the selected criteria, there are no records in the system to generate "Cost Trend Analysis of Product" Report.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(28933950600196406129)
,p_chart_id=>wwv_flow_imp.id(28933950665103406130)
,p_seq=>10
,p_name=>'Product Purchase Price'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select round(AVG(EOD_NET_PURCHASE_VAL),2) EOD_NET_PURCHASE_VAL, regexp_replace(EOM_ORD_ACC_YEAR, ''([0-9]{4})([0-9]{2})'', ''\1-\2'') EOM_ORD_ACC_YEAR,EOD_PRODUCT_ID',
'from V_ENQUIRIES_ORDERS_DETAILS,V_ENQUIRIES_ORDERS_MST',
'where EOD_ENQ_ID = EOM_ENQ_ID',
'and eom_type = ''ORDER''',
'and EOD_PRODUCT_ID = :P70_PRODUCT',
'AND ((:P70_CUSTOMER_LIST is not null and  (instr('':''|| :P70_CUSTOMER_LIST  ||'':'','':''|| EOM_CUSTOMER_ID  ||'':'',1) > 0 ) ) or :P70_CUSTOMER_LIST is null  )  ',
'and EOM_ORD_ACC_YEAR between :P70_FROM_FY and :P70_TO_FY',
'group by EOM_ORD_ACC_YEAR,EOD_PRODUCT_ID',
'order by EOM_ORD_ACC_YEAR'))
,p_ajax_items_to_submit=>'P70_PRODUCT,P70_FROM_FY,P70_TO_FY'
,p_items_value_column_name=>'EOD_NET_PURCHASE_VAL'
,p_items_label_column_name=>'EOM_ORD_ACC_YEAR'
,p_line_style=>'solid'
,p_line_type=>'curved'
,p_marker_rendered=>'on'
,p_marker_shape=>'diamond'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(28933949935409406123)
,p_chart_id=>wwv_flow_imp.id(28933950665103406130)
,p_seq=>20
,p_name=>'Product Selling Price'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select round(AVG(EOD_FOB_RS),2) EOD_FOB_RS, regexp_replace(EOM_ORD_ACC_YEAR, ''([0-9]{4})([0-9]{2})'', ''\1-\2'') EOM_ORD_ACC_YEAR,EOD_PRODUCT_ID',
'from V_ENQUIRIES_ORDERS_DETAILS,V_ENQUIRIES_ORDERS_MST',
'where EOD_ENQ_ID = EOM_ENQ_ID',
'and eom_type = ''ORDER''',
'and EOD_PRODUCT_ID = :P70_PRODUCT',
'AND ((:P70_CUSTOMER_LIST is not null and  (instr('':''|| :P70_CUSTOMER_LIST  ||'':'','':''|| EOM_CUSTOMER_ID  ||'':'',1) > 0 ) ) or :P70_CUSTOMER_LIST is null  )  ',
'and EOM_ORD_ACC_YEAR between :P70_FROM_FY and :P70_TO_FY',
'group by EOM_ORD_ACC_YEAR,EOD_PRODUCT_ID',
'order by EOM_ORD_ACC_YEAR'))
,p_ajax_items_to_submit=>'P70_PRODUCT,P70_FROM_FY,P70_TO_FY'
,p_items_value_column_name=>'EOD_FOB_RS'
,p_items_label_column_name=>'EOM_ORD_ACC_YEAR'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'on'
,p_marker_shape=>'diamond'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(28933950244024406126)
,p_chart_id=>wwv_flow_imp.id(28933950665103406130)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(28933950340331406127)
,p_chart_id=>wwv_flow_imp.id(28933950665103406130)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Product Cost'
,p_format_type=>'currency'
,p_currency=>'INR'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(28933950500843406128)
,p_chart_id=>wwv_flow_imp.id(28933950665103406130)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Year-Month'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69061072946731890)
,p_name=>'P70_CUSTOMER_LIST'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_imp.id(92504172649283796)
,p_prompt=>'Customer List'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_CUSTOMER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cm_name as d,',
'       cm_id as r',
'  from V_CUSTOMER_MASTER',
' where nvl(cm_active,''Y'') = ''Y''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92504031215283795)
,p_name=>'P70_REPORT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(92504172649283796)
,p_item_default=>'CUBIC'
,p_prompt=>'Report Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_DASHBOARD_REPORT_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rm_name d,rm_no r',
'from V_REPORT_MASTER',
'where rm_type = ''DASHBOARD''',
'and nvl(rm_active,''N'') = ''Y''',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Report Type -'
,p_cHeight=>1
,p_colspan=>2
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92506128263283816)
,p_name=>'P70_PRODUCT'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_imp.id(28933951001234406133)
,p_item_default=>'ALL'
,p_prompt=>'Product'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pm_name || '' '' || PM_PACKAGE',
'          || '' '' ||nvl2(PM_PACKAGE, '' x '',NULL)||PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT DIS',
'        , PM_ID RET',
'FROM V_PRODUCT_MASTER ',
'WHERE PM_BRAND = decode(:P70_BRAND,''ALL'',PM_BRAND ,:P70_BRAND)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Product -'
,p_lov_null_value=>'0'
,p_lov_cascade_parent_items=>'P70_BRAND'
,p_ajax_items_to_submit=>'P70_BRAND,P70_PRODUCT'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Default value removed as when null selected to select any product then it again fetchs default value',
'declare ',
'v_supm_id number;',
'begin',
'',
'select supm_id into v_supm_id from (',
'select supm_id --into v_supm_id',
'  from V_SUPPLIER_MASTER',
' where nvl(supm_active,''Y'') = ''Y''',
'   and supm_supplier_type = ''MANUFACTURER''',
'   ',
'order by supm_name)',
'where rownum =1;',
'',
'return v_supm_id;',
'',
'exception when others then',
'return 1;',
'end;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92605035830201483)
,p_name=>'P70_FROM_FY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(92504172649283796)
,p_item_default=>'TO_CHAR(SYSDATE-365,''YYYYMM'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'From Financial Year-Month'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select regexp_replace(AS_YEAR_MONTH, ''([0-9]{4})([0-9]{2})'', ''\1-\2'')  d, AS_YEAR_MONTH r',
'from V_ACCOUNTING_SETUP',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select From Year-Month -'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
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
 p_id=>wwv_flow_imp.id(92605119582201484)
,p_name=>'P70_TO_FY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(92504172649283796)
,p_item_default=>'TO_CHAR(SYSDATE,''YYYYMM'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To Financial Year-Month'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select regexp_replace(AS_YEAR_MONTH, ''([0-9]{4})([0-9]{2})'', ''\1-\2'') d, AS_YEAR_MONTH r',
'from V_ACCOUNTING_SETUP',
'where AS_YEAR_MONTH  >= :P70_FROM_FY',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select To Year-Month -'
,p_lov_cascade_parent_items=>'P70_FROM_FY'
,p_ajax_items_to_submit=>'P70_FROM_FY'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>5
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
 p_id=>wwv_flow_imp.id(92606230841201495)
,p_name=>'P70_CUST_ID'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_imp.id(92504172649283796)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(92606316544201496)
,p_name=>'P70_STATUS'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_imp.id(92504172649283796)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93213093509952050)
,p_name=>'P70_BRAND'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_imp.id(28933951001234406133)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_BRAND'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT PM_BRAND D, PM_BRAND R',
'FROM V_PRODUCT_MASTER',
'WHERE PM_BRAND IS NOT NULL',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Brand -'
,p_lov_null_value=>'ALL'
,p_cSize=>30
,p_colspan=>2
,p_grid_column=>1
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
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Default value removed as when null selected to select any product then it again fetchs default value',
'declare ',
'v_supm_id number;',
'begin',
'',
'select supm_id into v_supm_id from (',
'select supm_id --into v_supm_id',
'  from V_SUPPLIER_MASTER',
' where nvl(supm_active,''Y'') = ''Y''',
'   and supm_supplier_type = ''MANUFACTURER''',
'   ',
'order by supm_name)',
'where rownum =1;',
'',
'return v_supm_id;',
'',
'exception when others then',
'return 1;',
'end;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92504739423283802)
,p_name=>'Change Report Type'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_REPORT_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92504852039283803)
,p_event_id=>wwv_flow_imp.id(92504739423283802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P70_REPORT_TYPE'') == ''CUBIC'')',
'    {',
'        $x_Show (''CUBIC'');$x_Hide (''SALES'');$x_Hide (''TREND'');$x_Hide (''EARNINGS'');',
'        ',
'    }',
'else if ($v(''P70_REPORT_TYPE'') == ''SALES'')',
'    {',
'        $x_Show (''SALES'');$x_Hide (''CUBIC'');$x_Hide (''TREND'');$x_Hide (''EARNINGS'');',
'        ',
'    }',
'else if ($v(''P70_REPORT_TYPE'') == ''TREND'')',
'    {',
'        $x_Show (''TREND'');$x_Hide (''SALES'');$x_Hide (''CUBIC'');$x_Hide (''EARNINGS'');',
'        ',
'    }',
'else if ($v(''P70_REPORT_TYPE'') == ''EARNINGS'')',
'    {',
'        $x_Show (''EARNINGS'');$x_Hide (''SALES'');$x_Hide (''CUBIC'');$x_Hide (''TREND'');',
'        ',
'    }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92605239955201485)
,p_name=>'Refresh Customer wise Enq. Charts'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_TO_FY,P70_FROM_FY,P70_CUSTOMER_LIST'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(P70_FROM_FY) != '''' && $v(P70_TO_FY) != '''''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92607145719201504)
,p_event_id=>wwv_flow_imp.id(92605239955201485)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_CUST_ID,P70_STATUS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92605324977201486)
,p_event_id=>wwv_flow_imp.id(92605239955201485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(93063891852776302)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92605448790201487)
,p_event_id=>wwv_flow_imp.id(92605239955201485)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92604685351201479)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92605503966201488)
,p_event_id=>wwv_flow_imp.id(92605239955201485)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92604352090201476)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92607011369201503)
,p_event_id=>wwv_flow_imp.id(92605239955201485)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92605611102201489)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(93223561347311472)
,p_name=>'Refresh Trend Analysis'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_TO_FY,P70_PRODUCT,P70_CUSTOMER_LIST'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P70_REPORT_TYPE'') == ''TREND'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_da_event_comment=>'$v(P70_FROM_FY) != '''' && $v(P70_TO_FY) != '''' && $v(''P70_PRODUCT'') != 0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(93223678534311473)
,p_event_id=>wwv_flow_imp.id(93223561347311472)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28933951001234406133)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28891056447313952766)
,p_name=>'Refresh Earnings'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_TO_FY,P70_CUSTOMER_LIST'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P70_REPORT_TYPE'') == ''EARNINGS'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_da_event_comment=>'$v(P70_FROM_FY) != '''' && $v(P70_TO_FY) != '''' && $v(''P70_PRODUCT'') != 0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28891056372200952765)
,p_event_id=>wwv_flow_imp.id(28891056447313952766)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28891056990757952771)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90324450366974066)
,p_name=>'Refresh Customer wise cubic'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_TO_FY,P70_CUSTOMER_LIST'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P70_REPORT_TYPE'') == ''CUBIC'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_da_event_comment=>'$v(P70_FROM_FY) != '''' && $v(P70_TO_FY) != '''''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90324491413974067)
,p_event_id=>wwv_flow_imp.id(90324450366974066)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92505483961283809)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92606446453201497)
,p_name=>'Refresh Enquiry Detail Report'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'$(":root").parent()'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'refreshDetailReportEvent'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92606501941201498)
,p_event_id=>wwv_flow_imp.id(92606446453201497)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(92605611102201489)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(687033689839710967)
,p_name=>'Clear Customer List on Delete key press'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_CUSTOMER_LIST'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'event.keyCode == 46'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keydown'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(687033668585710966)
,p_event_id=>wwv_flow_imp.id(687033689839710967)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_CUSTOMER_LIST'
);
wwv_flow_imp.component_end;
end;
/
