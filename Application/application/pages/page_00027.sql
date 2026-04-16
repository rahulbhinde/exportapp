prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_name=>'Activity Tracker'
,p_step_title=>'Activity Tracker'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'function assignRequest(pReq)',
'    {',
'        $x(''P27_REQ'') = pReq;',
'    }',
'</script>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region-headerItems--title {padding:0px;}',
'.excelcss {font-size:16px;color:green;}',
'.pdfcss{font-size:16px;color:#ED6647;}',
'.doccss{font-size:16px;color:blue;}',
'/*Added by Ranu for hours login*/',
'.hour-graph {',
'  display: table;',
'  width: 100%;',
'}',
'',
'span.hour {',
'  display: table-cell;',
'  padding: 0;',
'  font-size: 11px;',
'  text-align: center;',
'  background-color: #a6ffa6;',
'  min-width: 32px;',
'}',
'',
'span.hour.is-over1k {',
'  background-color: #7bdc7b;',
'}',
'',
'span.hour.is-null {',
'  background-color: #E0E0E0;',
'}',
'',
'span.hour-label {',
'  opacity: 0.5;',
'}',
'',
'span.hour-value {',
'  display: block;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Here, the last Enquiry or Invoice number generated in the system is displayed.',
'<br>',
'There are number of options to keep track of daily activities like Enquiries, Outputs, Products Costing which are generated/calculated today. ',
'<br><br>',
'It keeps track of number of page views by an user on hourly/ daily basis.',
'',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12958767610772742)
,p_plug_name=>'Activity Calendar by User by Day'
,p_icon_css_classes=>'fa-lg fa-calendar-clock'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--accent2:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    "Page Events", ',
'    the_day,',
'    case when  "Page Events" like ''%RANU%'' then ''apex-cal-yellow'' ',
'         when  "Page Events" like ''%RAHUL%'' then ''apex-cal-orange'' ',
'         when  "Page Events" like ''%SANDIP%'' then ''apex-cal-red'' ',
'         when  "Page Events" like ''%PURVI%'' then ''apex-cal-orange'' ',
'         when  "Page Events" like ''%INDRA%'' then ''apex-cal-cyan'' ',
'         when  "Page Events" like ''%SANDEEP%'' then ''apex-cal-blue'' ',
'         when  "Page Events" like ''%SARITHA%'' then ''apex-cal-green'' ',
'         when  "Page Events" like ''%DHARMIL%'' then ''apex-cal-bluesky'' ',
'    else  ''apex-cal-blue'' ',
'    end css_class',
'from ',
'    (select',
'    upper(USERID)|| '' - ''||trim(to_char(count(*),''999G999G999G990''))|| '' page views''   "Page Events",',
'    trunc(time_stamp) the_day',
'    from apex_activity_log l,  v_user_master',
'    where flow_id = :APP_ID and userid is not null and userid != ''nobody''',
'    --and upper(USERID) not in (''RANU'',''RAHUL'')',
'    and lower(userid) in (',
'                            select lower(um_name)',
'                            from v_user_master',
'                            where UM_TENANT_ID = :APP_TRANS_TENANT_ID                            ',
'                        ) ',
'    group by trunc(time_stamp), upper(USERID)',
'     )'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_required_role=>wwv_flow_imp.id(69913133764257079)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'Page Events',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'THE_DAY')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12959863605772753)
,p_plug_name=>'Top Users Activity by Hour'
,p_icon_css_classes=>'fa-lg fa-signal'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'upper(THE_USER),',
'PAGE_EVENTS,',
'/*MEDIAN_ELAPSED,',
'ROWS_FETCHED,',
'IR_SEARCHES,',
'ERRORS,*/',
'MOST_RECENT,',
'''<div class="hour-graph">''||',
'''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||'
||'''</span></span>''||',
'''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||'
||'''</span></span>''||',
'''</div>'' hours',
'from',
'(select',
'lower(USERID)                   as THE_USER,',
'count(*)                        as PAGE_EVENTS,',
'/*median(ELAP)                    as MEDIAN_ELAPSED,',
'sum(NUM_ROWS)                   as ROWS_FETCHED,',
'sum(decode(IR_SEARCH,null,0,1)) as IR_SEARCHES,',
'sum(decode(SQLERRM,null,0,1))   as ERRORS,*/',
'trunc(fn_utc_to_tz(time_stamp))                 as MOST_RECENT,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),0,1,0)) h00,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),1,1,0)) h01,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),2,1,0)) h02,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),3,1,0)) h03,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),4,1,0)) h04,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),5,1,0)) h05,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),6,1,0)) h06,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),7,1,0)) h07,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),8,1,0)) h08,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),9,1,0)) h09,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),10,1,0)) h10,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),11,1,0)) h11,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),12,1,0)) h12,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),13,1,0)) h13,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),14,1,0)) h14,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),15,1,0)) h15,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),16,1,0)) h16,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),17,1,0)) h17,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),18,1,0)) h18,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),19,1,0)) h19,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),20,1,0)) h20,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),21,1,0)) h21,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),22,1,0)) h22,',
'sum(decode(to_char(fn_utc_to_tz(time_stamp),''HH24''),23,1,0)) h23',
'from apex_activity_log l , v_user_master',
'where flow_id = :APP_ID and',
'trunc(fn_utc_to_tz(fn_utc_to_tz(time_stamp))) > trunc(sysdate) - to_number(:P27_TIMEFRAME,''9999999990.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')',
'and userid is not null',
' and lower(USERID) <> ''nobody''',
'  --and upper(USERID) not in (''RANU'',''RAHUL'')',
'and lower(USERID)     in  (',
'                            select lower(um_name)',
'                            from v_user_master',
'                            where UM_TENANT_ID = :APP_TRANS_TENANT_ID                            ',
'                        ) ',
'group by lower(userid),trunc(fn_utc_to_tz(time_stamp))) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P27_TIMEFRAME'
,p_plug_required_role=>wwv_flow_imp.id(69913133764257079)
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Top Users Activity by Hour'
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
 p_id=>wwv_flow_imp.id(12959764553772752)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>70814764480666873
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56269063106364751)
,p_db_column_name=>'UPPER(THE_USER)'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56268798499364743)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56268420481364743)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Most Recent'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(56267986180364742)
,p_db_column_name=>'HOURS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Activity by Hours (0 - 23 hr.)'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12952102438767977)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'275069'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UPPER(THE_USER):MOST_RECENT:PAGE_EVENTS:HOURS:'
,p_sort_column_1=>'MOST_RECENT'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_EVENTS'
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
 p_id=>wwv_flow_imp.id(52736804101206589)
