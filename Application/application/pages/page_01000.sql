prompt --application/pages/page_01000
begin
--   Manifest
--     PAGE: 01000
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
 p_id=>1000
,p_name=>'SB Costing'
,p_step_title=>'SB Costing'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'    function calCosting() {',
'        var tier_prices = [',
'            { minQty: parseFloat($v("P1000_SLAB_1")), unitPrice:parseFloat($v("P1000_SLAB_1_VAL")) }',
'            ,{ minQty: parseFloat($v("P1000_SLAB_2")), unitPrice:parseFloat($v("P1000_SLAB_2_VAL")) }',
'            ,{ minQty: parseFloat($v("P1000_SLAB_3")), unitPrice:parseFloat($v("P1000_SLAB_3_VAL")) }',
'            ,{ minQty: parseFloat($v("P1000_SLAB_4")), unitPrice:parseFloat($v("P1000_SLAB_4_VAL")) }',
'            //{ minQty: parseFloat($v("P1000_SLAB_5")), unitPrice:parseFloat($v("P1000_SLAB_5_VAL")) }',
'        ];',
'        ',
'            var qty = parseFloat($v("P1000_TOTAL_CBM"));',
'            var price = 0;',
'            var tmpQtybefore = 0;',
'            var tmpQty = 0;',
'',
'            for (var i = 0; i < tier_prices.length ; i++) {',
'                tmpQtybefore = tmpQtybefore + tier_prices[i].minQty;',
'                if (qty - tmpQtybefore > 0 )',
'                {',
'                    price = price + (tier_prices[i].unitPrice * tier_prices[i].minQty);',
'               //	alert(''price in if'' + price);',
'                    tmpQty = tmpQty + tier_prices[i].minQty;',
'                }',
'                else',
'                {',
'                    price = price + (tier_prices[i].unitPrice * (qty - tmpQty));',
'                //	alert(''price in else'' + price);',
'                    break;',
'                }',
'            }',
'            $s("P1000_COST",new Intl.NumberFormat().format(price));',
'               //price.toLocaleString()',
'        ',
'        var tier_prices_1 = [',
'            { minQty: parseFloat($v("P1000_SLAB_1")), unitPrice:parseFloat($v("P1000_SLAB_1_VAL_1")) }',
'            ,{ minQty: parseFloat($v("P1000_SLAB_2")), unitPrice:parseFloat($v("P1000_SLAB_2_VAL_1")) }',
'            ,{ minQty: parseFloat($v("P1000_SLAB_3")), unitPrice:parseFloat($v("P1000_SLAB_3_VAL_1")) }',
'            ,{ minQty: parseFloat($v("P1000_SLAB_4")), unitPrice:parseFloat($v("P1000_SLAB_4_VAL_1")) }',
'            //{ minQty: parseFloat($v("P1000_SLAB_5")), unitPrice:parseFloat($v("P1000_SLAB_5_VAL_1")) }',
'        ];',
'        ',
'            var qty = parseFloat($v("P1000_TOTAL_CBM_1"));',
'            var price_1 = 0;',
'            var tmpQtybefore = 0;',
'            var tmpQty = 0;',
'',
'            for (var i = 0; i < tier_prices_1.length ; i++) {',
'                tmpQtybefore = tmpQtybefore + tier_prices_1[i].minQty;',
'                if (qty - tmpQtybefore > 0 )',
'                {',
'                    price_1 = price_1 + (tier_prices_1[i].unitPrice * tier_prices_1[i].minQty);',
'               //	alert(''price_1 in if'' + price_1);',
'                    tmpQty = tmpQty + tier_prices_1[i].minQty;',
'                }',
'                else',
'                {',
'                    price_1 = price_1 + (tier_prices_1[i].unitPrice * (qty - tmpQty));',
'                //	alert(''price_1 in else'' + price_1);',
'                    break;',
'                }',
'            }',
'            $s("P1000_COST_1",new Intl.NumberFormat().format(price_1));',
'               //price_1.toLocaleString()',
'			   ',
'var tier_prices_2 = [',
'            { minQty: parseFloat($v("P1000_SLAB_1")), unitPrice:parseFloat($v("P1000_SLAB_1_VAL_2")) }',
'            ,{ minQty: parseFloat($v("P1000_SLAB_2")), unitPrice:parseFloat($v("P1000_SLAB_2_VAL_2")) }',
'            ,{ minQty: parseFloat($v("P1000_SLAB_3")), unitPrice:parseFloat($v("P1000_SLAB_3_VAL_2")) }',
'            ,{ minQty: parseFloat($v("P1000_SLAB_4")), unitPrice:parseFloat($v("P1000_SLAB_4_VAL_2")) }',
'            //{ minQty: parseFloat($v("P1000_SLAB_5")), unitPrice:parseFloat($v("P1000_SLAB_5_VAL_2")) }',
'        ];',
'        ',
'            var qty = parseFloat($v("P1000_TOTAL_CBM_2"));',
'            var price_2 = 0;',
'            var tmpQtybefore = 0;',
'            var tmpQty = 0;',
'',
'            for (var i = 0; i < tier_prices_2.length ; i++) {',
'                tmpQtybefore = tmpQtybefore + tier_prices_2[i].minQty;',
'                if (qty - tmpQtybefore > 0 )',
'                {',
'                    price_2 = price_2 + (tier_prices_2[i].unitPrice * tier_prices_2[i].minQty);',
'               //	alert(''price_2 in if'' + price_2);',
'                    tmpQty = tmpQty + tier_prices_2[i].minQty;',
'                }',
'                else',
'                {',
'                    price_2 = price_2 + (tier_prices_2[i].unitPrice * (qty - tmpQty));',
'                //	alert(''price_2 in else'' + price_2);',
'                    break;',
'                }',
'            }',
'            $s("P1000_COST_2",new Intl.NumberFormat().format(price_2));',
'               //price_2.toLocaleString()			   ',
'        ',
'		var final_cost = 0;',
'		final_cost = price + price_1 + price_2;',
'		$s("P1000_FINAL_COST",new Intl.NumberFormat().format(final_cost));',
'        ',
'    }',
'</script>'))
,p_javascript_code_onload=>'calCosting();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.fa.fa-lg, .force-fa-lg .fa {    font-size: 35px;}',
'',
'h3 {    font-size: 1.5rem;line-height: 1;}',
'',
'.t-Cards--featured .t-Card-desc{line-height: 1px;}',
'',
'.t-Cards--block .t-Card-icon{padding : 0px}',
'.t-Cards--block .t-Icon{background-color: rgba(0,0,0,0);}',
'',
'.t-Form-fieldContainer--floatingLabel .t-Form-inputContainer .apex-item-display-only{    color:blue;    font-weight:bold;}',
'',
'ul.ultick1, ul.ultick2, ul.ultick3{ list-style-type: none; }',
'',
'li {    line-height: 1rem;}',
'',
'ul.ultick1 li:before {',
'	color: #309FDB;',
'	content: "\2714\0020";',
'	display: inline-block;',
'	margin-left: -36px;',
'	width: 36px;',
'}',
'',
'ul.ultick2 li:before {',
'	color: #13B6CF;',
'	content: "\2714\0020";',
'	display: inline-block;',
'	margin-left: -36px;',
'	width: 36px;',
'}',
'',
'ul.ultick3 li:before {',
'	color: #2EBFBC;',
'	content: "\2714\0020";',
'	display: inline-block;',
'	margin-left: -36px;',
'	width: 36px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(69913861202257093)
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44063205354765365)
,p_plug_name=>'Costing Details 20'''
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(44065289038765386)
,p_name=>'Available Package(s)'
,p_display_sequence=>10
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--cols:t-Cards--animColorFill:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'        LISTAGG(''<ul class="ultick1"><li>'' || SFL_DESCRIPTION || ''</li></ul>'', ''<br>'') within group(order by sfl_id)  CARD_TEXT,',
'      -- SFL_SHORT_DESCRIPTION,',
'       '' Pre & Post Shipment Package'' CARD_TITLE,',
'        1 ord,',
'        '''' CARD_SUBTITLE,',
'        '''' CARD_SUBTEXT,',
'        ''20'''''' CARD_INITIALS ,',
'        '''' CARD_ICON',
'  from V_SB_FEATURE_LIST',
'  where SFL_PACKAGE_1 =''Y''',
'  union',
'  select ',
'       LISTAGG(''<ul class="ultick2"><li>'' || SFL_DESCRIPTION || ''</li></ul>'', ''<br>'') within group(order by sfl_id)   CARD_TEXT,',
'      -- SFL_SHORT_DESCRIPTION,',
'       '' Pre & Post Shipment Package with Add-on Package'' CARD_TITLE,',
'      2 ord,',
'      '''' CARD_SUBTITLE,',
'      ''<span style="color:red">* - In Product Development Roadmap</span>'' CARD_SUBTEXT,',
'        ''40''''''  CARD_INITIALS,',
'        '''' CARD_ICON',
'  from V_SB_FEATURE_LIST',
'  where SFL_PACKAGE_2 =''Y'' and SFL_PACKAGE_1 !=''Y''',
' /*   union',
'  select ',
'        LISTAGG(''<ul class="ultick3"><li>'' || SFL_DESCRIPTION || ''</li></ul>'', ''<br>'') within group(order by sfl_id)  CARD_TEXT,',
'      -- SFL_SHORT_DESCRIPTION,',
'       '' Pre & Post Shipment with Add-on Package'' CARD_TITLE,',
'      3 ord,',
'      '''' CARD_SUBTITLE,',
'      ''<span style="color:red">* - In Product Development Roadmap</span>'' CARD_SUBTEXT,',
'        ''40''''HC'' CARD_INITIALS,',
'        '''' CARD_ICON',
'  from V_SB_FEATURE_LIST',
'  where SFL_PACKAGE_3=''Y'' and SFL_PACKAGE_2 !=''Y'' and SFL_PACKAGE_1 !=''Y''*/',
'  order by 3'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(44939786723593168)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34164198584764682)
,p_query_column_id=>1
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Text'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34164032881764681)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_column_link=>'f?p=&APP_ID.:1000:&SESSION.:#CARD_INITIALS#:&DEBUG.:RP::'
,p_column_linktext=>'#CARD_TITLE#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34164913117764689)
,p_query_column_id=>3
,p_column_alias=>'ORD'
,p_column_display_sequence=>3
,p_column_heading=>'Ord'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34164973518764690)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTITLE'
,p_column_display_sequence=>4
,p_column_heading=>'Card Subtitle'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34165098744764691)
,p_query_column_id=>5
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card Subtext'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44770069452610852)
,p_query_column_id=>6
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>6
,p_column_heading=>'Card Initials'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(44770156640610853)
,p_query_column_id=>7
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>7
,p_column_heading=>'Card Icon'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44771334743610865)
,p_plug_name=>'Costing Details 40'''
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'We are working on it.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_comment=>'<span>The yearly cost for 20'' package is <span class="fa fa-inr" aria-hidden="true" style="color:blue;font-weight:bold;">1,50,000.00</span>.</span>'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44064981567765383)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_button_name=>'Calculate'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Calculate'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27612218760485743)
,p_name=>'P1000_FLAT_RATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_prompt=>'<span>The one-time cost for 20'' package is <span class="fa fa-inr" aria-hidden="true" style="color:blue;font-weight:bold;">1,50,000.00</span>.</span>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44063407283765367)
,p_name=>'P1000_COST'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_prompt=>'Total Cost  1/ year'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44063434583765368)
,p_name=>'P1000_TOTAL_CBM'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_use_cache_before_default=>'NO'
,p_item_default=>'3000'
,p_prompt=>'Total CBM 1/ year'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-package'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44063960638765373)
,p_name=>'P1000_SLAB_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'150'
,p_prompt=>'Slab 1 - Upto CBM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44064100002765374)
,p_name=>'P1000_SLAB_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'1500'
,p_prompt=>'Slab 2 - Upto CBM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44064142470765375)
,p_name=>'P1000_SLAB_3'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'3000'
,p_prompt=>'Slab 3 - Upto CBM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44064231531765376)
,p_name=>'P1000_SLAB_4'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'5000'
,p_prompt=>'Slab 4 - Above CBM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44064382495765377)
,p_name=>'P1000_SLAB_5'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'5001'
,p_prompt=>'Slab 5 - Above CBM'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when_type=>'NEVER'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44064496338765378)
,p_name=>'P1000_SLAB_1_VAL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'0'
,p_prompt=>'Slab 1 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44064571248765379)
,p_name=>'P1000_SLAB_2_VAL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'100'
,p_prompt=>'Slab 2 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44064727808765380)
,p_name=>'P1000_SLAB_3_VAL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'85'
,p_prompt=>'Slab 3 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44064763755765381)
,p_name=>'P1000_SLAB_4_VAL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'65'
,p_prompt=>'Slab 4 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44064848230765382)
,p_name=>'P1000_SLAB_5_VAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'40'
,p_prompt=>'Slab 5 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47560998383591455)
,p_name=>'P1000_SLAB_1_VAL_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'0'
,p_prompt=>'Slab 1 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47561063048591456)
,p_name=>'P1000_SLAB_2_VAL_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'100'
,p_prompt=>'Slab 2 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47561183629591457)
,p_name=>'P1000_SLAB_3_VAL_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'85'
,p_prompt=>'Slab 3 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47561284423591458)
,p_name=>'P1000_SLAB_4_VAL_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'65'
,p_prompt=>'Slab 4 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47561410261591459)
,p_name=>'P1000_SLAB_5_VAL_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'40'
,p_prompt=>'Slab 5 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47561594088591461)
,p_name=>'P1000_TOTAL_CBM_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_use_cache_before_default=>'NO'
,p_item_default=>'3000'
,p_prompt=>'Total CBM 2/ year'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-package'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47561750751591463)
,p_name=>'P1000_COST_1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_prompt=>'Total Cost 2/ year'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47561944836591465)
,p_name=>'P1000_SLAB_1_VAL_2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'0'
,p_prompt=>'Slab 1 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47562051768591466)
,p_name=>'P1000_SLAB_2_VAL_2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'100'
,p_prompt=>'Slab 2 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47562210609591467)
,p_name=>'P1000_SLAB_3_VAL_2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'85'
,p_prompt=>'Slab 3 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47562287968591468)
,p_name=>'P1000_SLAB_4_VAL_2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'65'
,p_prompt=>'Slab 4 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47562404888591469)
,p_name=>'P1000_SLAB_5_VAL_2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_item_default=>'40'
,p_prompt=>'Slab 5 Rate'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47562516447591470)
,p_name=>'P1000_TOTAL_CBM_2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_use_cache_before_default=>'NO'
,p_item_default=>'3000'
,p_prompt=>'Total CBM 3/ year'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-package'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47562569291591471)
,p_name=>'P1000_COST_2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_prompt=>'Total Cost 3/ year'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47562713443591472)
,p_name=>'P1000_FINAL_COST'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_prompt=>'Total Cost / year'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_grid_column=>11
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-inr'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47562797446591473)
,p_name=>'P1000_SLAB_DESC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_prompt=>'1-10 Products'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47562884823591474)
,p_name=>'P1000_SLAB_DESC_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_prompt=>'11-20 Products'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47562964264591475)
,p_name=>'P1000_SLAB_DESC_2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(44063205354765365)
,p_prompt=>'Above 20 Products'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>2
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44063758759765371)
,p_name=>'calCosting'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1000_TOTAL_CBM,P1000_TOTAL_CBM_1,P1000_TOTAL_CBM_2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44063895047765372)
,p_event_id=>wwv_flow_imp.id(44063758759765371)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1000_COST,P1000_COST_1,P1000_COST_2'
,p_attribute_01=>'calCosting();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44065126584765384)
,p_name=>'onclickCalCosting'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(44064981567765383)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44065170857765385)
,p_event_id=>wwv_flow_imp.id(44065126584765384)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1000_COST'
,p_attribute_01=>'calCosting();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44770242567610854)
,p_name=>'Request is 20'''
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'REQUEST_EQUALS_CONDITION'
,p_display_when_cond=>'20'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44770418929610855)
,p_event_id=>wwv_flow_imp.id(44770242567610854)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44771334743610865)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44771221686610863)
,p_event_id=>wwv_flow_imp.id(44770242567610854)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1000_SLAB_1_VAL,P1000_SLAB_2_VAL,P1000_SLAB_3_VAL,P1000_SLAB_4_VAL,P1000_SLAB_5_VAL'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P1000_SLAB_1",100);',
'$s("P1000_SLAB_2",1000);',
'$s("P1000_SLAB_3",2000);',
'$s("P1000_SLAB_4",2001);',
'//$s("P1000_SLAB_5",4000);',
'',
'$s("P1000_SLAB_1_VAL",0);',
'$s("P1000_SLAB_2_VAL",25);',
'$s("P1000_SLAB_3_VAL",15);',
'$s("P1000_SLAB_4_VAL",10);',
'//$s("P1000_SLAB_5_VAL",40);',
'',
'$s("P1000_SLAB_1_VAL_1",0);',
'$s("P1000_SLAB_2_VAL_1",40);',
'$s("P1000_SLAB_3_VAL_1",30);',
'$s("P1000_SLAB_4_VAL_1",25);',
'//$s("P1000_SLAB_5_VAL_1",40);',
'',
'$s("P1000_SLAB_1_VAL_2",0);',
'$s("P1000_SLAB_2_VAL_2",50);',
'$s("P1000_SLAB_3_VAL_2",40);',
'$s("P1000_SLAB_4_VAL_2",35);',
'//$s("P1000_SLAB_5_VAL",40);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44771470593610866)
,p_event_id=>wwv_flow_imp.id(44770242567610854)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44063205354765365)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44770584134610857)
,p_name=>'Request is 40'''
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'REQUEST_EQUALS_CONDITION'
,p_display_when_cond=>'40'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44770661259610858)
,p_event_id=>wwv_flow_imp.id(44770584134610857)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44771334743610865)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44771557734610867)
,p_event_id=>wwv_flow_imp.id(44770584134610857)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44063205354765365)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(44771001954610861)
,p_name=>'Request is 40''HC'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'REQUEST_EQUALS_CONDITION'
,p_display_when_cond=>'40''HC'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44771127693610862)
,p_event_id=>wwv_flow_imp.id(44771001954610861)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44063205354765365)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44771248010610864)
,p_event_id=>wwv_flow_imp.id(44771001954610861)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1000_SLAB_1_VAL,P1000_SLAB_2_VAL,P1000_SLAB_3_VAL,P1000_SLAB_4_VAL,P1000_SLAB_5_VAL'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P1000_SLAB_1_VAL",0);',
'$s("P1000_SLAB_2_VAL",110);',
'$s("P1000_SLAB_3_VAL",95);',
'$s("P1000_SLAB_4_VAL",75);',
'$s("P1000_SLAB_5_VAL",50);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(44771632381610868)
,p_event_id=>wwv_flow_imp.id(44771001954610861)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(44771334743610865)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
