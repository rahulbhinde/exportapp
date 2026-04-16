prompt --application/pages/page_01001
begin
--   Manifest
--     PAGE: 01001
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
 p_id=>1001
,p_name=>'Page Help Dialog'
,p_alias=>'PAGE-HELP-DIALOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-dialog .ui-dialog-titlebar {',
'    background-color: #0572CE !important; ',
'	}',
'	',
'.ui-dialog .ui-dialog-title{	',
'	color: #fff !important;  ',
'}',
'',
'.t-Dialog--wizard.ui-dialog .ui-dialog-title, body .ui-dialog .ui-dialog-title  {background-color:#0076df;color:#FFFFFF;}',
'.t-Dialog--wizard body .ui-dialog .ui-dialog-content, .t-Dialog--wizard.ui-dialog, .t-Dialog--wizard.ui-dialog .ui-dialog-titlebar, .t-Dialog-page, body .ui-dialog .ui-dialog-content {background-color:#ebf6f9;}'))
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30965639225055143)
,p_plug_name=>'About this Page'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ',
'(',
'    select page_title, help_text ',
'      from apex_application_pages',
'     where page_id = :P1001_PAGE_ID ',
'       and application_id = :APP_ID',
')',
'loop',
'    if c1.help_text is null then',
'        sys.htp.p(apex_escape.html(''No help is available for this page.''));',
'    else',
'        if substr(c1.help_text, 1, 3) != ''<p>'' then',
'            sys.htp.p(''<p>'');',
'        end if;',
'',
'        sys.htp.p(apex_application.do_substitutions(c1.help_text, ''ESC''));',
'',
'        if substr(trim(c1.help_text), -4) != ''</p>'' then',
'            sys.htp.p(''</p>'');',
'        end if;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30965810512055145)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30965969172055146)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30965810512055145)
,p_button_name=>'ABOUT_THIS_APP'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--link'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Learn More about &APP_TITLE.'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:window.open(''&APP_IMAGES.Januz_Universal_Online_Help.pdf'');void(0);'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30965767427055144)
,p_name=>'P1001_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30965639225055143)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
