prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_name=>'Supplier Detail'
,p_page_mode=>'MODAL'
,p_step_title=>'Supplier Detail'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'',
''))
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--xl'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var lManufacturers = [];',
'regTree = apex.jQuery("#manufacturer-tree").find("div.tree");',
'regTree.tree({',
' ui : {',
'  theme_name : "checkbox"',
' },',
' callback : {',
'  onchange : function(NODE, TREE_OBJ) {',
'   if (TREE_OBJ.settings.ui.theme_name == "checkbox") {',
'    var $this = $(NODE).is("li") ? $(NODE) : $(NODE).parent();',
'    if ($this.children("a.unchecked").size() == 0) {',
'     TREE_OBJ.container.find("a").addClass("unchecked");   ',
'    }',
'    $this.children("a").removeClass("clicked");',
'    if ($this.children("a").hasClass("checked")) {',
'     $this.find("li").andSelf().children("a").removeClass("checked").removeClass("undetermined").addClass("unchecked");',
'     var state = 0;',
'    } else {',
'     $this.find("li").andSelf().children("a").removeClass("unchecked").removeClass("undetermined").addClass("checked");',
'     var state = 1;   ',
'    }',
'                $this.parents("li").each(function() {',
'     if (state == 1) {',
'      if ($(this).find("a.unchecked, a.undetermined").size() - 1 > 0) {',
'       $(this).parents("li").andSelf().children("a").removeClass("unchecked").removeClass("checked").addClass("undetermined");',
'       return false;',
'      } else',
'       $(this).children("a").removeClass("unchecked").removeClass("undetermined").addClass("checked");',
'     } else {',
'      if ($(this).find("a.checked, a.undetermined").size() - 1 > 0) {',
'       $(this).parents("li").andSelf().children("a").removeClass("unchecked").removeClass("checked").addClass("undetermined");',
'       return false;',
'      } else',
'       $(this).children("a").removeClass("checked").removeClass("undetermined").addClass("unchecked");',
'     }',
'    });',
'   }',
'  }',
'       ,onopen : function(NODE, TREE_OBJ) {',
'           $(NODE).removeClass("open").addClass("closed");',
'        }',
'       ,onclose : function(NODE, TREE_OBJ) {',
'           $(NODE).removeClass("closed").addClass("open");',
'        }',
' }',
'});',
'',
'$.each(  $v("P19_MANUFAC_LIST").split(":"), ',
'           function(intIndex, objValue) { ',
'             $("li#"+objValue+".leaf a:first").click();',
'           }',
'      );'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32900560357845774845)
,p_plug_name=>'Supplier Detail'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'V_SUPPLIER_MASTER'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'N',
  'attribute_02', 'TEXT',
  'attribute_03', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(103341412661220494)
,p_plug_name=>'Contact(s)'
,p_parent_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CTM_ID,',
'       --CTM_CM_ID,',
'       CTM_SUP_ID,',
'       CTM_NAME,',
'       CTM_TEL1,',
'       CTM_TEL2,',
'       CTM_ADDRESS1,',
'       CTM_ADDRESS2,',
'       CTM_COUNTRY,',
'       CTM_STATE,',
'       CTM_CITY,',
'       CTM_ZIP,',
'       CTM_ANNIVERSARY,',
'       CTM_BIRTHDAY,',
'       CTM_REMARKS,',
'       CTM_CREATED_BY,',
'       CTM_CREATED_ON,',
'       CTM_UPDATED_BY,',
'       CTM_UPDATED_ON,',
'       CTM_ACTIVE,',
'       CTM_DESIGNATION,',
'       CTM_CATEGORY,',
'       CTM_SIGN,',
'       CTM_EMAIL',
'  from V_CONTACTS_MASTER',
' where CTM_SUP_ID = :P19_SUPM_ID',
' and CTM_CATEGORY = ''SUPPLIER'''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P19_SUPM_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P19_SUPM_ID'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(103341555525220496)
,p_name=>'CTM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_CTM_ID'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(103341727420220497)
,p_name=>'CTM_SUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_SUP_ID'
,p_data_type=>'NUMBER'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P19_SUPM_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(103341844262220499)
,p_name=>'CTM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
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
 p_id=>wwv_flow_imp.id(103342029780220500)
,p_name=>'CTM_TEL1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_TEL1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tel. 1'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(103342048598220501)
,p_name=>'CTM_TEL2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_TEL2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tel. 2'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(103342134830220502)
,p_name=>'CTM_ADDRESS1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_ADDRESS1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Address 1'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(103342313030220503)
,p_name=>'CTM_ADDRESS2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_ADDRESS2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Address 2'
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
 p_id=>wwv_flow_imp.id(103342348591220504)