,p_plug_name=>'Product'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:t-DialogRegion--noPadding:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_04'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'        pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT pm_name,',
'          pm_created_by,',
'        PM_CREATED_ON',
'from 	V_PRODUCT_MASTER',
'where   trunc(PM_CREATED_ON) = trunc(sysdate)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
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
 p_id=>wwv_flow_imp.id(52736663656206588)
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
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>31037865378233037
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52736164866206583)
,p_db_column_name=>'PM_NAME'
,p_display_order=>50
,p_column_identifier=>'A'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52649132168796922)
,p_db_column_name=>'PM_CREATED_BY'
,p_display_order=>60
,p_column_identifier=>'B'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52649063849796921)
,p_db_column_name=>'PM_CREATED_ON'
,p_display_order=>70
,p_column_identifier=>'C'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(52643759780794792)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'311308'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PM_NAME:PM_CREATED_BY:PM_CREATED_ON'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52844511869276587)
,p_plug_name=>'Product Costing'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:t-DialogRegion--noPadding:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_04'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EOM_ENQ_ID,',
'       EOM_ORD_ID,',
'       EOM_ENQ_NO,',
'       EOM_INVOICE_NO,',
'        pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT pm_name,',
'        EOD_COSTING_TYPE,',
'        EOD_EXCHANGE_RATE EOD_EXCHANGE_RATE,',
'        EOD_FOB_DOLL_RND EOD_FOB_DOLL_RND,',
'        EOD_CANDF_AMT_RND EOD_CANDF_AMT_RND,',
'        EOD_CIF_AMT_RND EOD_CIF_AMT_RND,',
'        EOD_CNI_AMT_RND EOD_CNI_AMT_RND,',
'        case when EOM_ENQ_STATUS =''IP'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when EOM_ENQ_STATUS =''AW'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_AW/*#0000FF #267DB3''*/',
'		    when EOM_ENQ_STATUS =''AP'' and EOM_ORD_ID is null then :APP_COLOR_ORD_RC/*''#000000 #69C282''*/',
'		    when EOM_ENQ_STATUS =''RJ'' and EOM_ORD_ID is null then :APP_COLOR_ENQ_RJ /*#ED6647*/',
'			when EOM_ORDER_STATUS =''IP'' and EOM_ORD_ID is not null then :APP_COLOR_ENQ_IP/*''#000000 #F1C40F''*/',
'		    when EOM_ORDER_STATUS =''PPO'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_PPO/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''POI'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_POI/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''PR'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_PR/*#0000FF #267DB3''*/',
'			when EOM_ORDER_STATUS =''RC'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_RC/*#0000FF #267DB3''*/',
'		    when EOM_ORDER_STATUS =''SHP'' and EOM_ORD_ID is not null then :APP_COLOR_ORD_SHP/*''#000000 #69C282''*/',
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
'	   end color_status_2',
'from 	V_ENQUIRIES_ORDERS_MST, V_ENQUIRIES_ORDERS_DETAILS, V_PRODUCT_MASTER',
'        where   eom_enq_id = eod_enq_id',
'          and trunc(EOM_CREATED_ON) = trunc(sysdate)',
'          and trunc(eod_updated_on) = trunc(sysdate)',
'          and eod_product_id = pm_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
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
 p_id=>wwv_flow_imp.id(52844334228276586)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'There are no Product(s) whose costing is computed today.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>30930194806163039
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52844268680276585)
,p_db_column_name=>'EOM_ENQ_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>' '
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52844029340276583)
,p_db_column_name=>'EOM_ORD_ID'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Order Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52750058130208022)
,p_db_column_name=>'EOM_ENQ_NO'
,p_display_order=>140
,p_column_identifier=>'C'
,p_column_label=>'Enquiry#'
,p_column_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP:P23_EOM_ENQ_ID:#EOM_ENQ_ID#'
,p_column_linktext=>'#EOM_ENQ_NO#'
,p_column_link_attr=>'class="t-Button t-Button--stretch" style ="background-image: linear-gradient(to right, #COLOR_STATUS_1# ,#COLOR_STATUS_2#);color:#000000"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_ENQ_NO#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52749872689208020)
,p_db_column_name=>'EOM_INVOICE_NO'
,p_display_order=>160
,p_column_identifier=>'D'
,p_column_label=>'Invoice#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P27_TYPE_ENQ_ORD'
,p_display_condition2=>'ORD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52738119415206602)
,p_db_column_name=>'PM_NAME'
,p_display_order=>170
,p_column_identifier=>'E'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52737935114206601)
,p_db_column_name=>'EOD_COSTING_TYPE'
,p_display_order=>180
,p_column_identifier=>'F'
,p_column_label=>'Costing Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52737840119206600)
,p_db_column_name=>'EOD_EXCHANGE_RATE'
,p_display_order=>190
,p_column_identifier=>'G'
,p_column_label=>'Exchange Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52737808132206599)
,p_db_column_name=>'EOD_FOB_DOLL_RND'
,p_display_order=>200
,p_column_identifier=>'H'
,p_column_label=>'FOB Rounded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52737655308206598)
,p_db_column_name=>'EOD_CANDF_AMT_RND'
,p_display_order=>210
,p_column_identifier=>'I'
,p_column_label=>'C&F Rounded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52737573030206597)
,p_db_column_name=>'EOD_CIF_AMT_RND'
,p_display_order=>220
,p_column_identifier=>'J'
,p_column_label=>'CIF Rounded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52737500697206596)
,p_db_column_name=>'EOD_CNI_AMT_RND'
,p_display_order=>230
,p_column_identifier=>'K'
,p_column_label=>'C&I Rounded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52737171526206593)
,p_db_column_name=>'COLOR_STATUS_1'
,p_display_order=>240
,p_column_identifier=>'L'
,p_column_label=>'Color Status 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52737051964206592)
,p_db_column_name=>'COLOR_STATUS_2'
,p_display_order=>250
,p_column_identifier=>'M'
,p_column_label=>'Color Status 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(52666908518169959)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'311077'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EOM_ENQ_ID:EOM_ORD_ID:EOM_ENQ_NO:EOM_INVOICE_NO:PM_NAME:EOD_COSTING_TYPE:EOD_EXCHANGE_RATE:EOD_FOB_DOLL_RND:EOD_CANDF_AMT_RND:EOD_CIF_AMT_RND:EOD_CNI_AMT_RND:COLOR_STATUS_1:COLOR_STATUS_2'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66366302542996496)
,p_plug_name=>'Dashboard'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(188956732723255116)
,p_plug_name=>'Enquiries List'
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size720x480'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_04'
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
'	   end color_status_2',
'       ,EOM_INVOICE_NO',
'       --,''Proforma'' "Proforma"',
'--,''Proforma_PDF'' "Proforma_PDF"',
'        ,EOM_ENQ_STATUS ENQ_STATUS',
'  from V_ENQUIRIES_ORDERS_MST--,V_SETUP_TABLE enq_st, V_SETUP_TABLE ord_st',
'       ,V_CUSTOMER_MASTER',
'  where eom_customer_id = cm_id',
'and  trunc(eom_created_on) = trunc(sysdate)',
'order by cm_name,EOM_ENQ_NO;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
 p_id=>wwv_flow_imp.id(188956798989255118)
