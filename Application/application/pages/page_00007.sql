prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Customers'
,p_step_title=>'Customers'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>2526646919027767344
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(81700989407968166)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(32165402868848523820)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32165402868848523820)
,p_plug_name=>'Customers'
,p_region_name=>'custinfo'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleA'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CM_ID, ',
'CM_NAME,',
'CM_ADDRESS1,',
'CM_ADDRESS2,',
'--Commented by Ranu on 11-Aug-25 for Country/State changes',
'--stc.ST_NAME CM_COUNTRY,',
'CM_COUNTRY,',
'--sts.ST_NAME CM_STATE,',
'CM_CITY,',
'CM_ZIP,',
'CM_SHORT_ADDRESS,',
'CM_TEL1,',
'CM_TEL2,',
'CM_FAX,',
'CM_EMAIL,',
'CM_FINAL_DEST,',
'CM_SHIPPING_MARK,',
'CM_REMARKS,',
'CM_QUOTE_IN,',
'(select ST_NAME from V_SETUP_TABLE where st_code = CM_PORT_OF_DISCHARGE and st_type = ''PORT_OF_DISCHARGE'') CM_PORT_OF_DISCHARGE,',
'(select ST_NAME from V_SETUP_TABLE where st_code = CM_FINAL_DEST_COUNTRY and st_type = ''COUNTRY'') CM_FINAL_DEST_COUNTRY',
'  ,  APEX_UTIL.PREPARE_URL(',
'        p_url => ''f?p='' || :APP_ID || '':8:'' || :APP_SESSION || ''::NO:RP::'',',
'        p_triggering_element => ''#sb_create_btn''',
'    ) as dialog_url',
'from V_CUSTOMER_MASTER',
'--Commented by Ranu on 11-Aug-25 for Country/State changes',
'    /*,V_SETUP_TABLE stc',
'   -- ,V_SETUP_TABLE  sts',
'where cm_country = stc.st_id',
'and stc.st_type = ''COUNTRY''*/',
'--Commented on 17Nov2020 as State is not required',
'--and stc.st_id = sts.st_parent_id',
'--and cm_state (+) = sts.st_id ',
'--and sts.st_type = ''STATE'';'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>true
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:blue;font-weight:bold;">Customer Information',
'</span>',
'<hr/>'))
,p_plug_footer=>'<br/>'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <button class="t-Button t-Button--icon t-Button--iconRight t-Button--gapLeft  t-Button--hot" type="button"  data-otel-label="CREATE">',
'        <span class="t-Icon t-Icon--left fa fa-user-plus" aria-hidden="true"></span>',
'        <span class="t-Button-label">Create </span>',
'        <span class="t-Icon t-Icon--right fa fa-user-plus" aria-hidden="true"></span>',
'    </button>'))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(81700759609968164)
,p_region_id=>wwv_flow_imp.id(32165402868848523820)
,p_layout_type=>'GRID'
,p_grid_column_count=>5
,p_title_adv_formatting=>false
,p_title_column_name=>'CM_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CM_ADDRESS1'
,p_body_adv_formatting=>false
,p_body_column_name=>'CM_COUNTRY'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'CM_NAME'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'CM_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(81700873673968165)
,p_card_id=>wwv_flow_imp.id(81700759609968164)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_CM_ID:&CM_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32165411407420523835)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(32165402868848523820)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create '
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8::'
,p_icon_css_classes=>'fa-user-plus'
,p_grid_new_row=>'Y'
,p_security_scheme=>'!'||wwv_flow_imp.id(69914533657288756)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3253117993116771)
,p_name=>'P7_CM_QUOTE_IN_SEARCH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(81700989407968166)
,p_prompt=>'Quote In'
,p_source=>'CM_QUOTE_IN'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_QUOTE_IN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r,',
'       st_extra2  as icon_column',
'  from V_SETUP_TABLE',
' where st_type = ''QUOTE_IN''',
' order by st_display_order'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3253224606116772)
,p_name=>'P7_CM_FINAL_DEST_SEARCH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(81700989407968166)
,p_prompt=>'Destination'
,p_source=>'CM_FINAL_DEST_COUNTRY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_COUNTRY_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r,',
'       ''fa-flag-'' || LOWER(nvl(ST_EXTRA1,''CA'')) AS icon_column',
'  from SETUP_TABLE',
' where st_type = ''COUNTRY''',
' order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3253299285116773)
,p_name=>'P7_CM_COUNTRY_SEARCH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(81700989407968166)
,p_prompt=>'Country'
,p_source=>'CM_COUNTRY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOV_COUNTRY_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select st_name as d,',
'       st_code as r,',
'       ''fa-flag-'' || LOWER(nvl(ST_EXTRA1,''CA'')) AS icon_column',
'  from SETUP_TABLE',
' where st_type = ''COUNTRY''',
' order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>true
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(81701097595968167)
,p_name=>'P7_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(81700989407968166)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32165410527648523834)
,p_name=>'Edit Report - Dialog Closed/Canceled'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(32165402868848523820)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32165410990977523835)
,p_event_id=>wwv_flow_imp.id(32165410527648523834)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32165402868848523820)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(32165411825862523836)
,p_name=>'Create Button - Dialog Closed/Canceled'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(32165411407420523835)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(32165412342173523836)
,p_event_id=>wwv_flow_imp.id(32165411825862523836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(32165402868848523820)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