,p_name=>'CTM_COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_COUNTRY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Country'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3872441928882845350)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Country -'
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
 p_id=>wwv_flow_imp.id(103342485887220505)
,p_name=>'CTM_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'State'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''STATE''',
'   and st_parent_id = :CTM_COUNTRY',
' order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select State -'
,p_lov_cascade_parent_items=>'CTM_COUNTRY'
,p_ajax_items_to_submit=>'CTM_COUNTRY'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(103342611139220506)
,p_name=>'CTM_CITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_CITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'City'
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
 p_id=>wwv_flow_imp.id(103342726548220507)
,p_name=>'CTM_ZIP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_ZIP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Zip'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(103342825075220508)
,p_name=>'CTM_ANNIVERSARY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_ANNIVERSARY'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Anniversary'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(103342884974220509)
,p_name=>'CTM_BIRTHDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_BIRTHDAY'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Birthday'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(103343020838220510)
,p_name=>'CTM_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(103343086518220511)
,p_name=>'CTM_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(103343220385220512)
,p_name=>'CTM_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(109009098313095235)
,p_name=>'CTM_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_attributes=>unistr('pattern="^[^\005Cs@]+@[^\005Cs@]+\005C.[^\005Cs@]+$"  data-valid-message="Invalid\00A0email\00A0address"')
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
 p_id=>wwv_flow_imp.id(109009132764095236)
,p_name=>'CTM_CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_CATEGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'SUPPLIER'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109009630825095241)
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
 p_id=>wwv_flow_imp.id(109009722487095242)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109009928299095244)
,p_name=>'CTM_DESIGNATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_DESIGNATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Designation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(109010056735095245)
,p_name=>'CTM_ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Active'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
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
 p_id=>wwv_flow_imp.id(109010137379095246)
,p_name=>'CTM_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated On'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(109010315988095247)
,p_name=>'CTM_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CTM_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(103341522988220495)
,p_internal_uid=>124954590942621372
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(109004594995085046)
,p_interactive_grid_id=>wwv_flow_imp.id(103341522988220495)
,p_static_id=>'5468777'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(109004324879085044)
,p_report_id=>wwv_flow_imp.id(109004594995085046)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101595009686044346)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(109009098313095235)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>165
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(101595833393044353)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(109009132764095236)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108980962424058559)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(109009722487095242)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108985874864084938)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(109009928299095244)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108986769383084942)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(109010056735095245)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108987648534084945)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(109010137379095246)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108988593953084949)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(109010315988095247)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108989508113084953)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(103343220385220512)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108990398822084956)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(103343086518220511)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108991275683084960)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(103343020838220510)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>225.999975
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108992171938084964)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(103342884974220509)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108993100047084967)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(103342825075220508)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108993923191084971)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(103342726548220507)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108994840995084974)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(103342611139220506)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147.0156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108995739562084978)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(103342485887220505)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108996711109084982)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(103342348591220504)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>131
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108997548986084985)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(103342313030220503)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108998487953084989)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(103342134830220502)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(108999403017084994)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(103342048598220501)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109000276716084998)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(103342029780220500)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>159.0156
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109001138702085003)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(103341844262220499)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109002944474085017)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(103341727420220497)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109003904469085031)
,p_view_id=>wwv_flow_imp.id(109004324879085044)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(103341555525220496)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32900560990351774845)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32900618254906774957)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(31949275823033531034)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33594185652151386665)
,p_plug_name=>'List of Manufacturers'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32900561395893774846)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(32900560990351774845)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32900560971103774845)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(32900560990351774845)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P19_SUPM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(69930751139109744)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32900560829285774845)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(32900560990351774845)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_SUPM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32900560727452774845)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(32900560990351774845)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P19_SUPM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18359450742284101)
,p_name=>'P19_SUPM_USFDA_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'USFDA No.'
,p_source=>'SUPM_USFDA_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(18359525501284102)
,p_name=>'P19_SUPM_PAN_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'PAN No.'
,p_source=>'SUPM_PAN_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(92968856128362481)
,p_name=>'P19_SUPM_GST_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'GST No.'
,p_source=>'SUPM_GST_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_imp.id(28686449268764466170)
,p_name=>'P19_SUPM_DISTRICT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'District'
,p_source=>'SUPM_DISTRICT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''DISTRICT''',
'    and nvl(st_display,''Y'') = ''Y''',
'    and st_parent_id = :P19_SUPM_STATE',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select District -'
,p_lov_cascade_parent_items=>'P19_SUPM_STATE'
,p_ajax_items_to_submit=>'P19_SUPM_STATE'
,p_ajax_optimize_refresh=>'Y'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_id number;',
'begin',
'  select st_id ',
'  into v_id',
'  from V_SETUP_TABLE',
'  where st_type = ''STATE''',
'   and st_parent_id = :P19_SUPM_COUNTRY',
'   and ST_DISPLAY_ORDER = 1',
'   and rownum =1;',
'',
'  return v_id;',
'exception when others then',
'  return null;',
'end;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32900593872324774878)
,p_name=>'P19_SUPM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_source=>'SUPM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32900594110067774879)
,p_name=>'P19_SUPM_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Name'
,p_source=>'SUPM_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>1609122147107268652
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
 p_id=>wwv_flow_imp.id(32900594520838774880)
