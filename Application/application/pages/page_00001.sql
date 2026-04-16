prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Home'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(620150323215849619)
,p_plug_name=>'Financial Metrics'
,p_icon_css_classes=>'fa-money-bag'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>45
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(373367589231751632)
,p_region_id=>wwv_flow_imp.id(620150323215849619)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
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
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(373369310516751635)
,p_chart_id=>wwv_flow_imp.id(373367589231751632)
,p_seq=>10
,p_name=>'Outstanding Balance'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    fiscal_year,',
'    SUM(monthly_balance) AS total_balance,',
'    LISTAGG(customer || '': '' || quote_in || '' '' || formatted_balance ,CHR(10) || CHR(10)) ',
'         WITHIN GROUP (ORDER BY monthly_balance DESC)  AS tooltip_value',
'FROM (',
'    SELECT ',
'        aset.AS_GOVT_FY AS fiscal_year,',
'        vor.eom_quote_in AS quote_in,        ',
'        SUM(vor.balance) AS monthly_balance,',
'        trim(TO_CHAR(SUM(vor.balance), ''99,99,99,99,990.00'')) AS formatted_balance,',
'        vor.cm_name as customer',
'    FROM ',
'        v_outstanding_report vor,',
'        V_ACCOUNTING_SETUP aset',
'    WHERE vor.eom_ord_acc_year = aset.AS_YEAR_MONTH',
'    GROUP BY ',
'        aset.AS_GOVT_FY,',
'        vor.eom_quote_in,',
'        vor.cm_name',
')',
'GROUP BY ',
'    fiscal_year',
'ORDER BY ',
'    fiscal_year'))
,p_items_value_column_name=>'TOTAL_BALANCE'
,p_items_label_column_name=>'FISCAL_YEAR'
,p_items_short_desc_column_name=>'TOOLTIP_VALUE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'on'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(373369899990751636)
,p_chart_id=>wwv_flow_imp.id(373367589231751632)
,p_seq=>20
,p_name=>'Payments Received'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    fiscal_year,',
'    SUM(payment) AS total_balance,',
'    LISTAGG(quote_in || '''' || formatted_payment,CHR(10) || CHR(10)) ',
'        WITHIN GROUP (ORDER BY payment desc) AS tooltip_value',
'FROM (',
'',
'select eom_quote_in AS quote_in, ',
'--cm_name, ',
'sum(nvl(opd_payment_amount,0)) payment ,',
'AS_GOVT_FY fiscal_year,',
'trim(to_char(sum(nvl(opd_payment_amount,0)), ''99,99,99,99,990.00''))  formatted_payment',
'from V_ENQUIRIES_ORDERS_MST, V_ORDER_PAYMENT_DETAILS, V_CUSTOMER_MASTER,',
'        V_ACCOUNTING_SETUP aset',
'where eom_enq_id = opd_enq_id',
'and to_char(nvl(opd_payment_date,trunc(sysdate)),''YYYYMM'') = aset.AS_YEAR_MONTH',
'and eom_customer_id = cm_id',
'group by eom_quote_in,AS_GOVT_FY    -- , cm_name ',
')',
'GROUP BY ',
'    fiscal_year',
'ORDER BY ',
'    fiscal_year'))
,p_items_value_column_name=>'TOTAL_BALANCE'
,p_items_label_column_name=>'FISCAL_YEAR'
,p_items_short_desc_column_name=>'TOOLTIP_VALUE'
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
 p_id=>wwv_flow_imp.id(373368747989751634)
,p_chart_id=>wwv_flow_imp.id(373367589231751632)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Amount'
,p_format_type=>'decimal'
,p_decimal_places=>0
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(373368091567751633)
,p_chart_id=>wwv_flow_imp.id(373367589231751632)
,p_axis=>'x'
,p_is_rendered=>'on'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(890477891129402326)
,p_plug_name=>'Earnings'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>15
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.CM_name,',
'       to_number(EOM_ORD_ACC_YEAR) LABEL,',
'      -- to_date(EOM_ORD_ACC_YEAR,''Mon-YYYY'') LABEL,',
'       nvl(sum(a.eom_total_profit_amt),0) value ',
'       --nvl((a.eom_total_profit_amt),0) value ',
'  from V_ENQUIRIES_ORDERS_MST a,',
'       V_CUSTOMER_MASTER b',
' where a.EOM_CUSTOMER_ID = b.CM_ID',
'and a.EOM_ENQ_STATUS = ''AP''',
'--and a.EOM_ORD_ACC_YEAR between :P70_FROM_FY and :P70_TO_FY',
'and a.EOM_ORD_ACC_YEAR in (select AS_YEAR_MONTH from V_ACCOUNTING_SETUP where AS_GOVT_FY = ''2025-2026'')',
'--AND ((:P70_CUSTOMER_LIST is not null and  (instr('':''|| :P70_CUSTOMER_LIST  ||'':'','':''|| EOM_CUSTOMER_ID  ||'':'',1) > 0 )) or :P70_CUSTOMER_LIST is null  )   ',
'group by EOM_ORD_ACC_YEAR,b.CM_name',
'order by to_number(EOM_ORD_ACC_YEAR)',
'--having nvl(sum(a.EOM_TOTAL_CONTAINER_AMT),0) != 0'''))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_required_role=>wwv_flow_imp.id(69913133764257079)
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(373370873624751641)
,p_region_id=>wwv_flow_imp.id(890477891129402326)
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
 p_id=>wwv_flow_imp.id(373372597656751643)
