prompt --application/shared_components/navigation/breadcrumbs/mainmenu
begin
--   Manifest
--     MENU:  MainMenu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(31949275823033531034)
,p_name=>' MainMenu'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12074305835582989)
,p_short_name=>'Stock Details'
,p_link=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:::'
,p_page_id=>83
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(27150403710519275)
,p_short_name=>'Expense Details'
,p_link=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:::'
,p_page_id=>110
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(30037547411124747)
,p_short_name=>'Issue PO Information'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(30038436395144654)
,p_short_name=>'Customer Information'
,p_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(30038618323148931)
,p_short_name=>'Contact Information'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(30038975138155082)
,p_short_name=>'Product Information'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(30039128918158913)
,p_short_name=>'Enquiries/ Orders Information'
,p_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(30039320005162320)
,p_short_name=>'Inward Entry Information'
,p_link=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:::'
,p_page_id=>77
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(30040434599192705)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(74935307387637172)
,p_short_name=>'Bank Information'
,p_link=>'f?p=&APP_ID.:98:&SESSION.::&DEBUG.:::'
,p_page_id=>98
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(163778200037574897)
,p_short_name=>'Bank Information'
,p_link=>'f?p=&APP_ID.:98:&SESSION.::&DEBUG.:::'
,p_page_id=>98
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(373154727796605587)
,p_short_name=>'Order Loan&#x2F;Payment Details'
,p_link=>'f?p=&APP_ID.:100:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>100
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3049802536512013872)
,p_short_name=>'User Notes Information'
,p_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:::'
,p_page_id=>33
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3049802780469017121)
,p_short_name=>'Master List Information'
,p_link=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:::'
,p_page_id=>75
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12700950987455120534)
,p_short_name=>'HSN Code Information'
,p_link=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:::'
,p_page_id=>25
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22466613352720452689)
,p_short_name=>'Board Return Information'
,p_link=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:::'
,p_page_id=>85
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(32900617414801774955)
,p_short_name=>'Supplier Information'
,p_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_imp.component_end;
end;
/
