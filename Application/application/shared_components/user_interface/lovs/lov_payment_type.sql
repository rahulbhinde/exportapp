prompt --application/shared_components/user_interface/lovs/lov_payment_type
begin
--   Manifest
--     LOV_PAYMENT_TYPE
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
 p_id=>wwv_flow_imp.id(163770225261516940)
,p_lov_name=>'LOV_PAYMENT_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(163770225261516940)||'.'
,p_location=>'STATIC'
,p_version_scn=>485389036
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(163770603901516941)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Advance'
,p_lov_return_value=>'ADV'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(163771008100516943)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Partial Pay'
,p_lov_return_value=>'PP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(163771380026516944)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Final Pay'
,p_lov_return_value=>'FP'
);
wwv_flow_imp.component_end;
end;
/