,p_chart_id=>wwv_flow_imp.id(373370873624751641)
,p_seq=>20
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
 p_id=>wwv_flow_imp.id(373371363743751641)
,p_chart_id=>wwv_flow_imp.id(373370873624751641)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Accounting Month-Year'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
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
 p_id=>wwv_flow_imp.id(373371963120751642)
,p_chart_id=>wwv_flow_imp.id(373370873624751641)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Profit Amount ( &APP_LOCAL_CURR_SYMBOL. )'
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
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
 p_id=>wwv_flow_imp.id(890480550709402338)
,p_plug_name=>'Chart 2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>35
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Top Buyer'' AS title, ',
'        ''Maximum Orders (Current FY)'' AS SUBTITLE,',
'       max(cm_name) KEEP (DENSE_RANK FIRST ORDER BY count(eom_enq_id) DESC) AS value,',
'       ''fa-contacts'' AS icon, ',
'       NULL AS badge, ',
'       NULL AS link,',
'      to_char(max(count(eom_enq_id))) secondary_body',
'FROM  V_ENQUIRIES_ORDERS_MST, V_CUSTOMER_MASTER',
'where  eom_ord_acc_year in (select AS_YEAR_MONTH from V_ACCOUNTING_SETUP where AS_GOVT_FY = ''2025-2026'')',
'and eom_customer_id = cm_id',
'and eom_type = ''ORDER''',
'and eom_order_status != ''RJ''',
'group by cm_name',
'',
'UNION ALL',
'',
'SELECT ''Top-Selling Product'' AS title, ',
'        ''By Volume (Current FY)'' AS SUBTITLE,',
'       max(pm_name) KEEP (DENSE_RANK FIRST ORDER BY SUM(nvl(eod_quantity,0)) DESC) AS value,',
'       ''fa-star'' AS icon, ',
'       NULL AS badge, ',
'       NULL AS link,',
'       max(to_char(SUM(nvl(eod_quantity,0)),''99,99,99,99,999'')  || '' '' || (upper(pm_UOM))) secondary_body',
'FROM V_ENQUIRIES_ORDERS_DETAILS, V_PRODUCT_MASTER, V_ENQUIRIES_ORDERS_MST',
'where eod_product_id = pm_id',
'and eom_enq_id = eom_enq_id',
'and eom_ord_acc_year in (select AS_YEAR_MONTH from V_ACCOUNTING_SETUP where AS_GOVT_FY = ''2025-2026'')',
'and eom_type = ''ORDER''',
'and eom_order_status != ''RJ''',
'GROUP BY pm_name,pm_UOM',
'',
'UNION ALL',
'',
'SELECT ''Top-Selling Product'' AS title, ',
'        ''By Revenue (Current FY)'' AS SUBTITLE,',
'       max(pm_name) KEEP (DENSE_RANK FIRST ORDER BY SUM(nvl(eod_quantity,0) * nvl(eod_profit_amt,0)) DESC) AS value,',
'       ''fa-star'' AS icon, ',
'       NULL AS badge, ',
'       NULL AS link,',
'      max( ''INR'' || to_char(SUM(nvl(eod_quantity,0) * nvl(eod_profit_amt,0)),''99,99,99,99,999.99'')) secondary_body',
'FROM V_ENQUIRIES_ORDERS_DETAILS, V_PRODUCT_MASTER, V_ENQUIRIES_ORDERS_MST',
'where eod_product_id = pm_id',
'and eom_enq_id = eom_enq_id',
'and eom_ord_acc_year in (select AS_YEAR_MONTH from V_ACCOUNTING_SETUP where AS_GOVT_FY = ''2025-2026'')',
'and eom_type = ''ORDER''',
'and eom_order_status != ''RJ''',
'GROUP BY pm_name',
'',
'',
'UNION ALL',
'',
'SELECT ''Total Orders'' AS title, ',
'       ''Current FY'' AS SUBTITLE,',
'       to_char(COUNT(eom_enq_id)) AS value, ',
'       ''fa-check-square'' AS icon, ',
'       NULL AS badge, ',
'       NULL AS link,',
'       NULL secondary_body',
'FROM V_ENQUIRIES_ORDERS_MST',
'WHERE eom_type = ''ORDER''',
'and eom_order_status != ''RJ''',
'and eom_ord_acc_year in (select AS_YEAR_MONTH from V_ACCOUNTING_SETUP where AS_GOVT_FY = ''2025-2026'')',
'',
'UNION ALL',
'',
'SELECT ''Avg Ship Time'' AS title,',
'       ''Current FY'' AS SUBTITLE,',
'       ROUND(AVG(eom_shipping_date - eom_enq_date)) || '' days'' AS value,',
'       ''fa-ship'' AS icon,',
'       NULL AS badge,',
'       NULL AS link,',
'       NULL secondary_body',
'FROM V_ENQUIRIES_ORDERS_MST',
'WHERE eom_type = ''ORDER''',
'and eom_ord_acc_year in (select AS_YEAR_MONTH from V_ACCOUNTING_SETUP where AS_GOVT_FY = ''2025-2026'')',
'and eom_order_status != ''RJ''',
'',
'UNION ALL',
'',
'SELECT ''Top Port'' AS title, ',
'        ''Maximum Orders (Current FY)'' AS SUBTITLE,',
'       max(st_name) KEEP (DENSE_RANK FIRST ORDER BY count(eom_port_of_discharge) DESC) AS value,',
'       ''fa-anchor'' AS icon, ',
'       NULL AS badge, ',
'       NULL AS link,',
'      to_char(max(count(eom_port_of_discharge))) secondary_body',
'FROM  V_ENQUIRIES_ORDERS_MST, V_SETUP_TABLE',
'where  eom_ord_acc_year in (select AS_YEAR_MONTH from V_ACCOUNTING_SETUP where AS_GOVT_FY = ''2025-2026'')',
'and eom_port_of_discharge = st_code',
'and st_type = ''PORT_OF_DISCHARGE''',
'and eom_type = ''ORDER''',
'and eom_order_status != ''RJ''',
'group by st_name',
'',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(373373613514751644)
,p_region_id=>wwv_flow_imp.id(890480550709402338)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'SUBTITLE'
,p_body_adv_formatting=>false
,p_body_column_name=>'VALUE'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'SECONDARY_BODY'
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'ICON'
,p_icon_css_classes=>'fa-check-square'
,p_icon_position=>'START'
,p_badge_column_name=>'BADGE'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(890484790965402340)
,p_plug_name=>'Shipment Metrics'
,p_icon_css_classes=>'fa-ship'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>55
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(373374471425751646)
,p_region_id=>wwv_flow_imp.id(890484790965402340)
,p_chart_type=>'line'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
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
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(373376174339751647)
,p_chart_id=>wwv_flow_imp.id(373374471425751646)
,p_seq=>10
,p_name=>'Total Shipments'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    fiscal_year,',
'    SUM(shipments) AS total_shipments,',
'''<table style="border-collapse:collapse; font-family:sans-serif;">'' ||',
'    ''<tr>'' ||',
'    ''<td style="font-weight:bold; padding:4px 8px; border-bottom:1px solid #ccc;">Customer</td>'' ||',
'    ''<td style="font-weight:bold; padding:4px 8px; text-align:right; border-bottom:1px solid #ccc;">No. Of Shipments</td>'' ||',
'    ''</tr>'' ||',
'    LISTAGG(',
'        ''<tr>'' ||',
'        ''<td style="padding:4px 8px; border-bottom:1px solid #eee;">'' || cm_name || ''</td>'' ||',
'        ''<td style="padding:4px 8px; text-align:right; border-bottom:1px solid #eee;">'' || shipments || ''</td>'' ||',
'        ''</tr>'',',
'        ''''',
'    ) WITHIN GROUP (ORDER BY shipments DESC) ||',
'    ''</table>'' AS tooltip_value',
'FROM (',
'',
'SELECT AS_GOVT_FY AS fiscal_year, COUNT(1) AS shipments, cm_name',
'FROM V_ENQUIRIES_ORDERS_MST, V_ACCOUNTING_SETUP, V_CUSTOMER_MASTER',
'where eom_type= ''ORDER''',
'and eom_ord_acc_year = AS_YEAR_MONTH',
'--and eom_ord_acc_year in (select AS_YEAR_MONTH from V_ACCOUNTING_SETUP where AS_GOVT_FY = :P1_FY)',
'and eom_order_status in (''RC'' ,''DS'')',
'and eom_customer_id = cm_id',
'group by AS_GOVT_FY, cm_name  ',
')',
'GROUP BY ',
'    fiscal_year',
'ORDER BY ',
'    fiscal_year'))
,p_max_row_count=>20
,p_items_value_column_name=>'TOTAL_SHIPMENTS'
,p_items_label_column_name=>'FISCAL_YEAR'
,p_items_short_desc_column_name=>'TOOLTIP_VALUE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(373376759077751647)
,p_chart_id=>wwv_flow_imp.id(373374471425751646)
,p_seq=>20
,p_name=>'Avg. Shipping Time'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*SELECT AS_GOVT_FY AS label, round(avg(eom_shipping_date - eom_enq_date)) AS value',
'FROM V_ENQUIRIES_ORDERS_MST, V_ACCOUNTING_SETUP',
'where eom_type= ''ORDER''',
'and eom_ord_acc_year = AS_YEAR_MONTH',
'--and eom_ord_acc_year in (select AS_YEAR_MONTH from V_ACCOUNTING_SETUP where AS_GOVT_FY = :P1_FY)',
'and eom_order_status in (''RC'' ,''DS'')',
'group by AS_GOVT_FY*/',
'SELECT ',
'    fiscal_year,',
'    avg(days) AS days,',
'''<table style="border-collapse:collapse; font-family:sans-serif;">'' ||',
'    ''<tr>'' ||',
'    ''<td style="font-weight:bold; padding:4px 8px; border-bottom:1px solid #ccc;">Customer</td>'' ||',
'    ''<td style="font-weight:bold; padding:4px 8px; text-align:right; border-bottom:1px solid #ccc;">Days</td>'' ||',
'    ''</tr>'' ||',
'    LISTAGG(',
'        ''<tr>'' ||',
'        ''<td style="padding:4px 8px; border-bottom:1px solid #eee;">'' || cm_name || ''</td>'' ||',
'        ''<td style="padding:4px 8px; text-align:right; border-bottom:1px solid #eee;">'' || days || ''</td>'' ||',
'        ''</tr>'',',
'        ''''',
'    ) WITHIN GROUP (ORDER BY days DESC) ||',
'    ''</table>'' ',
' AS tooltip_value',
'FROM (',
'',
'SELECT AS_GOVT_FY AS fiscal_year, round(avg(eom_shipping_date - eom_enq_date)) AS days, cm_name',
'FROM V_ENQUIRIES_ORDERS_MST, V_ACCOUNTING_SETUP, V_CUSTOMER_MASTER',
'where eom_type= ''ORDER''',
'and eom_ord_acc_year = AS_YEAR_MONTH',
'--and eom_ord_acc_year in (select AS_YEAR_MONTH from V_ACCOUNTING_SETUP where AS_GOVT_FY = :P1_FY)',
'and eom_order_status in (''RC'' ,''DS'')',
'and eom_customer_id = cm_id',
'group by AS_GOVT_FY , cm_name',
')',
'GROUP BY ',
'    fiscal_year',
'ORDER BY ',
'    fiscal_year'))
,p_max_row_count=>20
,p_items_value_column_name=>'DAYS'
,p_items_label_column_name=>'FISCAL_YEAR'
,p_items_short_desc_column_name=>'TOOLTIP_VALUE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(373375027682751646)
,p_chart_id=>wwv_flow_imp.id(373374471425751646)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
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
 p_id=>wwv_flow_imp.id(373375619708751646)
