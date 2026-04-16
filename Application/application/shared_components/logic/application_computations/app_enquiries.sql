prompt --application/shared_components/logic/application_computations/app_enquiries
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_ENQUIRIES
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
 p_id=>wwv_flow_imp.id(35615828168035694071)
,p_computation_sequence=>10
,p_computation_item=>'APP_ENQUIRIES'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(1) from V_ENQUIRIES_ORDERS_MST where EOM_ORD_ID is null'
,p_version_scn=>350683224
);
wwv_flow_imp.component_end;
end;
/
