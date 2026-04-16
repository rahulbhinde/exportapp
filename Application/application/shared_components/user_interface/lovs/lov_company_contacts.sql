prompt --application/shared_components/user_interface/lovs/lov_company_contacts
begin
--   Manifest
--     LOV_COMPANY_CONTACTS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(124980649956997679)
,p_lov_name=>'LOV_COMPANY_CONTACTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CTM_NAME d,',
'        CTM_ID r',
'from V_CONTACTS_MASTER',
'where CTM_CATEGORY = ''COMPANY''',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