,p_chart_id=>wwv_flow_imp.id(373374471425751646)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
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
 p_id=>wwv_flow_imp.id(33251543042661118753)
,p_plug_name=>'Enquiry Status Calender View'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EOM_ENQ_ID,',
'       EOM_ENQ_DATE START_DATE,',
'       EOM_ENQ_DEL_DT END_DATE,',
'       EOM_ENQ_NO,',
'       case EOM_ENQ_STATUS',
'           when ''AP''    then ''apex-cal-green''',
'           when ''IP'' then ''apex-cal-yellow''',
'           when ''RJ''  then ''apex-cal-red''',
'           when ''AW'' then ''apex-cal-blue''',
'       end as css_class,',
'       CM_NAME || '' '' || EOM_ENQ_NO CM_NAME',
'  from V_ENQUIRIES_ORDERS_MST,',
'        V_CUSTOMER_MASTER',
'  where EOM_CUSTOMER_ID = CM_ID',
'--  and EOM_ORD_ID is null'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ) { return options; }',
'//function( pOptions ) {',
'//    pOptions.displayEventTime = true;',
'//}',
'//',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'CM_NAME',
  'drag_and_drop', 'N',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '3',
  'multiple_line_event', 'Y',
  'primary_key_column', 'EOM_ENQ_ID',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'view_edit_link', 'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP:P23_EOM_ENQ_ID:&EOM_ENQ_ID.')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(300382837055045919)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize Color'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select max(case when ST_TYPE = ''ENQUIRY_STATUS'' and ST_CODE = ''IP'' then ST_EXTRA1 end) IP,',
