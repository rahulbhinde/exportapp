prompt --application/shared_components/user_interface/lovs/lov_product_unit
begin
--   Manifest
--     LOV_PRODUCT_UNIT
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
 p_id=>wwv_flow_imp.id(158736620147828170)
,p_lov_name=>'LOV_PRODUCT_UNIT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r',
'  from V_SETUP_TABLE',
' where st_type = ''PRODUCT_UNIT''',
' and nvl(ST_DISPLAY,''Y'') = ''Y''',
' order by st_name --st_display_order'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
