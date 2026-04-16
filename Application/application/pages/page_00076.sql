prompt --application/pages/page_00076
begin
--   Manifest
--     PAGE: 00076
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
 p_id=>76
,p_name=>'Master List Detail'
,p_alias=>'MASTER-LIST-DETAIL'
,p_step_title=>'Master List Detail'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'    var V_MLD_QTY_PF;',
'function testRanu()',
'{',
'        var ig$ = apex.region("ig_mld").widget();',
'	        view = ig$.interactiveGrid("getViews", "grid").model;',
'        //  view = apex.region("ig_mld").call("getCurrentView");',
'    ',
'        var i, records, record, qty, model,cubic_space;',
'        var tmp_cubic = 0;',
'                alert(''fdfsf'');    ',
'    ',
'   //  if ( view.supports.edit ) { // make sure this is the editable view',
'                 //   model = view.model;',
'         gRecord = apex.region("ig_mld").widget().interactiveGrid("getSelectedRecords")[0];  ',
'         V_MLD_QTY_PF = $v(''MLD_QTY_PF'')== ''''?0:$v(''MLD_QTY_PF'');',
'         alert($v(''MLD_QTY_PF''));',
'         //    qty = model.getFieldKey("MLD_QTY_PF");',
'        //  cubic_space = model.getFieldKey("PM_CUBIC_SPACE");',
'                           ',
'                          // }',
'               ',
'}',
'</script>'))
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
'			view = apex.region("ig_mld").call("getCurrentView");',
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
'// add action to selection menu',
'var view = apex.region("ig_mld").call("getViews", "grid"),',
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
'apex.region("ig_mld").call("getToolbar")',
'    .toolbar("find", "selection_submenu").menu.items.push(item);',
'',
'//To load ML(Master List) Cubic on page load',
'calcCubic (''ML_CUBIC'');',
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
'        	var ig$ = apex.region("ig_mld").widget();',
'	        view = ig$.interactiveGrid("getViews", "grid");',
'        ',
'                var i, records, record,  model;',
'              //  view = apex.region("ig_mld").call("getCurrentView");',
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
'                        //  gRecord = apex.region("ig_mld").widget().interactiveGrid("getSelectedRecords")[0];  ',
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
 p_id=>wwv_flow_imp.id(451795473735498798)
,p_plug_name=>'<span style="color:#0572CE">Master List</span>'
,p_icon_css_classes=>'fa-list'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'V_MASTER_LIST'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'ML_ID'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(451775462344498364)
,p_plug_name=>'Master List Detail'
,p_region_name=>'ig_mld'
,p_parent_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--showIcon:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
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
'       MLD_PROFIT_PERC_GST_PURCHASE',
'  from MASTER_LIST_DETAILS, ENQUIRIES_ORDERS_MST, CUSTOMER_MASTER, PRODUCT_MASTER',
' where MLD_ML_ID = :P76_ML_ID',
' and eom_customer_id = cm_id (+)',
' and mld_enq_id = eom_enq_id (+)',
' and mld_product_id = pm_id'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P76_ML_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P76_ML_ID'
,p_prn_page_header=>'Master List Detail'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13221101079838734)
,p_name=>'MLD_CUBIC_SPACE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CUBIC_SPACE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Cubic Space'
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13221237467838735)
,p_name=>'MLD_VERIFIED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_VERIFIED'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Mld Verified'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>840
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
 p_id=>wwv_flow_imp.id(13221335917838736)
,p_name=>'MLD_GODOWN_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_GODOWN_CHARGES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Godown Charges'
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
 p_id=>wwv_flow_imp.id(13221457221838737)
,p_name=>'MLD_TESTING_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_TESTING_CHARGES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Testing Charges'
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
 p_id=>wwv_flow_imp.id(13221526070838738)
,p_name=>'MLD_CALC_AMT_UNITWISE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CALC_AMT_UNITWISE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Calc Amt Unitwise'
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
 p_id=>wwv_flow_imp.id(13221687197838739)
,p_name=>'MLD_COSTING_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_COSTING_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Mld Costing Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>880
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
 p_id=>wwv_flow_imp.id(13221764551838740)
,p_name=>'MLD_STW_RND_40'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_STW_RND_40'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Stw Rnd 40'
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
 p_id=>wwv_flow_imp.id(13221842517838741)
,p_name=>'MLD_STW_RND_40HC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_STW_RND_40HC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Stw Rnd 40hc'
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
 p_id=>wwv_flow_imp.id(13221960913838742)
,p_name=>'MLD_CALC_AMT_UNITWISE_RND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_CALC_AMT_UNITWISE_RND'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Calc Amt Unitwise Rnd'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>910
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
 p_id=>wwv_flow_imp.id(13222083573838743)
,p_name=>'MLD_EXCLUDE_PDI_RPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_EXCLUDE_PDI_RPT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Mld Exclude Pdi Rpt'
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
 p_id=>wwv_flow_imp.id(13222186467838744)
,p_name=>'MLD_PROFIT_PERC_GST_PURCHASE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_PROFIT_PERC_GST_PURCHASE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mld Profit Perc Gst Purchase'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>930
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
 p_id=>wwv_flow_imp.id(451734328148498310)
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
 p_id=>wwv_flow_imp.id(451735020632498311)
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
 p_id=>wwv_flow_imp.id(451735608665498311)
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
 p_id=>wwv_flow_imp.id(451736217191498312)
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
 p_id=>wwv_flow_imp.id(451736756951498312)
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
 p_id=>wwv_flow_imp.id(451737342144498312)
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
 p_id=>wwv_flow_imp.id(451737952258498313)
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
 p_id=>wwv_flow_imp.id(451738545433498313)
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
 p_id=>wwv_flow_imp.id(451739194210498314)
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
 p_id=>wwv_flow_imp.id(451739775647498314)
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
,p_static_id=>'EOD_TOTAL_GST_PERC'
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
 p_id=>wwv_flow_imp.id(451740339544498315)
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
 p_id=>wwv_flow_imp.id(451741026006498315)
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
 p_id=>wwv_flow_imp.id(451741579917498315)
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
,p_static_id=>'EOD_ECGC_PERC'
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
 p_id=>wwv_flow_imp.id(451742210523498316)
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
,p_static_id=>'EOD_BANK_COMM_PERC'
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
 p_id=>wwv_flow_imp.id(451742815301498316)
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
,p_static_id=>'EOD_INCOME_TAX_PERC'
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
 p_id=>wwv_flow_imp.id(451743347698498317)
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
,p_static_id=>'EOD_COSTING_TYPE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(451743972033498317)
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
,p_static_id=>'EOD_CNI_AMT_RND'
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
 p_id=>wwv_flow_imp.id(451744604572498317)
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
,p_static_id=>'EOD_CNIC_AMT'
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
 p_id=>wwv_flow_imp.id(451745176522498318)
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
,p_static_id=>'EOD_CNI_AMT'
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
 p_id=>wwv_flow_imp.id(451745757896498318)
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
,p_static_id=>'EOD_CIF_AMT_RND'
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
 p_id=>wwv_flow_imp.id(451746362629498319)
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
,p_static_id=>'EOD_CIFC_AMT'
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
 p_id=>wwv_flow_imp.id(451746984719498319)
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
,p_static_id=>'EOD_CIF_AMT'
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
 p_id=>wwv_flow_imp.id(451747608770498319)
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
,p_static_id=>'EOD_INSURANCE_AMT'
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
 p_id=>wwv_flow_imp.id(451748221400498320)
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
,p_static_id=>'EOD_CANDF_AMT_RND'
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
 p_id=>wwv_flow_imp.id(451748802791498320)
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
,p_static_id=>'EOD_CANDFC_AMT'
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
 p_id=>wwv_flow_imp.id(451749362474498321)
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
,p_static_id=>'EOD_CANDF_AMT'
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
 p_id=>wwv_flow_imp.id(451749934013498321)
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
,p_static_id=>'EOD_FRT_PER_CTN'
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
 p_id=>wwv_flow_imp.id(451750602261498321)
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
,p_static_id=>'EOD_OCEAN_FRT'
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
 p_id=>wwv_flow_imp.id(451751165278498322)
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
,p_static_id=>'EOD_FOB_DOLL_RND'
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
 p_id=>wwv_flow_imp.id(451751739428498322)
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
,p_static_id=>'EOD_FOBC_AMT'
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
 p_id=>wwv_flow_imp.id(451752352498498322)
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
,p_static_id=>'EOD_COMMISSION_PERC'
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
 p_id=>wwv_flow_imp.id(451753002789498323)
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
,p_static_id=>'EOD_FOB_DOLL'
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
 p_id=>wwv_flow_imp.id(451753547708498323)
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
,p_static_id=>'EOD_FOB_RS'
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
 p_id=>wwv_flow_imp.id(451754179812498324)
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
,p_static_id=>'EOD_EXCHANGE_RATE'
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
 p_id=>wwv_flow_imp.id(451754728364498324)
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
 p_id=>wwv_flow_imp.id(451755331365498324)
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
,p_static_id=>'EOD_INTEREST_PERC'
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
 p_id=>wwv_flow_imp.id(451755965152498325)
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
,p_static_id=>'EOD_BANK_COMM'
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
 p_id=>wwv_flow_imp.id(451756569726498325)
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
,p_static_id=>'EOD_ECGC'
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
 p_id=>wwv_flow_imp.id(451757158751498326)
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
,p_static_id=>'EOD_DUTY_AMT'
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
 p_id=>wwv_flow_imp.id(451757729047498326)
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
,p_static_id=>'EOD_DUTY_PERC'
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
 p_id=>wwv_flow_imp.id(451758407474498326)
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
,p_static_id=>'EOD_INCOME_TAX'
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
 p_id=>wwv_flow_imp.id(451758975139498327)
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
,p_static_id=>'EOD_PROFIT_AMT'
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
 p_id=>wwv_flow_imp.id(451759570599498327)
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
,p_static_id=>'EOD_PROFIT_PERC'
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
 p_id=>wwv_flow_imp.id(451760189377498328)
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
,p_static_id=>'EOD_VOL_FOB_EXP'
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
 p_id=>wwv_flow_imp.id(451760739680498328)
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
,p_static_id=>'EOD_VOL_FOB_AMT'
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
 p_id=>wwv_flow_imp.id(451761332607498328)
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
,p_static_id=>'EOD_NET_PURCHASE_VAL'
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
 p_id=>wwv_flow_imp.id(451761993334498329)
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
,p_static_id=>'EOD_EXTRA'
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
 p_id=>wwv_flow_imp.id(451762574706498329)
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
,p_static_id=>'EOD_REPACKING'
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
 p_id=>wwv_flow_imp.id(451763222296498329)
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
,p_static_id=>'EOD_RECOV_ON_FRT'
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
 p_id=>wwv_flow_imp.id(451763787124498330)
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
,p_static_id=>'EOD_BAGS_CTNS'
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
 p_id=>wwv_flow_imp.id(451764346030498330)
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
,p_static_id=>'EOD_TRANS_CHARGES'
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
 p_id=>wwv_flow_imp.id(451764996792498331)
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
,p_static_id=>'EOD_GST_AMT'
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
 p_id=>wwv_flow_imp.id(451765573777498331)
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
,p_static_id=>'EOD_GST_PERC'
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
 p_id=>wwv_flow_imp.id(451766215686498331)
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
,p_static_id=>'EOD_DISCOUNT_AMT'
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
 p_id=>wwv_flow_imp.id(451766751154498332)
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
,p_static_id=>'EOD_DISCOUNT_PERC'
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
 p_id=>wwv_flow_imp.id(451767331965498332)
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
,p_static_id=>'EOD_SCHEME_AMT'
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
 p_id=>wwv_flow_imp.id(451767986665498333)
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
,p_static_id=>'EOD_SCHEME_PERC'
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
 p_id=>wwv_flow_imp.id(451768626815498333)
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
,p_static_id=>'EOD_PURCHASE_AMT'
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
 p_id=>wwv_flow_imp.id(451769153928498333)
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
,p_static_id=>'EOD_TRADE_PRICE'
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
 p_id=>wwv_flow_imp.id(451769754186498334)
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
,p_static_id=>'EOD_MRP'
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
 p_id=>wwv_flow_imp.id(451770382775498334)
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
,p_static_id=>'EOD_QUANTITY'
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
 p_id=>wwv_flow_imp.id(451770935172498335)
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
 p_id=>wwv_flow_imp.id(451771595440498335)
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(451772217015498335)
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
 p_id=>wwv_flow_imp.id(451772738950498336)
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
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P76_ML_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(451773394236498337)
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
 p_id=>wwv_flow_imp.id(451773913159498360)
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
 p_id=>wwv_flow_imp.id(451774381842498361)
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
 p_id=>wwv_flow_imp.id(453207426242987515)
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
 p_id=>wwv_flow_imp.id(663551263785028188)
,p_name=>'PM_CUBIC_SPACE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PM_CUBIC_SPACE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(663551554163028191)
,p_name=>'CM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Customer'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>730
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
 p_id=>wwv_flow_imp.id(663551618184028192)
,p_name=>'EOM_INVOICE_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_INVOICE_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Invoice#'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>720
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
 p_id=>wwv_flow_imp.id(663551776534028193)
,p_name=>'EOM_ENQ_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EOM_ENQ_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'ENQ#'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>710
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
 p_id=>wwv_flow_imp.id(15423614370325379385)
,p_name=>'MLD_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_HEIGHT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Height'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>810
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
 p_id=>wwv_flow_imp.id(15423614428322379386)
,p_name=>'MLD_BREADTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_BREADTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Breadth'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>800
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
 p_id=>wwv_flow_imp.id(15423614575162379387)
,p_name=>'MLD_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_LENGTH'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Length'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>790
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
 p_id=>wwv_flow_imp.id(15423614655722379388)
,p_name=>'MLD_NET_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_NET_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net Wt'
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
 p_id=>wwv_flow_imp.id(15423614746639379389)
,p_name=>'MLD_GROSS_WT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLD_GROSS_WT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Gross Wt'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(451775087019498363)
,p_internal_uid=>24791140787457794
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
'   ',
'  }',
'',
'  function addtoProforma(event, focusElement)',
'  {',
'    var view = apex.region("ig_mld").widget().interactiveGrid("getCurrentView");',
'',
'    if (view.supports.edit)',
'    {',
'        //apex.region("ig_mld").widget().interactiveGrid("getActions").invoke("save");',
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
 p_id=>wwv_flow_imp.id(451774637374498362)
,p_interactive_grid_id=>wwv_flow_imp.id(451775087019498363)
,p_static_id=>'123213'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(451774577476498362)
,p_report_id=>wwv_flow_imp.id(451774637374498362)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21318993652393712)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>77
,p_column_id=>wwv_flow_imp.id(13221101079838734)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21319816436393700)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>78
,p_column_id=>wwv_flow_imp.id(13221237467838735)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21320713184393694)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>79
,p_column_id=>wwv_flow_imp.id(13221335917838736)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21321647705393688)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>80
,p_column_id=>wwv_flow_imp.id(13221457221838737)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21322592906393681)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>81
,p_column_id=>wwv_flow_imp.id(13221526070838738)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21323481739393675)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>82
,p_column_id=>wwv_flow_imp.id(13221687197838739)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21324320209393669)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>83
,p_column_id=>wwv_flow_imp.id(13221764551838740)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21325200916393663)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>84
,p_column_id=>wwv_flow_imp.id(13221842517838741)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21326110221393657)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>85
,p_column_id=>wwv_flow_imp.id(13221960913838742)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21327025713393651)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>86
,p_column_id=>wwv_flow_imp.id(13222083573838743)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(21327978290393645)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>87
,p_column_id=>wwv_flow_imp.id(13222186467838744)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451259492071413051)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(453207426242987515)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451734003009498310)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(451734328148498310)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451734602532498311)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>49
,p_column_id=>wwv_flow_imp.id(451735020632498311)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>205
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451735157155498311)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>48
,p_column_id=>wwv_flow_imp.id(451735608665498311)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451735775847498311)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(451736217191498312)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451736363531498312)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>70
,p_column_id=>wwv_flow_imp.id(451736756951498312)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451736949729498312)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>69
,p_column_id=>wwv_flow_imp.id(451737342144498312)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451737597500498313)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>68
,p_column_id=>wwv_flow_imp.id(451737952258498313)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451738142660498313)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>67
,p_column_id=>wwv_flow_imp.id(451738545433498313)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451738827292498313)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>63
,p_column_id=>wwv_flow_imp.id(451739194210498314)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451739384606498314)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(451739775647498314)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451739957241498314)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>56
,p_column_id=>wwv_flow_imp.id(451740339544498315)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451740556586498315)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(451741026006498315)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451741178306498315)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>37
,p_column_id=>wwv_flow_imp.id(451741579917498315)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451741758496498316)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(451742210523498316)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451742350641498316)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(451742815301498316)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451742929411498316)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(451743347698498317)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451743624490498317)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>66
,p_column_id=>wwv_flow_imp.id(451743972033498317)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451744139015498317)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>65
,p_column_id=>wwv_flow_imp.id(451744604572498317)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451744742795498318)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>61
,p_column_id=>wwv_flow_imp.id(451745176522498318)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451745372274498318)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>60
,p_column_id=>wwv_flow_imp.id(451745757896498318)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451746025348498318)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>59
,p_column_id=>wwv_flow_imp.id(451746362629498319)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451746623075498319)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>58
,p_column_id=>wwv_flow_imp.id(451746984719498319)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451747164281498319)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>55
,p_column_id=>wwv_flow_imp.id(451747608770498319)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451747783133498320)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>54
,p_column_id=>wwv_flow_imp.id(451748221400498320)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451748339122498320)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>53
,p_column_id=>wwv_flow_imp.id(451748802791498320)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451748935738498320)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>52
,p_column_id=>wwv_flow_imp.id(451749362474498321)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451749554609498321)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>51
,p_column_id=>wwv_flow_imp.id(451749934013498321)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451750202537498321)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>50
,p_column_id=>wwv_flow_imp.id(451750602261498321)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451750817269498321)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>47
,p_column_id=>wwv_flow_imp.id(451751165278498322)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451751414910498322)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>46
,p_column_id=>wwv_flow_imp.id(451751739428498322)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451751945291498322)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>45
,p_column_id=>wwv_flow_imp.id(451752352498498322)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451752615666498323)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>44
,p_column_id=>wwv_flow_imp.id(451753002789498323)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451753150609498323)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>43
,p_column_id=>wwv_flow_imp.id(451753547708498323)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451753799214498323)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>42
,p_column_id=>wwv_flow_imp.id(451754179812498324)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451754368467498324)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>41
,p_column_id=>wwv_flow_imp.id(451754728364498324)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451755011512498324)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(451755331365498324)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451755544110498325)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>38
,p_column_id=>wwv_flow_imp.id(451755965152498325)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451756181058498325)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>36
,p_column_id=>wwv_flow_imp.id(451756569726498325)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451756750140498325)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>35
,p_column_id=>wwv_flow_imp.id(451757158751498326)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451757426989498326)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(451757729047498326)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451757965803498326)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(451758407474498326)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451758562738498326)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(451758975139498327)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451759220705498327)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(451759570599498327)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451759784365498327)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(451760189377498328)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451760358157498328)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(451760739680498328)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451760980842498328)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(451761332607498328)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451761605056498328)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(451761993334498329)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451762213951498329)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(451762574706498329)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451762730672498329)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(451763222296498329)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451763350850498330)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(451763787124498330)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451763960603498330)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(451764346030498330)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451764621456498330)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(451764996792498331)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451765153262498331)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(451765573777498331)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>52
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451765753902498331)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(451766215686498331)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451766391810498332)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(451766751154498332)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>57
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451766938807498332)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(451767331965498332)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451767582147498332)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(451767986665498333)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>52
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451768191788498333)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(451768626815498333)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451768816088498333)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(451769153928498333)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451769381034498333)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(451769754186498334)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451769947686498334)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(451770382775498334)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451770608393498334)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(451770935172498335)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451771205431498335)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(451771595440498335)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>384
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451771790729498335)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(451772217015498335)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451772422415498336)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(451772738950498336)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451773013397498336)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(451773394236498337)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(451773604040498359)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(451773913159498360)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(662999071391988245)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>71
,p_column_id=>wwv_flow_imp.id(663551263785028188)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(663010110903667181)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(663551554163028191)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>171
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(663010651431667184)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(663551618184028192)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>117
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(663011026570667189)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(663551776534028193)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>144
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15423606899787372325)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>76
,p_column_id=>wwv_flow_imp.id(15423614370325379385)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15423607380111372327)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>75
,p_column_id=>wwv_flow_imp.id(15423614428322379386)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15423607882868372328)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>74
,p_column_id=>wwv_flow_imp.id(15423614575162379387)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15423608333170372330)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>73
,p_column_id=>wwv_flow_imp.id(15423614655722379388)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15423608823641372335)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_display_seq=>72
,p_column_id=>wwv_flow_imp.id(15423614746639379389)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_highlight(
 p_id=>wwv_flow_imp.id(476565281138819184)
,p_view_id=>wwv_flow_imp.id(451774577476498362)
,p_execution_seq=>5
,p_name=>'Add Qty'
,p_column_id=>wwv_flow_imp.id(453207426242987515)
,p_background_color=>'#7DD1CD'
,p_condition_type=>'COLUMN'
,p_condition_column_id=>wwv_flow_imp.id(453207426242987515)
,p_condition_operator=>'N'
,p_condition_is_case_sensitive=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(451784466422498771)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(451795473735498798)
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
 p_id=>wwv_flow_imp.id(451784363524498771)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(451795473735498798)
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
 p_id=>wwv_flow_imp.id(451786414050498774)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--danger:t-Button--simple:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Back'
,p_button_position=>'COPY'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(451785618933498772)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(451795473735498798)
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
 p_id=>wwv_flow_imp.id(451784752898498771)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P76_ML_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(451785137270498771)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P76_ML_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(453207696782987518)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_button_name=>'ADD_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--primary:t-Button--iconRight:t-Button--padLeft:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add Products'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::P21_CALLING_FROM,P21_CUST_ID,P21_ENQ_ID,P21_MASTER_LIST_ID,P21_BTN_LABEL:MASTER_LIST,&P76_ML_CUSTOMER_ID.,,&P76_ML_ID.,Get Ordered Products'
,p_button_condition=>'P76_ML_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-cart-plus'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(451782830408498769)
,p_branch_name=>'Go To Page 75'
,p_branch_action=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(451783162508498770)
,p_branch_action=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.::P76_ML_ID:&P76_ML_ID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(451784466422498771)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(451783574284498770)
,p_branch_action=>'f?p=&APP_ID.:76:&SESSION.::&DEBUG.::P76_ML_ID:&P76_ML_ID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(451784363524498771)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451571897048223711)
,p_name=>'P76_ENQ_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(451775462344498364)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enquiry#/ Invoice#'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EOM_ENQ_NO || case when EOM_INVOICE_NO is not null then '' /'' || EOM_INVOICE_NO end,',
'        EOM_ENQ_ID',
'from V_ENQUIRIES_ORDERS_MST',
'where EOM_ENQ_STATUS != ''RJ''',
'and EOM_CUSTOMER_ID = :P76_ML_CUSTOMER_ID_FILTER',
'order by 2 desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Enquiry# -'
,p_lov_cascade_parent_items=>'P76_ML_CUSTOMER_ID_FILTER'
,p_ajax_items_to_submit=>'P76_ML_CUSTOMER_ID_FILTER,P76_ENQ_ID'
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
 p_id=>wwv_flow_imp.id(451786655363498775)
