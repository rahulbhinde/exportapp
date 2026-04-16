prompt --application/shared_components/logic/application_processes/download_pdf_file
begin
--   Manifest
--     APPLICATION PROCESS: download_pdf_file
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(21662573296680701)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'download_pdf_file'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'        v_mime  VARCHAR2(48);',
'		v_length  NUMBER;',
'        v_file_name VARCHAR2(2000);',
'        l_content  BLOB;',
'',
'BEGIN',
'Insert into Error_log(el_text) values (''Download Preview Test'');',
'',
'		SELECT OM_PDF,OM_DOC_MIME_TYPE,OM_PDF_NAME',
'        INTO l_content,v_mime,v_file_name',
'        FROM V_OUTPUT_MASTER',
'        WHERE OM_ID = :APP_OM_ID;',
'',
'',
'',
'                    -- application/octect may launch a download window from windows P9500_FILE_ID APEX_APPLICATION.g_x01',
'',
'                htp.flush();',
'',
'                htp.init();',
'',
'                owa_util.mime_header( nvl(''application/pdf'',v_mime), FALSE );',
'',
'                -- set the size so the browser knows how much to download',
'				htp.p(''Content-Length: '' || dbms_lob.getlength(l_content));',
'',
'                -- the filename will be used by the browser if the users does a save as',
'',
'                htp.p(''Content-Disposition:  inline; filename="'' || v_file_name || ''"'');',
'',
'                -- close the headers           ',
'',
'                owa_util.http_header_close;',
'',
'                -- download the BLOB',
'',
'                wpg_docload.download_file( l_content );',
'',
'EXCEPTION WHEN OTHERS THEN',
'htp.p(''Please select a record to preview the PDF output.'');',
'END ;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>388138380
);
wwv_flow_imp.component_end;
end;
/
