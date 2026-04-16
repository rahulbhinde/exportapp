prompt --application/shared_components/user_interface/lovs/lov_product
begin
--   Manifest
--     LOV_PRODUCT
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
 p_id=>wwv_flow_imp.id(11504197761410516)
,p_lov_name=>'LOV_PRODUCT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pm_brand || '' '' || replace(pm_name,pm_brand,'''') || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT as d,',
'       pm_id as r',
'  from V_PRODUCT_MASTER',
' where nvl(pm_active,''Y'') = ''Y''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45804908009056
);
wwv_flow_imp.component_end;
end;
/
