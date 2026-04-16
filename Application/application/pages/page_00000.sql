prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27614327167485764)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(31949275823033531034)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'CURRENT_PAGE_IN_CONDITION'
,p_plug_display_when_condition=>'4,22,35,16,70,83,25,75,33,77,85,110,98,100'
,p_plug_comment=>'4,7,22,35,16,18,70,83,25,75,33,77,85,110,98,100'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158548798195101201)
,p_plug_name=>'Custom CSS and Script'
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    html{font-size:1.1rem}',
'    .a-GV {font-size: 0.85rem;}',
'.a-GV-headerLabel {font-size: 12px;}',
'    body {',
'background-color:#ebf6f9; /* #e9f1fa;*/',
'/*  background: rgba(235,246,249,1); background: -moz-linear-gradient(top, rgba(235,246,249,1) 0%, rgba(194,226,235,1) 56%, rgba(138,197,214,1) 100%); background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(235,246,249,1)), color-stop'
||'(56%, rgba(194,226,235,1)), color-stop(100%, rgba(138,197,214,1))); background: -webkit-linear-gradient(top, rgba(235,246,249,1) 0%, rgba(194,226,235,1) 56%, rgba(138,197,214,1) 100%); background: -o-linear-gradient(top, rgba(235,246,249,1) 0%, rgba('
||'194,226,235,1) 56%, rgba(138,197,214,1) 100%); background: -ms-linear-gradient(top, rgba(235,246,249,1) 0%, rgba(194,226,235,1) 56%, rgba(138,197,214,1) 100%); background: linear-gradient(to bottom, rgba(235,246,249,1) 0%, rgba(194,226,235,1) 56%, rg'
||'ba(138,197,214,1) 100%); filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#ebf6f9'', endColorstr=''#8ac5d6'', GradientType=0 );*/',
'',
'/*  background-image: url("#WORKSPACE_IMAGES#bg2.jpg");',
'background-repeat: no-repeat;',
'background-position: bottom ;',
'background-size: 100% 40%;*/',
'}',
'body:before {',
'content: "";',
'position: absolute;',
'background-size: cover;',
'z-index: -1;',
'/*  -webkit-transform: scale(5);',
'transform: scale(5);',
'-webkit-filter: blur(1px);*/',
'height: 100%;',
'width: 100%;',
'-webkit-transform-origin: top left;',
'transform-origin: top left;',
'}',
'.t-Footer {display:none;}',
'.t-Body, body {background: none;}',
'',
'/*Added for Help - start*/',
'body .ui-dialog .ui-dialog-titlebar {',
'background-color:#0572CE ;',
'border-bottom:1px solid rgba(0,0,0,.05)',
'}',
'body .ui-dialog.t-Dialog-page--wizard .ui-dialog-titlebar {',
'background-color:#0572CE ;',
'}',
'.t-Dialog--wizard.ui-dialog .ui-dialog-title, body .ui-dialog .ui-dialog-title {',
'color:#fff;',
'}',
'/*Added for Help - end*/',
'',
'/*Added for Breadcrumb - start*/',
'.t-Body-title {',
'/*   background-color: rgba(235,246,249,.9);*/',
'color: #404040;',
'-webkit-backdrop-filter: saturate(180%) blur(8px);',
'}',
'',
'.t-Breadcrumb-label {',
'font-weight: bold;',
'color: #0572CE;',
'}',
'/*Added for Breadcrumb - end*/',
'',
'.CSSreadonly {color: #0076DF;background-color: #E8E8E8}',
'.t-MediaList-desc  {font-size: 1.1rem;}',
'.t-MediaList-title  {font-size: 0.75rem;}',
'    :root {',
'    --ut-tabs-background-color: #EBF6F9; ',
'    --ut-palette-primary-shade : #86c0f9;  //Added by rahul to highlight selected row of grid with different colour 18-feb-25',
'    }',
'    ',
'    :root {  }',
'',
'</style>',
'<script>',
'function igStatusColorEachRow (pgrid,precord,pcolor1,pcolor2)',
'    {',
'        $(document).ready(function(){',
'            $("#"+pgrid+" tbody tr:nth-child("+precord+")").css({"background-image": "linear-gradient(to right," + pcolor1+"," + pcolor2+ ")","color": "#000!important" });',
'            $("#"+pgrid+" a").css({"color": "#000!important" });',
'        });',
'    }',
'    ',
'function igStatusColor(pgrid,pcolorkey1,pcolorkey2){',
'    /* some operations */',
'   ',
'    var model = apex.region(pgrid).widget().interactiveGrid("getViews", "grid").model;',
'    var  v_product_color1, v_product_color2;',
'    v_product_color1 =   model.getFieldKey(pcolorkey1);',
'    v_product_color2 =   model.getFieldKey(pcolorkey2);',
'  ',
'    /* model.fetchAll(function() {} This can be used to fetch all the records of the model without considering pagination */',
'       ',
'    var record = 1;',
'    model.forEach(function(igrow) {',
'            console.log(''record - '' + record + ''color - '' + igrow[v_product_color1]);',
'            igStatusColorEachRow (pgrid,record,igrow[v_product_color1] ,igrow[v_product_color2] );      ',
'  ',
'            record = parseInt(record) +1;',
'            ',
'            ',
'        }',
'    );',
'  ',
'}',
'</script>'))
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body:before {',
'  content: "";',
'  position: absolute;',
'  /*background-image: url("#WORKSPACE_IMAGES#bg2.jpg");*/',
'',
'  background-size: cover;',
'  z-index: -1;  ',
'/*  -webkit-transform: scale(5);  ',
'          transform: scale(5);',
'  -webkit-filter: blur(1px);*/',
'  height: 100%;',
'  width: 100%;',
'  -webkit-transform-origin: top left;',
'          transform-origin: top left;',
'}',
'',
'',
'style="background: rgba(235,246,249,1); background: -moz-linear-gradient(top, rgba(235,246,249,1) 0%, rgba(194,226,235,1) 56%, rgba(138,197,214,1) 100%); background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(235,246,249,1)), color-s'
||'top(56%, rgba(194,226,235,1)), color-stop(100%, rgba(138,197,214,1))); background: -webkit-linear-gradient(top, rgba(235,246,249,1) 0%, rgba(194,226,235,1) 56%, rgba(138,197,214,1) 100%); background: -o-linear-gradient(top, rgba(235,246,249,1) 0%, rg'
||'ba(194,226,235,1) 56%, rgba(138,197,214,1) 100%); background: -ms-linear-gradient(top, rgba(235,246,249,1) 0%, rgba(194,226,235,1) 56%, rgba(138,197,214,1) 100%); background: linear-gradient(to bottom, rgba(235,246,249,1) 0%, rgba(194,226,235,1) 56%,'
||' rgba(138,197,214,1) 100%); filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#ebf6f9'', endColorstr=''#8ac5d6'', GradientType=0 );"',
'',
'<script type="text/javascript"> ',
' function url() {',
'   var p_app = location.href;',
'   window.open(p_app,''_blank'',''status=0,resizable=1,menubar=1,scrollbars=1,location=0,directories=0'');',
'        return;',
' }',
'',
'function print_url()',
'	{',
'		var colon_pos = 3;',
'		var p_app = location.href;',
'				',
'		var splitURL = p_app.split("f?p=");',
'		var new_url = splitURL[0] + "f?p=";',
'		',
'		var splitApexURL = splitURL[1].split(":");',
'		new_url = new_url + splitApexURL[0]; //app ID',
'		new_url = new_url + ":" + splitApexURL[1]; //page ID',
'		new_url = new_url + ":" + splitApexURL[2]; //session ID',
'		new_url = new_url + ":YES"; //print',
'		',
'		if (splitApexURL.length > 3)',
'		{',
'			for(i = 4; i < splitApexURL.length; i++)',
'			{',
'				new_url = new_url + ":" + splitApexURL[i];',
'			}',
'		}',
'		',
'		//alert(new_url);',
'		window.open(new_url,''_blank'',''status=0,resizable=1,menubar=1,scrollbars=1,location=0,directories=0'');',
'        return;		',
'	}',
'</script>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1456544136898787591)
,p_plug_name=>'Confirmation'
,p_region_name=>'SB_CONFIRM'
,p_icon_css_classes=>'fa-warning'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_region_attributes=>'style="background:#EBF6F9"'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>-5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_comment=>'#fffaed"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1456543894733787589)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1456544136898787591)
,p_button_name=>'No'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'No'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:fnConfirmNo();'
,p_icon_css_classes=>'fa-times-rectangle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1456543971178787590)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1456544136898787591)
,p_button_name=>'Yes'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Yes'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:fnConfirmYes();'
,p_button_css_classes=>'u-color-34'
,p_icon_css_classes=>'fa-check-square'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15569102386137081)
,p_name=>'P0_PROFIT_CALC_SETUP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1456544136898787591)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_code',
'from V_SETUP_TABLE',
'where st_type = ''PROD_CALC_MST''',
'and st_name = ''PROFIT_AMT_CALC_ON_PURCHASE_AMT'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1456543617195787586)
,p_name=>'P0_REQ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1456544136898787591)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1456543753753787588)
,p_name=>'P0_CONFIRM_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1456544136898787591)
,p_pre_element_text=>'&nbsp;&nbsp;<span aria-hidden="true" class="fa fa-exclamation-triangle fa-anim-flash fa-2x u-color-7-text"></span>&nbsp;&nbsp;'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>0
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(125421175449564134)
,p_name=>'Alert message should disappear after set time limit'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125421294825564135)
,p_event_id=>wwv_flow_imp.id(125421175449564134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document).ready(function() {',
'    apex.debug.info("On document ready - configure Success Messages to automatically dismiss..");',
'',
'    var opt = {',
'        autoDismiss: true,',
'        duration: 1000 // Optional. Default value is 3000',
'    }',
'',
'    // this only applys configuration when base page has a process success message ready to display',
'    apex.theme42.configureSuccessMessages(opt);',
'',
'    if (apex.theme42.configureSuccessMessages.options === undefined) {',
'        apex.debug.warn("Apply options so apex.message.showPageSuccess() calls work the same way");',
'',
'        apex.theme42.configureSuccessMessages.options = opt;',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48135965313567483)
,p_name=>'HIde Show Side Menu onMouseOver'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48136091367567484)
,p_event_id=>wwv_flow_imp.id(48135965313567483)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function(ut, $) {',
'',
'var TREE_NAV_WIDGET_KEY = ''nav'';',
'',
'$(window).on(''theme42ready'', function() {',
'    /* Make sure that the navigation menu is collapsed on page load */',
'    if (ut.toggleWidgets.isExpanded(TREE_NAV_WIDGET_KEY)){',
'        ut.toggleWidgets.collapseWidget(TREE_NAV_WIDGET_KEY);',
'    }',
'',
'    /* Expand on mouse over, collapse on mouse out */',
'    $(''.apex-side-nav.js-navCollapsed .t-Body-nav'').hover(',
'        function(){',
'            ut.toggleWidgets.expandWidget(TREE_NAV_WIDGET_KEY);',
'        },',
'        function() {',
'            ut.toggleWidgets.collapseWidget(TREE_NAV_WIDGET_KEY);',
'        }',
'    );',
'});',
'',
'})(apex.theme42, apex.jQuery);'))
);
wwv_flow_imp.component_end;
end;
/
