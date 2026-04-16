prompt --application/shared_components/logic/application_processes/get_setup_values
begin
--   Manifest
--     APPLICATION PROCESS: GET_SETUP_VALUES
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
 p_id=>wwv_flow_imp.id(76146896363075)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SETUP_VALUES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_keys   apex_t_varchar2;',
'  l_key    VARCHAR2(1000);',
'  l_st_type  VARCHAR2(1000);',
'BEGIN',
'  -- Comma-separated keys passed via x01',
'  -- e.g. x01 = ''TAX_RATE,DISCOUNT_PCT,FREIGHT_RATE''',
'  l_st_type := apex_application.g_x01;',
'  l_keys := apex_string.split(apex_application.g_x02, '','');',
'',
'  apex_json.open_object;',
'  apex_json.write(''status'', ''success'');',
'  apex_json.open_object(''values'');',
'',
'  FOR i IN 1 .. l_keys.COUNT LOOP',
'    l_key := TRIM(l_keys(i));',
'    BEGIN',
'      SELECT st_code',
'        INTO l_key',
'        FROM v_setup_table',
'       WHERE st_type = l_st_type',
'	   and st_name = TRIM(l_keys(i));',
'',
'      apex_json.write(TRIM(l_keys(i)), l_key);',
'    EXCEPTION',
'      WHEN NO_DATA_FOUND THEN',
'        apex_json.write(TRIM(l_keys(i)), '''');',
'    END;',
'  END LOOP;',
'',
'  apex_json.close_object; -- values',
'  apex_json.close_object; -- root',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    apex_json.open_object;',
'    apex_json.write(''status'', ''error'');',
'    apex_json.write(''message'', SQLERRM);',
'    apex_json.close_object;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>46733884245562
);
wwv_flow_imp.component_end;
end;
/
