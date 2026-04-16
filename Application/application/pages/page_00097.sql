prompt --application/pages/page_00097
begin
--   Manifest
--     PAGE: 00097
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
 p_id=>97
,p_name=>'Questions for Selected Output'
,p_alias=>'QUESTIONS-FOR-SELECTED-OUTPUT'
,p_page_mode=>'MODAL'
,p_step_title=>'Questions for Selected Output'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(87367574077842896)
,p_name=>'Questions & Responses'
,p_template=>4072358936313175081
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    q.QQ_DISPLAY_ORDER,',
'    q.QQ_TEXT,',
'    CASE q.QQ_TYPE',
'        WHEN ''TEXTAREA'' THEN',
'            apex_item.hidden(11, q.QQ_ID) ||',
'            apex_item.textarea(1, NULL, 5)',
'',
'        WHEN ''SELECT'' THEN',
'            apex_item.hidden(12, q.QQ_ID) ||',
'            apex_item.select_list(',
'                2,',
'                NULL,',
'                fn_dynamic_lov(q.QQ_OPTION_SOURCE),',
'               -- p_attributes => ''style="color: red;"'',',
'                p_show_null => ''YES'',',
'                p_null_text => ''- Choose -''',
'            )',
'',
'        WHEN ''RADIO'' THEN',
'            apex_item.hidden(13, q.QQ_ID) ||',
'            (',
'                SELECT LISTAGG(',
'                    ''<input type="radio" name="f03" value="'' || r.r || ''">'' || r.d,',
'                    '' ''',
'                ) WITHIN GROUP (ORDER BY r.d)',
'                FROM TABLE(fn_get_lov_options(q.QQ_OPTION_SOURCE)) r',
'            )',
'        WHEN ''CHECKBOX'' THEN',
'            apex_item.hidden(14, q.QQ_ID) ||',
'            (',
'                SELECT LISTAGG(',
'                    ''<input type="checkbox" name="f04" value="'' || r.r || ''"> '' || r.d,',
'                    '' ''',
'                ) WITHIN GROUP (ORDER BY r.d)',
'                FROM TABLE(fn_get_lov_options(q.QQ_OPTION_SOURCE)) r',
'            )',
'',
'        WHEN ''DATE'' THEN',
'            apex_item.hidden(15, q.QQ_ID) ||',
'            ''<input type="date" name="f05">''',
'    END AS ANSWER',
'FROM V_QNA_QUESTIONS q',
'WHERE QQ_OUTPUT_TYPE = :P97_OUTPUT_TYPE',
'ORDER BY q.QQ_DISPLAY_ORDER;',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P97_OUTPUT_TYPE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87367429011842895)
,p_query_column_id=>1
,p_column_alias=>'QQ_DISPLAY_ORDER'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87367353762842894)
,p_query_column_id=>2
,p_column_alias=>'QQ_TEXT'
,p_column_display_sequence=>20
,p_column_heading=>'Question'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(87367269938842893)
,p_query_column_id=>3
,p_column_alias=>'ANSWER'
,p_column_display_sequence=>30
,p_column_heading=>'Response'
,p_heading_alignment=>'LEFT'
,p_display_as=>'RICH_TEXT'
,p_attribute_01=>'HTML'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(116867610094364463)
,p_plug_name=>'Questions of Output Selected'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select QS_ID,',
'QAD_ID,',
'    QS_NUMBER, ',
'QS_OUTPUT_TYPE,',
'    QS_LABEL Question, ',
'    decode(QS_INPUT_TYPE,''RADIO'',QAD_ANS_CODE,null) Answer --radio button for answer of each field',
'    ,decode(QS_INPUT_TYPE,''TEXTAREA'',QAD_ANS_CODE,null) Answer_Textarea',
'    ,QS_INPUT_TYPE',
'from QUESTIONS_SETUP ,QUES_ANS_DETAILS',
'where QS_OUTPUT_TYPE = :P97_OUTPUT_TYPE',
'AND QAD_TYPE_ID (+) = :P97_TYPE_ID ',
'AND (QAD_OM_ID  is null  )    --Added by Rahul on 21-Jan-25 and commented the multiple or contd mentioned below',
'--AND ((QAD_OM_ID  is null and QAD_TYPE_ID is null) or (QAD_OM_ID  is not null and QAD_TYPE_ID is not null))',
'AND QS_OUTPUT_TYPE = QAD_TYPE (+)',
'AND QS_NUMBER = QAD_QS_NUMBER (+);'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P97_OUTPUT_TYPE,P97_TYPE_ID'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Questions of Output Selected'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(94782628856397552)
,p_name=>'ANSWER_TEXTAREA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANSWER_TEXTAREA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Answer (Text)'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
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
 p_id=>wwv_flow_imp.id(94782779821397553)
