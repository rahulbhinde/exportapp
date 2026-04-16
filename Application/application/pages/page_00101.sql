prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
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
 p_id=>101
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'SBAPP - Log In'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="slideshow">',
'  <li><span></span></li>',
'  <li><span></span></li>',
'  <li><span></span></li>',
'  <li><span></span></li>',
'</ul>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.container {',
'    margin-top: 100px;',
'}',
'',
'.t-PageBody--login',
'{',
'   background-image: url(#APP_IMAGES#texture-11.png);',
'}',
'',
'.t-Login-logo',
'{height: 0px;}',
'',
'.t-Login-logo.fa {',
'    color: rgb(30,30,30);',
'}',
'',
'.t-Login-header {',
'    padding: 0px 0;',
'}',
' ',
'.t-Login-region, .t-MediaList {',
' background: rgba(255,255,255,0.75) !important;',
'  /*  background: none !important;*/',
'    ',
'/*    background: rgba(235,246,249,1); background: -moz-linear-gradient(top, rgba(235,246,249,1) 0%, rgba(194,226,235,1) 56%, rgba(138,197,214,1) 100%); background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(235,246,249,1)), color-st'
||'op(56%, rgba(194,226,235,1)), color-stop(100%, rgba(138,197,214,1))); background: -webkit-linear-gradient(top, rgba(235,246,249,1) 0%, rgba(194,226,235,1) 56%, rgba(138,197,214,1) 100%); background: -o-linear-gradient(top, rgba(235,246,249,1) 0%, rgb'
||'a(194,226,235,1) 56%, rgba(138,197,214,1) 100%); background: -ms-linear-gradient(top, rgba(235,246,249,1) 0%, rgba(194,226,235,1) 56%, rgba(138,197,214,1) 100%); background: linear-gradient(to bottom, rgba(235,246,249,1) 0%, rgba(194,226,235,1) 56%, '
||'rgba(138,197,214,1) 100%); filter: progid:DXImageTransform.Microsoft.gradient( startColorstr=''#ebf6f9'', endColorstr=''#000000'', GradientType=0 );',
'    */',
'}',
'',
'.slideshow {',
'  list-style: none;',
'  z-index: 1;',
'  margin: 0px;',
'}',
'.slideshow li span {',
'  width: 100%;',
'  height: 100%;',
'  position: absolute;',
'  background-position: center;',
'  top: 0px;',
'  left: 0px;',
'  color: transparent;',
'  background-size: cover;  ',
'  background-repeat: no-repeat;',
'  opacity: 0;',
'  z-index: 0;',
'  -webkit-backface-visibility: hidden;',
'  backface-visibility: hidden;',
'  -webkit-animation: imageAnimation 24s linear infinite 0s;',
'  -moz-animation: imageAnimation 24s linear infinite 0s;',
'  animation: imageAnimation 24s linear infinite 0s;',
'}',
'',
'/*',
'.slideshow li:nth-child(1) span {',
'  background-image: url(#APP_IMAGES#image0.jpg);',
'}',
'*/',
'',
'.slideshow li:nth-child(2) span {',
'  background-image: url(#APP_IMAGES#image3.jpg);',
'  -webkit-animation-delay: 6s;',
'  -moz-animation-delay: 6s;',
'  animation-delay: 6s;',
'}',
'',
'.slideshow li:nth-child(3) span {',
'  background-image: url(#APP_IMAGES#image4.jpg);',
'  -webkit-animation-delay: 12s;',
'  -moz-animation-delay: 12s;',
'  animation-delay: 12s;',
'}',
'',
'.slideshow li:nth-child(4) span {',
'  background-image: url(#APP_IMAGES#image1.jpg);',
'  -webkit-animation-delay: 18s;',
'  -moz-animation-delay: 18s;',
'  animation-delay: 18s;',
'}',
'/*',
'.slideshow li:nth-child(1) span {',
'  background-image: url(#APP_IMAGES#snowman.gif);background-size: auto 100%;',
'     background-image: url(#APP_IMAGES#test1.gif);background-size: auto 100%;',
'}',
'',
'.slideshow li:nth-child(2) span {',
'  background-image: url(#APP_IMAGES#snowman.gif);background-size: auto 100%;',
'  -webkit-animation-delay: 6s;',
'  -moz-animation-delay: 6s;',
'  animation-delay: 6s;',
'}',
'',
'.slideshow li:nth-child(3) span {',
'  background-image: url(#APP_IMAGES#snowman.gif);background-size: auto 100%;',
'  -webkit-animation-delay: 12s;',
'  -moz-animation-delay: 12s;',
'  animation-delay: 12s;',
'}',
'',
'.slideshow li:nth-child(4) span {',
'  background-image: url(#APP_IMAGES#snowman.gif);background-size: auto 100%;',
'  -webkit-animation-delay: 18s;',
'  -moz-animation-delay: 18s;',
'  animation-delay: 18s;',
'}*/',
'',
'@-webkit-keyframes imageAnimation {',
'  0% {',
'    opacity: 0;',
'    -webkit-animation-timing-function: ease-in;',
'  }',
'  12.5% {',
'    opacity: 1;',
'    -webkit-animation-timing-function: ease-out;',
'  }',
'  25% {',
'    opacity: 1;',
'  }',
'  37.5% {',
'    opacity: 0;',
'  }',
'  100% {',
'    opacity: 0;',
'  }',
'}',
'@-moz-keyframes imageAnimation {',
'  0% {',
'    opacity: 0;',
'    -moz-animation-timing-function: ease-in;',
'  }',
'  12.5% {',
'    opacity: 1;',
'    -moz-animation-timing-function: ease-out;',
'  }',
'  25% {',
'    opacity: 1;',
'  }',
'  37.5% {',
'    opacity: 0;',
'  }',
'  100% {',
'    opacity: 0;',
'  }',
'}',
'@keyframes imageAnimation {',
'  0% {',
'    opacity: 0;',
'    -webkit-animation-timing-function: ease-in;',
'    -moz-animation-timing-function: ease-in;',
'    animation-timing-function: ease-in;',
'  }',
'  12.5% {',
'    opacity: 1;',
'    -webkit-animation-timing-function: ease-out;',
'    -moz-animation-timing-function: ease-out;',
'    animation-timing-function: ease-out;',
'  }',
'  25% {',
'    opacity: 1;',
'  }',
'  37.5% {',
'    opacity: 0;',
'  }',
'  100% {',
'    opacity: 0;',
'  }',
'}',
'',
'.no-cssanimations .slideshow li span {',
'  opacity: 1;',
'}',
''))
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(90325289041974075)
,p_plug_name=>'Slider'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'OWA_UTIL.GET_CGI_ENV(''HTTP_USER_AGENT'') LIKE ''%MSIE%'' OR',
'OWA_UTIL.GET_CGI_ENV(''HTTP_USER_AGENT'') LIKE ''%Trident%'''))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31949274994293531033)
,p_plug_name=>'<img src="#APP_IMAGES#spriteblend.png" alt="Login" />'
,p_region_template_options=>'#DEFAULT#:t-Login-region--headerTitle js-removeLandmark'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>35
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<img src="#APP_IMAGES#spriteblend.png" alt="Login" width=70%/>',
'<img src="#APP_IMAGES#JanuzLogo.png" alt="Login" width=70%/>'))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158893104359794144)
,p_plug_name=>'Footer'
,p_parent_plug_id=>wwv_flow_imp.id(31949274994293531033)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31949275302669531034)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(31949274994293531033)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(163805032017392095)
,p_name=>'P101_SB'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(158893104359794144)
,p_prompt=>'<img src="#WORKSPACE_IMAGES#logo.png" alt="SB"/>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31949275164603531033)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31949274994293531033)
,p_placeholder=>'Username'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_tag_attributes=>'style="width:100%;background-color: beige;"'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
,p_item_comment=>'icon-login-username'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31949275228806531033)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31949274994293531033)
,p_placeholder=>'Password'
,p_post_element_text=>'<span class="t-Login-iconValidation a-Icon icon-check"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_tag_attributes=>'style="width:100%;background-color: beige;"'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-lock-password'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_item_comment=>'icon-login-password'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31949275480375531034)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31949326630006359530
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31949275391421531034)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31949326541052359530
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31949275697624531034)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31949326847255359530
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31949275637314531034)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>31949326786945359530
);
wwv_flow_imp.component_end;
end;
/