,p_name=>'P19_SUPM_ADDRESS1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Address1'
,p_source=>'SUPM_ADDRESS1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>2
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
 p_id=>wwv_flow_imp.id(32900594885831774881)
,p_name=>'P19_SUPM_ADDRESS2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Address2'
,p_source=>'SUPM_ADDRESS2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>20
,p_cMaxlength=>4000
,p_cHeight=>2
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(32900595339239774882)
,p_name=>'P19_SUPM_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Country'
,p_source=>'SUPM_COUNTRY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'LOV_COUNTRY_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r,',
'       ''fa-flag-'' || LOWER(nvl(ST_EXTRA1,''CA'')) AS icon_column',
'  from SETUP_TABLE',
' where st_type = ''COUNTRY''',
' order by 1'))
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(32900595682486774883)
,p_name=>'P19_SUPM_STATE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_id number;',
'begin',
'  select st_id ',
'  into v_id',
'  from V_SETUP_TABLE',
'  where st_type = ''STATE''',
'   and st_parent_id = :P19_SUPM_COUNTRY',
'   and ST_DISPLAY_ORDER = 1',
'   and rownum =1;',
'',
'  return v_id;',
'exception when others then',
'  return null;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'State'
,p_source=>'SUPM_STATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''STATE''',
'   and st_parent_id = :P19_SUPM_COUNTRY',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select State -'
,p_lov_cascade_parent_items=>'P19_SUPM_COUNTRY'
,p_ajax_items_to_submit=>'P19_SUPM_COUNTRY'
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
 p_id=>wwv_flow_imp.id(32900596142224774885)
,p_name=>'P19_SUPM_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'City'
,p_source=>'SUPM_CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
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
 p_id=>wwv_flow_imp.id(32900596507689774886)
,p_name=>'P19_SUPM_ZIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Zip'
,p_source=>'SUPM_ZIP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32900596951287774886)
,p_name=>'P19_SUPM_SHORT_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Short Address'
,p_source=>'SUPM_SHORT_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>45
,p_cMaxlength=>4000
,p_cHeight=>2
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
 p_id=>wwv_flow_imp.id(32900597345588774887)
,p_name=>'P19_SUPM_TEL1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Telephone 1'
,p_source=>'SUPM_TEL1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32900597731544774891)
,p_name=>'P19_SUPM_TEL2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Telephone 2'
,p_source=>'SUPM_TEL2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-phone'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32900598102293774891)
,p_name=>'P19_SUPM_FAX'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Fax'
,p_source=>'SUPM_FAX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-fax'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32900598522509774892)
,p_name=>'P19_SUPM_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Email'
,p_source=>'SUPM_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-envelope-o'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32900598901854774894)
,p_name=>'P19_SUPM_MANUFAC_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Manufacturer Type'
,p_source=>'SUPM_MANUFAC_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_MANUFACTURE_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''MANUFACTURE_TYPE''',
' order by st_display_order'))
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32900599366564774895)
,p_name=>'P19_SUPM_SUPPLIER_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_default=>'MANUFACTURER'
,p_prompt=>'Supplier Type'
,p_source=>'SUPM_SUPPLIER_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_SUPPLIER_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''SUPPLIER_TYPE''',
' order by st_display_order'))
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32900599777192774895)
,p_name=>'P19_SUPM_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Remarks'
,p_source=>'SUPM_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>45
,p_cMaxlength=>4000
,p_cHeight=>2
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(32900600108180774897)
,p_name=>'P19_SUPM_QUOTE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Quote'
,p_source=>'SUPM_QUOTE'
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
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(32900600490856774898)
,p_name=>'P19_SUPM_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Created By'
,p_source=>'SUPM_CREATED_BY'
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
 p_id=>wwv_flow_imp.id(32900600936059774899)
