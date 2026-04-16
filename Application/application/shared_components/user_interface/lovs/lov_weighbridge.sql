prompt --application/shared_components/user_interface/lovs/lov_weighbridge
begin
--   Manifest
--     LOV_WEIGHBRIDGE
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
 p_id=>wwv_flow_imp.id(125215912201521627)
,p_lov_name=>'LOV_WEIGHBRIDGE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  OFD_MESSAGE,OFD_ID',
'from V_OUTPUT_FORMS_MASTER ,',
'    V_OUTPUT_FORMS_DETAILS',
'where ofm_id = ofd_ofm_id',
'and OFM_NAME = ''ALL''',
'and OFD_CATEGORY = ''WEIGHBRIDGE''',
'order by OFD_DISPLAY_ORDER'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
