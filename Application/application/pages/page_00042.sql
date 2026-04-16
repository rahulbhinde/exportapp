prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_name=>'Output Form Setup - Not Used RRB'
,p_step_title=>'Output Form Setup'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(164328134255625578)
,p_name=>'Output Form Setup'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OFM_ID,',
'       OFM_NAME,',
'       OFM_CREATED_BY,',
'       OFM_CREATED_ON,',
'       OFM_MODIFIED_BY,',
'       OFM_MODIFIED_ON',
'  from V_OUTPUT_FORMS_MASTER'))
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(164329719340625692)
,p_query_column_id=>1
,p_column_alias=>'OFM_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Ofm Id'
,p_column_link=>'f?p=#APP_ID#:43:#APP_SESSION#:::RP:P43_OFM_ID:#OFM_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(164330095250625702)
,p_query_column_id=>2
,p_column_alias=>'OFM_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Ofm Name'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(164330519908625707)
,p_query_column_id=>3
,p_column_alias=>'OFM_CREATED_BY'
,p_column_display_sequence=>3
,p_column_heading=>'Ofm Created By'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(164330955367625708)
,p_query_column_id=>4
,p_column_alias=>'OFM_CREATED_ON'
,p_column_display_sequence=>4
,p_column_heading=>'Ofm Created On'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(164331325833625709)
,p_query_column_id=>5
,p_column_alias=>'OFM_MODIFIED_BY'
,p_column_display_sequence=>5
,p_column_heading=>'Ofm Modified By'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(164331766318625711)
,p_query_column_id=>6
,p_column_alias=>'OFM_MODIFIED_ON'
,p_column_display_sequence=>6
,p_column_heading=>'Ofm Modified On'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(164334260818625729)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(164328134255625578)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:43'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(164334728076625734)
,p_computation_sequence=>1
,p_computation_item=>'P43_OFM_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
