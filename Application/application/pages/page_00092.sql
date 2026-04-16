prompt --application/pages/page_00092
begin
--   Manifest
--     PAGE: 00092
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
 p_id=>92
,p_name=>'Sales Contract List Detail'
,p_alias=>'SALES-CONTRACT-LIST-DETAIL'
,p_step_title=>'Sales Contract List Detail'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script src="#APP_FILES#costing.js">',
'    var V_MLD_QTY_PF;',
'function testRanu()',
'{',
'        var ig$ = apex.region("product_details").widget();',
'	        view = ig$.interactiveGrid("getViews", "grid").model;',
'        //  view = apex.region("product_details").call("getCurrentView");',
'    ',
'        var i, records, record, qty, model,cubic_space;',
'        var tmp_cubic = 0;',
'                alert(''fdfsf'');    ',
'    ',
'   //  if ( view.supports.edit ) { // make sure this is the editable view',
'                 //   model = view.model;',
'         gRecord = apex.region("product_details").widget().interactiveGrid("getSelectedRecords")[0];  ',
'         V_MLD_QTY_PF = $v(''MLD_QTY_PF'')== ''''?0:$v(''MLD_QTY_PF'');',
'         alert($v(''MLD_QTY_PF''));',
'         //    qty = model.getFieldKey("MLD_QTY_PF");',
'        //  cubic_space = model.getFieldKey("PM_CUBIC_SPACE");',
'                           ',
'                          // }',
'               ',
'}',
'</script>',
'<script src="#APP_FILES#app_setup_config#MIN#.js"></script>  <!-- Added by Rahul on 14-Apr-26 to fetch setup values -->'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var qty;',
'var cubic_space;',
'',
'// create a private scope where $ is set to apex.jQuery',
'(function($) {',
'    // This function processes the current selection. It increases the salary ',
'    // field of each selected row by the given percent',
'    function calcCubic(pCallingFrom) {',
'			var i, records, record, view, model;',
'			view = apex.region("product_details").call("getCurrentView");',
'			model = view.model;',
'            var i, records, record,  model;',
'            var tmp_cubic = 0;',
'        ',
'                if ( view.supports.edit ) { // make sure this is the editable view',
'                    ',
'                   if (pCallingFrom == ''MENU_ACTION'')',
'                    {',
'                        records = view.getSelectedRecords();',
'                        for ( i = 0; i < records.length; i++ ) {',
'                            record = records[i];',
'                            qty = parseFloat(model.getValue(record, "MLD_QTY_PF"));',
'                            cubic_space = parseFloat(model.getValue(record, "PM_CUBIC_SPACE"));',
'                            if ( !isNaN(qty) ) {',
'                                 tmp_cubic = tmp_cubic + (qty * cubic_space) ;',
'                            }',
'                        }',
'					}',
'					else if (pCallingFrom == ''ON_CHANGE'')',
'                        { ',
'                            model.forEach(function(igrow) {',
'                                qty = model.getFieldKey("MLD_QTY_PF");',
'                                    //$v(''MLD_QTY_PF'')== ''''?0:$v(''MLD_QTY_PF'');',
'                                ',
'                                cubic_space = model.getFieldKey("PM_CUBIC_SPACE");',
'                                    //$v(''PM_CUBIC_SPACE'')== ''''?0:$v(''PM_CUBIC_SPACE'');',
'                                ',
'								//alert(qty + " - " + qty1);                               ',
'                                ',
'                            if ( !isNaN(igrow[qty]) ) {',
'                                 tmp_cubic = tmp_cubic + (igrow[qty] * igrow[cubic_space]) ;',
'                                //model.setValue(record, "SAL", "" + qty); // turn the number back into a string!',
'                                //alert(tmp_cubic + ''tmp_cubic'');',
'                            }',
'                            record = parseInt(record) +1;',
'                                       ',
'                            });',
'                        }',
'                    ',
'                //$s("ig_mld_ig_toolbar_TotalCubicStatic",''Total Cubic - '' ); ',
'				$s("ig_mld_ig_toolbar_TotalCubic",parseFloat(tmp_cubic).toFixed(2));',
'            }',
'        ',
'			/*Called onload and IG Save*/',
'			if (pCallingFrom == ''ML_CUBIC'')',
'                    {',
'        					 model.forEach(function(igrow) {',
'                                qty = model.getFieldKey("MLD_QUANTITY");                            ',
'                                cubic_space = model.getFieldKey("PM_CUBIC_SPACE");',
'',
'                            if ( !isNaN(igrow[qty]) ) {',
'                                 tmp_cubic = tmp_cubic + (igrow[qty] * igrow[cubic_space]) ;',
'                            }',
'                            record = parseInt(record) +1;                                       ',
'                            });',
'							',
'						$s("ig_mld_ig_toolbar_TotalMLCubic",parseFloat(tmp_cubic).toFixed(2));',
'					}',
'    }',
'    // expose this function so it can be called from the Increase Salary ',
'    // dialog OK button DA. Normally you would put it in your own app/page namespace.',
'    window.calcCubic = calcCubic;',
'})(apex.jQuery);'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'fdisp_calc_type(''SALES_CONTRACT'');',
'',
'AppConfig.init("PROD_CALC_MST", ["ALWAYS_CONSIDER_20FT_STW","PROFIT_AMT_CALC_ON_PURCHASE_AMT"]);    //Added by Rahul on 14-Apr-26 to fetch setup values',
'',
'// add action to selection menu',
'/* Commented by Rahul on 29-Jan-25 as this was throwing error when IG was set as never start',
'',
'var view = apex.region("product_details").call("getViews", "grid"),',
'    item = {',
'        type:"action",',
'        action: "selection-total-cubic"',
'    },',
'    menu$ = view.selActionMenu$;',
'    // to modify the row action menu use view.rowActionMenu$',
'',
'// now add items to the menu that reference actions added to the IG',
'// see IG attribute Advanced JavaScript Code',
'menu$.menu("option").items.push(item);',
'// also add to the Actions -> Selection menu',
'apex.region("product_details").call("getToolbar")',
'    .toolbar("find", "selection_submenu").menu.items.push(item);',
'//To load ML(Master List) Cubic on page load',
'calcCubic (''ML_CUBIC'');',
'Commented by Rahul on 29-Jan-25 as this was throwing error when IG was set as never end */',
'',
'// At one point the OK and Cancel buttons had the js-ignoreChange class added',
'// no idea why. Seems strange that the option to warn on unsaved changes or not goes away',
'// when the button is defined by a dynamic action (A DA could submit or cause navigation).',
'// After playing around with the buttons the js-icnoreChange class was removed; no idea why.',
'// It is important that buttons to close the inline dialog do not have js-ignoreChange',
'// because it breaks the warn on unsaved changes feature.',
'//apex.jQuery("#increaseSalaryDialog").find("button.js-ignoreChange").removeClass("js-ignoreChange");',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var V_MLD_QTY_PF = 0;',
'var qty;',
'var cubic_space;',
'',
'// create a private scope where $ is set to apex.jQuery',
'(function($) {',
'    // This function processes the current selection. It increases the salary ',
'    // field of each selected row by the given percent',
'    function calcCubic(pCallingFrom) {',
'      // view = ig$.interactiveGrid("getCurrentView");',
'               ',
'        	var ig$ = apex.region("product_details").widget();',
'	        view = ig$.interactiveGrid("getViews", "grid");',
'        ',
'                var i, records, record,  model;',
'              //  view = apex.region("product_details").call("getCurrentView");',
'                var tmp_cubic = 0;',
'                //alert(pCallingFrom);    ',
'                if ( view.supports.edit ) { // make sure this is the editable view',
'                    model = view.model;',
'                   if (pCallingFrom == ''MENU_ACTION'')',
'                    {',
'                        records = view.getSelectedRecords();',
'                        for ( i = 0; i < records.length; i++ ) {',
'                            record = records[i];',
'                            qty = parseFloat(model.getValue(record, "MLD_QTY_PF"));',
'                            cubic_space = parseFloat(model.getValue(record, "PM_CUBIC_SPACE"));',
'                            if ( !isNaN(qty) ) {',
'                                 tmp_cubic = tmp_cubic + (qty * cubic_space) ;',
'                                //model.setValue(record, "SAL", "" + qty); // turn the number back into a string!',
'                                //alert(tmp_cubic);',
'                            }',
'                        }',
'					}',
'					else if (pCallingFrom == ''ON_CHANGE'')',
'                        { ',
'                        //  gRecord = apex.region("product_details").widget().interactiveGrid("getSelectedRecords")[0];  ',
'',
'                           // V_MLD_QTY_PF = $v(''MLD_QTY_PF'')== ''''?0:$v(''MLD_QTY_PF'');',
'                           // alert(V_MLD_QTY_PF);',
'                            ',
'                           var vtc =  $v("ig_mld_ig_toolbar_TotalCubic")== ''''?0:$v(''ig_mld_ig_toolbar_TotalCubic'');',
'                           alert(vtc + ''tst'');',
'                            ',
'                           //tmp_cubic = vtc;',
'                           //tmp_cubic = tmp_cubic + (igrow[qty] * igrow[cubic_space]) ;',
'                            model.forEach(function(igrow) {',
'                                qty = $v(''MLD_QTY_PF'')== ''''?0:$v(''MLD_QTY_PF'');',
'                                    //model.getFieldKey("MLD_QTY_PF");',
'                                cubic_space = $v(''PM_CUBIC_SPACE'')== ''''?0:$v(''PM_CUBIC_SPACE'');',
'                                    //model.getFieldKey("PM_CUBIC_SPACE");',
'                                //alert(igrow[qty] + " - " + igrow[cubic_space]);                               ',
'                                ',
'                            if ( !isNaN(igrow[qty]) ) {',
'                                 tmp_cubic = tmp_cubic + (igrow[qty] * igrow[cubic_space]) ;',
'                                //model.setValue(record, "SAL", "" + qty); // turn the number back into a string!',
'                                //alert(tmp_cubic + ''tmp_cubic'');',
'                            }',
'                            record = parseInt(record) +1;',
'                                       ',
'                            })',
'                        }',
'                    ',
'                //$s("ig_mld_ig_toolbar_TotalCubicStatic",''Total Cubic - '' ); ',
'				$s("ig_mld_ig_toolbar_TotalCubic",parseFloat(tmp_cubic).toFixed(2));',
'            }',
'    }',
'    // expose this function so it can be called from the Increase Salary ',
'    // dialog OK button DA. Normally you would put it in your own app/page namespace.',
'    window.calcCubic = calcCubic;',
'})(apex.jQuery);',
'',
'',
''))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1018598769440723635)
,p_plug_name=>'<span style="color:#0572CE">Sales Contract List</span>'
,p_icon_css_classes=>'fa-list'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'V_MASTER_LIST'
,p_query_order_by=>'ML_ID'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(451023357170409487)
,p_plug_name=>'Linked Enquiries'
,p_parent_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EOM_ENQ_ID,',
'	   EOM_ENQ_NO,',
'       EOM_INVOICE_NO,',
'       EOM_ENQ_STATUS,',
'       EOM_ORDER_STATUS,',
'       EOM_PORT_OF_LOADING,',
'       EOM_PORT_OF_DISCHARGE',
'  from V_ENQUIRIES_ORDERS_MST',
' where EOM_CUSTOMER_ID = :P92_ML_CUSTOMER_ID',
'AND EOM_ENQ_STATUS <> ''RJ''',
'AND EOM_SALES_CONTRACT_ID = :P92_ML_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P92_ML_CUSTOMER_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P92_ML_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Linked Enquiries'
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
 p_id=>wwv_flow_imp.id(451025338261409507)
,p_name=>'EOM_PORT_OF_LOADING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_PORT_OF_LOADING'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Port of Loading'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(125445073747185185)
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(453420985051973603)
,p_name=>'EOM_PORT_OF_DISCHARGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_PORT_OF_DISCHARGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Port of Discharge'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(21846006078433071639)
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(454824866583202585)
,p_name=>'EOM_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(454824964063202586)
,p_name=>'EOM_ENQ_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'ENQ Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(163832754767148237)
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
 p_id=>wwv_flow_imp.id(454825003835202587)
,p_name=>'EOM_ORDER_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ORDER_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Order Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(163833101712165487)
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
 p_id=>wwv_flow_imp.id(454825142153202588)
,p_name=>'EOM_ENQ_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'ENQ No'
,p_heading_alignment=>'LEFT'
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
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EOM_ENQ_NO d,EOM_ENQ_NO r',
'from V_ENQUIRIES_ORDERS_MST',
'where EOM_ENQ_STATUS != ''RJ''',
'and EOM_CUSTOMER_ID = :P92_ML_CUSTOMER_ID',
'AND (EOM_SALES_CONTRACT_ID IS NULL OR EOM_SALES_CONTRACT_ID = :P92_ML_ID)'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'- Select Enquiry -'
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
 p_id=>wwv_flow_imp.id(454825372491202590)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(454825469256202591)
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
 p_id=>wwv_flow_imp.id(454825619749202593)