,p_name=>'QS_INPUT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QS_INPUT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Input Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(116876674641446392)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(116876787621446393)
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
 p_id=>wwv_flow_imp.id(116877199936446397)
,p_name=>'QS_OUTPUT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QS_OUTPUT_TYPE'
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
 p_id=>wwv_flow_imp.id(124857166322564990)
,p_name=>'QAD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QAD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(147471109515320545)
,p_name=>'ANSWER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANSWER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_RADIOGROUP'
,p_heading=>'Answer (Select Option)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    AS_LOV_VALUES d, AS_LOV_CODE r ',
'from ANSWER_SETUP ',
'where AS_QS_NUMBER = :QS_NUMBER;'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'QS_NUMBER'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(147471205669320546)
,p_name=>'QUESTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUESTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Question'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(147471284065320547)
,p_name=>'QS_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QS_NUMBER'
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
 p_id=>wwv_flow_imp.id(147471389826320548)
,p_name=>'QS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QS_ID'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(116868085778364468)
,p_internal_uid=>196918929165000194
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(116868474000364469)
,p_interactive_grid_id=>wwv_flow_imp.id(116868085778364468)
,p_static_id=>'1089205'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(116868715842364470)
,p_report_id=>wwv_flow_imp.id(116868474000364469)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(102766301885957758)
,p_view_id=>wwv_flow_imp.id(116868715842364470)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(94782779821397553)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(102768693939134385)
,p_view_id=>wwv_flow_imp.id(116868715842364470)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(94782628856397552)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116871005839371872)
,p_view_id=>wwv_flow_imp.id(116868715842364470)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(147471389826320548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116871898498371880)
,p_view_id=>wwv_flow_imp.id(116868715842364470)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(147471284065320547)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116872817728371885)
,p_view_id=>wwv_flow_imp.id(116868715842364470)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(147471205669320546)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>356
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116873713770371889)
,p_view_id=>wwv_flow_imp.id(116868715842364470)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(147471109515320545)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>331
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(116882502218447498)
,p_view_id=>wwv_flow_imp.id(116868715842364470)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(116876674641446392)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(120082163004664894)
,p_view_id=>wwv_flow_imp.id(116868715842364470)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(116877199936446397)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(124863167557565923)
,p_view_id=>wwv_flow_imp.id(116868715842364470)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(124857166322564990)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(116876967970446395)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670598027010164619)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44962908066773724)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(116876967970446395)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44962533942773721)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(116876967970446395)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'NEXT'
,p_show_processing=>'Y'
,p_button_condition=>'P97_OUTPUT_TYPE'
,p_button_condition2=>'CI'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44962092234773721)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(116876967970446395)
,p_button_name=>'Next_CI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_condition=>'P97_OUTPUT_TYPE'
,p_button_condition2=>'CI'
,p_button_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44961752591773720)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(116876967970446395)
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
 p_id=>wwv_flow_imp.id(44953876524773688)