,p_name=>'V_ENQUIRIES_ORDERS_MST'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'There are no Enquiries that are created today.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RANU'
,p_internal_uid=>250612903696550387
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52767233014268513)
,p_db_column_name=>'EOM_ENQ_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>' '
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52766849843268513)
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
 p_id=>wwv_flow_imp.id(52766434398268513)
,p_db_column_name=>'EOM_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52766122179268512)
,p_db_column_name=>'EOM_ENQ_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Enquiry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_ENQ_DATE#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52765675992268512)
,p_db_column_name=>'EOM_ENQ_DEL_DT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Delivery Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_ENQ_DEL_DT#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52765252573268512)
,p_db_column_name=>'EOM_ORDER_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_ORDER_DATE#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52764885297268512)
,p_db_column_name=>'EOM_PAY_TERMS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Pay Terms'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_PAY_TERMS#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52764457521268511)
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
 p_id=>wwv_flow_imp.id(52764065229268511)
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
 p_id=>wwv_flow_imp.id(52763633259268511)
,p_db_column_name=>'EOM_REALISE_RATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Realise Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_REALISE_RATE#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52763328997268510)
,p_db_column_name=>'Download'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Proforma O/P'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'export-excel-icon',
'',
'<img src="#APP_IMAGES#Excel_PDF.png" alt="Download" >',
'<i class="fa fa-file-excel-o" style="font-size:16px;color:green"><i class="fa fa-file-pdf-o" style="font-size:16px;color:red"></i></i>'))
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52762906466268510)
,p_db_column_name=>'CM_NAME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52767674872268513)
,p_db_column_name=>'EOM_ENQ_NO'
,p_display_order=>29
,p_column_identifier=>'T'
,p_column_label=>'Enquiry#'
,p_column_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP:P23_EOM_ENQ_ID:#EOM_ENQ_ID#'
,p_column_linktext=>'#EOM_ENQ_NO#'
,p_column_link_attr=>'class="t-Button t-Button--stretch" style ="background-image: linear-gradient(to right, #COLOR_STATUS_1# ,#COLOR_STATUS_2#);color:#000000"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
,p_column_comment=>'<span style="color:#COLOR_STATUS#">#EOM_ENQ_NO#</span>'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52768103901268514)
,p_db_column_name=>'Copy'
,p_display_order=>39
,p_column_identifier=>'U'
,p_column_label=>'Copy'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
,p_column_comment=>'<img src="#APP_IMAGES#copy_icon.png" alt="Copy" >'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52768487047268514)
,p_db_column_name=>'EOM_INVOICE_NO'
,p_display_order=>59
,p_column_identifier=>'W'
,p_column_label=>'Invoice#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P27_TYPE_ENQ_ORD'
,p_display_condition2=>'ORD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52769667880268519)
,p_db_column_name=>'COLOR_STATUS_1'
,p_display_order=>69
,p_column_identifier=>'X'
,p_column_label=>'Color Status 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52769260344268515)
,p_db_column_name=>'COLOR_STATUS_2'
,p_display_order=>79
,p_column_identifier=>'Y'
,p_column_label=>'Color Status 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(52768857623268514)
,p_db_column_name=>'ENQ_STATUS'
,p_display_order=>89
,p_column_identifier=>'AA'
,p_column_label=>'Enquiry Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(188962669853255754)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'310120'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CM_NAME:EOM_ENQ_NO:EOM_INVOICE_NO:EOM_ENQ_DEL_DT:EOM_ENQ_DATE:EOM_ORDER_DATE:EOM_PAY_TERMS:EOM_CURRENT_RATE:EOM_REALISE_RATE:EOM_FRT_AMT:Download:Copy::COLOR_STATUS_1:COLOR_STATUS_2:ENQ_STATUS'
,p_sort_column_1=>'CM_NAME'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'EOM_ENQ_NO'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'CM_NAME:0:0:0:0:0'
,p_break_enabled_on=>'CM_NAME:0:0:0:0:0'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(193385435421796453)
,p_name=>'Outputs'
,p_template=>2672673746673652531
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-DialogRegion--noPadding:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--hideNoPagination'
,p_display_point=>'REGION_POSITION_04'
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
'--OM_DOC_TYPE,',
'OM_DOC_TYPE,',
'OM_DOC_MIME_TYPE,',
'OM_FINAL,',
'OM_REMARKS,',
'OM_CREATED_BY,',
'OM_CREATED_ON,',
'OM_UPDATED_BY,',
'OM_UPDATED_ON,',
'dbms_lob.getlength("OM_DOC") OM_DOC,',
'OM_DOC_NAME,',
'eom_invoice_no,',
'eom_enq_no',
'from V_OUTPUT_MASTER ,V_ENQUIRIES_ORDERS_MST',
'where OM_REF_ID = EOM_ENQ_ID',
'and trunc(OM_CREATED_ON) = trunc(sysdate)',
'and OM_FINAL = ''Y''',
'and OM_DOC_TYPE != ''PO''',
'--and OM_DOC_TYPE = decode (:P27_OUTPUT_TYPE,''PO'',''PO'',''ENQ'',''Proforma'',''ORD'',''Proforma'',''CI'',''CustomInvoice'',''GM'',''ContainerGrossMass'',''BOL'',''BillOfLading'',''COMINV'',''CommercialInvoice'')',
'union all',
'select ',
'OM_ID,',
'OM_ID OM_ID_DELETE,',
'OM_REF_ID,',
'dbms_lob.getlength("OM_EXCEL") OM_EXCEL,',
'OM_EXCEL_NAME,',
'dbms_lob.getlength("OM_PDF") OM_PDF,',
'OM_PDF_NAME,',
'--OM_DOC_TYPE,',
'decode (OM_DOC_TYPE,''PO'',''PO'',''ENQ'',''Proforma'',''ORD'',''Proforma'',',
'        ''CI'',''CustomInvoice'',''GM'',''ContainerGrossMass'',',
'        ''BOL'',''BillOfLading'',''COMINV'',''CommercialInvoice'') OM_DOC_TYPE,',
'OM_DOC_MIME_TYPE,',
'OM_FINAL,',
'OM_REMARKS,',
'OM_CREATED_BY,',
'OM_CREATED_ON,',
'OM_UPDATED_BY,',
'OM_UPDATED_ON,',
'dbms_lob.getlength("OM_DOC") OM_DOC,',
'OM_DOC_NAME,',
'null eom_invoice_no,',
'null eom_enq_no',
'from V_OUTPUT_MASTER ',
'where trunc(OM_CREATED_ON) = trunc(sysdate)',
'and OM_FINAL = ''Y''',
'and OM_DOC_TYPE = ''PO''',
'order by OM_CREATED_ON'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'There are no Outputs generated today.'
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
 p_id=>wwv_flow_imp.id(53248976276423998)