,p_name=>'EOM_INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_INVOICE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_item_attributes=>'readonly="readonly"'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(451023462954409488)
,p_internal_uid=>531074306341045214
,p_is_editable=>true
,p_edit_operations=>'i:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:PDF'
,p_enable_mail_download=>false
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(453424989967984795)
,p_interactive_grid_id=>wwv_flow_imp.id(451023462954409488)
,p_static_id=>'683146'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(453425111880984796)
,p_report_id=>wwv_flow_imp.id(453424989967984795)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(453441855088984863)
,p_view_id=>wwv_flow_imp.id(453425111880984796)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(451025338261409507)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(453483058972985015)
,p_view_id=>wwv_flow_imp.id(453425111880984796)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(453420985051973603)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(454831079448210176)
,p_view_id=>wwv_flow_imp.id(453425111880984796)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(454824866583202585)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(454832056649210183)
,p_view_id=>wwv_flow_imp.id(453425111880984796)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(454824964063202586)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(454833074260210188)
,p_view_id=>wwv_flow_imp.id(453425111880984796)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(454825003835202587)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(454833942668210191)
,p_view_id=>wwv_flow_imp.id(453425111880984796)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(454825142153202588)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(455221568953459338)
,p_view_id=>wwv_flow_imp.id(453425111880984796)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(454825372491202590)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(455622956243114293)
,p_view_id=>wwv_flow_imp.id(453425111880984796)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(454825619749202593)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(473104156487760191)
,p_plug_name=>'Product Details'
,p_region_name=>'product_details'
,p_parent_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>5
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
'       MLD_SCHEME_AMT ,',
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
'       null MLD_QTY_PF,',
'       eom_enq_no,',
'       eom_invoice_no,',
'       cm_name,',
'       nvl(MLD_CUBIC_SPACE,pm_cubic_space) pm_cubic_space,',
'       MLD_GROSS_WT,',
'       MLD_NET_WT,',
'       MLD_LENGTH,',
'       MLD_BREADTH,',
'       MLD_HEIGHT,',
'       MLD_CUBIC_SPACE,',
'       MLD_VERIFIED,',
'       MLD_GODOWN_CHARGES,',
'       MLD_TESTING_CHARGES,',
'       MLD_CALC_AMT_UNITWISE,',
'       MLD_COSTING_UNIT,',
'       MLD_STW_RND_40,',
'       MLD_STW_RND_40HC,',
'       MLD_CALC_AMT_UNITWISE_RND,',
'       MLD_EXCLUDE_PDI_RPT,',
'       MLD_PROFIT_PERC_GST_PURCHASE,',
'       MLD_FOC_FLAG,',
'       nvl((select nvl(mld_quantity,0) - sum(nvl(eod_quantity,0)) ',
'        from ENQUIRIES_ORDERS_MST, ENQUIRIES_ORDERS_DETAILS',
'        where eom_sales_contract_id = :P92_ML_ID',
'        and eom_enq_id = eod_enq_id',
'        and eod_product_id = mld_product_id),nvl(mld_quantity,0)) rem_qty',
'  from MASTER_LIST_DETAILS, ENQUIRIES_ORDERS_MST, CUSTOMER_MASTER, PRODUCT_MASTER',
' where MLD_ML_ID = :P92_ML_ID',
' and eom_customer_id = cm_id (+)',
' and mld_enq_id = eom_enq_id (+)',
' and mld_product_id = pm_id'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P92_ML_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P92_ML_ID'
,p_prn_page_header=>'Master List Detail'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(243694092235267)
,p_name=>'REM_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REM_QTY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Balance<br>Qty.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>940
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'REM_QTY'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(243950740235269)
,p_name=>'MLD_FOC_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOC_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'FOC Flag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>920
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
 p_id=>wwv_flow_imp.id(244360043235273)
,p_name=>'EOD_SCHEME_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_SCHEME_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Scheme Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>900
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21368407693165601)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21368515955165602)
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
 p_id=>wwv_flow_imp.id(34549795223100561)
,p_name=>'MLD_CUBIC_SPACE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CUBIC_SPACE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cubic Space'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>790
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
 p_id=>wwv_flow_imp.id(34549931611100562)
,p_name=>'MLD_VERIFIED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_VERIFIED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>800
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
 p_id=>wwv_flow_imp.id(34550030061100563)
,p_name=>'EOD_GODOWN_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_GODOWN_CHARGES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Godown<br>Chgs'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>810
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
 p_id=>wwv_flow_imp.id(34550151365100564)
,p_name=>'EOD_TESTING_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_TESTING_CHARGES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Testing<br>Chgs'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>820
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
 p_id=>wwv_flow_imp.id(34550220214100565)
,p_name=>'EOD_CALC_AMT_UNITWISE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CALC_AMT_UNITWISE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Calc Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>830
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
 p_id=>wwv_flow_imp.id(34550381341100566)
,p_name=>'EOD_COSTING_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_COSTING_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Costing<br>Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>840
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(34550458695100567)
,p_name=>'EOD_STW_RND_40'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_STW_RND_40'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stw 40Ft.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>850
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
 p_id=>wwv_flow_imp.id(34550536661100568)
,p_name=>'EOD_STW_RND_40HC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_STW_RND_40HC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stw 40HC FT.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>860
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
 p_id=>wwv_flow_imp.id(34550655057100569)
,p_name=>'EOD_CALC_AMT_UNITWISE_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CALC_AMT_UNITWISE_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Calc Amt<br>Rounded'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>870
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
 p_id=>wwv_flow_imp.id(34550777717100570)
,p_name=>'EOD_EXCLUDE_PDI_RPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_EXCLUDE_PDI_RPT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Exclude<br>PDI Report'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>880
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
 p_id=>wwv_flow_imp.id(34550880611100571)
,p_name=>'EOD_PROFIT_PERC_GST_PURCHASE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_PROFIT_PERC_GST_PURCHASE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Profit %<BR>GST  Purchase'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>890
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_PROFIT_PERC_GST_PURCHASE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473063022291760137)
,p_name=>'EOD_CIR_DISPLAY_NAME'
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
 p_id=>wwv_flow_imp.id(473063714775760138)
,p_name=>'EOD_COSTING_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_COSTING_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Costing<br>Remarks'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473064302808760138)
,p_name=>'EOD_HSN_CODE'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473064911334760139)
,p_name=>'EOD_STW_RND_20'
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
,p_static_id=>'EOD_STW_RND_20'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473065451094760139)
,p_name=>'MLD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473066036287760139)
,p_name=>'MLD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473066646401760140)
,p_name=>'MLD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473067239576760140)
,p_name=>'MLD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473067888353760141)
,p_name=>'EOD_INSURANCE_PERC'
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
,p_static_id=>'EOD_INSURANCE_PERC'
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
 p_id=>wwv_flow_imp.id(473068469790760141)
,p_name=>'EOD_TOTAL_GST_PERC'
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
,p_static_id=>'EOD_TOTAL_GST_PERC'
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
 p_id=>wwv_flow_imp.id(473069033687760142)
,p_name=>'EOD_CGST_PERC'
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
 p_id=>wwv_flow_imp.id(473069720149760142)
,p_name=>'EOD_SGST_PERC'
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
 p_id=>wwv_flow_imp.id(473070274060760142)
,p_name=>'EOD_ECGC_PERC'
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
,p_static_id=>'EOD_ECGC_PERC'
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
 p_id=>wwv_flow_imp.id(473070904666760143)
,p_name=>'EOD_BANK_COMM_PERC'
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
,p_static_id=>'EOD_BANK_COMM_PERC'
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
 p_id=>wwv_flow_imp.id(473071509444760143)
,p_name=>'EOD_INCOME_TAX_PERC'
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
,p_static_id=>'EOD_INCOME_TAX_PERC'
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
 p_id=>wwv_flow_imp.id(473072041841760144)
,p_name=>'EOD_COSTING_TYPE'
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
,p_static_id=>'EOD_COSTING_TYPE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473072666176760144)
,p_name=>'EOD_CNI_AMT_RND'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473073298715760144)
,p_name=>'EOD_CNIC_AMT'
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
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CNIC_AMT'
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
 p_id=>wwv_flow_imp.id(473073870665760145)
,p_name=>'EOD_CNI_AMT'
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
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CNI_AMT'
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
 p_id=>wwv_flow_imp.id(473074452039760145)
,p_name=>'EOD_CIF_AMT_RND'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473075056772760146)
,p_name=>'EOD_CIFC_AMT'
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
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CIFC_AMT'
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
 p_id=>wwv_flow_imp.id(473075678862760146)
,p_name=>'EOD_CIF_AMT'
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
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CIF_AMT'
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
 p_id=>wwv_flow_imp.id(473076302913760146)
,p_name=>'EOD_INSURANCE_AMT'
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
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_INSURANCE_AMT'
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
 p_id=>wwv_flow_imp.id(473076915543760147)
,p_name=>'EOD_CANDF_AMT_RND'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473077496934760147)
,p_name=>'EOD_CANDFC_AMT'
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
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_CANDFC_AMT'
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
 p_id=>wwv_flow_imp.id(473078056617760148)
,p_name=>'EOD_CANDF_AMT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473078628156760148)
,p_name=>'EOD_FRT_PER_CTN'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473079296404760148)
,p_name=>'EOD_OCEAN_FRT'
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
,p_static_id=>'EOD_OCEAN_FRT'
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
 p_id=>wwv_flow_imp.id(473079859421760149)
,p_name=>'EOD_FOB_DOLL_RND'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473080433571760149)
,p_name=>'EOD_FOBC_AMT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473081046641760149)
,p_name=>'EOD_COMMISSION_PERC'
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
,p_static_id=>'EOD_COMMISSION_PERC'
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
 p_id=>wwv_flow_imp.id(473081696932760150)
,p_name=>'EOD_FOB_DOLL'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473082241851760150)
,p_name=>'EOD_FOB_RS'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473082873955760151)
,p_name=>'EOD_EXCHANGE_RATE'
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
,p_static_id=>'EOD_EXCHANGE_RATE'
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
 p_id=>wwv_flow_imp.id(473083422507760151)
,p_name=>'EOD_INTEREST_AMT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473084025508760151)
,p_name=>'EOD_INTEREST_PERC'
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
,p_static_id=>'EOD_INTEREST_PERC'
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
 p_id=>wwv_flow_imp.id(473084659295760152)
,p_name=>'EOD_BANK_COMM'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473085263869760152)
,p_name=>'EOD_ECGC'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473085852894760153)
,p_name=>'EOD_DUTY_AMT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473086423190760153)
,p_name=>'EOD_DUTY_PERC'
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
,p_static_id=>'EOD_DUTY_PERC'
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
 p_id=>wwv_flow_imp.id(473087101617760153)
,p_name=>'EOD_INCOME_TAX'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473087669282760154)
,p_name=>'EOD_PROFIT_AMT'
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
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_PROFIT_AMT'
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
 p_id=>wwv_flow_imp.id(473088264742760154)
,p_name=>'EOD_PROFIT_PERC'
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
,p_static_id=>'EOD_PROFIT_PERC'
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
 p_id=>wwv_flow_imp.id(473088883520760155)
,p_name=>'EOD_VOL_FOB_EXP'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473089433823760155)
,p_name=>'EOD_VOL_FOB_AMT'
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
,p_static_id=>'EOD_VOL_FOB_AMT'
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
 p_id=>wwv_flow_imp.id(473090026750760155)
,p_name=>'EOD_NET_PURCHASE_VAL'
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
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_NET_PURCHASE_VAL'
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
 p_id=>wwv_flow_imp.id(473090687477760156)
,p_name=>'EOD_EXTRA'
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
,p_static_id=>'EOD_EXTRA'
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
 p_id=>wwv_flow_imp.id(473091268849760156)
,p_name=>'EOD_REPACKING'
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
,p_static_id=>'EOD_REPACKING'
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
 p_id=>wwv_flow_imp.id(473091916439760156)
,p_name=>'EOD_RECOV_ON_FRT'
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
,p_static_id=>'EOD_RECOV_ON_FRT'
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
 p_id=>wwv_flow_imp.id(473092481267760157)
,p_name=>'EOD_BAGS_CTNS'
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
,p_static_id=>'EOD_BAGS_CTNS'
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
 p_id=>wwv_flow_imp.id(473093040173760157)
,p_name=>'EOD_TRANS_CHARGES'
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
,p_static_id=>'EOD_TRANS_CHARGES'
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
 p_id=>wwv_flow_imp.id(473093690935760158)
,p_name=>'EOD_GST_AMT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473094267920760158)
,p_name=>'EOD_GST_PERC'
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
,p_static_id=>'EOD_GST_PERC'
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
 p_id=>wwv_flow_imp.id(473094909829760158)
,p_name=>'EOD_DISCOUNT_AMT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473095445297760159)
,p_name=>'EOD_DISCOUNT_PERC'
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
,p_static_id=>'EOD_DISCOUNT_PERC'
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
 p_id=>wwv_flow_imp.id(473096680808760160)
,p_name=>'EOD_SCHEME_PERC'
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
,p_static_id=>'EOD_SCHEME_PERC'
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
 p_id=>wwv_flow_imp.id(473097320958760160)