,p_name=>'P76_ML_ID_COUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(451795473735498798)
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
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451790767429498780)
,p_name=>'P76_ML_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(451775462344498364)
,p_item_source_plug_id=>wwv_flow_imp.id(451795473735498798)
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
 p_id=>wwv_flow_imp.id(451791170383498780)
,p_name=>'P76_ML_UPDATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(451775462344498364)
,p_item_source_plug_id=>wwv_flow_imp.id(451795473735498798)
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
 p_id=>wwv_flow_imp.id(451791558770498780)
,p_name=>'P76_ML_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(451775462344498364)
,p_item_source_plug_id=>wwv_flow_imp.id(451795473735498798)
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
 p_id=>wwv_flow_imp.id(451792021192498781)
,p_name=>'P76_ML_CREATED_ON'
,p_source_data_type=>'DATE'
,p_is_query_only=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(451775462344498364)
,p_item_source_plug_id=>wwv_flow_imp.id(451795473735498798)
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
 p_id=>wwv_flow_imp.id(451792352422498781)
,p_name=>'P76_ML_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_item_source_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_source=>'ML_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451792795374498781)
,p_name=>'P76_ML_IS_INTERNAL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_item_source_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_item_default=>'N'
,p_source=>'ML_IS_INTERNAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451793143629498782)
,p_name=>'P76_ML_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_item_source_plug_id=>wwv_flow_imp.id(451795473735498798)
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
 p_id=>wwv_flow_imp.id(451793610893498782)
