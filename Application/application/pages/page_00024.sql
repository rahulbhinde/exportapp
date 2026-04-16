prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_name=>'Costing of Individual Product'
,p_step_title=>'Costing of Individual Product'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'var vTotal;',
'var vOnLoadFlag;',
'function fcalc_percent(vVal, vPercent)',
'{',
'	',
' if (vVal == '''' || isNaN(vVal))',
'	vVal = 0; ',
'if (vPercent == '''' || isNaN(vPercent))',
'	vPercent = 0; ',
'/*	alert(''vVal '' + vVal);',
'	alert(''vPercent '' + vPercent);*/',
' vCalcVal = (parseFloat(vVal) * parseFloat(vPercent) / 100).toFixed(2);',
'    ',
'    if (isFinite(vCalcVal)){',
'      //  alert (vCalcVal);',
'        return vCalcVal;',
'    }',
'    else',
'        {',
'     //   alert (vCalcVal);',
'        return 0;',
'        }',
'    ',
' //return (parseFloat(vVal) * parseFloat(vPercent) / 100).toFixed(2);',
'}',
'',
'function fcalc_base_price()',
'    ',
'{',
'	    ',
'    if ($v(''P24_EOD_TRADE_PRICE'') != 0 )',
'        {',
'             $x(''P24_EOD_PURCHASE_AMT'').value = (parseFloat($v(''P24_EOD_TRADE_PRICE''))*parseFloat($v(''P24_PKG1''))).toFixed(2);',
'        }',
'',
'   ',
'    $x(''P24_EOD_SCHEME_AMT'').value = fcalc_percent($v(''P24_EOD_PURCHASE_AMT''), $v(''P24_EOD_SCHEME_PERC''))*-1;',
'	    $x(''P24_EOD_DISCOUNT_AMT'').value = fcalc_percent((parseFloat($v(''P24_EOD_PURCHASE_AMT''))+parseFloat($v(''P24_EOD_SCHEME_AMT''))), $v(''P24_EOD_DISCOUNT_PERC''))*-1;',
'    //added EOD_TOTAL_GST_PERC calc. so that (Amount * GST%) * GST Exp% but below first GST Exp% calc. then GST% as sequence doesnt matter',
'	    $x(''P24_EOD_GST_AMT'').value = fcalc_percent(fcalc_percent((parseFloat($v(''P24_EOD_PURCHASE_AMT''))+parseFloat($v(''P24_EOD_SCHEME_AMT''))+parseFloat($v(''P24_EOD_DISCOUNT_AMT''))), $v(''P24_EOD_GST_PERC'')),$v(''P24_EOD_TOTAL_GST_PERC''));    ',
'    fcalc_net_purchase();',
'}',
'',
'function fcalc_net_purchase()',
'{',
'    $x(''P24_EOD_NET_PURCHASE_VAL'').value = (parseFloat($v(''P24_EOD_PURCHASE_AMT''))+parseFloat($v(''P24_EOD_SCHEME_AMT''))',
'                                            +parseFloat($v(''P24_EOD_DISCOUNT_AMT''))+parseFloat($v(''P24_EOD_GST_AMT''))',
'                                            +parseFloat($v(''P24_EOD_TRANS_CHARGES''))+parseFloat($v(''P24_EOD_BAGS_CTNS''))',
'                                            +parseFloat($v(''P24_EOD_RECOV_ON_FRT''))+parseFloat($v(''P24_EOD_REPACKING''))',
'                                            +parseFloat($v(''P24_EOD_EXTRA''))).toFixed(2);    ',
'',
'    //fcalc_financials(); //commented by Rahul on 241118 so value not re-calculated of Vol. FOB Exp. so added below func. call',
'    fcalc_fob_exp_amt();  //added by Rahul on 241118',
'}',
'    ',
'function fcalc_fob_exp_amt()',
'{',
'	$x(''P24_EOD_VOL_FOB_EXP'').value = (parseFloat($v(''P24_EOD_VOL_FOB_AMT'')) / parseFloat($v(''P24_STW_RND_20''))).toFixed(2); ',
'',
'    if (! isFinite ($x(''P24_EOD_VOL_FOB_EXP'').value))',
'        {',
'            $x(''P24_EOD_VOL_FOB_EXP'').value = 0;',
'        }',
'    fcalc_financials();',
'}',
'    ',
'function fcalc_financials(vFlag)',
'{',
'   // alert (''before123'' + vFlag + ''val'');',
'     vOnLoadFlag = vFlag;   ',
'    if (vFlag == '''' || vFlag === undefined) ',
'            vOnLoadFlag =  ''N'';',
'    // alert (''after '' + vOnLoadFlag);',
'        vTotal = parseFloat($v(''P24_EOD_VOL_FOB_EXP''))+parseFloat($v(''P24_EOD_NET_PURCHASE_VAL''));',
'        $x(''P24_EOD_PROFIT_AMT'').value	= fcalc_percent(vTotal, $v(''P24_EOD_PROFIT_PERC''));',
'',
'        $x(''P24_EOD_INCOME_TAX'').value = fcalc_percent($v(''P24_EOD_PROFIT_AMT''), $v(''P24_INCOME_TAX_PERC''));',
'',
'        vTotal = vTotal + 	parseFloat($v(''P24_EOD_PROFIT_AMT''))+parseFloat($v(''P24_EOD_INCOME_TAX''));',
'        $x(''P24_EOD_DUTY_AMT'').value	= fcalc_percent(vTotal, $v(''P24_EOD_DUTY_PERC''));',
'',
'        vTotal = vTotal + parseFloat($v(''P24_EOD_DUTY_AMT''));',
'        $x(''P24_EOD_ECGC'').value	= fcalc_percent(vTotal, $v(''P24_ECGC_PERC''));	',
'',
'        vTotal = vTotal + parseFloat($v(''P24_EOD_ECGC''));',
'        $x(''P24_EOD_BANK_COMM'').value	= fcalc_percent(vTotal, $v(''P24_BANK_COMM_PERC''));		',
'',
'',
'        vTotal = vTotal + parseFloat($v(''P24_EOD_BANK_COMM''));',
'        /*$x(''P24_EOD_INTEREST_AMT'').value	= fcalc_percent(vTotal, $v(''P24_EOD_INTEREST_PERC''));		',
'        commented by Ranu to exclude Inc Tax an d Profit Amt*/',
'        $x(''P24_EOD_INTEREST_AMT'').value	= fcalc_percent(vTotal - (parseFloat($v(''P24_EOD_PROFIT_AMT''))+parseFloat($v(''P24_EOD_INCOME_TAX''))), $v(''P24_EOD_INTEREST_PERC''));		',
'    ',
'         ',
'        fcalc_fob();',
'        if ($v(''P24_COSTING_TYPE'') == ''C&F'')',
'       {',
'            fcalc_CF();',
'       } ',
'        else if ($v(''P24_COSTING_TYPE'') == ''C&I'')',
'       {',
'            fcalc_CI();',
'       } ',
'        else if ($v(''P24_COSTING_TYPE'') == ''CIF'')',
'       {',
'            fcalc_CIF();',
'       }    ',
'    ',
'}',
'    ',
'function fcalc_fob()',
'{',
'     vTotal = vTotal+parseFloat($v(''P24_EOD_INTEREST_AMT''));',
'     $x(''P24_EOD_FOB_RS'').value	= (vTotal).toFixed(2);',
'',
'     $x(''P24_EOD_FOB_DOLL'').value =  (parseFloat($v(''P24_EOD_FOB_RS'')) / parseFloat($v(''P24_EOD_EXCHANGE_RATE''))).toFixed(2);',
'        ',
'    if (isNaN($v(''P24_EOD_FOB_DOLL'')))',
'        {',
'             	$x(''P24_EOD_FOB_DOLL'').value = 0;',
'        }',
'',
'     $x(''P24_EOD_FOBC_AMT'').value  = fcalc_percent($v(''P24_EOD_FOB_DOLL''), $v(''P24_EOD_COMMISSION_PERC''));',
'',
'   // alert(''inside fob '' + vOnLoadFlag);',
'    if (vOnLoadFlag == ''N'')',
'    {',
'        $x(''P24_EOD_FOB_DOLL_RND'').value  = (parseFloat($v(''P24_EOD_FOB_DOLL'')) + parseFloat($v(''P24_EOD_FOBC_AMT''))).toFixed(2);',
'    }',
'    ',
'   ',
' ',
' }',
' ',
' function fcalc_CF()',
'{ ',
'     $x(''P24_EOD_FRT_PER_CTN'').value =  (parseFloat($v(''P24_EOD_OCEAN_FRT'')) / parseFloat($v(''P24_STW_RND_20''))).toFixed(2);',
'        ',
'    if (isNaN($v(''P24_EOD_FRT_PER_CTN'')))',
'        {',
'             	$x(''P24_EOD_FRT_PER_CTN'').value = 0;',
'        }',
'',
'     $x(''P24_EOD_CANDF_AMT'').value  = (parseFloat($v(''P24_EOD_FOB_DOLL'')) + parseFloat($v(''P24_EOD_FRT_PER_CTN''))).toFixed(2);',
'',
'     $x(''P24_EOD_CANDFC_AMT'').value  = fcalc_percent($v(''P24_EOD_CANDF_AMT''), $v(''P24_EOD_COMMISSION_PERC''));',
'',
'     if (vOnLoadFlag == ''N'')',
'     { ',
'        $x(''P24_EOD_CANDF_AMT_RND'').value  = (parseFloat($v(''P24_EOD_CANDF_AMT''))+ parseFloat($v(''P24_EOD_CANDFC_AMT''))).toFixed(2);',
'     }    ',
' }',
' ',
'  function fcalc_CI()',
'{ ',
'     $x(''P24_EOD_INSURANCE_AMT'').value =  fcalc_percent($v(''P24_EOD_FOB_DOLL''), $v(''P24_INSURANCE_PERC''));',
'',
'     $x(''P24_EOD_CNI_AMT'').value  = (parseFloat($v(''P24_EOD_FOB_DOLL'')) + parseFloat($v(''P24_EOD_INSURANCE_AMT''))).toFixed(2);  ',
'',
'     $x(''P24_EOD_CNIC_AMT'').value  = fcalc_percent($v(''P24_EOD_CNI_AMT''), $v(''P24_EOD_COMMISSION_PERC''));',
'    ',
'     if (vOnLoadFlag == ''N'')',
'     {',
'         $x(''P24_EOD_CNI_AMT_RND'').value  = (parseFloat($v(''P24_EOD_CNI_AMT''))+ parseFloat($v(''P24_EOD_CNIC_AMT''))).toFixed(2);',
'     }    ',
' }',
' ',
'   function fcalc_CIF()',
'{ ',
'  ',
'    	$x(''P24_EOD_FRT_PER_CTN'').value =  (parseFloat($v(''P24_EOD_OCEAN_FRT'')) / parseFloat($v(''P24_STW_RND_20''))).toFixed(2);',
'    ',
'    if (isNaN($v(''P24_EOD_FRT_PER_CTN'')))',
'        {',
'             	$x(''P24_EOD_FRT_PER_CTN'').value = 0;',
'        }',
'',
'    $x(''P24_EOD_CANDF_AMT'').value  = (parseFloat($v(''P24_EOD_FOB_DOLL'')) + parseFloat($v(''P24_EOD_FRT_PER_CTN''))).toFixed(2);',
'    ',
'    $x(''P24_EOD_INSURANCE_AMT'').value =  fcalc_percent($v(''P24_EOD_CANDF_AMT''), $v(''P24_INSURANCE_PERC''));',
'	',
'    $x(''P24_EOD_CIF_AMT'').value = (parseFloat($v(''P24_EOD_CANDF_AMT'')) + parseFloat($v(''P24_EOD_INSURANCE_AMT''))).toFixed(2);',
'   ',
'    $x(''P24_EOD_CIFC_AMT'').value  = fcalc_percent($v(''P24_EOD_CIF_AMT''), $v(''P24_EOD_COMMISSION_PERC''));',
'    ',
'    if (vOnLoadFlag == ''N'')',
'        {',
'            $x(''P24_EOD_CIF_AMT_RND'').value  = (parseFloat($v(''P24_EOD_CIF_AMT''))+ parseFloat($v(''P24_EOD_CIFC_AMT''))).toFixed(2);',
'        }',
' }',
'    ',
' function fdisp_calc_type()',
' {',
'     ',
'     		if ($v(''P24_COSTING_TYPE'') == ''FOB'')',
'		{',
'         $x(''P24_EOD_INSURANCE_AMT'').value = '''';',
'         $x(''P24_EOD_CNI_AMT'').value  = '''';  ',
'         $x(''P24_EOD_CNIC_AMT'').value  = '''';',
'         $x(''P24_EOD_CNI_AMT_RND'').value  = '''';',
'',
'         $x_Hide(''P24_EOD_INSURANCE_AMT'');',
'         $x_Hide(''P24_EOD_CNI_AMT'');',
'         $x_Hide(''P24_EOD_CNIC_AMT'');',
'         $x_Hide(''P24_EOD_CNI_AMT_RND'');',
'',
'         $x(''P24_EOD_CIF_AMT'').value  = '''';',
'         $x(''P24_EOD_CIFC_AMT'').value  = '''';',
'         $x(''P24_EOD_CIF_AMT_RND'').value  = '''';',
'',
'         $x_Hide(''P24_EOD_CIF_AMT'');',
'         $x_Hide(''P24_EOD_CIFC_AMT'');',
'         $x_Hide(''P24_EOD_CIF_AMT_RND'');',
'',
'         $x(''P24_EOD_FRT_PER_CTN'').value = '''';',
'         $x(''P24_EOD_OCEAN_FRT'').value  = '''';  ',
'         $x(''P24_EOD_CANDF_AMT'').value  = '''';',
'         $x(''P24_EOD_CANDFC_AMT'').value  = '''';',
'         $x(''P24_EOD_CANDF_AMT_RND'').value  = '''';',
'',
'         $x_Hide(''P24_EOD_FRT_PER_CTN'');',
'         $x_Hide(''P24_EOD_OCEAN_FRT'');',
'         $x_Hide(''P24_EOD_CANDF_AMT'');',
'         $x_Hide(''P24_EOD_CANDFC_AMT'');',
'         $x_Hide(''P24_EOD_CANDF_AMT_RND'');			',
'            ',
'         $x(''P24_INSURANCE_PERC'').value = ''''; ',
'         ',
'         $x_Hide(''P24_INSURANCE_PERC'');',
'',
'         $x_Show(''P24_EOD_FOBC_AMT'');',
'         $x_Show(''P24_EOD_FOB_DOLL_RND'');				 ',
'',
'			}',
'',
'   else if ($v(''P24_COSTING_TYPE'') == ''C&F'')',
'       {',
'             $x(''P24_EOD_FOBC_AMT'').value = '''';',
'             $x(''P24_EOD_FOB_DOLL_RND'').value  = '''';  ',
'',
'             $x_Hide(''P24_EOD_FOBC_AMT'');',
'             $x_Hide(''P24_EOD_FOB_DOLL_RND'');	',
'',
'             $x(''P24_EOD_INSURANCE_AMT'').value = '''';',
'             $x(''P24_EOD_CNI_AMT'').value  = '''';  ',
'             $x(''P24_EOD_CNIC_AMT'').value  = '''';',
'             $x(''P24_EOD_CNI_AMT_RND'').value  = '''';',
'',
'             $x_Hide(''P24_EOD_INSURANCE_AMT'');',
'             $x_Hide(''P24_EOD_CNI_AMT'');',
'             $x_Hide(''P24_EOD_CNIC_AMT'');',
'             $x_Hide(''P24_EOD_CNI_AMT_RND'');',
'',
'             $x(''P24_EOD_CIF_AMT'').value  = '''';',
'             $x(''P24_EOD_CIFC_AMT'').value  = '''';',
'             $x(''P24_EOD_CIF_AMT_RND'').value  = '''';',
'',
'             $x_Hide(''P24_EOD_CIF_AMT'');',
'             $x_Hide(''P24_EOD_CIFC_AMT'');',
'             $x_Hide(''P24_EOD_CIF_AMT_RND'');',
'',
'             $x(''P24_INSURANCE_PERC'').value = ''''; ',
'         ',
'             $x_Hide(''P24_INSURANCE_PERC'');',
'                      ',
'             $x_Show(''P24_EOD_FRT_PER_CTN'');',
'             $x_Show(''P24_EOD_OCEAN_FRT'');',
'             $x_Show(''P24_EOD_CANDF_AMT'');',
'             $x_Show(''P24_EOD_CANDFC_AMT'');',
'             $x_Show(''P24_EOD_CANDF_AMT_RND'');',
'',
'       }',
'	   else if ($v(''P24_COSTING_TYPE'') == ''C&I'')',
'	   {',
'',
'             $x(''P24_EOD_FOBC_AMT'').value = '''';',
'             $x(''P24_EOD_FOB_DOLL_RND'').value  = '''';  ',
'',
'             $x_Hide(''P24_EOD_FOBC_AMT'');',
'             $x_Hide(''P24_EOD_FOB_DOLL_RND'');	',
'',
'             $x(''P24_EOD_FRT_PER_CTN'').value = '''';',
'             $x(''P24_EOD_OCEAN_FRT'').value  = '''';  ',
'             $x(''P24_EOD_CANDF_AMT'').value  = '''';',
'             $x(''P24_EOD_CANDFC_AMT'').value  = '''';',
'             $x(''P24_EOD_CANDF_AMT_RND'').value  = '''';',
'',
'             $x_Hide(''P24_EOD_FRT_PER_CTN'');',
'             $x_Hide(''P24_EOD_OCEAN_FRT'');',
'             $x_Hide(''P24_EOD_CANDF_AMT'');',
'             $x_Hide(''P24_EOD_CANDFC_AMT'');',
'             $x_Hide(''P24_EOD_CANDF_AMT_RND'');',
'',
'             $x(''P24_EOD_CIF_AMT'').value  = '''';',
'             $x(''P24_EOD_CIFC_AMT'').value  = '''';',
'             $x(''P24_EOD_CIF_AMT_RND'').value  = '''';',
'',
'             $x_Hide(''P24_EOD_CIF_AMT'');',
'             $x_Hide(''P24_EOD_CIFC_AMT'');',
'             $x_Hide(''P24_EOD_CIF_AMT_RND'');',
'',
'             $x_Show(''P24_EOD_INSURANCE_AMT'');',
'             $x_Show(''P24_EOD_CNI_AMT'');',
'             $x_Show(''P24_EOD_CNIC_AMT'');',
'             $x_Show(''P24_EOD_CNI_AMT_RND'');',
'             $x_Show(''P24_INSURANCE_PERC'');',
'',
'	   ',
'	   }',
'	   else if ($v(''P24_COSTING_TYPE'') == ''CIF'')',
'	   {',
'',
'             $x(''P24_EOD_FOBC_AMT'').value = '''';',
'             $x(''P24_EOD_FOB_DOLL_RND'').value  = '''';  ',
'',
'             $x_Hide(''P24_EOD_FOBC_AMT'');',
'             $x_Hide(''P24_EOD_FOB_DOLL_RND'');	',
'',
'             $x(''P24_EOD_CANDFC_AMT'').value  = '''';',
'             $x(''P24_EOD_CANDF_AMT_RND'').value  = '''';',
'',
'             $x_Hide(''P24_EOD_CANDFC_AMT'');',
'             $x_Hide(''P24_EOD_CANDF_AMT_RND'');',
'',
'             $x(''P24_EOD_CNI_AMT'').value  = '''';  ',
'             $x(''P24_EOD_CNIC_AMT'').value  = '''';',
'             $x(''P24_EOD_CNI_AMT_RND'').value  = '''';',
'',
'             $x_Hide(''P24_EOD_CNI_AMT'');',
'             $x_Hide(''P24_EOD_CNIC_AMT'');',
'             $x_Hide(''P24_EOD_CNI_AMT_RND'');',
'',
'             $x_Show(''P24_EOD_INSURANCE_AMT'');',
'             $x_Show(''P24_EOD_CIF_AMT'');',
'             $x_Show(''P24_EOD_CIFC_AMT'');',
'             $x_Show(''P24_EOD_CIF_AMT_RND'');',
'             $x_Show(''P24_EOD_FRT_PER_CTN'');',
'             $x_Show(''P24_EOD_OCEAN_FRT'');',
'             $x_Show(''P24_EOD_CANDF_AMT'');',
'             $x_Show(''P24_INSURANCE_PERC'');',
'	   ',
'	   }	',
' }',
'    ',
'    /*Added by rahul on 23-nov-20 for verification of FOB Doll Round amount Start*/',
'    ',
'        function fnConfirmYes()',
'    {',
'        if ($v(''P0_REQ'') != "SB_CONFIRM_FOBRND")',
'          apex.submit($v(''P0_REQ''));',
'       ',
'        closeModal(''SB_CONFIRM'');',
'    }',
'',
'    function fnConfirmNo()',
'    {',
'        if ($v(''P0_REQ'') == "SB_CONFIRM_FOBRND")',
'           $s(''P24_EOD_FOB_DOLL_RND'',$v(''P24_EOD_FOB_DOLL''));',
'         ',
'        closeModal(''SB_CONFIRM'');',
'    }',
'    ',
'    /*Added by rahul on 23-nov-20 for verification of FOB Doll Round amount End*/',
'    ',
'</script>'))
,p_javascript_file_urls=>'<link rel="stylesheet" type="text/css" href="http://webrupee.com/font">'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'fdisp_calc_type();',
'fcalc_financials(''Y''); //temp commented to have costing onload',
'//fcalc_base_price(); //temp added to have costing onload'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region-headerItems--title {padding-top: 0.2rem;padding-left: 0.5rem;padding-right: 0.5rem;padding-bottom: 0.2rem;}',
'.t-Form-fieldContainer--floatingLabel.t-Form-fieldContainer {padding-top: 0.2rem;padding-left: 0.8rem;padding-right: 0.8rem;padding-bottom: 0.2rem; }',
'	.CSSreadonly {color: #0076DF;background-color: #E8E8E8}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83673913303942795)
,p_plug_name=>'FOB/ C&F/ C&I/ CIF Parent'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34105916735722696319)
,p_plug_name=>'FOB/ C&F/ C&I/ CIF'
,p_parent_plug_id=>wwv_flow_imp.id(83673913303942795)
,p_icon_css_classes=>'fa-number-3'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent3:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:t-Form--labelsAbove'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>55
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34106095461079113175)
,p_plug_name=>'Base Price & Other Expenses'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34099879633099489474)
,p_plug_name=>'Base Price'
,p_parent_plug_id=>wwv_flow_imp.id(34106095461079113175)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34105882138443046956)
,p_plug_name=>'Other Expenses'
,p_parent_plug_id=>wwv_flow_imp.id(34106095461079113175)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34106098354875124561)
,p_plug_name=>'FOB Before Profit & Financials'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34105826737115669005)
,p_plug_name=>'Financials'
,p_parent_plug_id=>wwv_flow_imp.id(34106098354875124561)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34105834166035039603)
,p_plug_name=>'FOB Before Profit'
,p_parent_plug_id=>wwv_flow_imp.id(34106098354875124561)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--noBorder:t-Region--scrollBody:t-Form--labelsAbove'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34106146422258792123)
,p_plug_name=>'Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34106287077679194951)
,p_plug_name=>'Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157907832101537610)
,p_button_sequence=>115
,p_button_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_button_name=>'GET_PREVIOUS_EOM_ENQ_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_EOM_ENQ_ID'')'
,p_button_condition=>'P24_EOD_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(157908136843539509)
,p_button_sequence=>135
,p_button_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_button_name=>'GET_NEXT_EOM_ENQ_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_EOM_ENQ_ID'')'
,p_button_condition=>'P24_EOD_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34099880364345489474)
,p_button_sequence=>145
,p_button_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23:P23_EOM_ENQ_ID:&P24_EOD_ENQ_ID.'
,p_icon_css_classes=>'fa-undo-arrow'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34099880087200489474)
,p_button_sequence=>155
,p_button_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P24_EOD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34099880202253489474)
,p_button_sequence=>165
,p_button_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(69930751139109744)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34099880021980489474)
,p_button_sequence=>175
,p_button_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
,p_button_comment=>'Item IS NULL - P24_EOD_ID - Server Condition'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(34099881888823489476)
,p_branch_name=>'Go To Page 24'
,p_branch_action=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::P24_EOD_ID:&P24_EOD_ID_NEXT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P24_EOD_ID_NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(142598416036172098)
,p_branch_name=>'Go To Page 24'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23:P23_EOM_ENQ_ID:&P24_EOD_ENQ_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'P24_EOD_ID_NEXT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(157914244343697501)
,p_branch_action=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::P24_EOD_ID:&P24_EOD_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(157908136843539509)
,p_branch_sequence=>40
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(157914573988698935)
,p_branch_action=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::P24_EOD_ID:&P24_EOD_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(157907832101537610)
,p_branch_sequence=>40
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44772682278610878)
,p_name=>'P24_EOD_COSTING_REMARKS'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'EOD_COSTING_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="height:1px"'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109430274519076998)
,p_name=>'P24_EOD_TOTAL_GST_PERC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(34099879633099489474)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_tot_gst_perc number;',
'begin',
'  select nvl(PM_TOTAL_GST_PERC,0)',
'  into v_tot_gst_perc ',
'  from V_PRODUCT_MASTER',
'  where PM_ID = :P24_EOD_PRODUCT_ID;',
' return v_tot_gst_perc ;',
'',
'exception when others then',
'  return 0;',
'',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'GST'
,p_source=>'EOD_TOTAL_GST_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_colspan=>3
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-percent'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(142596877443172082)
,p_name=>'P24_EOD_PRODUCT_STATUS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(34105882138443046956)
,p_use_cache_before_default=>'NO'
,p_source=>'EOD_PRODUCT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157504574350264812)
,p_name=>'P24_STW_RND_20'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34099879633099489474)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Stowage'
,p_source=>'EOD_STW_RND_20'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-cubes'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PM_STW_RND_20 --into :P24_STW_RND_20',
'from V_PRODUCT_MASTER',
'where PM_ID= :P24_EOD_PRODUCT_ID;'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157509342831548068)
,p_name=>'P24_INCOME_TAX_PERC'
,p_item_sequence=>245
,p_item_plug_id=>wwv_flow_imp.id(34105826737115669005)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin',
'       select ST_CODE',
'      into :P24_INCOME_TAX_PERC',
'      from V_SETUP_TABLE',
'      where ST_TYPE = ''PROD_CALC_MST''',
'      AND ST_NAME IN (''INCOME_TAX_PERC'');',
'    return  :P24_INCOME_TAX_PERC;',
'    exception when others then        ',
'      :P24_INCOME_TAX_PERC := 0;',
'      return :P24_INCOME_TAX_PERC;',
' end;     '))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Income Tax'
,p_source=>'EOD_INCOME_TAX_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-percent'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157509581323570640)
,p_name=>'P24_ECGC_PERC'
,p_item_sequence=>275
,p_item_plug_id=>wwv_flow_imp.id(34105826737115669005)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin',
'        select ST_CODE',
'        into :P24_ECGC_PERC',
'        from V_SETUP_TABLE',
'        where ST_TYPE = ''PROD_CALC_MST''',
'        AND ST_NAME IN (''ECGC'');',
'    return :P24_ECGC_PERC;',
' exception when others then        ',
'        :P24_ECGC_PERC := 0;',
'        return :P24_ECGC_PERC;',
' end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'ECGC'
,p_source=>'EOD_ECGC_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-percent'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157509926117575855)
,p_name=>'P24_BANK_COMM_PERC'
,p_item_sequence=>285
,p_item_plug_id=>wwv_flow_imp.id(34105826737115669005)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     begin',
'         select ST_CODE',
'        into :P24_BANK_COMM_PERC',
'        from V_SETUP_TABLE',
'        where ST_TYPE = ''PROD_CALC_MST''',
'        AND ST_NAME IN (''BANK_COMM'');',
'    return :P24_BANK_COMM_PERC;',
'    exception when others then        ',
'    :P24_BANK_COMM_PERC := 0;',
'    return :P24_BANK_COMM_PERC;',
'    end;    '))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Bank Comm.'
,p_source=>'EOD_BANK_COMM_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-percent'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157861156677409554)
,p_name=>'P24_PRODUCT_INFO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_item_comment=>'style="overflow-wrap: break-word;width:95%;"'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157864630754462845)
,p_name=>'P24_PKG1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157893178494774162)
,p_name=>'P24_INSURANCE_PERC'
,p_item_sequence=>425
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin',
'        select ST_CODE',
'        into :P24_INSURANCE_PERC',
'        from V_SETUP_TABLE',
'        where ST_TYPE = ''PROD_CALC_MST''',
'        AND ST_NAME IN (''INSURANCE_PERC'');',
'    return :P24_INSURANCE_PERC;',
' exception when others then        ',
'        :P24_INSURANCE_PERC := 0;',
'        return :P24_INSURANCE_PERC;',
' end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Insurance'
,p_source=>'EOD_INSURANCE_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-percent'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157900882132041687)
,p_name=>'P24_COSTING_TYPE'
,p_item_sequence=>319
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_item_default=>'FOB'
,p_source=>'EOD_COSTING_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_COSTING_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ST_NAME d, ST_CODE r ',
'FROM V_SETUP_TABLE',
'WHERE ST_TYPE = ''COSTING_TYPE''',
'ORDER BY ST_DISPLAY_ORDER'))
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157909397573550290)
,p_name=>'P24_EOD_ID_NEXT'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This item is needed for Get Next or Previous Primary Key Value process.',
'Removed default value :P24_EOD_ID'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157909703629553156)
,p_name=>'P24_EOD_ID_PREV'
,p_item_sequence=>72
,p_item_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(157911177872582490)
,p_name=>'P24_EOD_ID_COUNT'
,p_item_sequence=>125
,p_item_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8209192410252718454)
,p_name=>'P24_TOTAL_PURCHASE_AMT'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Total Purchase Amt.'
,p_source=>'return :P24_EOD_QUANTITY * :P24_EOD_PURCHASE_AMT;'
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly"'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099882450470489902)
,p_name=>'P24_EOD_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_use_cache_before_default=>'NO'
,p_source=>'EOD_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099882752842489903)
,p_name=>'P24_EOD_ENQ_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_use_cache_before_default=>'NO'
,p_source=>'EOD_ENQ_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099883107787489903)
,p_name=>'P24_EOD_MANUFAC_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_use_cache_before_default=>'NO'
,p_source=>'EOD_MANUFAC_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099883541640489904)
,p_name=>'P24_EOD_PRODUCT_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_use_cache_before_default=>'NO'
,p_source=>'EOD_PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099883905942489904)
,p_name=>'P24_EOD_QUANTITY'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_imp.id(34106146422258792123)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Quantity'
,p_source=>'EOD_QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>4
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099884343932489905)
,p_name=>'P24_EOD_MRP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34099879633099489474)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'MRP'
,p_source=>'EOD_MRP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099884680452489905)
,p_name=>'P24_EOD_TRADE_PRICE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(34099879633099489474)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Trade Price'
,p_source=>'EOD_TRADE_PRICE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099885092689489906)
,p_name=>'P24_EOD_PURCHASE_AMT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(34099879633099489474)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Purchase Amt.'
,p_source=>'EOD_PURCHASE_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'title="Trade Price * Product Packing Part 1" '
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099885521663489906)
,p_name=>'P24_EOD_SCHEME_PERC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(34099879633099489474)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Scheme'
,p_source=>'EOD_SCHEME_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-percent'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099885944748489907)
,p_name=>'P24_EOD_SCHEME_AMT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(34099879633099489474)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Scheme Amt.'
,p_source=>'EOD_SCHEME_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly" title="Purchase Amount * Scheme Percentage" '
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099886339775489907)
,p_name=>'P24_EOD_DISCOUNT_PERC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(34099879633099489474)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Discount'
,p_source=>'EOD_DISCOUNT_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-percent'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099886755766489908)
,p_name=>'P24_EOD_DISCOUNT_AMT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(34099879633099489474)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Discount Amt.'
,p_source=>'EOD_DISCOUNT_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly" title="(Purchase Amount + Scheme Amount) * Discount %" '
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099887127599489908)
,p_name=>'P24_EOD_GST_PERC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(34099879633099489474)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_gst_perc number;',
'begin',
'  select nvl(PM_GST_PERC,0)',
'  into v_gst_perc ',
'  from V_PRODUCT_MASTER',
'  where PM_ID = :P24_EOD_PRODUCT_ID;',
' return v_gst_perc ;',
'',
'exception when others then',
'  return 0;',
'',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'GST Expense'
,p_source=>'EOD_GST_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-percent'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099887506261489908)
,p_name=>'P24_EOD_GST_AMT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(34099879633099489474)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'GST Expense Amt.'
,p_source=>'EOD_GST_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly" title="(Purchase Amount + Scheme Amount + Discount Amount) * GST %" '
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_comment=>'(Purchase Amount + Scheme Amount + Discount Amount) * GST Percentage'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099887902997489909)
,p_name=>'P24_EOD_TRANS_CHARGES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(34105882138443046956)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Trans. Charges'
,p_source=>'EOD_TRANS_CHARGES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099888293581489910)
,p_name=>'P24_EOD_BAGS_CTNS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(34105882138443046956)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Bags/ CTNS'
,p_source=>'EOD_BAGS_CTNS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099888736644489910)
,p_name=>'P24_EOD_RECOV_ON_FRT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(34105882138443046956)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Recovery On Frt.'
,p_source=>'EOD_RECOV_ON_FRT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_comment=>'EOD_RECOV_ON_FRT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099889092270489911)
,p_name=>'P24_EOD_REPACKING'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(34105882138443046956)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Repacking'
,p_source=>'EOD_REPACKING'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099889518328489912)
,p_name=>'P24_EOD_EXTRA'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(34105882138443046956)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Extra'
,p_source=>'EOD_EXTRA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>6
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099889920283489912)
,p_name=>'P24_EOD_NET_PURCHASE_VAL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(34105834166035039603)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Net Purchase Value'
,p_source=>'EOD_NET_PURCHASE_VAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly" title="Purchase Amount + Scheme Amount + Discount Amount + VAT Amount + Other Expenses" '
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099890283211489913)
,p_name=>'P24_EOD_VOL_FOB_AMT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(34105834166035039603)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Vol. FOB Amt.'
,p_source=>'EOD_VOL_FOB_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099890684336489913)
,p_name=>'P24_EOD_VOL_FOB_EXP'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(34105834166035039603)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' return round(:P24_EOD_VOL_FOB_AMT / :P24_STW_RND_20,2);',
'exception when others then',
' return 0;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Vol. FOB Expense'
,p_source=>'EOD_VOL_FOB_EXP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly" title="Vol FOB Amount / Product Stowage 20 Round" '
,p_colspan=>6
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099891130629489913)
,p_name=>'P24_EOD_PROFIT_PERC'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(34105826737115669005)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Profit'
,p_source=>'EOD_PROFIT_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-percent'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099891574153489914)
,p_name=>'P24_EOD_PROFIT_AMT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(34105826737115669005)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Profit Amt.'
,p_source=>'EOD_PROFIT_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly" title="(Net Purchase Amount + Vol FOB Expense) * Profit %" '
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_comment=>'(Net Purchase Amount + Vol FOB Expense ) * Profit Percentage'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099891882557489914)
,p_name=>'P24_EOD_INCOME_TAX'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(34105826737115669005)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Income Tax'
,p_source=>'EOD_INCOME_TAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly" title="Profit Amount * Income Tax %" '
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_comment=>'Profit Amount * Income Tax Percentage (&P24_INCOME_TAX_PERC.%)'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099892366914489915)
,p_name=>'P24_EOD_DUTY_PERC'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(34105826737115669005)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select ST_CODE',
'  into :P24_EOD_DUTY_PERC',
'  from V_SETUP_TABLE',
'  where ST_TYPE = ''PROD_CALC_MST''',
'  AND ST_NAME = ''DUTY_PERC'';',
'',
'return :P24_EOD_DUTY_PERC;',
'',
'exception when others then        ',
'  :P24_EOD_DUTY_PERC := 0;',
'end;   '))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Duty'
,p_source=>'EOD_DUTY_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-percent'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099892699534489915)
,p_name=>'P24_EOD_DUTY_AMT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(34105826737115669005)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Duty Amt.'
,p_source=>'EOD_DUTY_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly" title="(Net Purchase Amount + Vol FOB Exp + Profit Amount + Income Tax Amount) * Duty %" '
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_comment=>'(Net Purchase Amount + Vol FOB Exp + Profit Amount + Income Tax Amount) * Duty Percentage (&P24_EOD_DUTY_PERC.%)'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099893171433489915)
,p_name=>'P24_EOD_ECGC'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(34105826737115669005)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'ECGC'
,p_source=>'EOD_ECGC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly" title="(Net Purchase Amount + Vol FOB Exp + Profit Amount + Income Tax Amount + Duty Amount) * ECGC %" '
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_comment=>'(Net Purchase Amount + Vol FOB Exp + Profit Amount + Income Tax Amount + Duty Amount) * ECGC Percentage (&P24_ECGC_PERC.%)'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099893526594489916)
,p_name=>'P24_EOD_BANK_COMM'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(34105826737115669005)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Bank Comm.'
,p_source=>'EOD_BANK_COMM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly" title="(Net Purchase Amount + Vol FOB Exp + Profit Amount + Income Tax Amount + Duty Amount + ECGC Amount) * Bank Commission %" '
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_comment=>'(Net Purchase Amount + Vol FOB Exp + Profit Amount + Income Tax Amount + Duty Amount + ECGC Amount) * Bank Commission Percentage (&P24_BANK_COMM_PERC.%)'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099893916002489916)
,p_name=>'P24_EOD_INTEREST_PERC'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(34105826737115669005)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Interest'
,p_source=>'EOD_INTEREST_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-percent'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099894310466489917)
,p_name=>'P24_EOD_INTEREST_AMT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(34105826737115669005)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0.00'
,p_prompt=>'Interest Amt.'
,p_source=>'EOD_INTEREST_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly" title="(Net Purchase Amount + Vol FOB Exp + Duty Amount + ECGC Amount + Bank Comm. Amount) * Interest %" '
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_comment=>'(Net Purchase Amount + Vol FOB Exp + Duty Amount + ECGC Amount + Bank Comm. Amount) * Interest Percentage'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099894777069489918)
,p_name=>'P24_EOD_EXCHANGE_RATE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Exchange Rate'
,p_source=>'EOD_EXCHANGE_RATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-exchange'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099895166071489918)
,p_name=>'P24_EOD_FOB_RS'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'FOB (Rs)'
,p_source=>'EOD_FOB_RS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly" title="Net Purchase Amount + All Amounts of Financial Section" '
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&DEFAULT_CURRENCY_ICON.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_item_comment=>'FOB (<span class="WebRupee">Rs</span>)'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099895484754489918)
,p_name=>'P24_EOD_FOB_DOLL'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'FOB'
,p_source=>'EOD_FOB_DOLL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly"'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099895977752489919)
,p_name=>'P24_EOD_COMMISSION_PERC'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comm.'
,p_source=>'EOD_COMMISSION_PERC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'fa-percent'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099896341258489919)
,p_name=>'P24_EOD_FOBC_AMT'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'FOBC Amt'
,p_source=>'EOD_FOBC_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly"'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099896776920489920)
,p_name=>'P24_EOD_FOB_DOLL_RND'
,p_item_sequence=>361
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'FOB Rounded'
,p_source=>'EOD_FOB_DOLL_RND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099897176808489920)
,p_name=>'P24_EOD_OCEAN_FRT'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ocean Frt.'
,p_source=>'EOD_OCEAN_FRT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099897561368489921)
,p_name=>'P24_EOD_FRT_PER_CTN'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Frt./ Ctn'
,p_source=>'EOD_FRT_PER_CTN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099897901665489921)
,p_name=>'P24_EOD_CANDF_AMT'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'C&F Amt.'
,p_source=>'EOD_CANDF_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly"'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099898189652489921)
,p_name=>'P24_EOD_CANDFC_AMT'
,p_item_sequence=>366
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'C&F Comm. Amt.'
,p_source=>'EOD_CANDFC_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099898586499489922)
,p_name=>'P24_EOD_CANDF_AMT_RND'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'C&F Amt. Rounded'
,p_source=>'EOD_CANDF_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099899074878489922)
,p_name=>'P24_EOD_INSURANCE_AMT'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Insurance Amt.'
,p_source=>'EOD_INSURANCE_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099899424432489922)
,p_name=>'P24_EOD_CIF_AMT'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CIF Amt.'
,p_source=>'EOD_CIF_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly"'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099899860113489923)
,p_name=>'P24_EOD_CIFC_AMT'
,p_item_sequence=>367
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CIF Comm. Amt.'
,p_source=>'EOD_CIFC_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099900224714489923)
,p_name=>'P24_EOD_CIF_AMT_RND'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CIF Amt. Rounded'
,p_source=>'EOD_CIF_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099900647543489924)
,p_name=>'P24_EOD_CNI_AMT'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'C&I Amt.'
,p_source=>'EOD_CNI_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly"'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099900985677489924)
,p_name=>'P24_EOD_CNIC_AMT'
,p_item_sequence=>368
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'C&I Comm. Amt.'
,p_source=>'EOD_CNIC_AMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'CSSreadonly'
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34099901454173489924)
,p_name=>'P24_EOD_CNI_AMT_RND'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(34105916735722696319)
,p_use_cache_before_default=>'NO'
,p_prompt=>'C&I Amt. Rounded'
,p_source=>'EOD_CNI_AMT_RND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_icon_css_classes=>'&APP_QUOTE_IN.'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157495621147838520)
,p_name=>'calculate_base_price'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_EOD_TRADE_PRICE,P24_EOD_SCHEME_PERC,P24_EOD_DISCOUNT_PERC,P24_EOD_GST_PERC,P24_EOD_PURCHASE_AMT,P24_STW_RND_20,P24_EOD_TOTAL_GST_PERC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157496015344838543)
,p_event_id=>wwv_flow_imp.id(157495621147838520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_EOD_SCHEME_AMT,P24_EOD_PURCHASE_AMT,P24_EOD_DISCOUNT_AMT'
,p_attribute_01=>'fcalc_base_price();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(124172120511665178)
,p_name=>'calc_when_tradeprice_0'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_EOD_TRADE_PRICE'
,p_condition_element=>'P24_EOD_TRADE_PRICE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(124172289673665179)
,p_event_id=>wwv_flow_imp.id(124172120511665178)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_EOD_SCHEME_AMT,P24_EOD_PURCHASE_AMT,P24_EOD_DISCOUNT_AMT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$x(''P24_EOD_PURCHASE_AMT'').value = 0;',
'fcalc_base_price();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157508156459478566)
,p_name=>'calculate net purchase'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_EOD_TRANS_CHARGES,P24_EOD_BAGS_CTNS,P24_EOD_RECOV_ON_FRT,P24_EOD_REPACKING,P24_EOD_EXTRA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157508577581478569)
,p_event_id=>wwv_flow_imp.id(157508156459478566)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_EOD_NET_PURCHASE_VAL'
,p_attribute_01=>'fcalc_net_purchase();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157510743596641632)
,p_name=>'calculate financials'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_EOD_PROFIT_PERC,P24_EOD_INCOME_TAX,P24_EOD_DUTY_PERC,P24_EOD_ECGC,P24_EOD_BANK_COMM,P24_EOD_INTEREST_PERC,P24_EOD_DUTY_PERC,P24_ECGC_PERC,P24_BANK_COMM_PERC,P24_INCOME_TAX_PERC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157511098329641651)
,p_event_id=>wwv_flow_imp.id(157510743596641632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_EOD_NET_PURCHASE_VAL'
,p_attribute_01=>'fcalc_financials();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157904025240185897)
,p_name=>'calculate costing type'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_EOD_EXCHANGE_RATE,P24_EOD_COMMISSION_PERC,P24_EOD_OCEAN_FRT,P24_INSURANCE_PERC'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157904431835185925)
,p_event_id=>wwv_flow_imp.id(157904025240185897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_EOD_FOB_RS,P24_EOD_FOB_DOLL,P24_EOD_FOBC_AMT,P24_EOD_FOB_DOLL_RND,P24_EOD_FRT_PER_CTN,P24_EOD_CANDF_AMT,P24_EOD_CANDFC_AMT,P24_EOD_CANDF_AMT_RND,P24_EOD_INSURANCE_AMT,P24_EOD_CIF_AMT,P24_EOD_CIFC_AMT,P24_EOD_CIF_AMT_RND,P24_EOD_CNI_AMT,P24_EOD_CN'
||'IC_AMT,P24_EOD_CNI_AMT_RND'
,p_attribute_01=>'fcalc_financials();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(157908553436547040)
,p_name=>'calculate costing type - radio btton change'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_COSTING_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(157908898523547041)
,p_event_id=>wwv_flow_imp.id(157908553436547040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'fdisp_calc_type();',
'fcalc_financials();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(158408047585856260)
,p_name=>'calculate fob exp amt'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_EOD_VOL_FOB_AMT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(158408399716856285)
,p_event_id=>wwv_flow_imp.id(158408047585856260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P24_EOD_VOL_FOB_EXP'
,p_attribute_01=>'fcalc_fob_exp_amt();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(163812567131626884)
,p_name=>'Hide Sucess Message'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_EOD_QUANTITY'
,p_condition_element=>'P24_EOD_QUANTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(163812897538626885)
,p_event_id=>wwv_flow_imp.id(163812567131626884)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#t_Alert_Success'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1731947707259967921)
,p_name=>'Validate FOB Dollar Round Amt'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_EOD_FOB_DOLL_RND'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1731947562269967920)
,p_event_id=>wwv_flow_imp.id(1731947707259967921)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fobrndtol = &APP_FOB_RND_TOLERANCE.; ',
'',
'if (Math.abs($v(''P24_EOD_FOB_DOLL'') - $v(''P24_EOD_FOB_DOLL_RND'')) > fobrndtol  )',
'     {',
'        // $s(''P0_CONFIRM_MSG'',"This FOB Rounded amount is more than the rounding tolerance amount of 5 ( FOB = "+ $v(''P24_EOD_FOB_DOLL'') + " and FOB Rounded = " + $v(''P24_EOD_FOB_DOLL_RND'')+ " ), Do you really want to update it ?");',
'          $s(''P0_CONFIRM_MSG'',"This FOB Rounded amount is more than the FOB rounding tolerance amount of "+fobrndtol +" ( FOB = "+ $v(''P24_EOD_FOB_DOLL'') + " ), Do you really want to update it to "+ $v(''P24_EOD_FOB_DOLL_RND'') +" ?");',
'         $s(''P0_REQ'',''SB_CONFIRM_FOBRND'');',
'         openModal(''SB_CONFIRM'');',
'     }'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34099902266719489926)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from V_ENQUIRIES_ORDERS_DETAILS'
,p_attribute_02=>'V_ENQUIRIES_ORDERS_DETAILS'
,p_attribute_03=>'P24_EOD_ID'
,p_attribute_04=>'EOD_ID'
,p_internal_uid=>34099953416350318422
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157515661096353270)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load_details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    begin',
' --   select ',
'    --PM_STW_RND_20 , /*commented by Ranu on 230219 as it is fetched from EOD now*/',
'   -- SUPM_NAME ||'' - ''|| PM_NAME || '' '' ||PM_PACKAGE|| '' '' ||PM_BABY_BOX_UNIT || '' x '' ||   PM_PACKAGE_1 ||'' '' || PM_PRODUCT_UNIT  || '' x '' ||   PM_PACKAGE_2 || '' '' ||  PM_PACKAGE_UNIT',
'  --  ,nvl(PM_PACKAGE_1,PM_PACKAGE_2) * nvl(PM_PACKAGE,1)  --Added nvl condition so that products having only pkg2 value should be considered while calc purchase amt - Rahul 05012019',
'   --Multiplied PM_PACKAGE value as it needs to be considered in the calculation of purchase price based on trade price',
'',
'   --into ',
'        --:P24_STW_RND_20, /*commented by Ranu on 230219 as it is fetched from EOD now*/',
'    /*    :P24_PRODUCT_INFO, ',
'        :P24_PKG1',
'    from V_PRODUCT_MASTER,V_SUPPLIER_MASTER',
'    where PM_ID= :P24_EOD_PRODUCT_ID',
'    and pm_manufac_id = supm_id;*/',
'    ',
'    select ',
'    PM_BRAND ||'' - ''|| PM_NAME || '' '' ||PM_PACKAGE|| '' '' ||PM_BABY_BOX_UNIT || '' x '' ||   PM_PACKAGE_1 ||'' '' || PM_PRODUCT_UNIT  || '' x '' ||   PM_PACKAGE_2 || '' '' ||  PM_PACKAGE_UNIT',
'    ,nvl(PM_PACKAGE_1,PM_PACKAGE_2) * nvl(PM_PACKAGE,1)  --Added nvl condition so that products having only pkg2 value should be considered while calc purchase amt - Rahul 05012019',
'   --Multiplied PM_PACKAGE value as it needs to be considered in the calculation of purchase price based on trade price',
'',
'   into ',
'        --:P24_STW_RND_20, /*commented by Ranu on 230219 as it is fetched from EOD now*/',
'        :P24_PRODUCT_INFO, ',
'        :P24_PKG1',
'    from V_PRODUCT_MASTER',
'    where PM_ID= :P24_EOD_PRODUCT_ID;',
'',
'    exception when others then',
'        :P24_STW_RND_20 := 0.00;',
'        :P24_PRODUCT_INFO := null; ',
'        :P24_PKG1 := 0;',
'    end;',
'',
'begin',
'        select round((((nvl(EOM_CURRENT_RATE,0) - nvl(EOM_REALISE_RATE,0) ) * nvl(EOM_FRT_AMT,0) )/ :P24_STW_RND_20),2)',
'        into :P24_EOD_RECOV_ON_FRT',
'        from V_ENQUIRIES_ORDERS_MST',
'        where EOM_ENQ_ID = :P24_EOD_ENQ_ID;',
'',
'     --:P24_EOD_RECOV_ON_FRT:= 150;',
'',
'    exception when others then        ',
'        :P24_EOD_RECOV_ON_FRT := 0.00;',
'    end;',
'      ',
'    ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>157566810727181766
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(157907354611533548)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'VIEW_ENQUIRY_DETAILS_BRAND'
,p_attribute_03=>'P24_EOD_ID'
,p_attribute_04=>'EOD_ID'
,p_attribute_07=>'SRNO'
,p_attribute_09=>'P24_EOD_ID_NEXT'
,p_attribute_10=>'P24_EOD_ID_PREV'
,p_attribute_13=>'P24_EOD_ID_COUNT'
,p_attribute_14=>'EOD_ENQ_ID = :P24_EOD_ENQ_ID'
,p_internal_uid=>157958504242362044
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34099902592971489926)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get PK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if :P24_EOD_ID is null then',
'        select "#OWNER#"."SEQ_EOD_ID".nextval',
'          into :P24_EOD_ID',
'          from sys.dual;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(34099880021980489474)
,p_internal_uid=>34099953742602318422
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8302673621284944734)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Product Status to Costing Done'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_error_msg varchar2(4000);',
'	l_scope logger_logs.scope%type := ''Update Product Status to Costing Done -24 '';',
'	l_params logger.tab_param;',
'    v_fob_doll    number;',
'BEGIN',
'    logger.LOG(''START'', l_scope);',
'       ',
'    ',
'    select    nvl(EOD_FOB_DOLL,-1) into v_fob_doll',
'    from      V_ENQUIRIES_ORDERS_DETAILS',
'    where     EOD_ENQ_ID = :P24_EOD_ENQ_ID',
'    and       EOD_ID = :P24_EOD_ID',
'    and       EOD_PRODUCT_STATUS is null;',
'    ',
'     logger.LOG(''ranu'' || v_fob_doll , l_scope);',
'     ',
'    IF v_fob_doll <> nvl(:P24_EOD_FOB_DOLL,-1) THEN',
'    :P24_EOD_PRODUCT_STATUS := ''CD'';',
'   END IF;',
'',
'     logger.log(''END'', l_scope, null, l_params);',
'     ',
'EXCEPTION WHEN OTHERS THEN',
' logger.log_error(v_error_msg, l_scope, null, l_params);',
' logger.log_apex_items(p_scope=>l_scope,p_item_type=>:APP_PAGE_ID);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(34099880087200489474)
,p_internal_uid=>8302724770915773230
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34099902995844489926)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of V_ENQUIRIES_ORDERS_DETAILS'
,p_attribute_02=>'V_ENQUIRIES_ORDERS_DETAILS'
,p_attribute_03=>'P24_EOD_ID'
,p_attribute_04=>'EOD_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
,p_internal_uid=>34099954145475318422
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34099903474487489927)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(34099880202253489474)
,p_internal_uid=>34099954624118318423
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(44773527070610886)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'insert into error_log (el_text) values (:P24_EOD_ID_NEXT || '','' || :P24_EOD_ID);',
'    if :P24_EOD_ID_NEXT = :P24_EOD_ID then',
'        insert into error_log (el_text) values (:P24_EOD_ID_NEXT || '','' || :P24_EOD_ID);',
'        :P24_EOD_ID_NEXT := '''';',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>44824676701439382
);
wwv_flow_imp.component_end;
end;
/