,p_name=>'EOD_PURCHASE_AMT'
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
,p_static_id=>'EOD_PURCHASE_AMT'
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
 p_id=>wwv_flow_imp.id(473097848071760160)
,p_name=>'EOD_TRADE_PRICE'
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
,p_static_id=>'EOD_TRADE_PRICE'
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
 p_id=>wwv_flow_imp.id(473098448329760161)
,p_name=>'EOD_MRP'
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
,p_static_id=>'EOD_MRP'
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
 p_id=>wwv_flow_imp.id(473099076918760161)
,p_name=>'EOD_QUANTITY'
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
,p_static_id=>'EOD_QUANTITY'
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
 p_id=>wwv_flow_imp.id(473099629315760162)
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
 p_id=>wwv_flow_imp.id(473100289583760162)
,p_name=>'EOD_PRODUCT_ID'
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
,p_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_PRODUCT_ID,P29_MANUFAC_ID,P29_COSTING_TYPE,P29_CUSTOMER_ID,P29_EOM_ENQ_ID:&EOD_PRODUCT_ID.,&MLD_MANUFAC_ID.,SYSTEM_LEVEL,&P92_ML_CUSTOMER_ID.,'
,p_link_attributes=>'class="t-Button-col t-Button--stretch"  width=100% height=100%'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'EOD_PRODUCT_ID'
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
 p_id=>wwv_flow_imp.id(473100911158760162)
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
 p_id=>wwv_flow_imp.id(473101433093760163)
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
,p_default_expression=>'P92_ML_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(473102088379760164)
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
 p_id=>wwv_flow_imp.id(474536120386249342)
,p_name=>'MLD_QTY_PF'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Add<br>Qty.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>690
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_static_id=>'MLD_QTY_PF'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(684879957928290015)
,p_name=>'PM_CUBIC_SPACE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_CUBIC_SPACE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cubic Space'
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(684880248306290018)
,p_name=>'CM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>720
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(684880312327290019)
,p_name=>'EOM_INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_INVOICE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>710
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(684880470677290020)
,p_name=>'EOM_ENQ_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>700
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15444943064468641212)
,p_name=>'MLD_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_HEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Height'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>780
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
 p_id=>wwv_flow_imp.id(15444943122465641213)
,p_name=>'MLD_BREADTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_BREADTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Breadth'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>770
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
 p_id=>wwv_flow_imp.id(15444943269305641214)
,p_name=>'MLD_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_LENGTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Length'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>760
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
 p_id=>wwv_flow_imp.id(15444943349865641215)
,p_name=>'EOD_NET_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_NET_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Net Wt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>750
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_NET_WT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15444943440782641216)
,p_name=>'MLD_GROSS_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_GROSS_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Gross Wt'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(473103781162760190)
,p_internal_uid=>473103781162760190
,p_is_editable=>true
,p_edit_operations=>'u:d'
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
'  toolbarGroup.controls.push(',
'  {',
'    type: "BUTTON",',
'    action: "addtoProforma",',
'    icon: "fa fa-thumbs-up fam-check fam-is-success",',
'    iconBeforeLabel: true,',
'    hot: true,',
'    //class : "t-Button t-Button--icon t-Button--warning"',
'  },',
'  {',
'    type: "STATIC",',
'    id: "TotalCubicStatic",',
'    label: "Total Cubic"',
'  },',
'  {',
'    type: "STATIC",',
'    id: "TotalCubic",',
'    label: "0.00"',
'  },',
'  {',
'    type: "STATIC",',
'    id: "TotalMLCubicStatic",',
'    label: "Total ML Cubic"',
'  },',
'  {',
'    type: "STATIC",',
'    id: "TotalMLCubic",',
'    label: "0.00"',
'  }',
'  );',
'   ',
'  config.toolbarData = toolbarData;',
'  //End - Creating two buttons, removefromProforma and addtoProforma  ',
'  config.initActions = function (actions)',
'  {',
'    // Defining the action for addtoProforma button',
'    actions.add(',
'    {',
'      name: "addtoProforma",',
'      label: "Add to Proforma",',
'      action: addtoProforma',
'    });',
'      ',
'   actions.add({',
'            name: "selection-total-cubic",',
'            // Most places in this app I don''t bother to define a message that can be localized',
'            // but here I do. Note using labelKey rather than label.',
'            //labelKey: "CALCULATE_CUBIC",',
'           labelKey: "Calculate Cubic",',
'            icon: "fa fa-usd fam-arrow-up",',
'            action: function() {',
'                calcCubic(''MENU_ACTION'');            ',
'          }',
'            });',
'			   ',
'  }',
'',
'  function addtoProforma(event, focusElement)',
'  {',
'    var view = apex.region("product_details").widget().interactiveGrid("getCurrentView");',
'',
'    if (view.supports.edit)',
'    {',
'        //apex.region("product_details").widget().interactiveGrid("getActions").invoke("save");',
'        apex.submit(''ADD_PROFORMA'');',
'    }',
'  }',
'',
'   ',
'    // The grid uses traditional paging and the following option allows selecting rows on multiple pages ',
'    config.defaultGridViewOptions = {',
'        persistSelection: true',
'    };  ',
'  ',
'  return config;',
'}',
''))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(473103331517760189)
,p_interactive_grid_id=>wwv_flow_imp.id(473103781162760190)
,p_static_id=>'123213'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(473103271619760189)
,p_report_id=>wwv_flow_imp.id(473103331517760189)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(176656472904092)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(244360043235273)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(820222236213579)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>90
,p_column_id=>wwv_flow_imp.id(243950740235269)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21374861676162845)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(21368407693165601)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>50
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21611108892457543)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(243694092235267)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42647687795655539)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>84
,p_column_id=>wwv_flow_imp.id(34549795223100561)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42648510579655527)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>85
,p_column_id=>wwv_flow_imp.id(34549931611100562)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42649407327655521)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(34550030061100563)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42650341848655515)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(34550151365100564)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42651287049655508)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>62
,p_column_id=>wwv_flow_imp.id(34550220214100565)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42652175882655502)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(34550381341100566)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42653014352655496)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>86
,p_column_id=>wwv_flow_imp.id(34550458695100567)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42653895059655490)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>87
,p_column_id=>wwv_flow_imp.id(34550536661100568)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42654804364655484)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>64
,p_column_id=>wwv_flow_imp.id(34550655057100569)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42655719856655478)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>88
,p_column_id=>wwv_flow_imp.id(34550777717100570)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(42656672433655472)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>89
,p_column_id=>wwv_flow_imp.id(34550880611100571)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(472588186214674878)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(474536120386249342)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473062697152760137)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(473063022291760137)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473063296675760138)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(473063714775760138)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>205
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473063851298760138)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>67
,p_column_id=>wwv_flow_imp.id(473064302808760138)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473064469990760138)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(473064911334760139)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473065057674760139)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>77
,p_column_id=>wwv_flow_imp.id(473065451094760139)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473065643872760139)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>76
,p_column_id=>wwv_flow_imp.id(473066036287760139)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473066291643760140)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>75
,p_column_id=>wwv_flow_imp.id(473066646401760140)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473066836803760140)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>74
,p_column_id=>wwv_flow_imp.id(473067239576760140)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473067521435760140)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>53
,p_column_id=>wwv_flow_imp.id(473067888353760141)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473068078749760141)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(473068469790760141)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473068651384760141)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>58
,p_column_id=>wwv_flow_imp.id(473069033687760142)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473069250729760142)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(473069720149760142)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473069872449760142)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(473070274060760142)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473070452639760143)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(473070904666760143)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473071044784760143)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(473071509444760143)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473071623554760143)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(473072041841760144)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473072318633760144)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>73
,p_column_id=>wwv_flow_imp.id(473072666176760144)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473072833158760144)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>59
,p_column_id=>wwv_flow_imp.id(473073298715760144)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473073436938760145)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>70
,p_column_id=>wwv_flow_imp.id(473073870665760145)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473074066417760145)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>66
,p_column_id=>wwv_flow_imp.id(473074452039760145)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473074719491760145)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>60
,p_column_id=>wwv_flow_imp.id(473075056772760146)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473075317218760146)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>72
,p_column_id=>wwv_flow_imp.id(473075678862760146)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473075858424760146)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>54
,p_column_id=>wwv_flow_imp.id(473076302913760146)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473076477276760147)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>71
,p_column_id=>wwv_flow_imp.id(473076915543760147)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473077033265760147)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>69
,p_column_id=>wwv_flow_imp.id(473077496934760147)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473077629881760147)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>68
,p_column_id=>wwv_flow_imp.id(473078056617760148)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473078248752760148)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>52
,p_column_id=>wwv_flow_imp.id(473078628156760148)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473078896680760148)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>51
,p_column_id=>wwv_flow_imp.id(473079296404760148)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473079511412760148)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>65
,p_column_id=>wwv_flow_imp.id(473079859421760149)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473080109053760149)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>57
,p_column_id=>wwv_flow_imp.id(473080433571760149)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473080639434760149)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>56
,p_column_id=>wwv_flow_imp.id(473081046641760149)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473081309809760150)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>50
,p_column_id=>wwv_flow_imp.id(473081696932760150)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473081844752760150)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(473082241851760150)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473082493357760150)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(473082873955760151)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473083062610760151)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(473083422507760151)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473083705655760151)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(473084025508760151)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473084238253760152)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(473084659295760152)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473084875201760152)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(473085263869760152)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473085444283760152)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(473085852894760153)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473086121132760153)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(473086423190760153)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473086659946760153)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(473087101617760153)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473087256881760153)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(473087669282760154)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473087914848760154)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(473088264742760154)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473088478508760154)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(473088883520760155)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473089052300760155)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(473089433823760155)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473089674985760155)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(473090026750760155)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473090299199760155)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(473090687477760156)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473090908094760156)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(473091268849760156)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473091424815760156)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(473091916439760156)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473092044993760157)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(473092481267760157)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473092654746760157)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(473093040173760157)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473093315599760157)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(473093690935760158)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473093847405760158)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(473094267920760158)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>57
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473094448045760158)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(473094909829760158)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473095085953760159)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(473095445297760159)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>62
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473096276290760159)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(473096680808760160)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473096885931760160)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(473097320958760160)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473097510231760160)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(473097848071760160)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473098075177760160)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(473098448329760161)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473098641829760161)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(473099076918760161)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473099302536760161)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(473099629315760162)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473099899574760162)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(473100289583760162)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>384
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473100484872760162)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(473100911158760162)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473101116558760163)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(473101433093760163)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(473101707540760163)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(473102088379760164)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(684327765535250072)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>78
,p_column_id=>wwv_flow_imp.id(684879957928290015)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(684338805046929008)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(684880248306290018)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>171
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(684339345574929011)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(684880312327290019)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>117
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(684339720713929016)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(684880470677290020)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>144
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15444935593930634152)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>83
,p_column_id=>wwv_flow_imp.id(15444943064468641212)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15444936074254634154)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>82
,p_column_id=>wwv_flow_imp.id(15444943122465641213)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15444936577011634155)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>81
,p_column_id=>wwv_flow_imp.id(15444943269305641214)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15444937027313634157)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>80
,p_column_id=>wwv_flow_imp.id(15444943349865641215)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15444937517784634162)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_display_seq=>79
,p_column_id=>wwv_flow_imp.id(15444943440782641216)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(497893975282081011)
,p_view_id=>wwv_flow_imp.id(473103271619760189)
,p_execution_seq=>5
,p_name=>'Add Qty'
,p_column_id=>wwv_flow_imp.id(474536120386249342)
,p_background_color=>'#7DD1CD'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(474536120386249342)
,p_condition_operator=>'N'
,p_condition_is_case_sensitive=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1018578758049723201)
,p_plug_name=>'Sales Contract List Detail'
,p_region_name=>'product_details'
,p_parent_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MLD_ID,',
'       MLD_ML_ID,',
'       MLD_ENQ_ID,',
'       MLD_MANUFAC_ID,',
'       MLD_PRODUCT_ID,',
'       MLD_QUANTITY,',
'       MLD_MRP,',
'       MLD_TRADE_PRICE,',
'       MLD_PURCHASE_AMT,',
'       MLD_SCHEME_PERC,',
'       MLD_SCHEME_AMT,',
'       MLD_DISCOUNT_PERC,',
'       MLD_DISCOUNT_AMT,',
'       MLD_TOTAL_GST_PERC,',
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
'	   MLD_INCOME_TAX_PERC,',
'       MLD_INCOME_TAX,',
'       MLD_DUTY_PERC,',
'       MLD_DUTY_AMT,',
'	   MLD_ECGC_PERC,',
'       MLD_ECGC,',
'	   MLD_BANK_COMM_PERC,',
'       MLD_BANK_COMM,',
'       MLD_INTEREST_PERC,',
'       MLD_INTEREST_AMT,',
'       MLD_COSTING_TYPE,',
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
'       MLD_CIF_AMT,',
'       MLD_CIFC_AMT,',
'       MLD_CIF_AMT_RND,',
'	   MLD_INSURANCE_AMT,',
'       MLD_CNI_AMT,',
'       MLD_CNIC_AMT,',
'       MLD_CNI_AMT_RND,',
'	   MLD_STW_RND_20,',
'	   MLD_STW_RND_40,',
'	   MLD_QUANTITY *MLD_PURCHASE_AMT  TotalPurchase,',
'	   MLD_VERIFIED,',
'	   MLD_FOC_FLAG,',
'	   round(((nvl(MLD_net_purchase_val,0) + nvl(MLD_SCHEME_AMT,0) + nvl(MLD_DISCOUNT_AMT,0))* nvl(MLD_quantity,0) * nvl(MLD_TOTAL_GST_PERC,0) )/100,2) total_gst ,',
'	   MLD_GODOWN_CHARGES,',
'	   MLD_TESTING_CHARGES,',
'	   MLD_CALC_AMT_UNITWISE,',
'	   MLD_CALC_AMT_UNITWISE_RND,',
'	   mld_costing_unit,	   ',
'       MLD_SGST_PERC,',
'       MLD_CGST_PERC,',
'       MLD_INSURANCE_PERC,',
'	   PM_STW_20,',
'	   PM_STW_40,',
'	   PM_STW_40HC,',
'	   PM_STW_RND_20,',
'	   PM_STW_RND_40,',
'MLD_STW_RND_40HC,',
'	   nvl(PM_PACKAGE_1,PM_PACKAGE_2) * nvl(PM_PACKAGE,1) PM_PACKAGE_1, ',
'	--Multiplied PM_PACKAGE value as it needs to be considered in the calculation of purchase price based on trade price',
'	   pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'			  || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'			  || '' '' || PM_PACKAGE_UNIT pm_name, ',
'upper(PM_BRAND) PM_BRAND,',
'EOM_FRT_AMT,',
'EOM_CURRENT_RATE,',
'EOM_REALISE_RATE,',
'       MLD_CREATED_BY,',
'       MLD_CREATED_ON,',
'       MLD_UPDATED_BY,',
'       MLD_UPDATED_ON,',
'       MLD_HSN_CODE,',
'       MLD_COSTING_REMARKS,',
'       MLD_CIR_DISPLAY_NAME,',
'       null MLD_QTY_PF,',
'       eom_enq_no,',
'       eom_invoice_no,',
'       cm_name,',
'       nvl(MLD_CUBIC_SPACE,pm_cubic_space) pm_cubic_space,',
'       MLD_GROSS_WT,	   ',
'       MLD_NET_WT,  ',
'	   MLD_LENGTH,',
'       MLD_BREADTH,',
'       MLD_HEIGHT',
'  from V_MASTER_LIST_DETAILS, V_ENQUIRIES_ORDERS_MST, V_CUSTOMER_MASTER, V_PRODUCT_MASTER',
' where MLD_ML_ID = :P92_ML_ID',
' and eom_customer_id = cm_id (+)',
' and mld_enq_id = eom_enq_id (+)',
' and mld_product_id = pm_id'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P92_ML_ID'
,p_plug_display_condition_type=>'NEVER'
,p_prn_page_header=>'Master List Detail'
,p_ai_enabled=>false
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Original Contd - P92_ML_ID Item is not null',
'Never done by Rahul to utilize this screen to link enquiries'))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(453421742932973611)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(453421803799973612)
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
 p_id=>wwv_flow_imp.id(454826146750202598)
