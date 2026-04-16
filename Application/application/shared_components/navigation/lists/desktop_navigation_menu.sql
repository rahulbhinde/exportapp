prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
--   Manifest
--     LIST: Desktop Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31949222175550530994)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>46241721144127
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12061489996988367)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>' Masters'
,p_list_item_icon=>'t-Icon fa-gear u-color-8-text'
,p_security_scheme=>wwv_flow_imp.id(69913251714257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,7,16,18,9999,68'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32823779466810881087)
,p_list_item_display_sequence=>101
,p_list_item_link_text=>'Contacts'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-phone'
,p_parent_list_item_id=>wwv_flow_imp.id(12061489996988367)
,p_list_text_02=>'[&APP_CONTACTS.]'
,p_list_text_07=>'t-MegaMenu-badge-custom1'
,p_security_scheme=>wwv_flow_imp.id(69913251714257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32165402167292523801)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-plus'
,p_parent_list_item_id=>wwv_flow_imp.id(12061489996988367)
,p_list_text_02=>'[&APP_CUSTOMERS.]'
,p_list_text_07=>'t-MegaMenu-badge-custom1'
,p_security_scheme=>wwv_flow_imp.id(69913251714257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7,8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(125181457602613993)
,p_list_item_display_sequence=>115
,p_list_item_link_text=>'HSN Codes'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa fa-tag'
,p_parent_list_item_id=>wwv_flow_imp.id(12061489996988367)
,p_list_text_02=>'[&APP_HSN_CODES.]'
,p_list_text_07=>'t-MegaMenu-badge-custom1'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25,26'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32899850771764052575)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Products'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-shopping-cart fa-flip-horizontal'
,p_parent_list_item_id=>wwv_flow_imp.id(12061489996988367)
,p_list_text_02=>'[&APP_PRODUCTS.]'
,p_list_text_07=>'t-MegaMenu-badge-custom1'
,p_security_scheme=>wwv_flow_imp.id(69913251714257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16,17,14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32900605233108774913)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Suppliers'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-plus'
,p_parent_list_item_id=>wwv_flow_imp.id(12061489996988367)
,p_list_text_02=>'[&APP_SUPPLIERS.]'
,p_list_text_07=>'t-MegaMenu-badge-custom1'
,p_security_scheme=>wwv_flow_imp.id(69913251714257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18,19'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31460758872105615)
,p_list_item_display_sequence=>1060
,p_list_item_link_text=>'Packing Material'
,p_list_item_link_target=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_parent_list_item_id=>wwv_flow_imp.id(12061489996988367)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12062579967012178)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Shipments'
,p_list_item_icon=>'t-Icon fa-ship  u-color-8-text'
,p_security_scheme=>wwv_flow_imp.id(69913251714257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22,33,35,9999,75'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(34099811858831488920)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'Enquiries / Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-text-o'
,p_parent_list_item_id=>wwv_flow_imp.id(12062579967012178)
,p_list_text_02=>'[&APP_ORDERS.]'
,p_list_text_07=>'t-MegaMenu-badge-custom1'
,p_security_scheme=>wwv_flow_imp.id(69913251714257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22,23,24'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(164010433858015080)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>' Purchase Order'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-check-alt'
,p_parent_list_item_id=>wwv_flow_imp.id(12062579967012178)
,p_security_scheme=>wwv_flow_imp.id(69913251714257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35,36'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(163886440365095412)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'User Notes'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-sticky-note-o'
,p_parent_list_item_id=>wwv_flow_imp.id(12062579967012178)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33,34'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(451776935708498748)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Master List'
,p_list_item_link_target=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-list'
,p_parent_list_item_id=>wwv_flow_imp.id(12062579967012178)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'75,76'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22470008860283821777)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Board Returns'
,p_list_item_link_target=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-edit'
,p_parent_list_item_id=>wwv_flow_imp.id(12062579967012178)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'85,86'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(49368304120705363)
,p_list_item_display_sequence=>1070
,p_list_item_link_text=>'Sales Contract'
,p_list_item_link_target=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-signature'
,p_parent_list_item_id=>wwv_flow_imp.id(12062579967012178)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'91'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12064339364040932)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>' Warehouse'
,p_list_item_icon=>'t-Icon fa-university  u-color-8-text'
,p_security_scheme=>wwv_flow_imp.id(69914162855257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'44,28,88,88'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(142694337788284343)
,p_list_item_display_sequence=>301
,p_list_item_link_text=>' Inward Details'
,p_list_item_link_target=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:RIR:IR_IM_STATUS_FILTER:IP:'
,p_list_item_icon=>'fa-truck fa-flip-horizontal'
,p_parent_list_item_id=>wwv_flow_imp.id(12064339364040932)
,p_security_scheme=>wwv_flow_imp.id(69914162855257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'77'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12064996019046363)
,p_list_item_display_sequence=>302
,p_list_item_link_text=>'Stock Details'
,p_list_item_link_target=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-truck'
,p_parent_list_item_id=>wwv_flow_imp.id(12064339364040932)
,p_security_scheme=>wwv_flow_imp.id(69914162855257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'83'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(28655648697651763101)
,p_list_item_display_sequence=>1040
,p_list_item_link_text=>'Update Marks & Nos.'
,p_list_item_link_target=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-sticky-note-o'
,p_parent_list_item_id=>wwv_flow_imp.id(12064339364040932)
,p_security_scheme=>wwv_flow_imp.id(69914162855257093)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(687638288498837019)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>'Business Analytics'
,p_list_item_icon=>'t-Icon fa-cloud-chart  u-color-8-text'
,p_security_scheme=>wwv_flow_imp.id(69913251714257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'68,70'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(93063538856776298)
,p_list_item_display_sequence=>510
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-combo-chart'
,p_parent_list_item_id=>wwv_flow_imp.id(687638288498837019)
,p_security_scheme=>wwv_flow_imp.id(69913133764257079)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'70'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(358034962706265216)
,p_list_item_display_sequence=>520
,p_list_item_link_text=>'Report'
,p_list_item_link_target=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:68:::'
,p_list_item_icon=>'fa-table-chart'
,p_parent_list_item_id=>wwv_flow_imp.id(687638288498837019)
,p_security_scheme=>wwv_flow_imp.id(69913251714257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'70'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(688139180405855068)
,p_list_item_display_sequence=>1000
,p_list_item_link_text=>'SB'
,p_list_item_icon=>'fa fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(687638288498837019)
,p_security_scheme=>wwv_flow_imp.id(69913861202257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10000,1000,51'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(125450348750092529)
,p_list_item_display_sequence=>1010
,p_list_item_link_text=>'Accounting Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(688139180405855068)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'51'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(69970381076275060)
,p_list_item_display_sequence=>1020
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(688139180405855068)
,p_security_scheme=>wwv_flow_imp.id(69913861202257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10000'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44740248005410526)
,p_list_item_display_sequence=>1030
,p_list_item_link_text=>'SB Costing'
,p_list_item_link_target=>'f?p=&APP_ID.:1000:&SESSION.:20'':&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(688139180405855068)
,p_security_scheme=>wwv_flow_imp.id(69913861202257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1000'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31949275931425531034)
,p_list_item_display_sequence=>400
,p_list_item_link_text=>' Administration'
,p_list_item_icon=>'t-Icon fa-user-wrench  u-color-8-text'
,p_security_scheme=>wwv_flow_imp.id(69913570901257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3,9,11,3,13,16,42,41,37,25,54,54'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32818706895407234176)
,p_list_item_display_sequence=>430
,p_list_item_link_text=>'FOB'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(31949275931425531034)
,p_security_scheme=>wwv_flow_imp.id(69913861202257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32811064071183294876)
,p_list_item_display_sequence=>450
,p_list_item_link_text=>'Master Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(31949275931425531034)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11,12'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(125102743471705564)
,p_list_item_display_sequence=>470
,p_list_item_link_text=>'Output Logo'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(31949275931425531034)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'41,45'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33576214045198468485)
,p_list_item_display_sequence=>480
,p_list_item_link_text=>'Product Category'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(31949275931425531034)
,p_security_scheme=>wwv_flow_imp.id(69913861202257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(137151679559504123)
,p_list_item_display_sequence=>490
,p_list_item_link_text=>'Products Data Load'
,p_list_item_link_target=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_parent_list_item_id=>wwv_flow_imp.id(31949275931425531034)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'53'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109470317872271335)
,p_list_item_display_sequence=>495
,p_list_item_link_text=>'Proforma Data Load'
,p_list_item_link_target=>'f?p=&APP_ID.:94:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(31949275931425531034)
,p_security_scheme=>wwv_flow_imp.id(69913570901257093)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'94'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(88480255346441789)
,p_list_item_display_sequence=>1050
,p_list_item_link_text=>'Output Form Setup'
,p_list_item_link_target=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(31949275931425531034)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25951011388682987)
,p_list_item_display_sequence=>410
,p_list_item_link_text=>'Accounts'
,p_list_item_icon=>'fa-book u-color-8-text'
,p_list_item_disp_cond_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(69913251714257093)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(163776950970539667)
,p_list_item_display_sequence=>440
,p_list_item_link_text=>'Finance'
,p_security_scheme=>wwv_flow_imp.id(97169066371220999)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25951994077934576)
,p_list_item_display_sequence=>225
,p_list_item_link_text=>'Expenses'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-money-withdrawal'
,p_parent_list_item_id=>wwv_flow_imp.id(163776950970539667)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'110,111'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(373150680170605550)
,p_list_item_display_sequence=>1100
,p_list_item_link_text=>'Order Loan/ Payment Details'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-pointer'
,p_parent_list_item_id=>wwv_flow_imp.id(163776950970539667)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'100'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(75365821105387131)
,p_list_item_display_sequence=>1110
,p_list_item_link_text=>'Bank Master'
,p_list_item_link_target=>'f?p=&APP_ID.:98:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-pointer'
,p_parent_list_item_id=>wwv_flow_imp.id(163776950970539667)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'98'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1048997925729029)
,p_list_item_display_sequence=>1120
,p_list_item_link_text=>'Forward Booking'
,p_list_item_link_target=>'f?p=&APP_ID.:93:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-bookmark'
,p_parent_list_item_id=>wwv_flow_imp.id(163776950970539667)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'93,96'
);
wwv_flow_imp.component_end;
end;
/
