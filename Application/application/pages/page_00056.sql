prompt --application/pages/page_00056
begin
--   Manifest
--     PAGE: 00056
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
 p_id=>56
,p_name=>'Add Default Notes'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Default Notes'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-table tr.selected td {',
'    background-color: #2d7bbb;',
'    color: #fff;',
'}',
'.a-IRR-table tr.selected:hover td {',
'    background-color: #399bea;',
'    color: #fff;',
'}'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(185335333528064235)
,p_plug_name=>'Default Notes'
,p_region_name=>'myreport'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'case when instr(:P56_SELECTED_NOTES, ''|'' || c001 || ''|'') > 0 then ',
'      ''checked'' ',
'    else ',
'      '''' ',
'    end as selected,',
'SEQ_ID,',
'c001 st_id,',
'c002 st_code,',
'c003 st_name,',
'c004 st_display_order,',
''''' Del',
'from APEX_COLLECTIONS col',
'WHERE COLLECTION_NAME=''DEFAULT_NOTES''',
'order by to_number(c004)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P56_SELECTED_NOTES'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(185335602371064245)
,p_name=>'Products'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No default note(s) are present in the system for &P56_TYPE.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'BHINDE.RAHUL@GMAIL.COM'
,p_internal_uid=>81832007486170160
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125616489181388407)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125619931938388416)
,p_db_column_name=>'DEL'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Delete'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125620327120388416)
,p_db_column_name=>'SELECTED'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Selected'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125418369871564106)
,p_db_column_name=>'ST_ID'
,p_display_order=>94
,p_column_identifier=>'CG'
,p_column_label=>'<input type="checkbox" value="all">'
,p_column_html_expression=>'<input type="checkbox" #SELECTED# value="#ST_ID#">'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125418404261564107)
,p_db_column_name=>'ST_CODE'
,p_display_order=>104
,p_column_identifier=>'CH'
,p_column_label=>'Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125418558149564108)
,p_db_column_name=>'ST_NAME'
,p_display_order=>114
,p_column_identifier=>'CI'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(125418780185564110)
,p_db_column_name=>'ST_DISPLAY_ORDER'
,p_display_order=>124
,p_column_identifier=>'CJ'
,p_column_label=>'Display Order'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(185342976321064256)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221171'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ST_ID:ST_CODE:ST_NAME:ST_DISPLAY_ORDER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32209354921150716792)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>5
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(125621406274388434)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(32209354921150716792)
,p_button_name=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Default Notes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ofd_id,',
'                        st_name || '' Default Note'' note_heading, ',
'                        --commented by Ranu 310319 to be in sync with setup table',
'                        --decode (:P56_TYPE,''ENQ'',''PROFORMA'',''CI'',''CUSTOM INVOICE'',''PO'',''PO'','''') || '' Default Note'' note_heading, ',
'                        ofd_message note_desc,',
'                        ofd_display_order',
'                from V_OUTPUT_FORMS_DETAILS,V_OUTPUT_FORMS_MASTER,V_SETUP_TABLE',
'                where ofd_ofm_id = ofm_id',
'                and upper(ofm_name) = upper(st_extra1) --upper(st_name)',
'                --decode (:P56_TYPE,''ENQUIRY'',''PROFORMA'',''ORDER'',''PROFORMA'',''PO'',''PO'',''ALL'')',
'                and ofd_category =''DEFAULTNOTES''',
'                and :P56_TYPE = st_code',
'                and st_type = ''OUTPUT_TYPE'''))
,p_button_condition_type=>'EXISTS'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select oft_id,',
'		decode (:P56_TYPE,''ENQUIRY'',''PROFORMA'',''ORDER'',''PROFORMA'',''PO'',''PO'','''') || '' Default Note'' note_heading, ',
'		oft_message note_desc,',
'		oft_display_order',
'from output_form_txtmsg,V_OUTPUT_FORMS_MASTER',
'where oft_ofm_id = ofm_id',
'and ofm_name = decode (:P56_TYPE,''ENQUIRY'',''PROFORMA'',''ORDER'',''PROFORMA'',''PO'',''PO'',''ALL'')'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(125625715885388459)
,p_branch_name=>'close_after_save'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125418641129564109)
,p_name=>'P56_TYPE'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(32209354921150716792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125622216104388440)
,p_name=>'P56_TYPE_ID'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(32209354921150716792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(125622595835388441)
,p_name=>'P56_SELECTED_NOTES'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(32209354921150716792)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(125623867839388453)
,p_name=>'selectNotes'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(185335333528064235)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(125624353265388455)
,p_event_id=>wwv_flow_imp.id(125623867839388453)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var cb$, checked, allRows$,',
'    sel$ = $("#P56_SELECTED_NOTES"),',
'    event = this.browserEvent,',
'    target$ = $(event.target),',
'    th$ = target$.closest("th"),',
'    tr$ = target$.closest("tr");',
'',
'if (th$.length) {',
'    // the click was on the "select all"',
'    // checkbox or checkbox cell',
'    cb$ = th$.find("input");',
'    if (cb$.length && cb$.val() === "all") {',
'        checked = cb$[0].checked;',
'        if (target$[0].nodeName !== ''INPUT'') {',
'            // only do this if the click was not on the checkbox',
'            // because the checkbox will check itself',
'            checked = cb$[0].checked = !checked;',
'        }',
'        if (sel$.val() === "") {',
'            sel$.val("|");',
'        }',
'        $("#myreport").find("td input").each(function() {',
'            this.checked = checked;',
'            // give a visual style to the [un]selected row',
'            $(this).closest("tr").toggleClass("selected", checked);',
'            // update the hidden selected item',
'            sel$.val(sel$.val().replace("|" + this.value + "|", "|"));',
'            if (checked) {',
'                sel$.val(sel$.val() + this.value + "|");',
'            }',
'        });',
'    }',
'} else if (tr$.length) {',
'    // the click was on some other data row',
'    cb$ = tr$.find("td").first().find("input");',
'    checked = cb$[0].checked;',
'    if (target$[0].nodeName !== ''INPUT'') {',
'        // only do this if the click was not on the checkbox',
'        // because the checkbox will check itself',
'        checked = cb$[0].checked = !checked;',
'    }',
'    // give a visual style to the [un]selected row',
'    tr$.toggleClass("selected", checked);',
'    // update the hidden selected item',
'    if (checked) {',
'        if (sel$.val() === "") {',
'            sel$.val("|");',
'        }',
'        sel$.val(sel$.val() + cb$.val() + "|");',
'    } else {',
'        sel$.val(sel$.val().replace("|" + cb$.val() + "|", "|"));        ',
'    }',
'    // update the select all checkbox state',
'    allRows$ = $("#myreport").find("td input");',
'    checked = (allRows$.length === allRows$.filter(":checked").length);',
'    $("#myreport").find("th input")[0].checked = checked;',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(125623029588388446)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load_Default_Notes_Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''DEFAULT_NOTES'' ) ',
'	THEN',
'	APEX_COLLECTION.TRUNCATE_COLLECTION (p_collection_name => ''DEFAULT_NOTES'');',
'	END IF;',
'END;',
'',
'BEGIN',
'	for i in (  select ofd_id,',
'                        st_name || '' Default Note'' note_heading, ',
'                        --commented by Ranu 310319 to be in sync with setup table',
'                        --decode (:P56_TYPE,''ENQ'',''PROFORMA'',''CI'',''CUSTOM INVOICE'',''PO'',''PO'','''') || '' Default Note'' note_heading, ',
'                        ofd_message note_desc,',
'                        ofd_display_order',
'                from V_OUTPUT_FORMS_DETAILS,V_OUTPUT_FORMS_MASTER,V_SETUP_TABLE',
'                where ofd_ofm_id = ofm_id',
'                and upper(ofm_name) = upper(st_extra1) --upper(st_name)',
'                --decode (:P56_TYPE,''ENQUIRY'',''PROFORMA'',''ORDER'',''PROFORMA'',''PO'',''PO'',''ALL'')',
'                and ofd_category =''DEFAULTNOTES''',
'                and :P56_TYPE = st_code',
'                and st_type = ''OUTPUT_TYPE''',
'                order by ofd_display_order',
'			) loop',
'',
'		IF APEX_COLLECTION.COLLECTION_EXISTS (p_collection_name=> ''DEFAULT_NOTES'' ) THEN',
'		--DEBUG_LOG_PROC (:P141_TRANS_ID || '':P141_TRANS_ID'');',
'				APEX_COLLECTION.ADD_MEMBER(',
'				p_collection_name =>''DEFAULT_NOTES'',',
'				p_c001 =>i.ofd_id,',
'				p_c002 =>i.note_heading,',
'				p_c003 =>i.note_desc,',
'                p_c004 =>i.ofd_display_order',
'				);',
'',
'		ELSE       ',
'				APEX_COLLECTION.CREATE_COLLECTION(p_collection_name =>''DEFAULT_NOTES'');',
'				APEX_COLLECTION.ADD_MEMBER(',
'				p_collection_name =>''DEFAULT_NOTES'',',
'				p_c001 =>i.ofd_id,',
'				p_c002 =>i.note_heading,',
'				p_c003 =>i.note_desc,',
'                p_c004 =>i.ofd_display_order',
'				);',
'		END IF;',
'    END LOOP;	',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>125674179219216942
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(125623432206388447)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert_notes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	v_default_note_id varchar2(4000);',
'	v_insert_stmt varchar2(4000);',
'	v_error_msg varchar2(4000);',
'BEGIN',
'insert into error_log (el_text) values ('':P56_SELECTED_NOTES - '' || :P56_SELECTED_NOTES);',
'if :P56_SELECTED_NOTES is not null and :P56_SELECTED_NOTES != ''|'' then',
'	 	',
'	v_default_note_id := ''('' || trim('','' from replace(:P56_SELECTED_NOTES,''|'', '','')) || '')'';',
'	',
'	insert into error_log (el_text) values (''inside of if block of UN insert - '' || v_default_note_id);',
' ',
'	v_insert_stmt := ''insert into V_USER_NOTES',
'	 (',
'		UN_ID,',
'		UN_TYPE,',
'		UN_TYPE_ID,',
'		UN_HEADING,',
'		UN_DETAILS,',
'		UN_DISPLAY,',
'		UN_ACTIVE,',
'		UN_DISPLAY_ORDER,',
'        UN_HIGHLIGHT_COLOR)',
'	',
'	  (',
'		SELECT ',
'	  seq_un_id.nextval,''''''||',
'	  :P56_TYPE ||'''''',''||',
'	  :P56_TYPE_ID || '', ',
'          st_name || '''' Default Note'''',',
'		OFD_MESSAGE,',
'		''''Y'''',',
'		''''Y'''',',
'		OFD_DISPLAY_ORDER,',
'        ''''DEFAULT''''',
'	FROM V_OUTPUT_FORMS_DETAILS,V_SETUP_TABLE',
'	WHERE OFD_ID in'' || v_default_note_id ||''',
'        and upper(''''''||:P56_TYPE ||'''''') = upper(st_code)',
'		and st_type = ''''OUTPUT_TYPE''''',
'	  )'';',
'	 ',
'    insert into error_log (el_text) values (''v_insert_stmt - '' || v_insert_stmt);',
'	 dbms_output.put_line (''v_insert_stmt - '' || v_insert_stmt);',
'   ',
'    execute immediate v_insert_stmt;',
'	  ',
'	   insert into error_log (el_text) values (''After insert of notes in UN'');',
'',
'ELSE',
'          v_error_msg := ''Please select atleast one or more default note(s) to be added to the ''|| :P56_TYPE;',
'          apex_error.add_error (',
'                p_message          => v_error_msg,',
'                p_display_location => apex_error.c_inline_in_notification );  ',
'END IF;  ',
'  ',
' EXCEPTION ',
'',
'when  DUP_VAL_ON_INDEX then',
'    v_error_msg := ''Duplicate note(s) cannot be added to the enquiry'';',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );  ',
'          ',
'when others then',
'    v_error_msg := ''Error:Adding Default Notes to Enquiry'' || sqlerrm;',
'    apex_error.add_error (',
'    p_message          => v_error_msg,',
'    p_display_location => apex_error.c_inline_in_notification );',
'                    ',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(125621406274388434)
,p_internal_uid=>125674581837216943
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(110044630950466113)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(125621406274388434)
,p_internal_uid=>110095780581294609
);
wwv_flow_imp.component_end;
end;
/
