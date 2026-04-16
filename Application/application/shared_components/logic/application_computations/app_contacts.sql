prompt --application/shared_components/logic/application_computations/app_contacts
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_CONTACTS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(35615907013852699807)
,p_computation_sequence=>10
,p_computation_item=>'APP_CONTACTS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1) ',
'from V_CONTACTS_MASTER',
'where nvl(ctm_active,''Y'') = ''Y'''))
,p_computation_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Rahul 2-Feb-25 removed V_SETUP_TABLE joins',
'select count(1) ',
'from V_CONTACTS_MASTER',
'    ,V_SETUP_TABLE stc',
'    ,V_SETUP_TABLE  sts',
'where ctm_country = stc.st_id',
'and stc.st_type = ''COUNTRY''',
'and stc.st_id = sts.st_parent_id',
'and ctm_state = sts.st_id ',
'and sts.st_type = ''STATE''',
'and nvl(ctm_active,''Y'') = ''Y'''))
,p_version_scn=>425308524
);
wwv_flow_imp.component_end;
end;
/
