prompt --application/shared_components/files/delete_png
begin
--   Manifest
--     APP STATIC FILES: 104
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF61000000206348524D00007A25000080830000F9FF000080E9000075300000EA6000003A980000176F925FC546000000097048597300000B1200000B1201D2DD7EFC0000';
wwv_flow_imp.g_varchar2_table(2) := '00BF49444154384FBD93C11182301045538215980BDEED40C146ECC4311660491E927B1AC14909381F6775F926012E32B30736FCB7FB3F600C5D874BD8772E0C854AFCFCE4FE2BF6F174F347AECEF9087016A227B7D7F0284DCA0278ED55809CE7558077';
wwv_flow_imp.g_varchar2_table(3) := '583E4224550BEAC7021A08AB9AAE3AFC3FA0DF36E9699B2159BBC122B281F4C746CD02C452021131FAB3008834448B7BBB3BCF02B03643001CC5E269C95BD09375268B3660F1241384D8BA702F7D07EC99ED98DAEF0BA84CFB78A64C5E426B06B83734DD';
wwv_flow_imp.g_varchar2_table(4) := '7E0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(92497230366906194)
,p_file_name=>'delete.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