,p_name=>'P76_ML_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_item_source_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_prompt=>'Name'
,p_source=>'ML_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>4
,p_tag_attributes=>'style="height:1px"'
,p_begin_on_new_line=>'N'
,p_field_template=>1609122147107268652
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
 p_id=>wwv_flow_imp.id(451793933803498786)
,p_name=>'P76_ML_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_item_source_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_prompt=>'Customer'
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
 p_id=>wwv_flow_imp.id(451794354397498791)
,p_name=>'P76_ML_ID_NEXT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451794746280498791)
,p_name=>'P76_ML_ID_PREV'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451795156809498796)
,p_name=>'P76_ML_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_item_source_plug_id=>wwv_flow_imp.id(451795473735498798)
,p_item_default=>'SEQ_ML_ID'
,p_item_default_type=>'SEQUENCE'
,p_source=>'ML_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(453207590674987517)
,p_name=>'P76_ML_CUSTOMER_ID_FILTER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(451775462344498364)
,p_prompt=>'Customer'
,p_source=>'P76_ML_CUSTOMER_ID'
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
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(453206801244987509)
,p_validation_name=>'VlidateENQID'
,p_validation_sequence=>10
,p_validation=>'P76_ENQ_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select Enquiry to move products'
,p_validation_condition=>'ADD_PROFORMA'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_item=>wwv_flow_imp.id(451571897048223711)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(453206866713987510)
,p_tabular_form_region_id=>wwv_flow_imp.id(451775462344498364)
,p_validation_name=>'ValidateAddQty'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if (to_number(:MLD_QTY_PF) > to_number(:MLD_QUANTITY)) or (to_number(:MLD_QTY_PF) < 0) then',
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(451575339210366586)
,p_name=>'Products Detial Region Popup - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(451795473735498798)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_da_event_comment=>'This dynamic action will be called if any popup initiated from this region is closed programmatically i.e. dialog closed is called after save and it closes. This is not triggered when ESC or close button is hit.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(451574945528366577)
,p_event_id=>wwv_flow_imp.id(451575339210366586)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(451775462344498364)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663551101341028187)
,p_name=>'Calc Cubic'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(451775462344498364)
,p_triggering_element=>'MLD_QTY_PF'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663551022942028186)
,p_event_id=>wwv_flow_imp.id(663551101341028187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'calcCubic(''ON_CHANGE'');',
'//testRanu();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663550936974028185)
,p_name=>'Calc.  ML Cubic on IG Save'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(451775462344498364)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663550843518028184)
,p_event_id=>wwv_flow_imp.id(663550936974028185)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'calcCubic (''ML_CUBIC'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(451781960729498767)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(451795473735498798)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on V_MASTER_LIST'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'Error in saving Master List !'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Master List saved successfully.'
,p_internal_uid=>451833110360327263
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(451733781636498310)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(451775462344498364)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Master List Detail - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>451784931267326806
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(453206652195987508)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(451775462344498364)
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
'merge into V_ENQUIRIES_ORDERS_DETAILS',
'using (select * from V_MASTER_LIST_DETAILS where MLD_ID = :MLD_ID)',
'ON ( --nvl(MLD_ENQ_ID,-1) = EOD_ENQ_ID AND ',
'     MLD_PRODUCT_ID = EOD_PRODUCT_ID  AND nvl(MLD_FOC_FLAG,''N'') = nvl(EOD_FOC_FLAG,''N'')',
'     AND MLD_ML_ID = :P76_ML_ID  and eod_enq_id = :P76_ENQ_ID',
'   )',
'WHEN matched THEN',
'  UPDATE',
'  SET',
'	eod_quantity = eod_quantity + :MLD_QTY_PF',
'    where eod_product_id = :MLD_PRODUCT_ID',
'   -- and EOD_ENQ_ID = :MLD_ENQ_ID',
'	--and MLD_ML_ID = :P76_ML_ID ',
'    and eod_enq_id = :P76_ENQ_ID',
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
'    EOD_COSTING_UNIT,',
'    --Added by Rahul on 24-May-24 to populate additional fields unitwise consting Satkamal stop',
'    EOD_CALC_AMT_UNITWISE_RND  --Added by Rahul on 31-Jul-24',
'   ,EOD_PROFIT_PERC_GST_PURCHASE  --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
'',
'',
')',
'values ( ',
'SEQ_EOD_ID.nextval	,',
':P76_ENQ_ID ,',
':MLD_MANUFAC_ID	,',
':MLD_PRODUCT_ID	,',
':MLD_QTY_PF	,',
':MLD_MRP	,',
':MLD_TRADE_PRICE	,',
':MLD_PURCHASE_AMT	,',
':MLD_SCHEME_PERC	,',
':MLD_SCHEME_AMT	,',
':MLD_DISCOUNT_PERC	,',
':MLD_DISCOUNT_AMT	,',
':MLD_GST_PERC	,',
':MLD_GST_AMT	,',
':MLD_TRANS_CHARGES	,',
':MLD_BAGS_CTNS	,',
':MLD_RECOV_ON_FRT	,',
':MLD_REPACKING	,',
':MLD_EXTRA	,',
':MLD_NET_PURCHASE_VAL	,',
':MLD_VOL_FOB_AMT	,',
':MLD_VOL_FOB_EXP	,',
':MLD_PROFIT_PERC	,',
':MLD_PROFIT_AMT	,',
':MLD_INCOME_TAX	,',
':MLD_DUTY_PERC	,',
':MLD_DUTY_AMT	,',
':MLD_ECGC	,',
':MLD_BANK_COMM	,',
':MLD_INTEREST_PERC	,',
':MLD_INTEREST_AMT	,',
':MLD_EXCHANGE_RATE	,',
':MLD_FOB_RS	,',
':MLD_FOB_DOLL	,',
':MLD_COMMISSION_PERC	,',
':MLD_FOBC_AMT	,',
':MLD_FOB_DOLL_RND	,',
':MLD_OCEAN_FRT	,',
':MLD_FRT_PER_CTN	,',
':MLD_CANDF_AMT	,',
':MLD_CANDFC_AMT	,',
':MLD_CANDF_AMT_RND	,',
':MLD_INSURANCE_AMT	,',
':MLD_CIF_AMT	,',
':MLD_CIFC_AMT	,',
':MLD_CIF_AMT_RND	,',
':MLD_CNI_AMT	,',
':MLD_CNIC_AMT	,',
':MLD_CNI_AMT_RND	,',
':MLD_COSTING_TYPE	,',
':MLD_INCOME_TAX_PERC	,',
':MLD_BANK_COMM_PERC	,',
':MLD_ECGC_PERC	,',
':MLD_SGST_PERC	,',
':MLD_CGST_PERC	,',
':MLD_TOTAL_GST_PERC	,',
':MLD_INSURANCE_PERC	,',
':MLD_STW_RND_20	,',
':MLD_HSN_CODE	,',
':MLD_COSTING_REMARKS	,',
':MLD_CIR_DISPLAY_NAME	,',
'MLD_FOC_FLAG,',
':PM_CUBIC_SPACE, --Added by Rahul on 23-Mar-22 as not null constraint of cubic space was failing while moving products to Proforma',
':MLD_GROSS_WT,',
':MLD_NET_WT,',
':MLD_LENGTH,',
':MLD_BREADTH,',
':MLD_HEIGHT,',
'--Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal start',
'MLD_GODOWN_CHARGES, 	',
'MLD_TESTING_CHARGES, 		',
'MLD_CALC_AMT_UNITWISE, 	',
'MLD_COSTING_UNIT,',
'--Added by Rahul on 23-May-24 to populate additional fields unitwise consting Satkamal stop    	',
'MLD_CALC_AMT_UNITWISE_RND    --Added by Rahul on 31-Jul-24',
',MLD_PROFIT_PERC_GST_PURCHASE --Added by Rahul on 25-Jun-25 for Profit perc on GST Purchase NCF',
'',
');',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ADD_PROFORMA'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_exec_cond_for_each_row=>'Y'
,p_internal_uid=>453257801826816004
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(453207113265987512)
,p_process_sequence=>45
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(451775462344498364)
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
'    if :MLD_QTY_PF is not null and :REQUEST != ''ADD_PROFORMA''  then',
'        update V_MASTER_LIST_DETAILS',
'        set MLD_QUANTITY = nvl(MLD_QUANTITY,0) + nvl(:MLD_QTY_PF,0)',
'        where MLD_ID = :MLD_ID;',
'    elsif :MLD_QTY_PF is not null and :REQUEST = ''ADD_PROFORMA''  then',
'        update V_MASTER_LIST_DETAILS',
'        set MLD_QUANTITY = nvl(MLD_QUANTITY,0) - nvl(:MLD_QTY_PF,0)',
'        where MLD_ID = :MLD_ID;',
'    end if;',
'',
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
'--MLT_CREATED_BY	,',
'--MLT_CREATED_ON	,',
'--MLT_UPDATED_BY	,',
'--MLT_UPDATED_ON	,',
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
'case when :REQUEST = ''ADD_PROFORMA'' then :P76_ENQ_ID	else '''' end ,',
':MLD_PRODUCT_ID	,',
':MLD_MANUFAC_ID	,',
':MLD_QTY_PF	,',
':MLD_MRP	,',
':MLD_TRADE_PRICE	,',
':MLD_PURCHASE_AMT	,',
':MLD_SCHEME_PERC	,',
':MLD_SCHEME_AMT	,',
':MLD_DISCOUNT_PERC	,',
':MLD_DISCOUNT_AMT	,',
':MLD_GST_PERC	,',
':MLD_GST_AMT	,',
':MLD_TRANS_CHARGES	,',
':MLD_BAGS_CTNS	,',
':MLD_RECOV_ON_FRT	,',
':MLD_REPACKING	,',
':MLD_EXTRA	,',
':MLD_NET_PURCHASE_VAL	,',
':MLD_VOL_FOB_AMT	,',
':MLD_VOL_FOB_EXP	,',
':MLD_PROFIT_PERC	,',
':MLD_PROFIT_AMT	,',
':MLD_INCOME_TAX	,',
':MLD_DUTY_PERC	,',
':MLD_DUTY_AMT	,',
':MLD_ECGC	,',
':MLD_BANK_COMM	,',
':MLD_INTEREST_PERC	,',
':MLD_INTEREST_AMT	,',
':MLD_EXCHANGE_RATE	,',
':MLD_FOB_RS	,',
':MLD_FOB_DOLL	,',
':MLD_COMMISSION_PERC	,',
':MLD_FOBC_AMT	,',
':MLD_FOB_DOLL_RND	,',
':MLD_OCEAN_FRT	,',
':MLD_FRT_PER_CTN	,',
':MLD_CANDF_AMT	,',
':MLD_CANDFC_AMT	,',
':MLD_CANDF_AMT_RND	,',
':MLD_INSURANCE_AMT	,',
':MLD_CIF_AMT	,',
':MLD_CIFC_AMT	,',
':MLD_CIF_AMT_RND	,',
':MLD_CNI_AMT	,',
':MLD_CNIC_AMT	,',
':MLD_CNI_AMT_RND	,',
':MLD_COSTING_TYPE	,',
':MLD_INCOME_TAX_PERC	,',
':MLD_BANK_COMM_PERC	,',
':MLD_ECGC_PERC	,',
':MLD_SGST_PERC	,',
':MLD_CGST_PERC	,',
':MLD_TOTAL_GST_PERC	,',
':MLD_INSURANCE_PERC	,',
'--:MLD_CREATED_BY	,',
'--:MLD_CREATED_ON	,',
'--:MLD_UPDATED_BY	,',
'--:MLD_UPDATED_ON	,',
':MLD_STW_RND_20	,',
':MLD_HSN_CODE	,',
':MLD_COSTING_REMARKS	,',
':MLD_CIR_DISPLAY_NAME	,',
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
'     --rahul   v_error_msg := fn_update_container_summary(:P76_ENQ_ID);',
'        logger.LOG(''After calling update summary of the enq after adding products to it'', l_scope, NULL, l_params);',
'    end if;',
'    ',
'   ',
'     EXCEPTION WHEN OTHERS THEN',
' v_error_msg := ''Error in Update Master List Details - '' || substr(sqlerrm,1,2000);',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error in saving Master List !'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Master List saved successfully.'
,p_internal_uid=>453258262896816008
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(451782376077498768)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(451795473735498798)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on V_MASTER_LIST'
,p_attribute_01=>'P76_ML_ID_NEXT'
,p_attribute_02=>'P76_ML_ID_PREV'
,p_attribute_03=>'P76_ML_ID_COUNT'
,p_internal_uid=>451833525708327264
);
wwv_flow_imp.component_end;
end;
/