,p_name=>'MLD_STW_RND_40'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_STW_RND_40'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stw 40Ft.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>880
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
 p_id=>wwv_flow_imp.id(454826252128202599)
,p_name=>'TOTALPURCHASE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTALPURCHASE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Total Purchase<br>Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>780
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(454826312040202600)
,p_name=>'MLD_VERIFIED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_VERIFIED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_RADIOGROUP'
,p_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>790
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(454826473526202601)
,p_name=>'MLD_FOC_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOC_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'FOC Flag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>800
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(30621381686625309)
,p_lov_display_extra=>false
,p_lov_display_null=>true
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
 p_id=>wwv_flow_imp.id(454826517393202602)
,p_name=>'TOTAL_GST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_GST'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'GST Amt.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>820
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(454826606331202603)
,p_name=>'MLD_GODOWN_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_GODOWN_CHARGES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Godown<br>Chgs'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>830
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
 p_id=>wwv_flow_imp.id(454826712746202604)
,p_name=>'MLD_TESTING_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_TESTING_CHARGES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Testing<br>Chgs'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>840
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
 p_id=>wwv_flow_imp.id(454826876255202605)
,p_name=>'MLD_CALC_AMT_UNITWISE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CALC_AMT_UNITWISE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Calc Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>850
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
 p_id=>wwv_flow_imp.id(454826973131202606)
,p_name=>'MLD_CALC_AMT_UNITWISE_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CALC_AMT_UNITWISE_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Calc Amt<br>Rounded'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>900
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
 p_id=>wwv_flow_imp.id(454827073116202607)
,p_name=>'MLD_COSTING_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_COSTING_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Costing<br>Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>860
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
,p_max_length=>50
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
 p_id=>wwv_flow_imp.id(454829368988202630)
,p_name=>'PM_STW_20'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_STW_20'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>630
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'PM_STW_20'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(454829451344202631)
,p_name=>'PM_STW_40'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_STW_40'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>640
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'PM_STW_40'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(454829557776202632)
,p_name=>'PM_STW_40HC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_STW_40HC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>650
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'PM_STW_40HC'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(454829615113202633)
,p_name=>'PM_STW_RND_20'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_STW_RND_20'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>660
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'PM_STW_RND_20'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(454829750438202634)
,p_name=>'PM_STW_RND_40'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_STW_RND_40'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>670
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'PM_STW_RND_40'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458020353357202385)
,p_name=>'PM_PACKAGE_1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_PACKAGE_1'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>620
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PM_PACKAGE_1'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458020458155202386)
,p_name=>'PM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>760
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458020570652202387)
,p_name=>'EOM_FRT_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_FRT_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>700
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'EOM_FRT_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458020662045202388)
,p_name=>'EOM_CURRENT_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_CURRENT_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>710
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'EOM_CURRENT_RATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458020698994202389)
,p_name=>'EOM_REALISE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_REALISE_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>720
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_static_id=>'EOM_REALISE_RATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(458020965010202391)
,p_name=>'MLD_STW_RND_40HC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_STW_RND_40HC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stw 40HC FT.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>890
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
 p_id=>wwv_flow_imp.id(458021123949202393)
,p_name=>'PM_BRAND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_BRAND'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Pm Brand'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>810
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
 p_id=>wwv_flow_imp.id(1018537623853723147)
,p_name=>'MLD_CIR_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CIR_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Display Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>950
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
 p_id=>wwv_flow_imp.id(1018538316337723148)
,p_name=>'MLD_COSTING_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_COSTING_REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Costing<br>Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>770
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
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018538904370723148)
,p_name=>'MLD_HSN_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_HSN_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'HSN<br>Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>750
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018539512896723149)
,p_name=>'MLD_STW_RND_20'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_STW_RND_20'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stw 20Ft.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>740
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_STW_RND_20'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018540052656723149)
,p_name=>'MLD_UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_UPDATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>940
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
 p_id=>wwv_flow_imp.id(1018540637849723149)
,p_name=>'MLD_UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>930
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
 p_id=>wwv_flow_imp.id(1018541247963723150)
,p_name=>'MLD_CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CREATED_ON'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>920
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
 p_id=>wwv_flow_imp.id(1018541841138723150)
,p_name=>'MLD_CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>910
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
 p_id=>wwv_flow_imp.id(1018542489915723151)
,p_name=>'MLD_INSURANCE_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INSURANCE_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ins. %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>610
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
,p_enable_pivot=>false
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
 p_id=>wwv_flow_imp.id(1018543071352723151)
,p_name=>'MLD_TOTAL_GST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_TOTAL_GST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'GST %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>730
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018543635249723152)
,p_name=>'MLD_CGST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CGST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>600
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
 p_id=>wwv_flow_imp.id(1018544321711723152)
,p_name=>'MLD_SGST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_SGST_PERC'
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
 p_id=>wwv_flow_imp.id(1018544875622723152)
,p_name=>'MLD_ECGC_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_ECGC_PERC'
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
,p_enable_pivot=>false
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
 p_id=>wwv_flow_imp.id(1018545506228723153)
,p_name=>'MLD_BANK_COMM_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_BANK_COMM_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bank<br>Comm. %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>360
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
,p_enable_pivot=>false
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
 p_id=>wwv_flow_imp.id(1018546111006723153)
,p_name=>'MLD_INCOME_TAX_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INCOME_TAX_PERC'
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
,p_enable_pivot=>false
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
 p_id=>wwv_flow_imp.id(1018546643403723154)
,p_name=>'MLD_COSTING_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_COSTING_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>400
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_static_id=>'EOD_COSTING_TYPE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018547267738723154)
,p_name=>'MLD_CNI_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CNI_AMT_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&I Amt.<br>Rounded'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>570
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018547900277723154)
,p_name=>'MLD_CNIC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CNIC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&I Comm.<br>Amt.'
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
,p_static_id=>'EOD_CNIC_AMT'
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
 p_id=>wwv_flow_imp.id(1018548472227723155)
,p_name=>'MLD_CNI_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CNI_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&I<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>550
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018549053601723155)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018549658334723156)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018550280424723156)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018550904475723156)
,p_name=>'MLD_INSURANCE_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INSURANCE_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ins.<br>Amt.'
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
,p_static_id=>'EOD_INSURANCE_AMT'
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
 p_id=>wwv_flow_imp.id(1018551517105723157)
,p_name=>'MLD_CANDF_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CANDF_AMT_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&F Amt.<br>Rounded'
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
,p_static_id=>'EOD_CANDF_AMT_RND'
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
 p_id=>wwv_flow_imp.id(1018552098496723157)
,p_name=>'MLD_CANDFC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CANDFC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&F Comm.<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>490
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018552658179723158)
,p_name=>'MLD_CANDF_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CANDF_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'C&F<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>480
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018553229718723158)
,p_name=>'MLD_FRT_PER_CTN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FRT_PER_CTN'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Freight/<br>Carton'
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
,p_static_id=>'EOD_FRT_PER_CTN'
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
 p_id=>wwv_flow_imp.id(1018553897966723158)
,p_name=>'MLD_OCEAN_FRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_OCEAN_FRT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Ocean<br>Freight<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>460
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018554460983723159)
,p_name=>'MLD_FOB_DOLL_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOB_DOLL_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB &APP_QUOTE_IN_SYMBOL.<br> Rounded'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>450
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018555035133723159)
,p_name=>'MLD_FOBC_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOBC_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOBC<br>Amt. (&APP_QUOTE_IN_SYMBOL.)'
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
,p_static_id=>'EOD_FOBC_AMT'
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
 p_id=>wwv_flow_imp.id(1018555648203723159)
,p_name=>'MLD_COMMISSION_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_COMMISSION_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Comm. %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>430
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018556298494723160)
,p_name=>'MLD_FOB_DOLL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOB_DOLL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB  (&APP_QUOTE_IN_SYMBOL.)'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>420
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018556843413723160)
,p_name=>'MLD_FOB_RS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_FOB_RS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'FOB  (<span class="fa fa-inr" aria-hidden="true"></span>)'
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
,p_static_id=>'EOD_FOB_RS'
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
 p_id=>wwv_flow_imp.id(1018557475517723161)
,p_name=>'MLD_EXCHANGE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_EXCHANGE_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Exch.<br>Rate<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>5
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_EXCHANGE_RATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018558024069723161)
,p_name=>'MLD_INTEREST_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INTEREST_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Int.<br>Amt.'
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
,p_static_id=>'EOD_INTEREST_AMT'
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
 p_id=>wwv_flow_imp.id(1018558627070723161)
,p_name=>'MLD_INTEREST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INTEREST_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Int.%<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
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
,p_static_id=>'EOD_INTEREST_PERC'
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
 p_id=>wwv_flow_imp.id(1018559260857723162)
,p_name=>'MLD_BANK_COMM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_BANK_COMM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bank<br>Comm.'
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
,p_static_id=>'EOD_BANK_COMM'
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
 p_id=>wwv_flow_imp.id(1018559865431723162)
,p_name=>'MLD_ECGC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_ECGC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ECGC<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>350
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018560454456723163)
,p_name=>'MLD_DUTY_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_DUTY_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duty<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>330
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018561024752723163)
,p_name=>'MLD_DUTY_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_DUTY_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Duty %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down'' style="color:red"></span></button>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
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
,p_enable_pivot=>false
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
 p_id=>wwv_flow_imp.id(1018561703179723163)
,p_name=>'MLD_INCOME_TAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_INCOME_TAX'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Income<br>Tax'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>310
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018562270844723164)
,p_name=>'MLD_PROFIT_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_PROFIT_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Profit<br>Amt.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_width=>5
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_PROFIT_AMT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018562866304723164)
,p_name=>'MLD_PROFIT_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_PROFIT_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Profit %<br><button type=''button'' class=''t-Button t-Button--icon t-Button--noLabel header-button js-actionButton'' data-action=''selection-copy-down'' title=''Copy Down''><span class=''fa fa-clone fam-arrow-down''  style="color:red"></span></button>'
,p_label=>'Profit %'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'990D00'
,p_item_width=>5
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018563485082723165)
,p_name=>'MLD_VOL_FOB_EXP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_VOL_FOB_EXP'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018564035385723165)
,p_name=>'MLD_VOL_FOB_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_VOL_FOB_AMT'
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
,p_enable_pivot=>false
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
 p_id=>wwv_flow_imp.id(1018564628312723165)
