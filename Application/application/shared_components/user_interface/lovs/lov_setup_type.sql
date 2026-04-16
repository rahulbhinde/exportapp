prompt --application/shared_components/user_interface/lovs/lov_setup_type
begin
--   Manifest
--     LOV_SETUP_TYPE
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
 p_id=>wwv_flow_imp.id(32810695660732604701)
,p_lov_name=>'LOV_SETUP_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(32810695660732604701)||'.'
,p_location=>'STATIC'
,p_version_scn=>45997321826700
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22468113329759787100)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'ATTACHMENT CATEGORY'
,p_lov_return_value=>'ATTACHMENT_CATEGORY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(87524242081750587)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'BILLING LOCATION'
,p_lov_return_value=>'BILLING_LOCATION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22470413415032928111)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'BOARD RETURNS'
,p_lov_return_value=>'BOARD_RETURNS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(124723697463153494)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'CHARGES CATEGORIES'
,p_lov_return_value=>'CHARGES_CATEGORIES'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(32894501857539303487)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'CONTACT TYPE'
,p_lov_return_value=>'CONTACT_TYPE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(138313826889572850)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'CONTAINER SIZE'
,p_lov_return_value=>'CONTAINER_SIZE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(124951544001190994)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'CONTAINER TYPE'
,p_lov_return_value=>'CONTAINER_TYPE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(157899120358813195)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'COSTING TYPE'
,p_lov_return_value=>'COSTING_TYPE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(32810695953351604704)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'COUNTRY'
,p_lov_return_value=>'COUNTRY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(87524544423752383)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'DELIVERY LOCATION'
,p_lov_return_value=>'DELIVERY_LOCATION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(15287984858938620756)
,p_lov_disp_sequence=>85
,p_lov_disp_value=>'DISTRICT'
,p_lov_return_value=>'DISTRICT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(33576617239205604804)
,p_lov_disp_sequence=>90
,p_lov_disp_value=>'DRAWBACK RATE UNIT'
,p_lov_return_value=>'DBK_RATE_UNIT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(163831146329843542)
,p_lov_disp_sequence=>100
,p_lov_disp_value=>'ENQUIRY STATUS'
,p_lov_return_value=>'ENQUIRY_STATUS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(82531300849536025)
,p_lov_disp_sequence=>110
,p_lov_disp_value=>'Enquiry# Setup'
,p_lov_return_value=>'ENQ_NO_SETUP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(32817940696654155007)
,p_lov_disp_sequence=>120
,p_lov_disp_value=>'FOB'
,p_lov_return_value=>'FOB'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(5815262726630765570)
,p_lov_disp_sequence=>125
,p_lov_disp_value=>'HIGHLIGHT COLOR'
,p_lov_return_value=>'HIGHLIGHT_COLOR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(142945067296430443)
,p_lov_disp_sequence=>130
,p_lov_disp_value=>'INWARD STATUS'
,p_lov_return_value=>'INWARD_STATUS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(82531607623537608)
,p_lov_disp_sequence=>140
,p_lov_disp_value=>'Invoice# Setup'
,p_lov_return_value=>'INV_NO_SETUP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(32899452495901980882)
,p_lov_disp_sequence=>150
,p_lov_disp_value=>'MANUFACTURE TYPE'
,p_lov_return_value=>'MANUFACTURE_TYPE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(82981962442957556)
,p_lov_disp_sequence=>160
,p_lov_disp_value=>'MODE OF SHIPMENT'
,p_lov_return_value=>'SHIPPMENT_MODE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(163831465975846068)
,p_lov_disp_sequence=>170
,p_lov_disp_value=>'ORDER STATUS'
,p_lov_return_value=>'ORDER_STATUS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(30850902486153065)
,p_lov_disp_sequence=>180
,p_lov_disp_value=>'OUTPUT DISPLAY ATTRIBUTE'
,p_lov_return_value=>'OUTPUT_DISPLAY_ATTR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(125427515895613954)
,p_lov_disp_sequence=>190
,p_lov_disp_value=>'OUTPUT FORMAT'
,p_lov_return_value=>'OUTPUT_FORMAT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(163895506917109947)
,p_lov_disp_sequence=>200
,p_lov_disp_value=>'OUTPUT TYPE'
,p_lov_return_value=>'OUTPUT_TYPE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(32908348725414885747)
,p_lov_disp_sequence=>210
,p_lov_disp_value=>'PACKAGE UOM'
,p_lov_return_value=>'PACKAGE_UOM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(164021688772156941)
,p_lov_disp_sequence=>220
,p_lov_disp_value=>'PO STATUS'
,p_lov_return_value=>'PO_STATUS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3872444576406166869)
,p_lov_disp_sequence=>225
,p_lov_disp_value=>'PORT OF DISCHARGE'
,p_lov_return_value=>'PORT_OF_DISCHARGE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(125444726189032153)
,p_lov_disp_sequence=>230
,p_lov_disp_value=>'PORT OF LOADING'
,p_lov_return_value=>'PORT_OF_LOADING'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(137248397398048584)
,p_lov_disp_sequence=>240
,p_lov_disp_value=>'PRODUCT BRAND'
,p_lov_return_value=>'PRODUCT_BRAND_LOGO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(158136328505470307)
,p_lov_disp_sequence=>250
,p_lov_disp_value=>'PRODUCT CALCULATION MASTER'
,p_lov_return_value=>'PROD_CALC_MST'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(32901911231630317277)
,p_lov_disp_sequence=>260
,p_lov_disp_value=>'PRODUCT CATEGORY TYPE'
,p_lov_return_value=>'PRODUCT_CATEGORY_TYPE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(47780422820119735)
,p_lov_disp_sequence=>270
,p_lov_disp_value=>'PRODUCT STATUS'
,p_lov_return_value=>'PRODUCT_STATUS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(158734974514780956)
,p_lov_disp_sequence=>280
,p_lov_disp_value=>'PRODUCT UNIT'
,p_lov_return_value=>'PRODUCT_UNIT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(32908347859864881733)
,p_lov_disp_sequence=>290
,p_lov_disp_value=>'PRODUCT UOM'
,p_lov_return_value=>'PRODUCT_UOM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(33587195083390877575)
,p_lov_disp_sequence=>300
,p_lov_disp_value=>'PRODUCT USER CATEGORY'
,p_lov_return_value=>'V_PRODUCT_USER_CATEGORY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(32810696771134604706)
,p_lov_disp_sequence=>310
,p_lov_disp_value=>'QUOTE IN'
,p_lov_return_value=>'QUOTE_IN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(92534299427876165)
,p_lov_disp_sequence=>320
,p_lov_disp_value=>'REPORT SETUP'
,p_lov_return_value=>'REPORT_SETUP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(32810696336078604706)
,p_lov_disp_sequence=>330
,p_lov_disp_value=>'STATE'
,p_lov_return_value=>'STATE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(32810697109525604707)
,p_lov_disp_sequence=>340
,p_lov_disp_value=>'SUPPLIER TYPE'
,p_lov_return_value=>'SUPPLIER_TYPE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(125592197467653862)
,p_lov_disp_sequence=>350
,p_lov_disp_value=>'USER NOTES DEFAULT'
,p_lov_return_value=>'USER_NOTES_DEFAULT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(19457430812029743)
,p_lov_disp_sequence=>360
,p_lov_disp_value=>'COSTING UNIT'
,p_lov_return_value=>'COSTING_UNIT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(81457983482490560)
,p_lov_disp_sequence=>370
,p_lov_disp_value=>'Weighing Method'
,p_lov_return_value=>'WEIGH_METHOD'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(88367691533980859)
,p_lov_disp_sequence=>380
,p_lov_disp_value=>'PO# Setup'
,p_lov_return_value=>'PO_NO_SETUP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(82765223402481409)
,p_lov_disp_sequence=>390
,p_lov_disp_value=>'PO Rate Display Unit'
,p_lov_return_value=>'PO_RATE_DISP_UNIT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(13297558613435807)
,p_lov_disp_sequence=>400
,p_lov_disp_value=>'API SETUP'
,p_lov_return_value=>'API_SETUP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(13616621703960511)
,p_lov_disp_sequence=>410
,p_lov_disp_value=>'REPORT PARAMETERS'
,p_lov_return_value=>'REPORT_PARAMS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22674294353442426)
,p_lov_disp_sequence=>420
,p_lov_disp_value=>'Sales Contract# Setup'
,p_lov_return_value=>'SC_NO_SETUP'
);
wwv_flow_imp.component_end;
end;
/
