prompt --application/shared_components/user_interface/templates/report/sb_carousel_report
begin
--   Manifest
--     ROW TEMPLATE: SB_CAROUSEL_REPORT
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
 p_id=>wwv_flow_imp.id(91812080886354951)
,p_row_template_name=>'SB Carousel Report'
,p_internal_name=>'SB_CAROUSEL_REPORT'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="item">',
'    <div class="imgTitle">',
'        <h2 class="blogTitle">#ST_NAME#</h2>',
'        <a href="#LINK#"> #ST_IMAGE#',
'            <!--<img src="https://placeimg.com/500/300/animals" alt="" />-->',
'        </a>',
'    </div>    ',
'</div>',
'                  '))
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
'<a style="color:#FFF" href="#LINK#">#ST_IMAGE#</a>',
'',
'<div id="wrapper" class="container group">',
'    <div id="primary" class="sidebar-no">',
'        <div class="container group">',
'            <div class="row">',
'                <div class="logos-slider wrapper">',
'',
'                    <div class="list_carousel">',
'                        <ul class="logos-slides">',
'                            <li style="height: 70px;">',
'                                <a href="#LINK#" class="bwWrapper" >',
'                                 <!--<img src="images/slider/client1.png" style="max-height: 70px;" class="logo" />-->',
'                                 #ST_IMAGE#',
'                                </a>',
'                            </li>',
'                        </ul>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
'</div>                    '))
);
wwv_flow_imp.component_end;
end;
/
