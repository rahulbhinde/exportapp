prompt --application/shared_components/user_interface/lovs/lov_ordered_customer
begin
--   Manifest
--     LOV_ORDERED_CUSTOMER
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
 p_id=>wwv_flow_imp.id(48609787361270214)
,p_lov_name=>'LOV_ORDERED_CUSTOMER'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	distinct cm_name as d,',
'		cm_id as r',
'from 	V_ENQUIRIES_ORDERS_MST',
'		,V_CUSTOMER_MASTER',
'where 	eom_customer_id = cm_id',
'and 	eom_ord_id is not null',
'--and 	eom_order_status in (''PPO'',''IP'') --commented this on 30May20 as after PO Issued, Customer was not displayed in Customer LOV',
'and 	nvl(cm_active,''Y'') = ''Y''',
'order by 1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
