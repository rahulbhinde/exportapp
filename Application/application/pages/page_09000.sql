prompt --application/pages/page_09000
begin
--   Manifest
--     PAGE: 09000
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
 p_id=>9000
,p_name=>'Download File'
,p_alias=>'DOWNLOAD-FILE'
,p_step_title=>'Download File'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(148461903105250875)
,p_plug_name=>'Output Download'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<span style="color:red;">There is no output generated to be downloaded.</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143015301872343581)
,p_name=>'P9000_FILE_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(148461903105250875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(143015328298343582)
,p_name=>'P9000_CALLING_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(148461903105250875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(148461775114250874)
,p_name=>'P9000_FILE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(148461903105250875)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(148461616503250873)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Download Files'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	--l_om_rec V_OUTPUT_MASTER%rowtype;',
'	l_mime_type     varchar2(1000);',
'	l_name          varchar2(1000);',
'	l_content       blob;',
'begin',
'	if :P9000_CALLING_FROM = ''OUTPUTS'' then',
'		select OM_DOC_MIME_TYPE,',
'                decode(:P9000_FILE_TYPE,''PDF'',OM_PDF_NAME,''EXCEL'',OM_EXCEL_NAME,''DOC'',OM_DOC_NAME,OM_PDF_NAME),',
'                decode(:P9000_FILE_TYPE,''PDF'',OM_PDF,''EXCEL'',OM_EXCEL,''DOC'',OM_DOC,OM_PDF)',
'		into l_mime_type,l_name,l_content',
'		from V_OUTPUT_MASTER',
'		where OM_ID = :P9000_FILE_ID;',
'    elsif :P9000_CALLING_FROM = ''ENQSEARCH'' then',
'		select OM_DOC_MIME_TYPE,',
'                --decode(:P9000_FILE_TYPE,''PDF'',OM_PDF_NAME,''EXCEL'',OM_EXCEL_NAME,''DOC'',OM_DOC_NAME,OM_PDF_NAME),',
'                --decode(:P9000_FILE_TYPE,''PDF'',OM_PDF,''EXCEL'',OM_EXCEL,''DOC'',OM_DOC,OM_PDF)',
'                OM_PDF_NAME,',
'                OM_PDF',
'		into l_mime_type,l_name,l_content',
'		from V_OUTPUT_MASTER',
'		where OM_REF_ID = :P9000_FILE_ID',
'        and OM_DOC_TYPE = :P9000_FILE_TYPE',
'        and OM_FINAL =''Y'';',
'    elsif :P9000_CALLING_FROM = ''V_ATTACHMENTS'' then',
'		select  A_MIME_TYPE,',
'                A_NAME,',
'                A_ATTACHMENT',
'		into l_mime_type,l_name,l_content',
'		from V_ATTACHMENTS',
'		where A_ID = :P9000_FILE_ID;',
'	end if;',
'	',
'    if l_mime_type is not null and l_name is not null then ',
'	owa_util.mime_header(l_mime_type, false);',
'	htp.p(''Content-Length: '' || dbms_lob.getlength(l_content));',
'	htp.p(''Content-Disposition: attachment; filename="'' || l_name || ''"'');',
'	owa_util.http_header_close;',
'',
'	wpg_docload.download_file(l_content);',
'',
'	apex_application.stop_apex_engine;',
'    end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>148512766134079369
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Backup',
'declare',
'	--l_om_rec V_OUTPUT_MASTER%rowtype;',
'	l_mime_type     varchar2(1000);',
'	l_name          varchar2(1000);',
'	l_content       blob;',
'begin',
'	if :P9000_CALLING_FROM = ''OUTPUTS'' then',
'		select OM_DOC_MIME_TYPE,',
'                decode(:P9000_FILE_TYPE,''PDF'',OM_PDF_NAME,''EXCEL'',OM_EXCEL_NAME,''DOC'',OM_DOC_NAME,OM_PDF_NAME),',
'                decode(:P9000_FILE_TYPE,''PDF'',OM_PDF,''EXCEL'',OM_EXCEL,''DOC'',OM_DOC,OM_PDF)',
'		into l_mime_type,l_name,l_content',
'		from V_OUTPUT_MASTER',
'		where OM_ID = :P9000_FILE_ID;',
'	end if;',
'	',
'	owa_util.mime_header(l_mime_type, false);',
'	htp.p(''Content-Length: '' || dbms_lob.getlength(l_content));',
'	htp.p(''Content-Disposition: attachment; filename="'' || l_name || ''"'');',
'	owa_util.http_header_close;',
'',
'	wpg_docload.download_file(l_content);',
'',
'	apex_application.stop_apex_engine;',
'',
'end;'))
);
wwv_flow_imp.component_end;
end;
/
