prompt --application/shared_components/user_interface/templates/report/sb_badge
begin
--   Manifest
--     ROW TEMPLATE: SB_BADGE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>7965342552622829
,p_default_application_id=>200
,p_default_id_offset=>32162224829641601
,p_default_owner=>'SAARTHIDEV'
);
wwv_flow_imp_shared.create_row_template(
 p_id=>wwv_flow_imp.id(92695187644317739)
,p_row_template_name=>'SB Badge'
,p_internal_name=>'SB_BADGE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="db2_container_badge #CONTAINER_CLASS_BADGE#">',
'          <div class="db2_number_badge">',
'           #DATA#',
'        </div> ',
'        <div class="db2_text_badge">',
'           #TITLE#',
'       </div>      ',
'</div>'))
,p_row_template_before_rows=>' '
,p_row_template_after_rows=>' '
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_translate_this_template=>'N'
,p_row_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--OLD',
'<div class="sb #CONTAINER_CLASS#">    ',
'<div class="circle-tile ">',
'        <a href="#LINK#"><div class="circle-tile-heading #CLASS1#"><i class="fa #ICON_CLASS#"></i></div></a>',
'        <div class="circle-tile-content #CLASS2#">',
'          <div class="circle-tile-description text-faded">#TITLE#</div>',
'          <div class="circle-tile-number text-faded ">#DATA#</div>',
'          <a class="circle-tile-footer" href="#LINK#">More Details <i class="fa fa fa-chevron-circle-right"></i></a>',
'        </div>',
'      </div>',
'</div>'))
);
wwv_flow_imp.component_end;
end;
/
