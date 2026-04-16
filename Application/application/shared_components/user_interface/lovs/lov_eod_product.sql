prompt --application/shared_components/user_interface/lovs/lov_eod_product
begin
--   Manifest
--     LOV_EOD_PRODUCT
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
 p_id=>wwv_flow_imp.id(3105802853967492764)
,p_lov_name=>'LOV_EOD_PRODUCT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pm_name || '' '' || PM_PACKAGE || '' '' || PM_BABY_BOX_UNIT',
'          || '' '' ||NVL2(PM_PACKAGE, '' x '',null)|| '' '' || PM_PACKAGE_1|| '' '' || PM_PRODUCT_UNIT || '' x '' || PM_PACKAGE_2',
'          || '' '' || PM_PACKAGE_UNIT as d,',
'       pm_id as r',
'  from V_PRODUCT_MASTER, V_ENQUIRIES_ORDERS_DETAILS',
' where eod_product_id = pm_id',
' and eod_enq_id = :eod_enq_id',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
