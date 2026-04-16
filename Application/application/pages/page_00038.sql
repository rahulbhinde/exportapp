prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_name=>'Current Market Price'
,p_page_mode=>'MODAL'
,p_step_title=>'Current Market Price'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'<iframe src="https://xe.com/currencyconverter/convert/?Amount=1&From=USD&To=INR" style=" height:100%;width:100%;position:absolute;top: -40%;left:10px;"></iframe>'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'1300'
,p_dialog_max_width=>'1300'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:window.open("https://xe.com/currencyconverter/convert/?Amount=1&From=USD&To=INR", "rate", ''width=800,height=600'');',
'<iframe src="https://xe.com/currencyconverter/convert/?Amount=1&From=USD&To=INR" style=" height:100%;width:100%;position:absolute;top: -52%;left:-10px;"></iframe>'))
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(124837582116994514)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="https://xe.com/currencyconverter/convert/?Amount=1&From=USD&To=INR" target="_blank">test</a>',
''))
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