,p_query_column_id=>1
,p_column_alias=>'OM_ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_report_column_required_role=>'!'||wwv_flow_imp.id(69914533657288756)
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53248552898423997)
,p_query_column_id=>2
,p_column_alias=>'OM_ID_DELETE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'--insert into error_log (el_text) values (:OM_CREATED_BY || :APP_USER || ''-test b4'');',
'/*if (:OM_CREATED_BY = :APP_USER)  then',
'insert into error_log (el_text) values (:OM_CREATED_BY || :APP_USER || ''-test'');',
'--or (fn_access_control (''DELETE_ACCESS''))',
'	return true;',
'else',
'	return false;',
'end if;*/',
'return true;',
'end;'))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53248207325423997)
,p_query_column_id=>3
,p_column_alias=>'OM_REF_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53247823007423997)
,p_query_column_id=>4
,p_column_alias=>'OM_EXCEL'
,p_column_display_sequence=>7
,p_column_heading=>'Excel'
,p_column_format=>'DOWNLOAD:V_OUTPUT_MASTER:OM_EXCEL:OM_ID::OM_DOC_MIME_TYPE:OM_EXCEL_NAME:::attachment:<i class="fa fa-file-excel-o excelcss"></i>:'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<i class="fa fa-file-excel-o" class="excelcss"></i>',
'',
'<i class="fa fa-file-excel-o" class="excelcss"></i>',
'',
'P10_OUTPUT_TYPE = ENQ'))
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53247348524423997)
,p_query_column_id=>5
,p_column_alias=>'OM_EXCEL_NAME'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53246990528423996)
,p_query_column_id=>6
,p_column_alias=>'OM_PDF'
,p_column_display_sequence=>9
,p_column_heading=>'PDF'
,p_column_format=>'DOWNLOAD:V_OUTPUT_MASTER:OM_PDF:OM_ID::OM_DOC_MIME_TYPE:OM_PDF_NAME:::attachment:<i class="fa fa-file-pdf-o pdfcss"></i>:'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>'<i class="fa fa-file-pdf-o" class="pdfcss"></i>'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53246606244423996)
,p_query_column_id=>7
,p_column_alias=>'OM_PDF_NAME'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53246197485423996)
,p_query_column_id=>8
,p_column_alias=>'OM_DOC_TYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Output Category'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53245773857423996)
,p_query_column_id=>9
,p_column_alias=>'OM_DOC_MIME_TYPE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53245376191423996)
,p_query_column_id=>10
,p_column_alias=>'OM_FINAL'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53244963739423995)
,p_query_column_id=>11
,p_column_alias=>'OM_REMARKS'
,p_column_display_sequence=>14
,p_column_heading=>'Remarks'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53244622925423995)
,p_query_column_id=>12
,p_column_alias=>'OM_CREATED_BY'
,p_column_display_sequence=>15
,p_column_heading=>'Created By'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53244189549423995)
,p_query_column_id=>13
,p_column_alias=>'OM_CREATED_ON'
,p_column_display_sequence=>16
,p_column_heading=>'Created On'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53243813726423995)
,p_query_column_id=>14
,p_column_alias=>'OM_UPDATED_BY'
,p_column_display_sequence=>17
,p_column_heading=>'Updated By'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53243345356423995)
,p_query_column_id=>15
,p_column_alias=>'OM_UPDATED_ON'
,p_column_display_sequence=>18
,p_column_heading=>'Updated On'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53242995215423994)
,p_query_column_id=>16
,p_column_alias=>'OM_DOC'
,p_column_display_sequence=>10
,p_column_heading=>'DOC'
,p_column_format=>'DOWNLOAD:V_OUTPUT_MASTER:OM_DOC:OM_ID::OM_DOC_MIME_TYPE:OM_DOC_NAME:::attachment:<i class="fa fa-file-word-o doccss"></i>:'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(53242558541423994)
,p_query_column_id=>17
,p_column_alias=>'OM_DOC_NAME'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66366777716996501)
,p_query_column_id=>18
,p_column_alias=>'EOM_INVOICE_NO'
,p_column_display_sequence=>4
,p_column_heading=>'Invoice#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66366656861996500)
,p_query_column_id=>19
,p_column_alias=>'EOM_ENQ_NO'
,p_column_display_sequence=>5
,p_column_heading=>'Enquiry#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66366146944996495)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_button_name=>'LAST_ENQ'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Last Enquiry# - <b>&P27_LAST_ENQ.</b>'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23:P23_EOM_ENQ_ID:&P27_LAST_ENQ_ID.'
,p_button_css_classes=>'color-block u-color-12'
,p_icon_css_classes=>'fa-flag'
,p_button_cattributes=>'title = "Last Enquiry# generated in system. Click to navigate to that Enquiry details."'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66366045536996494)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_button_name=>'LAST_INV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Last Invoice# - <b>&P27_LAST_INV.</b>'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23:P23_EOM_ENQ_ID:&P27_LAST_ENQ_ID_INV.'
,p_button_css_classes=>'color-block u-color-6'
,p_icon_css_classes=>'fa-flag-checkered'
,p_button_cattributes=>'title = "Last Invoice# generated in system. Click to navigate to that Enquiry details."'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66365841525996492)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_button_name=>'ENQ_CNT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Enquiries - <b>&P27_ENQ_CNT.</b>'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'color-block u-color-9'
,p_icon_css_classes=>'fa-cart-edit'
,p_button_cattributes=>'title = "Enquiries created today. Click to view details."'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66365448359996488)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_button_name=>'PRODUCT_COST_CNT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Product Costing - <b>&P27_PRODUCT_COST_CNT.</b>'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'color-block u-color-7'
,p_icon_css_classes=>'fa-inr'
,p_button_cattributes=>'title = "Product(s) costing computed today. Click to view details."'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66365678336996490)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_button_name=>'OUTPUT_CNT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Outputs - <b>&P27_OUTPUT_CNT.</b>'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'color-block u-color-4'
,p_icon_css_classes=>'fa-file-text-o'
,p_button_cattributes=>'title = "Output(s) created today. Click to view details."'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(52736922549206590)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_button_name=>'PRODUCT_CNT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Products - <b>&P27_PRODUCT_CNT.</b>'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'color-block u-color-14'
,p_icon_css_classes=>'fa-cubes'
,p_button_cattributes=>'title = "Product(s) created today. Click to view details."'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(52736943987206591)
,p_name=>'P27_PRODUCT_CNT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_use_cache_before_default=>'NO'
,p_item_default=>'OUTPUT'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1)  ',
'from 	V_PRODUCT_MASTER',
'where  trunc(PM_CREATED_ON) = trunc(sysdate)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(56267169004364737)
,p_name=>'P27_TIMEFRAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_item_default=>'1'
,p_prompt=>'Timeframe'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode(level,1,''Today'', level -1 || '' Day(s) ago till Today'') d, level  r',
'from dual',
'connect by level <= 10',
'order by 2'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66365204103996485)
,p_name=>'P27_LAST_ENQ_ID_INV'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_use_cache_before_default=>'NO'
,p_item_default=>'OUTPUT'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(EOM_ENQ_ID) ',
'from V_ENQUIRIES_ORDERS_MST',
'where eom_invoice_no is not null'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66365281326996486)
,p_name=>'P27_LAST_ENQ_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_use_cache_before_default=>'NO'
,p_item_default=>'OUTPUT'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(EOM_ENQ_ID) ',
'from V_ENQUIRIES_ORDERS_MST',
'where eom_enq_no is not null'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select eom_enq_id  ',
'from 	V_ENQUIRIES_ORDERS_MST',
'where eom_enq_no = (select max(eom_enq_no)   ',
'from 	V_ENQUIRIES_ORDERS_MST)'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66365387164996487)
,p_name=>'P27_PRODUCT_COST_CNT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_use_cache_before_default=>'NO'
,p_item_default=>'OUTPUT'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1)  ',
'from 	V_ENQUIRIES_ORDERS_MST, V_ENQUIRIES_ORDERS_DETAILS',
'        where   eom_enq_id = eod_enq_id',
'          and trunc(EOM_CREATED_ON) = trunc(sysdate)',
'          and trunc(eod_updated_on) = trunc(sysdate)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66365564598996489)
,p_name=>'P27_OUTPUT_CNT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_use_cache_before_default=>'NO'
,p_item_default=>'OUTPUT'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1)  ',
'from 	V_OUTPUT_MASTER',
'where     trunc(OM_CREATED_ON) = trunc(sysdate)',
'and       OM_FINAL = ''Y'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66365819042996491)
,p_name=>'P27_ENQ_CNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_use_cache_before_default=>'NO'
,p_item_default=>'OUTPUT'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1)  ',
'from 	V_ENQUIRIES_ORDERS_MST o',
'where 	trunc(EOM_CREATED_ON) = trunc(sysdate)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66366011054996493)
,p_name=>'P27_LAST_INV'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_use_cache_before_default=>'NO'
,p_item_default=>'OUTPUT'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(eom_invoice_no)   ',
'--max(eom_invoice_no)   data',
'from 	V_ENQUIRIES_ORDERS_MST',
'where eom_ord_acc_year = (select max(eom_ord_acc_year) from V_ENQUIRIES_ORDERS_MST where eom_invoice_no is not null)',
'--commented and added above where clause by rahul to fetch correct latest inv no where EOM_ENQ_ID = (select max(EOM_ENQ_ID) from V_ENQUIRIES_ORDERS_MST where eom_invoice_no is not null)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(eom_invoice_no)   ',
'from 	V_ENQUIRIES_ORDERS_MST'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66366332297996497)
,p_name=>'P27_LAST_ENQ'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66366302542996496)
,p_use_cache_before_default=>'NO'
,p_item_default=>'OUTPUT'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(eom_enq_no)   ',
'from 	V_ENQUIRIES_ORDERS_MST',
'where EOM_ENQ_ID = (select max(EOM_ENQ_ID) from V_ENQUIRIES_ORDERS_MST where eom_enq_no is not null)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(eom_enq_no)   ',
'--max(eom_invoice_no)   data',
'from 	V_ENQUIRIES_ORDERS_MST'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66366540044996499)
,p_name=>'Output Inline Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66365678336996490)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66366504717996498)
,p_event_id=>wwv_flow_imp.id(66366540044996499)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(193385435421796453)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52844675063276589)
,p_name=>'Enq Inline Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66365841525996492)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52844562622276588)
,p_event_id=>wwv_flow_imp.id(52844675063276589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(188956732723255116)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52737398282206595)
,p_name=>'Product Costing Inline Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66365448359996488)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52737325667206594)
,p_event_id=>wwv_flow_imp.id(52737398282206595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52844511869276587)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(52649425578796924)
,p_name=>'Product Inline Dialog'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(52736922549206590)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(52649275461796923)
,p_event_id=>wwv_flow_imp.id(52649425578796924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(52736804101206589)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(56262743428364717)
,p_process_sequence=>20
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
'           max(case when ST_TYPE = ''ORDER_STATUS'' and ST_CODE = ''SHP'' then ST_EXTRA1 end) SHP',
'    into :APP_COLOR_ENQ_IP,:APP_COLOR_ENQ_AW,:APP_COLOR_ENQ_RJ,',
'         :APP_COLOR_ORD_PPO,:APP_COLOR_ORD_POI,:APP_COLOR_ORD_PR,',
'         :APP_COLOR_ORD_RC,:APP_COLOR_ORD_SHP',
'    from V_SETUP_TABLE ',
'    where st_type in (''ENQUIRY_STATUS'',''ORDER_STATUS'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>56313893059193213
);
wwv_flow_imp.component_end;
end;
/