,p_name=>'EOD_NET_PURCHASE_VAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_NET_PURCHASE_VAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net<br>Purchase<br>Value'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_attributes=>'readonly="readonly"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_NET_PURCHASE_VAL'
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
 p_id=>wwv_flow_imp.id(1018565289039723166)
,p_name=>'MLD_EXTRA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_EXTRA'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018565870411723166)
,p_name=>'MLD_REPACKING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_REPACKING'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018566518001723166)
,p_name=>'MLD_RECOV_ON_FRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_RECOV_ON_FRT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018567082829723167)
,p_name=>'MLD_BAGS_CTNS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_BAGS_CTNS'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018567641735723167)
,p_name=>'MLD_TRANS_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_TRANS_CHARGES'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018568292497723168)
,p_name=>'MLD_GST_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_GST_AMT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018568869482723168)
,p_name=>'MLD_GST_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_GST_PERC'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018569511391723168)
,p_name=>'MLD_DISCOUNT_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_DISCOUNT_AMT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018570046859723169)
,p_name=>'MLD_DISCOUNT_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_DISCOUNT_PERC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Disc. %'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018570627670723169)
,p_name=>'MLD_SCHEME_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_SCHEME_AMT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018571282370723170)
,p_name=>'MLD_SCHEME_PERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_SCHEME_PERC'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'EOD_SCHEME_PERC'
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
 p_id=>wwv_flow_imp.id(1018571922520723170)
,p_name=>'MLD_PURCHASE_AMT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_PURCHASE_AMT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Purchase<br>Amount'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018572449633723170)
,p_name=>'MLD_TRADE_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_TRADE_PRICE'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018573049891723171)
,p_name=>'MLD_MRP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_MRP'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'MRP'
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
,p_static_id=>'EOD_MRP'
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
 p_id=>wwv_flow_imp.id(1018573678480723171)
,p_name=>'MLD_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018574230877723172)
,p_name=>'MLD_MANUFAC_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_MANUFAC_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Vendor'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'FIRST_ROWSET',
  'submit_when_enter_pressed', 'POPUP',
  'subtype', 'N',
  'text_case', '0',
  'trim_spaces', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'EOD_MANUFAC_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018574891145723172)
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
,p_link_attributes=>'class="t-Button-col t-Button--stretch"  width=100% height=100%'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'EOD_PRODUCT_ID'
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
 p_id=>wwv_flow_imp.id(1018575512720723172)
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
,p_static_id=>'EOD_ENQ_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018576034655723173)
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
,p_default_expression=>'P92_ML_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1018576689941723174)
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
,p_static_id=>'EOD_ID'
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
 p_id=>wwv_flow_imp.id(1020010721948212352)
,p_name=>'MLD_QTY_PF'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Add<br>Qty.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>960
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_static_id=>'MLD_QTY_PF'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1230354559490253025)
,p_name=>'PM_CUBIC_SPACE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_CUBIC_SPACE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Cubic Space'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>1000
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1230354849868253028)
,p_name=>'CM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Customer'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>990
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
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1230354913889253029)
,p_name=>'EOM_INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_INVOICE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Invoice#'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>980
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1230355072239253030)
,p_name=>'EOM_ENQ_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'ENQ#'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>970
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15990417666030604222)
,p_name=>'MLD_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_HEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Height'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>1040
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
 p_id=>wwv_flow_imp.id(15990417724027604223)
,p_name=>'MLD_BREADTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_BREADTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Breadth'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>1030
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
 p_id=>wwv_flow_imp.id(15990417870867604224)
,p_name=>'MLD_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_LENGTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Length'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>1020
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
 p_id=>wwv_flow_imp.id(15990417951427604225)
,p_name=>'MLD_NET_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_NET_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Net Wt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>870
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
 p_id=>wwv_flow_imp.id(15990418042344604226)
,p_name=>'MLD_GROSS_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_GROSS_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Gross Wt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>1010
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1018578382724723200)
,p_internal_uid=>1098629226111358926
,p_is_editable=>true
,p_edit_operations=>'u:d'
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(1018577933079723199)
,p_interactive_grid_id=>wwv_flow_imp.id(1018578382724723200)
,p_static_id=>'123213'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1018577873181723199)
,p_report_id=>wwv_flow_imp.id(1018577933079723199)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(453544298321131082)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(453421742932973611)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456420962423772324)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>77
,p_column_id=>wwv_flow_imp.id(454826146750202598)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456421883625772333)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>78
,p_column_id=>wwv_flow_imp.id(454826252128202599)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456422727489772338)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>79
,p_column_id=>wwv_flow_imp.id(454826312040202600)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456423624927772343)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>80
,p_column_id=>wwv_flow_imp.id(454826473526202601)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456424583155772347)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>81
,p_column_id=>wwv_flow_imp.id(454826517393202602)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456425440636772351)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>82
,p_column_id=>wwv_flow_imp.id(454826606331202603)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456426355433772355)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>83
,p_column_id=>wwv_flow_imp.id(454826712746202604)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456427292396772359)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>84
,p_column_id=>wwv_flow_imp.id(454826876255202605)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456428120813772363)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>85
,p_column_id=>wwv_flow_imp.id(454826973131202606)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(456429010374772367)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>86
,p_column_id=>wwv_flow_imp.id(454827073116202607)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458026303646209309)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>87
,p_column_id=>wwv_flow_imp.id(454829368988202630)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458027204447209316)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>88
,p_column_id=>wwv_flow_imp.id(454829451344202631)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458028153989209321)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>89
,p_column_id=>wwv_flow_imp.id(454829557776202632)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458029017209209325)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>90
,p_column_id=>wwv_flow_imp.id(454829615113202633)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458029923981209328)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>91
,p_column_id=>wwv_flow_imp.id(454829750438202634)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458030879665209332)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>92
,p_column_id=>wwv_flow_imp.id(458020353357202385)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458031768319209336)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>93
,p_column_id=>wwv_flow_imp.id(458020458155202386)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458050597667597180)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>94
,p_column_id=>wwv_flow_imp.id(458020570652202387)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458051471295597189)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>95
,p_column_id=>wwv_flow_imp.id(458020662045202388)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458052317336597195)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>96
,p_column_id=>wwv_flow_imp.id(458020698994202389)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458095551728661084)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>97
,p_column_id=>wwv_flow_imp.id(458020965010202391)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(458114455914738874)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>98
,p_column_id=>wwv_flow_imp.id(458021123949202393)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018062787776637888)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1020010721948212352)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018537298714723147)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1018537623853723147)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018537898237723148)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(1018538316337723148)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>205
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018538452860723148)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(1018538904370723148)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018539071552723148)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(1018539512896723149)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018539659236723149)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>70
,p_column_id=>wwv_flow_imp.id(1018540052656723149)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018540245434723149)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>69
,p_column_id=>wwv_flow_imp.id(1018540637849723149)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018540893205723150)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>68
,p_column_id=>wwv_flow_imp.id(1018541247963723150)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018541438365723150)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>67
,p_column_id=>wwv_flow_imp.id(1018541841138723150)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018542122997723150)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(1018542489915723151)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018542680311723151)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(1018543071352723151)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018543252946723151)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>56
,p_column_id=>wwv_flow_imp.id(1018543635249723152)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018543852291723152)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(1018544321711723152)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018544474011723152)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(1018544875622723152)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018545054201723153)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(1018545506228723153)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018545646346723153)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(1018546111006723153)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018546225116723153)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(1018546643403723154)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018546920195723154)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>66
,p_column_id=>wwv_flow_imp.id(1018547267738723154)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018547434720723154)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>65
,p_column_id=>wwv_flow_imp.id(1018547900277723154)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018548038500723155)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(1018548472227723155)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018548667979723155)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>60
,p_column_id=>wwv_flow_imp.id(1018549053601723155)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018549321053723155)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>59
,p_column_id=>wwv_flow_imp.id(1018549658334723156)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018549918780723156)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>58
,p_column_id=>wwv_flow_imp.id(1018550280424723156)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018550459986723156)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(1018550904475723156)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018551078838723157)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>54
,p_column_id=>wwv_flow_imp.id(1018551517105723157)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018551634827723157)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>53
,p_column_id=>wwv_flow_imp.id(1018552098496723157)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018552231443723157)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>52
,p_column_id=>wwv_flow_imp.id(1018552658179723158)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018552850314723158)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>51
,p_column_id=>wwv_flow_imp.id(1018553229718723158)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018553498242723158)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>50
,p_column_id=>wwv_flow_imp.id(1018553897966723158)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018554112974723158)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(1018554460983723159)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018554710615723159)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(1018555035133723159)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018555240996723159)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(1018555648203723159)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018555911371723160)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(1018556298494723160)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018556446314723160)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(1018556843413723160)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018557094919723160)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(1018557475517723161)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018557664172723161)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(1018558024069723161)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018558307217723161)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(1018558627070723161)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018558839815723162)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(1018559260857723162)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018559476763723162)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(1018559865431723162)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018560045845723162)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(1018560454456723163)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018560722694723163)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(1018561024752723163)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018561261508723163)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(1018561703179723163)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018561858443723163)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(1018562270844723164)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018562516410723164)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(1018562866304723164)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018563080070723164)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(1018563485082723165)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018563653862723165)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(1018564035385723165)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018564276547723165)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(1018564628312723165)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018564900761723165)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(1018565289039723166)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018565509656723166)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(1018565870411723166)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018566026377723166)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(1018566518001723166)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018566646555723167)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(1018567082829723167)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018567256308723167)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(1018567641735723167)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018567917161723167)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(1018568292497723168)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018568448967723168)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(1018568869482723168)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>52
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018569049607723168)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(1018569511391723168)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018569687515723169)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(1018570046859723169)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>57
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018570234512723169)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(1018570627670723169)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018570877852723169)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1018571282370723170)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>52
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018571487493723170)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1018571922520723170)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018572111793723170)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1018572449633723170)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018572676739723170)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1018573049891723171)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018573243391723171)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1018573678480723171)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018573904098723171)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1018574230877723172)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018574501136723172)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1018574891145723172)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>384
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018575086434723172)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1018575512720723172)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018575718120723173)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1018576034655723173)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1018576309102723173)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1018576689941723174)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1229802367097213082)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>71
,p_column_id=>wwv_flow_imp.id(1230354559490253025)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1229813406608892018)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1230354849868253028)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>171
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1229813947136892021)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1230354913889253029)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>117
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1229814322275892026)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1230355072239253030)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>144
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15990410195492597162)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>76
,p_column_id=>wwv_flow_imp.id(15990417666030604222)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15990410675816597164)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>75
,p_column_id=>wwv_flow_imp.id(15990417724027604223)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15990411178573597165)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>74
,p_column_id=>wwv_flow_imp.id(15990417870867604224)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15990411628875597167)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>73
,p_column_id=>wwv_flow_imp.id(15990417951427604225)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15990412119346597172)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_display_seq=>72
,p_column_id=>wwv_flow_imp.id(15990418042344604226)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(1043368576844044021)
,p_view_id=>wwv_flow_imp.id(1018577873181723199)
,p_execution_seq=>5
,p_name=>'Add Qty'
,p_column_id=>wwv_flow_imp.id(1020010721948212352)
,p_background_color=>'#7DD1CD'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(1020010721948212352)
,p_condition_operator=>'N'
,p_condition_is_case_sensitive=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14166443493977135)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_button_name=>'GET_PREVIOUS_ML_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--padLeft:t-Button--padRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This button is needed for Get Next or Previous Primary Key Value process.',
'Item is NOT Null - P76_ML_ID_PREV'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14166828090977137)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_button_name=>'GET_NEXT_ML_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--padLeft:t-Button--padRight:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_row=>'Y'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This button is needed for Get Next or Previous Primary Key Value process.',
'Item is Not Null - P76_ML_ID_NEXT'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1304354643249853)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(451023357170409487)
,p_button_name=>'Create_Order'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Order'
,p_button_position=>'COPY'
,p_show_processing=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14167181131977137)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--danger:t-Button--simple:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Back'
,p_button_position=>'COPY'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21365876608243697)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(473104156487760191)
,p_button_name=>'ADD_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--primary:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Products'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_CALLING_FROM,P21_CUST_ID,P21_ENQ_ID,P21_MASTER_LIST_ID,P21_BTN_LABEL:MASTER_LIST,&P92_ML_CUSTOMER_ID.,,&P92_ML_ID.,Get Ordered Products'
,p_button_condition=>'P92_ML_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-cart-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14167623706977138)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14167968975977139)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P92_ML_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(101569855642446609)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_button_name=>'P92_OUTPUT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Outputs'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.:RP:&DEBUG.::P10_ENQ_ID,P10_OUTPUT_TYPE,P10_CALLING_FROM,APP_OM_ID:&P92_ML_ID.,COMINVSC,SC,'
,p_button_condition=>'P92_ML_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-file-excel-o'
,p_button_comment=>' <i class="fa fa-file-excel-o" style="font-size:16px;color:white"><i class="fa fa-file-pdf-o" style="font-size:16px;color:pink"></i></i>'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14168448972977139)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_button_condition=>'P92_ML_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14168781223977139)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_button_name=>'ADD_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--primary:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Products'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_CALLING_FROM,P21_CUST_ID,P21_ENQ_ID,P21_MASTER_LIST_ID,P21_BTN_LABEL:V_MASTER_LIST,&P92_ML_CUSTOMER_ID.,,&P92_ML_ID.,Get Ordered Products'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-cart-plus'
,p_button_comment=>'Original Serverside condition - Item is not null - P92_ML_ID'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14241333930977284)
,p_branch_action=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.::P92_ML_ID:&P92_ML_ID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14166828090977137)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14241675457977285)
,p_branch_action=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.::P92_ML_ID:&P92_ML_ID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14166443493977135)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14242126508977285)
,p_branch_name=>'Go To Page 75'
,p_branch_action=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(93204735251433)
,p_name=>'P92_ML_PORT_OF_DISCHARGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_prompt=>'Port of Discharge'
,p_source=>'ML_PORT_OF_DISCHARGE'
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
'                    where CM_ID = :P92_ML_CUSTOMER_ID)',
'          CONNECT BY LEVEL <= mx + 1)',
'   WHERE lvl - 1 <= LENGTH (REGEXP_REPLACE ( CM_PORT_OF_DISCHARGE || '':'', ''[^:]''))',
'     AND REGEXP_SUBSTR ( CM_PORT_OF_DISCHARGE, ''([^:]+)'', 1, lvl) IS NOT NULL',
'     AND CM_ID = :P92_ML_CUSTOMER_ID)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Port of Discharge -'
,p_lov_cascade_parent_items=>'P92_ML_CUSTOMER_ID'
,p_ajax_items_to_submit=>'P92_ML_CUSTOMER_ID'
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
 p_id=>wwv_flow_imp.id(93463400247190)
