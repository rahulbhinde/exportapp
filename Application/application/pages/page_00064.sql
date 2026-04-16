prompt --application/pages/page_00064
begin
--   Manifest
--     PAGE: 00064
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
 p_id=>64
,p_name=>'Additional Charges'
,p_page_mode=>'MODAL'
,p_step_title=>'Additional Charges'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(137816264638428582)
,p_plug_name=>'Additional Charges'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EAC_ID,',
'       EAC_ENQ_ID,',
'       EAC_LABEL,',
'       EAC_AMT,',
'       EAC_DATE,',
'       EAC_DISPLAY_ORDER,',
'       EAC_CREATED_BY,',
'       EAC_CREATED_ON,',
'       EAC_UPDATED_BY,',
'       EAC_UPDATED_ON,',
'       EAC_TYPE',
'  from V_ENQ_ADD_CHARGES',
'where EAC_ENQ_ID = :P64_ENQ_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P64_ENQ_ID'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(124171863570665175)
,p_name=>'EAC_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EAC_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Category'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(124724698300191796)
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
 p_id=>wwv_flow_imp.id(137807811409754989)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137807911615754990)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137818031065428651)
,p_name=>'EAC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EAC_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_EAC_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137818685239428652)
,p_name=>'EAC_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EAC_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P64_ENQ_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137819241342428654)
,p_name=>'EAC_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EAC_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Other Charges Text'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137819886557428656)
,p_name=>'EAC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EAC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137820475673428657)
,p_name=>'EAC_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EAC_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'SYSDATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137821021878428657)
,p_name=>'EAC_DISPLAY_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EAC_DISPLAY_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Display Order'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'SQL_QUERY'
,p_default_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(EAC_DISPLAY_ORDER)+1',
'from V_ENQ_ADD_CHARGES',
'where EAC_ENQ_ID = :P64_ENQ_ID'))
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137821643899428657)
,p_name=>'EAC_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EAC_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137822265802428658)
,p_name=>'EAC_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EAC_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137822890301428658)
,p_name=>'EAC_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EAC_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(137823403058428658)
,p_name=>'EAC_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EAC_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(137816732795428617)
,p_internal_uid=>34313137910534532
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(137817160338428622)
,p_interactive_grid_id=>wwv_flow_imp.id(137816732795428617)
,p_static_id=>'123191'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(137817245984428623)
,p_report_id=>wwv_flow_imp.id(137817160338428622)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(124725711906222660)
,p_view_id=>wwv_flow_imp.id(137817245984428623)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(124171863570665175)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137818457927428652)
,p_view_id=>wwv_flow_imp.id(137817245984428623)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(137818031065428651)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137819034589428652)
,p_view_id=>wwv_flow_imp.id(137817245984428623)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(137818685239428652)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137819676637428656)
,p_view_id=>wwv_flow_imp.id(137817245984428623)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(137819241342428654)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>206
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137820212606428657)
,p_view_id=>wwv_flow_imp.id(137817245984428623)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(137819886557428656)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137820871263428657)
,p_view_id=>wwv_flow_imp.id(137817245984428623)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(137820475673428657)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137821481207428657)
,p_view_id=>wwv_flow_imp.id(137817245984428623)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(137821021878428657)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137822004993428658)
,p_view_id=>wwv_flow_imp.id(137817245984428623)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(137821643899428657)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137822607464428658)
,p_view_id=>wwv_flow_imp.id(137817245984428623)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(137822265802428658)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137823239494428658)
,p_view_id=>wwv_flow_imp.id(137817245984428623)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(137822890301428658)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137823837599428659)
,p_view_id=>wwv_flow_imp.id(137817245984428623)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(137823403058428658)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(137835031332058251)
,p_view_id=>wwv_flow_imp.id(137817245984428623)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(137807811409754989)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(137829188231029846)
,p_name=>'P64_ENQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(137816264638428582)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(82483774281714192)
,p_tabular_form_region_id=>wwv_flow_imp.id(137816264638428582)
,p_validation_name=>'Validate Amount Based on Category'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF ((:EAC_TYPE = ''ADV'' or :EAC_TYPE = ''DIS'') AND :EAC_AMT > 0) THEN',
'        return false;',
'    ELSIF (:EAC_TYPE = ''OTH'' AND :EAC_AMT < 0)  THEN',
'        return false;',
'   ELSE',
'       return true;',
'   END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please enter amount with correct sign (+/-) as per the category selected'
,p_always_execute=>'Y'
,p_associated_column=>'EAC_AMT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11430263046904636)
,p_name=>'SetEACLabel onchange of EAC Type'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(137816264638428582)
,p_triggering_element=>'EAC_TYPE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EAC_CREATED_BY'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11430071173904635)
,p_event_id=>wwv_flow_imp.id(11430263046904636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EAC_LABEL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_eac_label varchar2(1000);',
'begin',
'if :EAC_TYPE = ''OTH'' then v_eac_label := ''Other Charges'';',
'elsif :EAC_TYPE = ''ADV'' then v_eac_label :=''Less: Advance'';',
'elsif :EAC_TYPE = ''DIS'' then v_eac_label :=''Less: Discount'';',
'elsif :EAC_TYPE = ''FRT'' then v_eac_label :=''Add: Freight'';',
'elsif :EAC_TYPE = ''INS'' then v_eac_label :=''Add: Insurance'';',
'end if;',
'return v_eac_label;',
'end;'))
,p_attribute_07=>'EAC_LABEL,EAC_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(283892333972178684)
,p_name=>'Close Dialog on Save IG'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(137816264638428582)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(283892186119178683)
,p_event_id=>wwv_flow_imp.id(283892333972178684)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(137808083442754991)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(137816264638428582)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Additional Charges - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'DISPLAYING_INLINE_VALIDATION_ERRORS'
,p_exec_cond_for_each_row=>'Y'
,p_internal_uid=>137859233073583487
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(82483616451714191)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(137816264638428582)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Container Summary'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_error_msg varchar2(4000);',
'	l_scope logger_logs.scope%type := ''Update Container Summary '';',
'	l_params logger.tab_param;',
'',
'BEGIN',
'logger.LOG(''START'', l_scope);',
'',
'v_error_msg := fn_update_container_summary(:P64_ENQ_ID);',
'	',
'	if v_error_msg  != ''00'' then',
'		v_error_msg := ''Error in executing function fn_update_container_summary  from Page 64 - '' || v_error_msg;',
'		logger.log_error(v_error_msg, l_scope, null, l_params);',
'        logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'	end if;',
'    ',
'     logger.LOG(''After updating Container Summary details'', l_scope, NULL, l_params);',
'     logger.log(''END'', l_scope, null, l_params);',
'     ',
'EXCEPTION WHEN OTHERS THEN',
' v_error_msg := ''Error in Update Container Summary of Page 64 - '' || substr(sqlerrm,1,2000);',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
' logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'END;     '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_internal_uid=>82534766082542687
);
wwv_flow_imp.component_end;
end;
/
