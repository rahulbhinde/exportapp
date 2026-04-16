prompt --application/pages/page_00052
begin
--   Manifest
--     PAGE: 00052
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
 p_id=>52
,p_name=>'Notes IG Test - Not used RRB'
,p_step_title=>'Notes IG Test - Not used RRB'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function f_row_down (pThis)',
'{html_RowDown(pThis);}',
' ',
'function f_row_up (pThis,pThat)',
'{html_RowUp(pThis);}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(125419351411564116)
,p_plug_name=>'New'
,p_region_name=>'notes_details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select un_heading, un_details, un_id,UN_DISPLAY , UN_CREATED_BY ,',
' UN_CREATED_ON ,',
' UN_UPDATED_BY ,',
' UN_UPDATED_ON,',
' UN_DISPLAY_ORDER',
'from V_USER_NOTES',
'where un_type_id = 1',
'and UN_ACTIVE = ''Y'''))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125419661708564119)
,p_name=>'UN_HEADING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_HEADING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Un heading'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125419729933564120)
,p_name=>'UN_DETAILS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_DETAILS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Un details'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125419866486564121)
,p_name=>'UN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125419917536564122)
,p_name=>'UN_DISPLAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_DISPLAY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Un display'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(125420022886564123)
,p_name=>'UN_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125420100415564124)
,p_name=>'UN_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125420283672564125)
,p_name=>'UN_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125420390853564126)
,p_name=>'UN_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<img id="down_#ROWNUM#" style="cursor:pointer;" ',
    'onclick="f_row_down(this)" ',
    'src="#WORKSPACE_IMAGES#arrow_down_gray_dark.gif" />',
    '<img id="up_#ROWNUM#" style="cursor:pointer;" ',
    'onclick="f_row_up(this)"',
    'src="#WORKSPACE_IMAGES#arrow_up_gray_dark.gif" />')))).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125420439879564127)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125420541395564128)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(125420603876564129)
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
 p_id=>wwv_flow_imp.id(125420952990564132)
,p_name=>'UN_DISPLAY_ORDER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UN_DISPLAY_ORDER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''></span></button>Display Order'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'UN_DISPLAY_ORDER'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(125419433435564117)
,p_internal_uid=>21915838550670032
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.initActions = function(actions) {',
'        actions.add({',
'            name: "selection-copy-down",',
'            label: "Copy Down", // todo use message key',
'            action: function(event, el) {',
'                var i, col, sel, model, val, colName,',
'                    colHeader$ = $(el).closest(".a-GV-header"),',
'                    ig$ = $(actions.context),',
'                    view = ig$.interactiveGrid("getCurrentView");',
'                    //apex.region("notes_details").widget().interactiveGrid("getActions").set("edit", false);',
'                   // alert(''1''+apex.region("notes_details").widget().interactiveGrid("getActions").get("edit"));',
'                if ( view.internalIdentifier === "grid" ) {',
'					//alert(''2'');',
'                    // get the column associated with the header the button is in',
'                    col = view.view$.grid("getColumns")[colHeader$.attr("data-idx")];',
'                    sel = view.view$.grid("getSelectedRecords");',
'                    if ( sel.length > 1) {',
'						//alert(''3'');',
'                        colName = col.property;',
'                        model = view.model;',
'                       // val = model.getValue(sel[0], colName);',
'                        console.log(">> copy down ", colName, val);                        ',
'                        for( i = 0; i < sel.length; i++) {',
'							//alert(''4'' + model.allowEdit( sel[i])+sel.length);',
'                            // other variations: check that the column or cell is not readonly or disabled or check that the value is empty',
'                            //if ( model.allowEdit( sel[i]) ) {',
'								//alert(''4.1 inside if'');',
'                                model.setValue(sel[i], colName, i);',
'                                //val=i;',
'                                //model.setValue(sel[i], colName, i+1 );',
'                               // val = model.getValue(sel[i], colName);',
'                          //  alert(val);',
'                                ',
'                               // alert(i);',
'                               //alert( model.getValue(sel[i], ''EOD_PURCHASE_AMT'') + ''colName'' + colName);',
'                                ',
'                                ',
'                            //}',
'						}',
'                    }',
'                }                ',
'            }',
'        })',
'}',
'console.log(config);',
'    return config;',
'}',
''))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(125696439685247063)
,p_interactive_grid_id=>wwv_flow_imp.id(125419433435564117)
,p_static_id=>'123164'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(125696518874247063)
,p_report_id=>wwv_flow_imp.id(125696439685247063)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125697539390247076)
,p_view_id=>wwv_flow_imp.id(125696518874247063)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(125419661708564119)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125697932024247083)
,p_view_id=>wwv_flow_imp.id(125696518874247063)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(125419729933564120)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125698464429247086)
,p_view_id=>wwv_flow_imp.id(125696518874247063)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(125419866486564121)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125698936264247092)
,p_view_id=>wwv_flow_imp.id(125696518874247063)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(125419917536564122)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125699685736247095)
,p_view_id=>wwv_flow_imp.id(125696518874247063)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(125420022886564123)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125700175836247098)
,p_view_id=>wwv_flow_imp.id(125696518874247063)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(125420100415564124)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125700666433247101)
,p_view_id=>wwv_flow_imp.id(125696518874247063)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(125420283672564125)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125701178646247104)
,p_view_id=>wwv_flow_imp.id(125696518874247063)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(125420390853564126)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125712245283271212)
,p_view_id=>wwv_flow_imp.id(125696518874247063)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(125420439879564127)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125712774166271215)
,p_view_id=>wwv_flow_imp.id(125696518874247063)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(125420541395564128)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(125717553994654769)
,p_view_id=>wwv_flow_imp.id(125696518874247063)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(125420952990564132)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(125420757731564130)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(125419351411564116)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'New - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>125471907362392626
);
wwv_flow_imp.component_end;
end;
/