'           max(case when ST_TYPE = ''ENQUIRY_STATUS'' and ST_CODE = ''AW'' then ST_EXTRA1 end) AW,',
'           max(case when ST_TYPE = ''ENQUIRY_STATUS'' and ST_CODE = ''RJ'' then ST_EXTRA1 end) RJ,',
'           max(case when ST_TYPE = ''ORDER_STATUS'' and ST_CODE = ''PPO'' then ST_EXTRA1 end) PPO,',
'           max(case when ST_TYPE = ''ORDER_STATUS'' and ST_CODE = ''POI'' then ST_EXTRA1 end) PPI,',
'           max(case when ST_TYPE = ''ORDER_STATUS'' and ST_CODE = ''PR'' then ST_EXTRA1 end) PR,',
'           max(case when ST_TYPE = ''ORDER_STATUS'' and ST_CODE = ''RC'' then ST_EXTRA1 end) RC,',
'           max(case when ST_TYPE = ''ORDER_STATUS'' and ST_CODE = ''SHP'' then ST_EXTRA1 end) SHP,',
'           max(case when ST_TYPE = ''ORDER_STATUS'' and ST_CODE = ''RJ'' then ST_EXTRA1 end) ORDRJ,',
'           max(case when ST_TYPE = ''ORDER_STATUS'' and ST_CODE = ''DS'' then ST_EXTRA1 end) ORDDS,',
'           to_char(sysdate,''DD-Mon-YYYY HH24:MI:SS'')',
'    into :APP_COLOR_ENQ_IP,:APP_COLOR_ENQ_AW,:APP_COLOR_ENQ_RJ,',
'         :APP_COLOR_ORD_PPO,:APP_COLOR_ORD_POI,:APP_COLOR_ORD_PR,',
'         :APP_COLOR_ORD_RC,:APP_COLOR_ORD_SHP, :APP_COLOR_ORD_RJ, :APP_COLOR_ORD_DS,:APP_SYSDATE',
'    from V_SETUP_TABLE ',
'    where st_type in (''ENQUIRY_STATUS'',''ORDER_STATUS'');',
'    ',
'    begin',
'        select ST_EXTRA2 ,ST_EXTRA1',
'        into :APP_LOCAL_CURR ,:APP_LOCAL_CURR_SYMBOL',
'        from V_SETUP_TABLE ',
'        where ST_TYPE = ''QUOTE_IN'' ',
'        and ST_CODE = ''INR'';',
'    exception when others then',
'        :APP_LOCAL_CURR  := ''fa-inr'';',
unistr('        :APP_LOCAL_CURR_SYMBOL := ''\20B9'';'),
'    end;',
'    ',
'    begin',
'        select ST_CODE',
'        into :APP_FOB_RND_TOLERANCE',
'        from V_SETUP_TABLE ',
'        where ST_TYPE = ''PROD_CALC_MST'' ',
'        and ST_NAME = ''FOB_RND_TOLERANCE'';',
'    exception when others then',
'        :APP_FOB_RND_TOLERANCE  := 0;',
'    end;    ',
'    ',
'    begin',
'        select role_names',
'        INTO :APP_USER_ROLE',
'        from APEX_APPL_ACL_USERS',
'        where user_name = V(''APP_USER'')',
'        and application_id = V(''APP_ID'');',
'    EXCEPTION WHEN OTHERS THEN',
'             :APP_USER_ROLE := NULL;',
'    END;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>380433680441681645
);
wwv_flow_imp.component_end;
end;
/