,p_name=>'P92_ML_PORT_OF_LOADING'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_prompt=>'Port of Loading'
,p_source=>'ML_PORT_OF_LOADING'
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
 p_id=>wwv_flow_imp.id(172454117280824)
,p_name=>'P92_ML_COSTING_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_prompt=>'Costing Type'
,p_source=>'ML_COSTING_TYPE'
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
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(457126145734544)
,p_name=>'P92_ML_QUOTE_IN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_prompt=>'Quote In'
,p_source=>'ML_QUOTE_IN'
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
,p_cMaxlength=>100
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
 p_id=>wwv_flow_imp.id(466696659486914)
,p_name=>'P92_ML_CONTAINER_SIZE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_default=>'30'
,p_prompt=>'Ml Container Size'
,p_source=>'ML_CONTAINER_SIZE'
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
 p_id=>wwv_flow_imp.id(1304546125249855)
,p_name=>'P92_PAY_TERMS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_prompt=>'Pay Terms'
,p_source=>'ML_PAY_TERMS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>2
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(449835177681321048)
,p_name=>'P92_ML_SALES_CONTRACT_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_prompt=>'Sales Contract#'
,p_source=>'ML_SALES_CONTRACT_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_tag_attributes=>'readonly="readonly"'
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
 p_id=>wwv_flow_imp.id(449835327570321049)
,p_name=>'P92_ML_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_default=>'SALES_CONTRACT'
,p_source=>'ML_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(465839622987938496)
,p_name=>'P92_CONTAINER_SIZE_IDENTIFIER'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_contrainer_size varchar2(50);',
'begin',
'select st_extra2',
'into v_contrainer_size',
'from V_SETUP_TABLE , V_MASTER_LIST',
'where st_type = ''CONTAINER_SIZE'' ',
'and st_code  = ml_container_size',
'and ml_id = :P92_ML_ID;',
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
 p_id=>wwv_flow_imp.id(1018606839148723909)
,p_name=>'P92_ML_ID_COUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_display_when_type=>'NEVER'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
,p_ai_enabled=>false
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1018612536207723915)
,p_name=>'P92_ML_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_source=>'ML_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1018612979159723915)
,p_name=>'P92_ML_IS_INTERNAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_default=>'N'
,p_source=>'ML_IS_INTERNAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1018613327414723916)
,p_name=>'P92_ML_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_prompt=>'Remarks'
,p_source=>'ML_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_tag_attributes=>'style="height:1px"'
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
 p_id=>wwv_flow_imp.id(1018613794678723916)
,p_name=>'P92_ML_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_default=>'Sales Contract'
,p_source=>'ML_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1018614117588723920)
,p_name=>'P92_ML_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_prompt=>'Customer Name'
,p_source=>'ML_CUSTOMER_ID'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1018614538182723925)
,p_name=>'P92_ML_ID_NEXT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1018614930065723925)
,p_name=>'P92_ML_ID_PREV'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1018615340594723930)
,p_name=>'P92_ML_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_default=>'SEQ_ML_ID'
,p_item_default_type=>'SEQUENCE'
,p_source=>'ML_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1018638614878449317)
,p_name=>'P92_ENQ_ID'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enquiry#/ Invoice#'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EOM_ENQ_NO || case when EOM_INVOICE_NO is not null then '' /'' || EOM_INVOICE_NO end,',
'        EOM_ENQ_ID',
'from V_ENQUIRIES_ORDERS_MST',
'where EOM_ENQ_STATUS != ''RJ''',
'and EOM_CUSTOMER_ID = :P92_ML_CUSTOMER_ID',
'AND EOM_SALES_CONTRACT_ID = :P92_ML_ID',
'order by 2 desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Linked Enquiry# -'
,p_lov_cascade_parent_items=>'P92_ML_CUSTOMER_ID'
,p_ajax_items_to_submit=>'P92_ML_CUSTOMER_ID,P92_ENQ_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1018857485259724386)
,p_name=>'P92_ML_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_prompt=>'Updated By'
,p_source=>'ML_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(1018857888213724386)
,p_name=>'P92_ML_UPDATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_prompt=>'Updated On'
,p_source=>'ML_UPDATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(1018858276600724386)
,p_name=>'P92_ML_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_prompt=>'Created By'
,p_source=>'ML_CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(1018858739022724387)
,p_name=>'P92_ML_CREATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_item_source_plug_id=>wwv_flow_imp.id(1018598769440723635)
,p_prompt=>'Created On'
,p_source=>'ML_CREATED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
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
 p_id=>wwv_flow_imp.id(1020274308505213123)