,p_branch_name=>'Go To Page 10'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_ENQ_ID,P10_OUTPUT_TYPE,P10_CALLING_FROM:&P97_TYPE_ID.,&P97_OUTPUT_TYPE.,&P97_CALLING_FROM.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(44961752591773720)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(70571325470196090)
,p_branch_name=>'Go To Page 10'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,:P10_ENQ_ID,P10_OUTPUT_TYPE,P10_CALLING_FROM:&P97_TYPE_ID.,&P97_OUTPUT_TYPE.,&P97_CALLING_FROM.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(44962533942773721)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(44954322978773689)
,p_branch_name=>'Go To Page 90'
,p_branch_action=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:RP,90:P90_CIR_ENQ_ID,P90_CIR_ADDITIONAL_DETAILS:&P97_TYPE_ID.,&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(44962092234773721)
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70571271402196089)
,p_name=>'P97_CALLING_FROM'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70571594869196092)
,p_name=>'P97_DISPLAY_OTHER'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(116901999257613422)
,p_name=>'P97_TYPE_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127274193555180009)
,p_name=>'P97_OUTPUT_TYPE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(93169548826220103)
,p_computation_sequence=>20
,p_computation_item=>'P97_DISPLAY_OTHER'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P10_DISPLAY_OTHER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44959756894773696)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44962908066773724)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44959200895773693)
,p_event_id=>wwv_flow_imp.id(44959756894773696)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44958792772773692)
,p_name=>'Enable Disable Columns Based on Input Type'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(116867610094364463)
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'QS_INPUT_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'RADIO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44957862946773691)
,p_event_id=>wwv_flow_imp.id(44958792772773692)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ANSWER_TEXTAREA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44958281094773692)
,p_event_id=>wwv_flow_imp.id(44958792772773692)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ANSWER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44957364921773691)
,p_event_id=>wwv_flow_imp.id(44958792772773692)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ANSWER'
,p_attribute_01=>'is-readonly'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44956338752773691)
,p_event_id=>wwv_flow_imp.id(44958792772773692)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ANSWER'
,p_attribute_01=>'CSSreadonly'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44956865650773691)
,p_event_id=>wwv_flow_imp.id(44958792772773692)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ANSWER'
,p_attribute_01=>'is-readonly'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44955271449773690)
,p_event_id=>wwv_flow_imp.id(44958792772773692)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ANSWER_TEXTAREA'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44955798836773690)
,p_event_id=>wwv_flow_imp.id(44958792772773692)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ANSWER'
,p_attribute_01=>'CSSreadonly'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44954855526773690)
,p_event_id=>wwv_flow_imp.id(44958792772773692)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ANSWER_TEXTAREA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(87367134357842892)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- TEXT questions',
'     FOR i IN 1..apex_application.g_f01.COUNT LOOP',
'         INSERT INTO V_QNA_RESPONSES (QR_ID,QR_SESSION_ID, QR_QQ_ID, QR_ANSWER)',
'         VALUES (SEQ_QR_ID.nextval,v(''APP_SESSION''), apex_application.g_f11(i), apex_application.g_f01(i));',
'     END LOOP;',
'',
'    -- SELECT questions',
'    FOR i IN 1..apex_application.g_f02.COUNT LOOP',
'        INSERT INTO V_QNA_RESPONSES (QR_ID,QR_SESSION_ID, QR_QQ_ID, QR_ANSWER)',
'        VALUES (SEQ_QR_ID.nextval,v(''APP_SESSION''), apex_application.g_f12(i), apex_application.g_f02(i));',
'    END LOOP;',
'/*',
'    -- RADIO questions',
'    FOR i IN 1..apex_application.g_f03.COUNT LOOP',
'        INSERT INTO V_QNA_RESPONSES (QR_SESSION_ID, QR_QQ_ID, QR_ANSWER)',
'        VALUES (v(''APP_SESSION''), apex_application.g_f13(i), apex_application.g_f03(i));',
'    END LOOP;',
' */',
'    -- CHECKBOX (multiple values)',
'    /*FOR i IN 1..apex_application.g_f04.COUNT LOOP',
'        INSERT INTO V_QNA_RESPONSES (QR_SESSION_ID, QR_QQ_ID, QR_ANSWER)',
'        VALUES (v(''APP_SESSION''), apex_application.g_f14(1), apex_application.g_f04(i));',
'    END LOOP;*/',
'',
'  /*  -- CHECKBOX (multiple values in one row)',
'    DECLARE',
'    l_checkbox_values APEX_T_VARCHAR2 := APEX_T_VARCHAR2(); -- Initialize empty collection',
'    BEGIN',
'        -- Copy values from APEX array to PL/SQL collection',
'        FOR i IN 1..apex_application.g_f04.COUNT LOOP',
'            l_checkbox_values.EXTEND;',
'            l_checkbox_values(l_checkbox_values.COUNT) := apex_application.g_f04(i);',
'        END LOOP;',
'',
'        IF l_checkbox_values.COUNT > 0 THEN',
'            INSERT INTO V_QNA_RESPONSES (QR_SESSION_ID, QR_QQ_ID, QR_ANSWER)',
'            VALUES (',
'                v(''APP_SESSION''),',
'                apex_application.g_f14(1),  -- same question ID for checkbox group',
'                apex_string.join(l_checkbox_values, '':'') -- join with colon',
'            );',
'        END IF;',
'    END;',
'',
'',
'',
'    -- DATE',
'    FOR i IN 1..apex_application.g_f05.COUNT LOOP',
'        INSERT INTO V_QNA_RESPONSES (QR_SESSION_ID, QR_QQ_ID, QR_ANSWER)',
'        VALUES (v(''APP_SESSION''), apex_application.g_f15(i), apex_application.g_f05(i));',
'    END LOOP; */',
'commit; --Added by Rahul on 9/9/25 as rows are not committed in DB during execution when Jasper Report tries to fetch responsed from the table and generating blank report',
'END;',
'',
'   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(44962533942773721)
,p_internal_uid=>546875176154798433
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44960100159773699)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate output'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_success_failure varchar2(2);',
'  v_error_msg varchar2(4000);',
'begin',
'  --PKG_GENERATE_OUTPUT.initialize(''CI'',:P97_TYPE_ID,v_success_failure,v_error_msg,''''); Commented and added below another call to pass addtional details for custom invoice 15-Dec-23',
'  PKG_GENERATE_OUTPUT.initialize(:P97_OUTPUT_TYPE,:P97_TYPE_ID,v_success_failure,v_error_msg,:P97_DISPLAY_OTHER);',
'',
'    if v_success_failure = ''99'' then',
'    apex_error.add_error (',
'        p_message          => v_error_msg,',
'        p_display_location => apex_error.c_inline_in_notification );',
'    end if;	',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error generating output !'
,p_process_when_button_id=>wwv_flow_imp.id(44962533942773721)
,p_process_success_message=>'&P97_OUTPUT_TYPE. generated successfully.'
,p_internal_uid=>57209167554006383
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44963646985773727)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(116867610094364463)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Questions for Selected Output - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'	l_scope logger_logs.scope%type := ''Update QUES_ANS_DETAILS'';',
'	l_params logger.tab_param;',
'	v_error_msg varchar2(4000);',
'',
'BEGIN',
'',
'	logger.LOG(''START'', l_scope);',
'	logger.LOG(''Before Insert in QUES_ANS_DETAILS'', l_scope, null, l_params);',
'',
'	logger.append_param(l_params, ''P97_TYPE_ID'', :P97_TYPE_ID);',
'	logger.append_param(l_params, ''QS_NUMBER'', :QS_NUMBER);',
'	logger.append_param(l_params, ''ANSWER'', :ANSWER);',
'	logger.append_param(l_params, ''QS_OUTPUT_TYPE'', :QS_OUTPUT_TYPE);',
'',
'',
'MERGE INTO QUES_ANS_DETAILS qad',
'        USING ( select :QAD_ID QADS_ID,',
'	:P97_TYPE_ID	ENQ_ID,',
'	null OM_ID,',
'	:QS_NUMBER QS_NUMB,',
'	decode(:QS_INPUT_TYPE,''RADIO'',:ANSWER,''TEXTAREA'',:ANSWER_TEXTAREA,:ANSWER) ANS_CODE,',
'	:QS_OUTPUT_TYPE OUTPUT_TYPE ',
'	from dual ) qads  ',
'	ON (qad.QAD_ID = qads.QADS_ID',
'		AND qad.QAD_QS_NUMBER = qads.QS_NUMB',
'		AND qad.QAD_TYPE_ID = qads.ENQ_ID',
'		AND qad.QAD_OM_ID  is null',
'       )	   ',
'   WHEN MATCHED THEN',
'      UPDATE SET',
'		QAD_ANS_CODE	= qads.ANS_CODE',
'',
'    WHEN NOT MATCHED THEN',
'      INSERT (QAD_ID,',
'	QAD_TYPE_ID	,',
'	QAD_OM_ID,',
'	QAD_QS_NUMBER	,',
'	QAD_ANS_CODE	,',
'	QAD_TYPE',
'             )',
'      VALUES (SEQ_QAD_ID.nextval,',
'	          qads.ENQ_ID,',
'	          qads.OM_ID,',
'	          qads.QS_NUMB,',
'	          qads.ANS_CODE,',
'	          qads.OUTPUT_TYPE ',
'			  );',
'',
'	logger.LOG(''After Insert in QUES_ANS_DETAILS'', l_scope, NULL, l_params);',
'',
'    EXCEPTION WHEN OTHERS THEN',
' v_error_msg := ''Error in QUES_ANS_DETAILS - '' || substr(sqlerrm,1,2000);',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_process_error_message=>'Answers saved successfully!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_only_for_changed_rows=>'N'
,p_internal_uid=>57205620728006355
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Sonal Code - ',
'',
'DECLARE',
'',
'	l_scope logger_logs.scope%type := ''Update QUES_ANS_DETAILS'';',
'	l_params logger.tab_param;',
'	v_error_msg varchar2(4000);',
'',
'BEGIN',
'',
'	logger.LOG(''START'', l_scope);',
'	logger.LOG(''Before Insert in QUES_ANS_DETAILS'', l_scope, null, l_params);',
'',
'	logger.append_param(l_params, ''P97_TYPE_ID'', :P97_TYPE_ID);',
'	logger.append_param(l_params, ''QS_NUMBER'', :QS_NUMBER);',
'	logger.append_param(l_params, ''ANSWER'', :ANSWER);',
'	logger.append_param(l_params, ''QS_OUTPUT_TYPE'', :QS_OUTPUT_TYPE);',
'',
'',
'MERGE INTO QUES_ANS_DETAILS qad',
'        USING (select ',
'				det.QADS_ID,',
'                det.ENQ_ID,',
'                det.OM_ID,',
'                det.QS_NUMB,',
'                det.ANS_CODE,',
'                det.OUTPUT_TYPE',
'         from (select   :QAD_ID QADS_ID,',
'	:P97_TYPE_ID	ENQ_ID,',
'	null OM_ID,',
'	:QS_NUMBER QS_NUMB,',
'	:ANSWER ANS_CODE,',
'	:QS_OUTPUT_TYPE OUTPUT_TYPE ',
'	from dual ) det )  qads',
'	ON (qad.QAD_ID = qads.QADS_ID',
'		AND qad.QAD_QS_NUMBER = qads.QS_NUMB',
'		AND qad.QAD_ENQ_ID = qads.ENQ_ID',
'		AND qad.QAD_OM_ID  is null',
'       )	   ',
'   WHEN MATCHED THEN',
'      UPDATE SET',
'		QAD_ANS_CODE	= qads.ANS_CODE',
'',
'    WHEN NOT MATCHED THEN',
'      INSERT (QAD_ID,',
'	QAD_ENQ_ID	,',
'	QAD_OM_ID,',
'	QAD_QS_NUMBER	,',
'	QAD_ANS_CODE	,',
'	QAD_TYPE',
'             )',
'      VALUES (SEQ_QAD_ID.nextval,',
'	          qads.ENQ_ID,',
'	          qads.OM_ID,',
'	          qads.QS_NUMB,',
'	          qads.ANS_CODE,',
'	          qads.OUTPUT_TYPE ',
'			  );',
'',
'	logger.LOG(''After Insert in QUES_ANS_DETAILS'', l_scope, NULL, l_params);',
'',
'    EXCEPTION WHEN OTHERS THEN',
' v_error_msg := ''Error in QUES_ANS_DETAILS - '' || substr(sqlerrm,1,2000);',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
'END;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70571057128196087)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate LOV options for Output'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'    IF :P97_OUTPUT_TYPE = ''COMINVSC'' THEN',
'        ',
'            delete from answer_setup',
'            where AS_QS_NUMBER = ''Q1''',
'            and AS_TYPE = :P97_OUTPUT_TYPE',
'            and as_lov_code not in (select eom_enq_id from V_ENQUIRIES_ORDERS_MST where eom_sales_contract_id = :P97_TYPE_ID);',
'',
'',
'            MERGE INTO ANSWER_SETUP',
'            USING (',
'                    select ''Q1'' qs_number, eom_enq_no, eom_enq_id ,:P97_OUTPUT_TYPE output_type',
'                    from V_ENQUIRIES_ORDERS_MST',
'                    where eom_sales_contract_id = :P97_TYPE_ID',
'                 ) ',
'            ON ',
'            ( AS_QS_NUMBER = qs_number',
'            and AS_LOV_CODE = eom_enq_id',
'            )',
'              WHEN NOT MATCHED THEN    ',
'              INSERT',
'              ( AS_ID,',
'                AS_QS_NUMBER,',
'                AS_LOV_VALUES,',
'                AS_TYPE,',
'                AS_LOV_CODE',
'              ) VALUES',
'              (',
'                SEQ_AS_ID.nextval,',
'                qs_number,',
'                eom_enq_no,',
'                output_type,',
'                eom_enq_id',
'              );',
'',
'    END IF;',
'',
'--Logic to insert blank placeholders for answers to fetch on the screen to accept answers rahul 20-Feb-25',
'MERGE INTO ques_ans_details',
' USING (',
'                    select QS_NUMBER, QS_OUTPUT_TYPE',
'                    from questions_setup',
'                    where qs_output_type = :P97_OUTPUT_TYPE',
'                 ) ',
'            ON ',
'            ( QAD_QS_NUMBER = QS_NUMBER',
'            and QAD_TYPE = QS_OUTPUT_TYPE',
'            and QAD_OM_ID is null',
'           -- and QAD_ANS_CODE is null',
'            )',
'              WHEN NOT MATCHED THEN    ',
'              INSERT',
'              (',
'                  QAD_TYPE_ID,',
'                  QAD_ID,',
'                  QAD_OM_ID,',
'                  QAD_QS_NUMBER,',
'                  QAD_ANS_CODE,',
'                  QAD_TYPE',
'              ) VALUES',
'              (',
'                :P97_TYPE_ID,',
'                SEQ_QAD_ID.nextval,',
'                '''',',
'                QS_NUMBER,',
'                '''',                ',
'                QS_OUTPUT_TYPE',
'              );',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>86602643016643026
);
wwv_flow_imp.component_end;
end;
/
