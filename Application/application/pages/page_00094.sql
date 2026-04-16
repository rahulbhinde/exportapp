prompt --application/pages/page_00094
begin
--   Manifest
--     PAGE: 00094
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
 p_id=>94
,p_name=>'Proforma Load Details'
,p_alias=>'PROFORMA-LOAD-DETAILS'
,p_step_title=>'Proforma Load Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(101710274390730712)
,p_name=>'Preview'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.line_number,',
'       p.col001, p.col002, p.col003, p.col004, p.col005, p.col006, p.col007, p.col008, p.col009, p.col010',
'       ',
', p.col011',
', p.col012',
', p.col013',
', p.col014',
', p.col015',
', p.col016',
', p.col017',
', p.col018',
', p.col019',
', p.col020',
', p.col021',
', p.col022',
', p.col023',
', p.col024',
', p.col025',
', p.col026',
', p.col027',
', p.col028',
', p.col029',
', p.col030',
', p.col031',
', p.col032',
', p.col033',
', p.col034',
', p.col035',
', p.col036',
', p.col037',
', p.col038',
', p.col039',
', p.col040',
', p.col041',
', p.col042',
', p.col043',
', p.col044',
', p.col045',
', p.col046',
', p.col047',
', p.col048',
', p.col049',
' ,p.col050',
'       -- add more columns (col011 to col300) here.',
'  from table( apex_data_parser.parse(',
'                  p_content           => apex_util.clob_to_blob( p_clob => :P94_DATA ),',
'                  p_file_name         => ''pasted_data.csv'', ',
'                  p_file_profile      => apex_data_loading.get_file_profile( p_static_id => ''load_proforma_details'' ),',
'                  p_max_rows          => 100 ) ) p'))
,p_display_when_condition=>'P94_DATA'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101709985426730686)
,p_query_column_id=>1
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Line Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101709566446730682)
,p_query_column_id=>2
,p_column_alias=>'COL001'
,p_column_display_sequence=>2
,p_column_heading=>'Col001'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101709221769730682)
,p_query_column_id=>3
,p_column_alias=>'COL002'
,p_column_display_sequence=>3
,p_column_heading=>'Col002'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101708733819730681)
,p_query_column_id=>4
,p_column_alias=>'COL003'
,p_column_display_sequence=>4
,p_column_heading=>'Col003'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101708401571730681)
,p_query_column_id=>5
,p_column_alias=>'COL004'
,p_column_display_sequence=>5
,p_column_heading=>'Col004'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101707977082730681)
,p_query_column_id=>6
,p_column_alias=>'COL005'
,p_column_display_sequence=>6
,p_column_heading=>'Col005'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101707580246730681)
,p_query_column_id=>7
,p_column_alias=>'COL006'
,p_column_display_sequence=>7
,p_column_heading=>'Col006'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101707165412730680)
,p_query_column_id=>8
,p_column_alias=>'COL007'
,p_column_display_sequence=>8
,p_column_heading=>'Col007'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101706816330730680)
,p_query_column_id=>9
,p_column_alias=>'COL008'
,p_column_display_sequence=>9
,p_column_heading=>'Col008'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101706353587730680)
,p_query_column_id=>10
,p_column_alias=>'COL009'
,p_column_display_sequence=>10
,p_column_heading=>'Col009'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(101706006067730679)
,p_query_column_id=>11
,p_column_alias=>'COL010'
,p_column_display_sequence=>11
,p_column_heading=>'Col010'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123541524834495606)
,p_query_column_id=>12
,p_column_alias=>'COL011'
,p_column_display_sequence=>21
,p_column_heading=>'Col011'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123541451319495605)
,p_query_column_id=>13
,p_column_alias=>'COL012'
,p_column_display_sequence=>31
,p_column_heading=>'Col012'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123541378243495604)
,p_query_column_id=>14
,p_column_alias=>'COL013'
,p_column_display_sequence=>41
,p_column_heading=>'Col013'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123541233110495603)
,p_query_column_id=>15
,p_column_alias=>'COL014'
,p_column_display_sequence=>51
,p_column_heading=>'Col014'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123541195458495602)
,p_query_column_id=>16
,p_column_alias=>'COL015'
,p_column_display_sequence=>61
,p_column_heading=>'Col015'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123541087247495601)
,p_query_column_id=>17
,p_column_alias=>'COL016'
,p_column_display_sequence=>71
,p_column_heading=>'Col016'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123540984629495600)
,p_query_column_id=>18
,p_column_alias=>'COL017'
,p_column_display_sequence=>81
,p_column_heading=>'Col017'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123540822291495599)
,p_query_column_id=>19
,p_column_alias=>'COL018'
,p_column_display_sequence=>91
,p_column_heading=>'Col018'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123540738570495598)
,p_query_column_id=>20
,p_column_alias=>'COL019'
,p_column_display_sequence=>101
,p_column_heading=>'Col019'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(123540653276495597)
,p_query_column_id=>21
,p_column_alias=>'COL020'
,p_column_display_sequence=>111
,p_column_heading=>'Col020'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99740504717555154)
,p_query_column_id=>22
,p_column_alias=>'COL021'
,p_column_display_sequence=>121
,p_column_heading=>'Col021'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99740386208555153)
,p_query_column_id=>23
,p_column_alias=>'COL022'
,p_column_display_sequence=>131
,p_column_heading=>'Col022'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99740283353555152)
,p_query_column_id=>24
,p_column_alias=>'COL023'
,p_column_display_sequence=>141
,p_column_heading=>'Col023'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99740149258555151)
,p_query_column_id=>25
,p_column_alias=>'COL024'
,p_column_display_sequence=>151
,p_column_heading=>'Col024'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99740105706555150)
,p_query_column_id=>26
,p_column_alias=>'COL025'
,p_column_display_sequence=>161
,p_column_heading=>'Col025'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99739987909555149)
,p_query_column_id=>27
,p_column_alias=>'COL026'
,p_column_display_sequence=>171
,p_column_heading=>'Col026'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99739858988555148)
,p_query_column_id=>28
,p_column_alias=>'COL027'
,p_column_display_sequence=>181
,p_column_heading=>'Col027'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99739784014555147)
,p_query_column_id=>29
,p_column_alias=>'COL028'
,p_column_display_sequence=>191
,p_column_heading=>'Col028'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99739725560555146)
,p_query_column_id=>30
,p_column_alias=>'COL029'
,p_column_display_sequence=>201
,p_column_heading=>'Col029'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99739624097555145)
,p_query_column_id=>31
,p_column_alias=>'COL030'
,p_column_display_sequence=>211
,p_column_heading=>'Col030'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99739433561555144)
,p_query_column_id=>32
,p_column_alias=>'COL031'
,p_column_display_sequence=>221
,p_column_heading=>'Col031'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99739410592555143)
,p_query_column_id=>33
,p_column_alias=>'COL032'
,p_column_display_sequence=>231
,p_column_heading=>'Col032'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99739312425555142)
,p_query_column_id=>34
,p_column_alias=>'COL033'
,p_column_display_sequence=>241
,p_column_heading=>'Col033'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99739160852555141)
,p_query_column_id=>35
,p_column_alias=>'COL034'
,p_column_display_sequence=>251
,p_column_heading=>'Col034'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99739111362555140)
,p_query_column_id=>36
,p_column_alias=>'COL035'
,p_column_display_sequence=>261
,p_column_heading=>'Col035'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99739002170555139)
,p_query_column_id=>37
,p_column_alias=>'COL036'
,p_column_display_sequence=>271
,p_column_heading=>'Col036'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99738839994555138)
,p_query_column_id=>38
,p_column_alias=>'COL037'
,p_column_display_sequence=>281
,p_column_heading=>'Col037'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99738801400555137)
,p_query_column_id=>39
,p_column_alias=>'COL038'
,p_column_display_sequence=>291
,p_column_heading=>'Col038'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99738642441555136)
,p_query_column_id=>40
,p_column_alias=>'COL039'
,p_column_display_sequence=>301
,p_column_heading=>'Col039'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99738555740555135)
,p_query_column_id=>41
,p_column_alias=>'COL040'
,p_column_display_sequence=>311
,p_column_heading=>'Col040'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99738451384555134)
,p_query_column_id=>42
,p_column_alias=>'COL041'
,p_column_display_sequence=>321
,p_column_heading=>'Col041'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99738420776555133)
,p_query_column_id=>43
,p_column_alias=>'COL042'
,p_column_display_sequence=>331
,p_column_heading=>'Col042'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99738283339555132)
,p_query_column_id=>44
,p_column_alias=>'COL043'
,p_column_display_sequence=>341
,p_column_heading=>'Col043'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99738213195555131)
,p_query_column_id=>45
,p_column_alias=>'COL044'
,p_column_display_sequence=>351
,p_column_heading=>'Col044'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99738039684555130)
,p_query_column_id=>46
,p_column_alias=>'COL045'
,p_column_display_sequence=>361
,p_column_heading=>'Col045'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99737991827555129)
,p_query_column_id=>47
,p_column_alias=>'COL046'
,p_column_display_sequence=>371
,p_column_heading=>'Col046'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99737898185555128)
,p_query_column_id=>48
,p_column_alias=>'COL047'
,p_column_display_sequence=>381
,p_column_heading=>'Col047'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99737822824555127)
,p_query_column_id=>49
,p_column_alias=>'COL048'
,p_column_display_sequence=>391
,p_column_heading=>'Col048'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99737634406555126)
,p_query_column_id=>50
,p_column_alias=>'COL049'
,p_column_display_sequence=>401
,p_column_heading=>'Col049'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(99737627780555125)
,p_query_column_id=>51
,p_column_alias=>'COL050'
,p_column_display_sequence=>411
,p_column_heading=>'Col050'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101715107348730769)
,p_plug_name=>'Button Bar'
,p_title=>'&nbsp;&nbsp;&nbsp;&nbsp;Proforma Bulk Data Upload'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101712711608730735)
,p_plug_name=>'Data Source'
,p_parent_plug_id=>wwv_flow_imp.id(101715107348730769)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101711124850730713)
,p_plug_name=>'Pasted Data'
,p_parent_plug_id=>wwv_flow_imp.id(101712711608730735)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P94_DATA'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(101712301782730734)
,p_plug_name=>'Copy and Paste Delimited Data'
,p_parent_plug_id=>wwv_flow_imp.id(101712711608730735)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P94_DATA'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(101700576473423940)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(101715107348730769)
,p_button_name=>'UPDATE_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Products'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:63::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(101713806762730740)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(101715107348730769)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
,p_button_condition=>'P94_DATA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(431350747044320898)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(101715107348730769)
,p_button_name=>'DOWNLOAD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--danger:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Download Template'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'javascript:window.open(''&APP_IMAGES.Proforma_Upload_Template.xlsx'');void(0);'
,p_icon_css_classes=>'fa-download'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(101714541428730745)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(101715107348730769)
,p_button_name=>'CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Clear'
,p_button_position=>'NEXT'
,p_button_condition=>'P94_DATA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(101714324075730741)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(101715107348730769)
,p_button_name=>'LOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Data'
,p_button_position=>'NEXT'
,p_button_condition=>'P94_DATA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101710660249730712)
,p_name=>'P94_PASTED_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(101711124850730713)
,p_item_default=>'Pasted Data'
,p_prompt=>'Pasted Data'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-clipboard-arrow-up fa-2x'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101711455421730713)
,p_name=>'P94_ERROR_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(101712301782730734)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(101711915214730721)
,p_name=>'P94_DATA'
,p_data_type=>'CLOB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(101712301782730734)
,p_prompt=>'Copy and Paste Delimited Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>10
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(101713407934730737)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_DATA_LOADING'
,p_process_name=>'Load Data'
,p_attribute_01=>wwv_flow_imp.id(97151143382395766)
,p_attribute_02=>'TEXT'
,p_attribute_04=>'P94_DATA'
,p_attribute_08=>'P94_ERROR_ROW_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(101714324075730741)
,p_internal_uid=>378456322252506018
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(101713005949730735)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CLEAR'' or :P94_ERROR_ROW_COUNT = 0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>378456724237506020
);
wwv_flow_imp.component_end;
end;
/