,p_name=>'P92_ML_CUSTOMER_ID_FILTER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1018578758049723201)
,p_prompt=>'Customer'
,p_source=>'P92_ML_CUSTOMER_ID'
,p_source_type=>'ITEM'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14227995579977266)
,p_validation_name=>'VlidateENQID'
,p_validation_sequence=>10
,p_validation=>'P92_ENQ_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select Enquiry to move products'
,p_validation_condition=>'ADD_PROFORMA'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(1018638614878449317)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14226331784977250)
,p_tabular_form_region_id=>wwv_flow_imp.id(473104156487760191)
,p_validation_name=>'ValidateAddQty'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'insert into error_log(el_text) values (''MLD_QTY_PF - '' || nvl(:MLD_QTY_PF,0) || '' REM_QTY - '' || :REM_QTY);',
'commit;',
'    if (to_number(nvl(:MLD_QTY_PF,0)) > to_number(nvl(:REM_QTY,0))) or (to_number(nvl(:MLD_QTY_PF,0)) < 0) then',
'        return ''Please enter correct Quantity.'';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'ADD_PROFORMA'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'MLD_QTY_PF'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(14225924927977249)
,p_tabular_form_region_id=>wwv_flow_imp.id(1018578758049723201)
,p_validation_name=>'EOD_MANUFAC_ID must be numeric'
,p_validation_sequence=>30
,p_validation=>'MLD_MANUFAC_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_associated_column=>'MLD_MANUFAC_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14228703017977269)
,p_name=>'Products Detial Region Popup - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1018598769440723635)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_da_event_comment=>'This dynamic action will be called if any popup initiated from this region is closed programmatically i.e. dialog closed is called after save and it closes. This is not triggered when ESC or close button is hit.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14229068607977272)
,p_event_id=>wwv_flow_imp.id(14228703017977269)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1018578758049723201)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14229472363977273)
,p_name=>'Calc Cubic'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(1018578758049723201)
,p_triggering_element=>'MLD_QTY_PF'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14229991901977274)
,p_event_id=>wwv_flow_imp.id(14229472363977273)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'calcCubic(''ON_CHANGE'');',
'//testRanu();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14230424504977274)
,p_name=>'Calc.  ML Cubic on IG Save'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1018578758049723201)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14230951407977274)
,p_event_id=>wwv_flow_imp.id(14230424504977274)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'calcCubic (''ML_CUBIC'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14231341931977275)
,p_name=>'Refresh Linked Enquires'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(451023357170409487)
,p_bind_type=>'bind'
,p_execution_type=>'THROTTLE'
,p_execution_time=>100
,p_execution_immediate=>false
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14231757004977275)
,p_event_id=>wwv_flow_imp.id(14231341931977275)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(451023357170409487)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1304177217249852)
,p_event_id=>wwv_flow_imp.id(14231341931977275)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Enq ID LOV'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_ENQ_ID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14232256559977276)
,p_name=>'calculate_base_price'
,p_event_sequence=>90
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(473104156487760191)
,p_triggering_element=>'EOD_TRADE_PRICE,EOD_SCHEME_PERC,EOD_DISCOUNT_PERC,EOD_GST_PERC,EOD_PURCHASE_AMT,EOD_TOTAL_GST_PERC,EOD_STW_RND_20,EOD_COSTING_UNIT,EOD_STW_RND_40,EOD_STW_RND_40HC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14232703680977277)
,p_event_id=>wwv_flow_imp.id(14232256559977276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EOD_SCHEME_AMT,EOD_PURCHASE_AMT,EOD_DISCOUNT_AMT,EOD_CALC_AMT_UNITWISE_RND'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''i am in calc base price dynamic action'');',
'initialize(''SALES_CONTRACT'');',
'fcalc_base_price();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14233086051977277)
,p_name=>'calc_when_tradeprice_0'
,p_event_sequence=>100
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(473104156487760191)
,p_triggering_element=>'EOD_TRADE_PRICE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_da_event_comment=>'When manually Trade Price is modified to 0 then Purchase Amt should be set as 0 and recalculated'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14233618443977277)
,p_event_id=>wwv_flow_imp.id(14233086051977277)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EOD_SCHEME_AMT,EOD_PURCHASE_AMT,EOD_DISCOUNT_AMT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''i am in calc base price dynamic action'');',
'fset_value(''EOD_PURCHASE_AMT'',0);',
'initialize(''SALES_CONTRACT'');',
'fcalc_base_price();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14233976084977278)
,p_name=>'calculate net purchase'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(473104156487760191)
,p_triggering_element=>'EOD_BAGS_CTNS,EOD_RECOV_ON_FRT,EOD_REPACKING,EOD_EXTRA,EOD_GODOWN_CHARGES,EOD_TESTING_CHARGES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14234465107977278)
,p_event_id=>wwv_flow_imp.id(14233976084977278)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EOD_NET_PURCHASE_VAL'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''i am in net purchase amt dynamic action'');',
'initialize(''SALES_CONTRACT'');',
'fcalc_net_purchase();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14234939816977278)
,p_name=>'calculate financials'
,p_event_sequence=>120
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(473104156487760191)
,p_triggering_element=>'EOD_PROFIT_PERC,EOD_INTEREST_PERC,EOD_DUTY_PERC,EOD_ECGC_PERC,EOD_BANK_COMM_PERC,EOD_INCOME_TAX_PERC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14235453756977279)
,p_event_id=>wwv_flow_imp.id(14234939816977278)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EOD_NET_PURCHASE_VAL'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''i am in calac financials dynamic action'');',
'initialize(''SALES_CONTRACT'');',
'fcalc_financials();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14235851201977279)
,p_name=>'calculate costing type'
,p_event_sequence=>130
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(473104156487760191)
,p_triggering_element=>'EOD_EXCHANGE_RATE,EOD_COMMISSION_PERC,EOD_OCEAN_FRT,EOD_INSURANCE_PERC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14236302067977279)
,p_event_id=>wwv_flow_imp.id(14235851201977279)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'EOD_FOB_RS,EOD_FOB_DOLL,EOD_FOBC_AMT,EOD_FOB_DOLL_RND,EOD_FRT_PER_CTN,EOD_CANDF_AMT,EOD_CANDFC_AMT,EOD_CANDF_AMT_RND,EOD_INSURANCE_AMT,EOD_CIF_AMT,EOD_CIFC_AMT,EOD_CIF_AMT_RND,EOD_CNI_AMT,EOD_CNIC_AMT,EOD_CNI_AMT_RND'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''i am in calc costing dynamic action'');',
'initialize(''SALES_CONTRACT'');',
'fcalc_financials();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14236688901977280)
,p_name=>'AlertCalcAmtRndForToleranceDiff'
,p_event_sequence=>140
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(473104156487760191)
,p_triggering_element=>'EOD_CALC_AMT_UNITWISE_RND'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14237236405977280)
,p_event_id=>wwv_flow_imp.id(14236688901977280)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_rnd_tolerance = &APP_FOB_RND_TOLERANCE.; ',
'',
'if (Math.abs($v(''MLD_CALC_AMT_UNITWISE_RND'') - $v(''MLD_CALC_AMT_UNITWISE'')) > v_rnd_tolerance )',
'     {',
'        // $s(''P0_CONFIRM_MSG'',"This FOB Rounded amount is more than the rounding tolerance amount of 5 ( FOB = "+ $v(''MLD_FOB_DOLL'') + " and FOB Rounded = " + $v(''MLD_FOB_DOLL_RND'')+ " ), Do you really want to update it ?");',
'          $s(''P0_CONFIRM_MSG'',"This rounded amount is more than the rounding tolerance amount of "+ v_rnd_tolerance +" ( calculated amount = "+ $v(''MLD_CALC_AMT_UNITWISE'') + " ), Do you really want to update it to "+ $v(''EOD_CALC_AMT_UNITWISE_RND'') +'
||'" ?");',
'         $s(''P0_REQ'',''SB_CONFIRM_FOBRND'');',
'         openModal(''SB_CONFIRM'');',
'     }',
'     ',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14237629289977280)
,p_name=>'Calculate Unit Price Based on Calc Round Amt'
,p_event_sequence=>150
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(473104156487760191)
,p_triggering_element=>'EOD_CALC_AMT_UNITWISE_RND'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14238067588977281)
,p_event_id=>wwv_flow_imp.id(14237629289977280)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initialize(''SALES_CONTRACT'');',
'fcalc_onChange_CalcRndAmt();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14238543037977281)
,p_name=>'calculate fob exp amt'
,p_event_sequence=>160
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(473104156487760191)
,p_triggering_element=>'EOD_VOL_FOB_AMT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14238969279977281)
,p_event_id=>wwv_flow_imp.id(14238543037977281)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//alert(''i am in calc fob exp dynamic action'');',
'initialize(''SALES_CONTRACT'');',
'fcalc_fob_exp_amt();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14239404152977282)
,p_name=>'Other than FOB Hide columns'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_ML_COSTING_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14239942088977282)
,p_event_id=>wwv_flow_imp.id(14239404152977282)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'fdisp_calc_type(''SALES_CONTRACT'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14240313050977282)
,p_name=>'Fetch Enq/Qrder Details'
,p_event_sequence=>180
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(451023357170409487)
,p_triggering_element=>'EOM_ENQ_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14240834968977283)
,p_event_id=>wwv_flow_imp.id(14240313050977282)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select eom_invoice_no ,EOM_PORT_OF_LOADING,EOM_PORT_OF_DISCHARGE,EOM_ENQ_STATUS ,EOM_ORDER_STATUS',
'into :EOM_INVOICE_NO, :EOM_PORT_OF_LOADING, :EOM_PORT_OF_DISCHARGE,:EOM_ENQ_STATUS,:EOM_ORDER_STATUS',
'from V_ENQUIRIES_ORDERS_MST',
'where eom_enq_no = :EOM_ENQ_NO;',
'',
'insert into error_log (el_text) values (''EOM_ENQ_NO - '' || :EOM_ENQ_NO || ''EOM_INVOICE_NO - '' || :EOM_INVOICE_NO);',
'END;'))
,p_attribute_02=>'EOM_ENQ_NO'
,p_attribute_03=>'EOM_INVOICE_NO, EOM_PORT_OF_LOADING, EOM_PORT_OF_DISCHARGE,EOM_ENQ_STATUS,EOM_ORDER_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14176311963977164)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1018598769440723635)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on V_MASTER_LIST'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'Error in saving Master List !'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Sales contract saved successfully.'
,p_internal_uid=>94227155350612890
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1304998193249860)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Generate and update SC# '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	l_scope logger_logs.scope%type := ''Generate SC#'';',
'	l_params logger.tab_param;',
'    v_sc_no varchar2(50);',
'    v_error_msg      VARCHAR2(4000);',
'BEGIN',
'    logger.LOG(''START'', l_scope);',
'    logger.append_param(l_params, ''P92_ML_ID'', :P92_ML_ID);',
'',
'   IF :P92_ML_SALES_CONTRACT_NO IS NULL THEN ',
'        v_sc_no := FN_GENERATE_ENQ_INV_NO(''SC'',:P92_ML_ID); --To generate SC Number',
'',
'        UPDATE V_MASTER_LIST',
'        SET ML_SALES_CONTRACT_NO = v_sc_no',
'        WHERE  ML_ID = :P92_ML_ID',
'        AND ML_SALES_CONTRACT_NO is null;',
'        ',
'        logger.LOG(''After updating sales contract# '', l_scope, NULL, l_params);',
'        logger.log(''END'', l_scope, null, l_params);',
'    ',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        v_error_msg := ''Error in sales contract# of Page 92 - '' || substr(sqlerrm,1,2000);',
'        logger.log_error(v_error_msg, l_scope, null, l_params);',
'        logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14167968975977139)
,p_internal_uid=>21369576384165612
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14227424954977253)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1018578758049723201)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Sales Contract List Detail - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>94278268341612979
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14181284479977181)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(451023357170409487)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Linked Enquiries - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'	l_scope logger_logs.scope%type := ''Update Linked Enquiry'';',
'	l_params logger.tab_param;',
'	v_error_msg varchar2(4000);',
'	',
'BEGIN',
'',
'',
'',
'	logger.append_param(l_params, ''P92_ML_ID'', :P92_ML_ID);',
'	--logger.append_param(l_params, ''P92_ML_CUSTOMER_ID_FILTER'', :P92_ML_CUSTOMER_ID_FILTER);',
'	logger.append_param(l_params, ''EOM_ENQ_NO'', :EOM_ENQ_NO);',
'    logger.append_param(l_params, ''P92_ML_CUSTOMER_ID'', :P92_ML_CUSTOMER_ID);',
'    logger.append_param(l_params, ''APEX$ROW_STATUS'', :APEX$ROW_STATUS);',
'	logger.log(''Start of process to save linked enquiries '', l_scope, null, l_params);',
'IF :APEX$ROW_STATUS = ''C''	THEN',
'',
'    UPDATE V_ENQUIRIES_ORDERS_MST',
'    SET EOM_SALES_CONTRACT_ID = :P92_ML_ID',
'    WHERE EOM_CUSTOMER_ID = :P92_ML_CUSTOMER_ID',
'    AND EOM_ENQ_NO = :EOM_ENQ_NO;',
'',
'ELSIF :APEX$ROW_STATUS = ''D'' THEN',
'',
'    UPDATE V_ENQUIRIES_ORDERS_MST',
'    SET EOM_SALES_CONTRACT_ID = ''''',
'    WHERE EOM_CUSTOMER_ID = :P92_ML_CUSTOMER_ID',
'    AND EOM_ENQ_NO = :EOM_ENQ_NO;',
'',
'END IF;',
'',
'     EXCEPTION WHEN OTHERS THEN',
' v_error_msg := ''Error in Update Master List Details - '' || substr(sqlerrm,1,2000);',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>94232127866612907
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14226587523977250)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(473104156487760191)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Products To Proforma'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'	l_scope logger_logs.scope%type := ''Add Products To Proforma'';',
'	l_params logger.tab_param;',
'	v_error_msg varchar2(4000);',
'',
'BEGIN',
'',
'logger.LOG(''START'', l_scope);',
'merge into V_ENQUIRIES_ORDERS_DETAILS using (select * from V_MASTER_LIST_DETAILS where MLD_ID = :MLD_ID) ',
'ON ( --nvl(MLD_ENQ_ID,-1) = EOD_ENQ_ID AND ',
'     MLD_PRODUCT_ID = EOD_PRODUCT_ID  AND nvl(MLD_FOC_FLAG,''N'') = nvl(EOD_FOC_FLAG,''N'')',
'     AND MLD_ML_ID = :P92_ML_ID  and eod_enq_id = :P92_ENQ_ID',
'   )',
'WHEN matched THEN',
'  UPDATE',
'  SET',
'	eod_quantity = eod_quantity + :MLD_QTY_PF',
'    where eod_product_id = :EOD_PRODUCT_ID',
'   -- and EOD_ENQ_ID = :EOD_ENQ_ID',
'	--and EOD_ML_ID = :P92_ML_ID ',
'    and eod_enq_id = :P92_ENQ_ID',
'	and nvl(EOD_FOC_FLAG,''N'') = nvl(:MLD_FOC_FLAG,''N'') ',
' WHEN not MATCHED THEN	',
'INSERT (',
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
'    eod_cubic_space,  --Added by Rahul on 23-Mar-22 as not null constraint of cubic space was failing while moving products to Proforma',
'    eod_gross_wt,',
'    eod_net_wt,',
'    eod_length,',
'    eod_breadth,',
'    eod_height,',
'    --Added by Rahul on 24-May-24 to populate additional fields unitwise consting Satkamal start',
'    EOD_GODOWN_CHARGES, 	',
'    EOD_TESTING_CHARGES,		',
'    EOD_CALC_AMT_UNITWISE,	',
'    EOD_COSTING_UNIT',
'    --Added by Rahul on 24-May-24 to populate additional fields unitwise consting Satkamal stop',
'    ,EOD_CALC_AMT_UNITWISE_RND',
'',
')',
'values ( ',
'SEQ_EOD_ID.nextval	,',
':P92_ENQ_ID ,',
':EOD_MANUFAC_ID	,',
':EOD_PRODUCT_ID	,',
':MLD_QTY_PF	,',
':EOD_MRP	,',
':EOD_TRADE_PRICE	,',
':EOD_PURCHASE_AMT	,',
':EOD_SCHEME_PERC	,',
':EOD_SCHEME_AMT	,',
':EOD_DISCOUNT_PERC	,',
':EOD_DISCOUNT_AMT	,',
':EOD_GST_PERC	,',
':EOD_GST_AMT	,',
':EOD_TRANS_CHARGES	,',
':EOD_BAGS_CTNS	,',
':EOD_RECOV_ON_FRT	,',
':EOD_REPACKING	,',
':EOD_EXTRA	,',
':EOD_NET_PURCHASE_VAL	,',
':EOD_VOL_FOB_AMT	,',
':EOD_VOL_FOB_EXP	,',
':EOD_PROFIT_PERC	,',
':EOD_PROFIT_AMT	,',
':EOD_INCOME_TAX	,',
':EOD_DUTY_PERC	,',
':EOD_DUTY_AMT	,',
':EOD_ECGC	,',
':EOD_BANK_COMM	,',
':EOD_INTEREST_PERC	,',
':EOD_INTEREST_AMT	,',
':EOD_EXCHANGE_RATE	,',
':EOD_FOB_RS	,',
':EOD_FOB_DOLL	,',
':EOD_COMMISSION_PERC	,',
':EOD_FOBC_AMT	,',
':EOD_FOB_DOLL_RND	,',
':EOD_OCEAN_FRT	,',
':EOD_FRT_PER_CTN	,',
':EOD_CANDF_AMT	,',
':EOD_CANDFC_AMT	,',
':EOD_CANDF_AMT_RND	,',
':EOD_INSURANCE_AMT	,',
':EOD_CIF_AMT	,',
':EOD_CIFC_AMT	,',
':EOD_CIF_AMT_RND	,',
':EOD_CNI_AMT	,',
':EOD_CNIC_AMT	,',
':EOD_CNI_AMT_RND	,',
':EOD_COSTING_TYPE	,',
':EOD_INCOME_TAX_PERC	,',
':EOD_BANK_COMM_PERC	,',
':EOD_ECGC_PERC	,',
':EOD_SGST_PERC	,',
':EOD_CGST_PERC	,',
':EOD_TOTAL_GST_PERC	,',
':EOD_INSURANCE_PERC	,',
':EOD_STW_RND_20	,',
':EOD_HSN_CODE	,',
':EOD_COSTING_REMARKS	,',
':EOD_CIR_DISPLAY_NAME	,',
':MLD_FOC_FLAG,',
':PM_CUBIC_SPACE, --Added by Rahul on 23-Mar-22 as not null constraint of cubic space was failing while moving products to Proforma',
':EOD_GROSS_WT,',
':EOD_NET_WT,',
':EOD_LENGTH,',
':EOD_BREADTH,',
':EOD_HEIGHT,',
'--Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal start',
':EOD_GODOWN_CHARGES, 	',
':EOD_TESTING_CHARGES, 		',
':EOD_CALC_AMT_UNITWISE, 	',
':EOD_COSTING_UNIT',
'--Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal stop    	',
',:EOD_CALC_AMT_UNITWISE_RND',
');',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ADD_PROFORMA'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_exec_cond_for_each_row=>'Y'
,p_internal_uid=>94277430910612976
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21368676421165603)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(473104156487760191)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Product Details - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>21368676421165603
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14227013790977251)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(473104156487760191)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Master List Transactions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'	l_scope logger_logs.scope%type := ''Update MLT'';',
'	l_params logger.tab_param;',
'	v_error_msg varchar2(4000);',
'',
'BEGIN',
'',
'logger.LOG(''START'', l_scope);',
'/* Commented by Rahul on 26-Dec-25 to increasing quantity as we have enabled quantity field for update for Sales Contract',
'    if :MLD_QTY_PF is not null and :REQUEST != ''ADD_PROFORMA''  then    ',
'        update V_MASTER_LIST_DETAILS',
'        set MLD_QUANTITY = nvl(MLD_QUANTITY,0) + nvl(:MLD_QTY_PF,0)',
'        where MLD_ID = :MLD_ID;',
'   */     ',
'    /* Commented by Rahul on 26-Dec-25 to stop reducing total quantity for Sales Contract',
'    elsif :MLD_QTY_PF is not null and :REQUEST = ''ADD_PROFORMA''  then',
'        update V_MASTER_LIST_DETAILS',
'        set MLD_QUANTITY = nvl(MLD_QUANTITY,0) - nvl(:MLD_QTY_PF,0)',
'        where MLD_ID = :MLD_ID;',
'   ',
'    end if;',
' */ ',
'	--logger.append_param(l_params, ''P23_EOM_ENQ_ID'', :P23_EOM_ENQ_ID);',
'	--logger.append_param(l_params, ''P23_EOM_ORD_ID'', v_ord_id);',
'',
'insert into  V_MASTER_LIST_TRANSACTIONS',
'(MLT_ID	,',
'MLT_MLD_ID	,',
'MLT_ENQ_ID	,',
'MLT_PRODUCT_ID	,',
'MLT_MANUFAC_ID	,',
'MLT_QUANTITY	,',
'MLT_MRP	,',
'MLT_TRADE_PRICE	,',
'MLT_PURCHASE_AMT	,',
'MLT_SCHEME_PERC	,',
'MLT_SCHEME_AMT	,',
'MLT_DISCOUNT_PERC	,',
'MLT_DISCOUNT_AMT	,',
'MLT_GST_PERC	,',
'MLT_GST_AMT	,',
'MLT_TRANS_CHARGES	,',
'MLT_BAGS_CTNS	,',
'MLT_RECOV_ON_FRT	,',
'MLT_REPACKING	,',
'MLT_EXTRA	,',
'MLT_NET_PURCHASE_VAL	,',
'MLT_VOL_FOB_AMT	,',
'MLT_VOL_FOB_EXP	,',
'MLT_PROFIT_PERC	,',
'MLT_PROFIT_AMT	,',
'MLT_INCOME_TAX	,',
'MLT_DUTY_PERC	,',
'MLT_DUTY_AMT	,',
'MLT_ECGC	,',
'MLT_BANK_COMM	,',
'MLT_INTEREST_PERC	,',
'MLT_INTEREST_AMT	,',
'MLT_EXCHANGE_RATE	,',
'MLT_FOB_RS	,',
'MLT_FOB_DOLL	,',
'MLT_COMMISSION_PERC	,',
'MLT_FOBC_AMT	,',
'MLT_FOB_DOLL_RND	,',
'MLT_OCEAN_FRT	,',
'MLT_FRT_PER_CTN	,',
'MLT_CANDF_AMT	,',
'MLT_CANDFC_AMT	,',
'MLT_CANDF_AMT_RND	,',
'MLT_INSURANCE_AMT	,',
'MLT_CIF_AMT	,',
'MLT_CIFC_AMT	,',
'MLT_CIF_AMT_RND	,',
'MLT_CNI_AMT	,',
'MLT_CNIC_AMT	,',
'MLT_CNI_AMT_RND	,',
'MLT_COSTING_TYPE	,',
'MLT_INCOME_TAX_PERC	,',
'MLT_BANK_COMM_PERC	,',
'MLT_ECGC_PERC	,',
'MLT_SGST_PERC	,',
'MLT_CGST_PERC	,',
'MLT_TOTAL_GST_PERC	,',
'MLT_INSURANCE_PERC	,',
'MLT_STW_RND_20	,',
'MLT_HSN_CODE	,',
'MLT_COSTING_REMARKS	,',
'MLT_CIR_DISPLAY_NAME	,',
'MLT_FOC_FLAG	,',
'MLT_TRANSACTION_TYPE	)',
'(',
'select ',
'SEQ_MLT_ID.nextval	,',
':MLD_ID	,',
'case when :REQUEST = ''ADD_PROFORMA'' then :P92_ENQ_ID	else '''' end ,',
':EOD_PRODUCT_ID	,',
':MLD_MANUFAC_ID	,',
':MLD_QTY_PF	,',
':EOD_MRP	,',
':EOD_TRADE_PRICE	,',
':EOD_PURCHASE_AMT	,',
':EOD_SCHEME_PERC	,',
':EOD_SCHEME_AMT	,',
':EOD_DISCOUNT_PERC	,',
':EOD_DISCOUNT_AMT	,',
':EOD_GST_PERC	,',
':EOD_GST_AMT	,',
':EOD_TRANS_CHARGES	,',
':EOD_BAGS_CTNS	,',
':EOD_RECOV_ON_FRT	,',
':EOD_REPACKING	,',
':EOD_EXTRA	,',
':EOD_NET_PURCHASE_VAL	,',
':EOD_VOL_FOB_AMT	,',
':EOD_VOL_FOB_EXP	,',
':EOD_PROFIT_PERC	,',
':EOD_PROFIT_AMT	,',
':EOD_INCOME_TAX	,',
':EOD_DUTY_PERC	,',
':EOD_DUTY_AMT	,',
':EOD_ECGC	,',
':EOD_BANK_COMM	,',
':EOD_INTEREST_PERC	,',
':EOD_INTEREST_AMT	,',
':EOD_EXCHANGE_RATE	,',
':EOD_FOB_RS	,',
':EOD_FOB_DOLL	,',
':EOD_COMMISSION_PERC	,',
':EOD_FOBC_AMT	,',
':EOD_FOB_DOLL_RND	,',
':EOD_OCEAN_FRT	,',
':EOD_FRT_PER_CTN	,',
':EOD_CANDF_AMT	,',
':EOD_CANDFC_AMT	,',
':EOD_CANDF_AMT_RND	,',
':EOD_INSURANCE_AMT	,',
':EOD_CIF_AMT	,',
':EOD_CIFC_AMT	,',
':EOD_CIF_AMT_RND	,',
':EOD_CNI_AMT	,',
':EOD_CNIC_AMT	,',
':EOD_CNI_AMT_RND	,',
':EOD_COSTING_TYPE	,',
':EOD_INCOME_TAX_PERC	,',
':EOD_BANK_COMM_PERC	,',
':EOD_ECGC_PERC	,',
':EOD_SGST_PERC	,',
':EOD_CGST_PERC	,',
':EOD_TOTAL_GST_PERC	,',
':EOD_INSURANCE_PERC	,',
':EOD_STW_RND_20	,',
':EOD_HSN_CODE	,',
':EOD_COSTING_REMARKS	,',
':EOD_CIR_DISPLAY_NAME	,',
'MLD_FOC_FLAG	,',
'case when :REQUEST = ''ADD_PROFORMA'' then ''OUT''	else ''IN'' end',
'from V_MASTER_LIST_DETAILS',
'where MLD_ID = :MLD_ID',
');',
'',
'	',
'		logger.LOG(''Inside If of update product costing to product master'', l_scope, null, l_params);',
'    ',
'		logger.LOG(''After Update Product Costing to Product Master'', l_scope, NULL, l_params);',
'	',
'    if :REQUEST = ''ADD_PROFORMA'' then',
'        v_error_msg := fn_update_container_summary(:P92_ENQ_ID);',
'        logger.LOG(''After calling update summary of the enq after adding products to it'', l_scope, NULL, l_params);',
'    end if;',
'    ',
'   ',
'     EXCEPTION WHEN OTHERS THEN',
' v_error_msg := ''Error in Update Master List Details - '' || substr(sqlerrm,1,2000);',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error in saving Sales Contract !'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Sales Contract saved successfully.'
,p_internal_uid=>94277857177612977
);
end;
/
begin
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1304448444249854)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Order Linked with Sales Contract'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_enq_no varchar2(100);',
'v_enq_id number;',
'v_success_failure varchar2(10);',
'v_error_msg varchar2(4000);',
'v_id_new number;',
'gc_scope_prefix constant VARCHAR2(31) := lower($$PLSQL_UNIT);',
'l_scope logger_logs.scope%type := gc_scope_prefix;',
'l_params logger.tab_param;',
'BEGIN',
'',
'	logger.append_param(l_params, ''P92_ML_CUSTOMER_ID'', :P92_ML_CUSTOMER_ID);',
'    logger.append_param(l_params, ''P92_ML_ID'', :P92_ML_ID); ',
'	logger.LOG(''START of creating order from sales contract screen'', l_scope, NULL, l_params);',
'',
'	INSERT INTO V_ENQUIRIES_ORDERS_MST (',
'		EOM_PORT_OF_DISCHARGE,',
'		EOM_SALES_CONTRACT_ID,',
'		EOM_ENQ_ID, --sequence',
'		EOM_ORD_ID, --sequence',
'		EOM_CUSTOMER_ID,',
'		EOM_TYPE,  --ORDER',
'		EOM_ENQ_STATUS, --AP',
'		EOM_ENQ_DATE, --SYSDATE',
'	  --  EOM_ENQ_DEL_DT, ',
'		EOM_ORDER_DATE, --SYSDATE',
'		EOM_ORDER_STATUS, --IP',
'		EOM_PAY_TERMS, ',
'		EOM_CONTAINER_SIZE,',
'		EOM_ENQ_ACC_YEAR, --sysdate,YYYYMM',
'		EOM_ORD_ACC_YEAR,  --sysdate,YYYYMM',
'		EOM_PORT_OF_LOADING,',
'		--EOM_ENQ_NO,  --generate no',
'		EOM_QUOTE_IN,',
'		EOM_COSTING_TYPE',
'		',
'	) VALUES ( ',
'           :P92_ML_PORT_OF_DISCHARGE,           ',
'           :P92_ML_ID,',
'           SEQ_EOM_ID.nextval,           ',
'           SEQ_EOM_ORD_ID.nextval,',
'           :P92_ML_CUSTOMER_ID,',
'           ''ORDER'',',
'           ''AP'',',
'           trunc(sysdate),',
'          -- :P92_ML_ENQ_DEL_DT,',
'           trunc(sysdate),',
'           ''IP'',',
'           :P92_ML_PAY_TERMS,           ',
'           :P92_ML_CONTAINER_SIZE,',
'           to_char(sysdate,''YYYYMM''),',
'           to_char(sysdate,''YYYYMM''),           ',
'           :P92_ML_PORT_OF_LOADING,           ',
'           --:P92_ML_ENQ_NO,           ',
'           :P92_ML_QUOTE_IN,',
'           :P92_ML_COSTING_TYPE',
'		   );',
'		   ',
'		v_enq_id := SEQ_EOM_ID.currval;',
'',
'            logger.append_param(l_params, ''v_enq_id'', v_enq_id); ',
'            	       ',
'		    v_enq_no := FN_GENERATE_ENQ_INV_NO(''ENQ'',v_enq_id);',
'',
'            logger.append_param(l_params, ''v_enq_no'', v_enq_no); ',
'',
'            logger.LOG(''order processing from sales contract screen'', l_scope, NULL, l_params);',
'		',
'		',
'		update ENQUIRIES_ORDERS_MST',
'		set eom_enq_no = v_enq_no',
'		where eom_enq_id = v_enq_id',
'		and eom_enq_no is null;',
'				',
'    ',
'    PKG_COPY_ALL_DETAILS.initialize (''MASTER_LIST'',v_enq_id,v_success_failure,v_error_msg,v_id_new,:P92_ML_CUSTOMER_ID);',
'',
'exception when others then',
'        v_error_msg := ''Error in creating order from slaes contract screen  - '' || substr(sqlerrm,1,2000);',
'		logger.log_error(v_error_msg, l_scope, null, l_params);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1304354643249853)
,p_process_success_message=>'Order Created Successfully'
,p_internal_uid=>21370126133165618
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14175949692977162)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(1018598769440723635)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on V_MASTER_LIST'
,p_attribute_01=>'P92_ML_ID_NEXT'
,p_attribute_02=>'P92_ML_ID_PREV'
,p_attribute_03=>'P92_ML_ID_COUNT'
,p_internal_uid=>94226793079612888
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14228348508977266)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize App or Page Items Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    begin',
'        select ST_EXTRA2 ,ST_EXTRA1',
'        into :APP_QUOTE_IN ,:APP_QUOTE_IN_SYMBOL',
'        From V_SETUP_TABLE ',
'        where ST_TYPE = ''QUOTE_IN'' ',
'        and ST_CODE = :P23_EOM_QUOTE_IN;',
'    exception when others then',
'        :APP_QUOTE_IN  := ''fa-usd'';',
'        :APP_QUOTE_IN_SYMBOL := ''$'';',
'    end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P92_ML_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>94279191895612992
);
wwv_flow_imp.component_end;
end;
/