,p_name=>'P19_SUPM_CREATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Created On'
,p_source=>'SUPM_CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(32900601296527774900)
,p_name=>'P19_SUPM_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Updated By'
,p_source=>'SUPM_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(32900601694121774902)
,p_name=>'P19_SUPM_UPDATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_prompt=>'Updated On'
,p_source=>'SUPM_UPDATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(32900602100587774902)
,p_name=>'P19_SUPM_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_source_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_item_default=>'Y'
,p_source=>'SUPM_ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32907594087063724955)
,p_name=>'P19_MANUFAC_LIST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(32900560357845774845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<span style="color:red">*Press Ctrl and Select Manufacturer</span>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG(SML_MANUFAC_ID,'':'') WITHIN GROUP (order by SML_MANUFAC_ID ) selected_val',
'From V_SUPPLIER_MANUFAC_LINK',
'where sml_SUP_ID  = :P19_SUPM_ID'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SUPM_NAME name    , SUPM_ID',
'from V_SUPPLIER_MASTER,V_SETUP_TABLE',
'where st_type = ''MANUFACTURE_TYPE''',
'and st_code =supm_manufac_type',
'and supm_supplier_type =''MANUFACTURER''',
'and supm_manufac_type in (''EX-FACTORY'',''DELIVERED'')',
'order by 1'))
,p_cHeight=>5
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'MOVE')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32900561565588774846)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32900561395893774846)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32900562332819774848)
,p_event_id=>wwv_flow_imp.id(32900561565588774846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33587301362071266836)
,p_name=>'Hide Show Manufacturer Type/ List'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P19_SUPM_SUPPLIER_TYPE'
,p_condition_element=>'P19_SUPM_SUPPLIER_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'MANUFACTURER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33587301709765266838)
,p_event_id=>wwv_flow_imp.id(33587301362071266836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_SUPM_MANUFAC_TYPE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33587302195472266839)
,p_event_id=>wwv_flow_imp.id(33587301362071266836)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_MANUFAC_LIST'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33587415260061292644)
,p_event_id=>wwv_flow_imp.id(33587301362071266836)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_MANUFAC_LIST'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33587424796126296806)
,p_event_id=>wwv_flow_imp.id(33587301362071266836)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_SUPM_MANUFAC_TYPE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34068346359150210046)
,p_event_id=>wwv_flow_imp.id(33587301362071266836)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_MANUFAC_LIST'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(137801095552139115)
,p_event_id=>wwv_flow_imp.id(33587301362071266836)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_SUPM_MANUFAC_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select SUPM_MANUFAC_TYPE',
' from V_SUPPLIER_MASTER',
' where SUPM_ID =:P19_SUPM_ID'))
,p_attribute_07=>'P19_SUPM_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(34068349398792213652)
,p_event_id=>wwv_flow_imp.id(33587301362071266836)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_SUPM_MANUFAC_TYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44771841679610870)
,p_event_id=>wwv_flow_imp.id(33587301362071266836)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_MANUFAC_LIST'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG(SML_MANUFAC_ID,'':'') WITHIN GROUP (order by SML_MANUFAC_ID ) selected_val',
'From V_SUPPLIER_MANUFAC_LINK',
'where sml_SUP_ID  = :P19_SUPM_ID'))
,p_attribute_07=>'P19_SUPM_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(92503825787283793)
,p_name=>'New_1'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(33594185652151386665)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'loadtree'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(92503912883283794)
,p_event_id=>wwv_flow_imp.id(92503825787283793)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(33594185652151386665)
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG(sml_manufac_id, '':'') WITHIN GROUP (ORDER BY sml_manufac_id) val',
'from V_SUPPLIER_MANUFAC_LINK ',
'where  sml_sup_id = :P19_SUPM_ID;'))
,p_attribute_07=>'P19_SUPM_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(90325821327974080)
,p_name=>'Select Value Manufacturer Tree'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(90325888578974081)
,p_event_id=>wwv_flow_imp.id(90325821327974080)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$.each(  $v("P19_MANUFAC_LIST_CHK").split(","), ',
'           function(intIndex, objValue) { ',
'             $("li#"+objValue+".leaf a:first").click();',
'           }',
'      );'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32900602945140774907)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(32900560357845774845)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from V_SUPPLIER_MASTER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>32900654094771603403
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32900603294369774908)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'--insert into error_log values (''rahul inside out '' || :P19_SUPM_ID || ''Ranu''|| :REQUEST);',
'    if :P19_SUPM_ID is null then',
'        select SEQ_SUPM_ID.nextval',
'          into :P19_SUPM_ID',
'          from dual;',
'         -- insert into error_log values (''rahul inside in '' || :P19_SUPM_ID || ''Ranu'' || :REQUEST );',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(32900560727452774845)
,p_internal_uid=>32900654444000603404
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32900603756415774909)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(32900560357845774845)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of  SUPPLIER_MASTER'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>32900654906046603405
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32908206387845832590)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Manufacturer - Shuttle'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_lst_to_del varchar2(4000);',
'  v_count number;',
'  v_del_stmt varchar2(4000);',
'    v_del_flag number := 0;',
'	v_manufac_lst varchar2(4000);',
'  cursor cur_chkbox_val is ',
'	select SUPM_ID ',
'  from V_SUPPLIER_MASTER',
' where SUPM_SUPPLIER_TYPE = ''MANUFACTURER'';',
' ',
'BEGIN',
'if :P19_SUPM_SUPPLIER_TYPE != ''MANUFACTURER'' then',
'	v_manufac_lst := '':'' || replace(:P19_MANUFAC_LIST,'', '','':'') || '':'';',
'	for i in cur_chkbox_val loop',
'		insert into error_log (el_text) values (''rahul inside for loop '' || i.SUPM_ID);',
'		if instr(v_manufac_lst,'':''||i.SUPM_ID||'':'') > 0 then',
'        insert into error_log (el_text) values (''rahul inside if block of ''  || i.SUPM_ID);',
'			select count (1)',
'			into	v_count',
'			  from V_SUPPLIER_MANUFAC_LINK',
'				where SML_SUP_ID = :P19_SUPM_ID',
'				 and SML_MANUFAC_ID = i.SUPM_ID;',
'              insert into error_log (el_text) values (''rahul count '' ||  v_count);  ',
'			if v_count = 0 then',
'            insert into error_log (el_text) values (''rahul before insert'' || i.SUPM_ID ||''--''|| v_count);',
'				insert into V_SUPPLIER_MANUFAC_LINK(SML_ID,SML_SUP_ID,SML_MANUFAC_ID) --Added column names by Rahul on 15-Sep-25 are it was throwing error due to addition of new audit and tenant id columns',
'					        values (SEQ_SML_ID.nextval,:P19_SUPM_ID, i.SUPM_ID );',
'				insert into error_log (el_text)  values (''rahul after insert'' || i.SUPM_ID);',
'			end if;	',
'			',
'		else',
'		v_lst_to_del := v_lst_to_del || ''''''''|| 	i.SUPM_ID || '''''','';',
'		v_del_flag := 1;',
'		end if;',
'		',
'commit;',
'	end loop;',
'      if v_del_flag != 0 then',
'        v_lst_to_del := ''('' || SUBSTR(v_lst_to_del , 1, INSTR(v_lst_to_del , '','', -1)-1) || '')'';  ',
'		v_del_stmt := ''	delete from V_SUPPLIER_MANUFAC_LINK where SML_SUP_ID = ''||:P19_SUPM_ID ||'' and SML_MANUFAC_ID in '' || v_lst_to_del;',
'        EXECUTE IMMEDIATE v_del_stmt;',
'        v_del_flag := 0;',
'	 end if;',
'	 ',
'       -- insert into error_log () values (''rahul list to del -- '' || v_del_stmt);',
'',
'elsif :P19_SUPM_SUPPLIER_TYPE = ''MANUFACTURER'' then',
'    delete from V_SUPPLIER_MANUFAC_LINK where SML_SUP_ID =:P19_SUPM_ID ;',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>32908257537476661086
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    tab apex_application_global.vc_arr2;',
'begin',
'insert into error_log values (''loop'');',
'    tab := apex_util.string_to_table (:P19_MANUFAC_LIST);',
'    insert into error_log values (''brfore loop'');',
'    for i in 1..tab.count loop',
'    insert into error_log values (''in loop'' || tab(i) || ''aaaa''|| i);',
'        insert into V_SUPPLIER_MANUFAC_LINK ',
'        values (SEQ_SML_ID.nextval,:P19_SUPM_ID, tab(i) );',
'    end loop;',
'end;'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32900604132992774909)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(32900560971103774845)
,p_internal_uid=>32900655282623603405
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32900604520403774912)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>32900655670034603408
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38344300712494)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(103341412661220494)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Contact Detail - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'Error while saving contact(s).'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Contact(s) saved successfully.'
,p_internal_uid=>21651412255113371
);
wwv_flow_imp.component_end;
end;
/
