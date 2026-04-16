prompt --application/shared_components/logic/application_computations/app_products
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_PRODUCTS
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
 p_id=>wwv_flow_imp.id(35615925201836706264)
,p_computation_sequence=>10
,p_computation_item=>'APP_PRODUCTS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1)',
'from V_PRODUCT_MASTER',
'    ,V_SUPPLIER_MASTER',
'    ,V_PRODUCT_CATEGORY',
'where pm_manufac_id = supm_id    ',
'and SUPM_SUPPLIER_TYPE = ''MANUFACTURER''',
'and pm_category = pc_id'))
,p_version_scn=>350683224
);
wwv_flow_imp.component_end;
end;
/
