prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_name=>'Proforma'
,p_step_title=>'Proforma'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'function demoFromHTML() {',
'    alert(''ranu'');',
'    var doc = new jsPDF();',
'    var imgData = ''data:image/jpeg;base64,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'';',
'',
'// We''ll make our own renderer to skip this editor',
'var specialElementHandlers = {',
'    ''#editor'': function(element, renderer){',
'        return true;',
'    }',
'};',
'',
'doc.fromHTML($(''#render_me'').get(0), 15, 15, {',
'    ''width'': 170, ',
'    ''elementHandlers'': specialElementHandlers',
'});',
'    doc.addImage(imgData, ''JPEG'',  15, 40, 200, 150);',
'doc.save(''Test.pdf'');',
'',
'$(''a'').click(function(){',
'  doc.save(''TestHTMLDoc.pdf'');',
'});',
'    ',
'}',
'    ',
' function generatePDF()',
'    {',
' //       $(''#proforma'').tableExport({type:''pdf'',pdfFontSize:''7'',escape:''false''});',
'        ',
'           var pdf = new jsPDF(''p'', ''pt'', ''letter'');',
'',
'    //Creating the image from chart and adding to the pdf',
'   /* var img = document.getElementById("graphImg");',
'    var canvas = document.createElement("canvas");',
'    canvas.width = img.width;',
'    canvas.height = img.height;',
'    var ctx = canvas.getContext("2d");',
'    ctx.drawImage(img, 0, 0);',
'  ',
'        var canvas = document.createElement("canvas");',
'    var dataURL = canvas.toDataURL("#WORKSPACE_IMAGES#JanuzLogo.jpg");',
'    pdf.addImage(dataURL, "JPG", 100,20); ',
'    canvas = null;',
'  */',
'    //Adding the html table to the same pdf file ',
'   /* source = $(''#proforma'')[0];',
'  ',
'    margins = {',
'        top: 300, // Providing high top margin value to make the table below to the image',
'        bottom: 60,',
'        left: 80,',
'        width: 400',
'    };',
'    pdf.fromHTML(',
'    source, ',
'    margins.left, ',
'    margins.top, { ',
'        ''width'': margins.width',
'    },',
'',
'    function (dispose) {',
'        pdf.save(''Export.pdf'');',
'    }, margins);',
'    */',
'        var dataURL = ''data:image/jpeg;base64,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'';',
'        ',
'        ',
'          /*  var canvas = document.createElement("canvas");',
'    var dataURL = canvas.toDataURL("#WORKSPACE_IMAGES#JanuzLogo.jpg");*/',
'    pdf.addImage(dataURL, "JPG",0,0,100,100); ',
'    canvas = null;',
'       ',
'       ',
'        var source = $(''#customer'')[0];',
'        ',
'        pdf.fromHTML(',
'    source,',
'    20,',
'    80,',
'    {',
'      ''width'': 180',
'    });',
'        ',
'    ',
'     /*   var res = pdf.autoTableHtmlToJson(document.getElementById("proforma"));',
'  pdf.autoTable(res.columns, res.data, {',
'    startY: 110,',
'     theme: ''grid'',',
'   tableWidth: ''wrap'',',
'        styles: {cellPadding: 2},',
'        headerStyles: {rowHeight: 15, fontSize: 8},',
'        bodyStyles: {rowHeight: 12, fontSize: 8, valign: ''middle''}',
'  });*/',
'   ',
'        ',
'        pdf.save(''Export.pdf'');',
'}',
'    ',
'</script>'))
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#jspdf.js',
'#APP_IMAGES#base64.js',
'#APP_IMAGES#jquery.base64.js',
'#APP_IMAGES#sprintf.js',
'#APP_IMAGES#tableExport.js',
'#WORKSPACE_IMAGES#html2canvas.js',
'#WORKSPACE_IMAGES#jspdf.debug.js',
'#WORKSPACE_IMAGES#png_support.js',
'#WORKSPACE_IMAGES#standard_fonts_metrics.js',
'#WORKSPACE_IMAGES#split_text_to_size.js',
'#WORKSPACE_IMAGES#FileSaver.js',
'#WORKSPACE_IMAGES#jspdf.plugin.autotable.src.js',
'#WORKSPACE_IMAGES#png.js',
'#WORKSPACE_IMAGES#zlib.js'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(158771519049118650)
,p_plug_name=>'Proforma'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'   Cursor enq_products Is',
'      select rownum sr_no, eod_quantity,pm_uom,PM_PACKAGE_1 || PM_PRODUCT_UNIT || ''X'' || PM_PACKAGE_2 || '' '' || PM_PACKAGE_UNIT packing',
',pm_name,EOD_FOB_DOLL_RND || '' ''|| PM_UOM unit_fob, eod_quantity * EOD_FOB_DOLL_RND total_fob',
'from V_ENQUIRIES_ORDERS_DETAILS,V_PRODUCT_MASTER',
'where eod_product_id = pm_id',
'and eod_enq_id = :P15_ENQ_ID;',
'begin',
'Htp.p(''',
'<html xmlns:o="urn:schemas-microsoft-com:office:office"',
'xmlns:x="urn:schemas-microsoft-com:office:excel"',
'xmlns="http://www.w3.org/TR/REC-html40">',
'',
'<head>',
'<meta http-equiv=Content-Type content="text/html; charset=windows-1252">',
'<meta name=ProgId content=Excel.Sheet>',
'<meta name=Generator content="Microsoft Excel 14">',
'<link rel=File-List href="proforma_template%20-%20Copy_files/filelist.xml">',
'<style id="proforma_template - Copy_12605_Styles"><!--table',
'	{mso-displayed-decimal-separator:"\.";',
'	mso-displayed-thousand-separator:"\,";}',
'.font512605',
'	{color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:italic;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;}',
'.xl1512605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:black;',
'	font-size:11.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:Calibri, sans-serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:general;',
'	vertical-align:bottom;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl6412605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:general;',
'	vertical-align:top;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl6512605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:center;',
'	vertical-align:bottom;',
'	border-top:.5pt solid windowtext;',
'	border-right:.5pt solid windowtext;',
'	border-bottom:none;',
'	border-left:.5pt solid windowtext;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl6612605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:Fixed;',
'	text-align:center;',
'	vertical-align:bottom;',
'	border-top:none;',
'	border-right:.5pt solid windowtext;',
'	border-bottom:none;',
'	border-left:.5pt solid windowtext;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl6712605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:center;',
'	vertical-align:bottom;',
'	border:.5pt solid windowtext;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl6812605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:0;',
'	text-align:right;',
'	vertical-align:bottom;',
'	border:.5pt solid windowtext;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl6912605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:Fixed;',
'	text-align:right;',
'	vertical-align:bottom;',
'	border:.5pt solid windowtext;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl7012605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:underline;',
'	text-underline-style:single;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:center;',
'	vertical-align:bottom;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl7112605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:left;',
'	vertical-align:top;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl7212605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:left;',
'	vertical-align:top;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:normal;}',
'.xl7312605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:center;',
'	vertical-align:top;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:normal;}',
'.xl7412605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:right;',
'	vertical-align:top;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:normal;}',
'.xl7512605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:right;',
'	vertical-align:top;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl7612605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:black;',
'	font-size:11.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:Calibri, sans-serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:general;',
'	vertical-align:bottom;',
'	border:.5pt solid windowtext;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:normal;}',
'.xl7712605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:black;',
'	font-size:11.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:Calibri, sans-serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:general;',
'	vertical-align:bottom;',
'	border-top:.5pt solid windowtext;',
'	border-right:none;',
'	border-bottom:.5pt solid windowtext;',
'	border-left:.5pt solid windowtext;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:normal;}',
'.xl7812605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:center;',
'	vertical-align:bottom;',
'	border:.5pt solid windowtext;',
'	background:#D9D9D9;',
'	mso-pattern:black none;',
'	white-space:nowrap;}',
'.xl7912605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:center;',
'	vertical-align:bottom;',
'	border-top:.5pt solid windowtext;',
'	border-right:none;',
'	border-bottom:.5pt solid windowtext;',
'	border-left:.5pt solid windowtext;',
'	background:#D9D9D9;',
'	mso-pattern:black none;',
'	white-space:nowrap;}',
'.xl8012605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:10.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:center;',
'	vertical-align:bottom;',
'	border:.5pt solid windowtext;',
'	background:#D9D9D9;',
'	mso-pattern:black none;',
'	white-space:nowrap;}',
'.xl8112605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:10.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:center;',
'	vertical-align:bottom;',
'	border-top:.5pt solid windowtext;',
'	border-right:.5pt solid windowtext;',
'	border-bottom:.5pt solid windowtext;',
'	border-left:none;',
'	background:#D9D9D9;',
'	mso-pattern:black none;',
'	white-space:nowrap;}',
'.xl8212605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:center;',
'	vertical-align:bottom;',
'	border-top:.5pt solid windowtext;',
'	border-right:none;',
'	border-bottom:none;',
'	border-left:none;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl8312605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:400;',
'	font-style:italic;',
'	text-decoration:underline;',
'	text-underline-style:single;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:center;',
'	vertical-align:top;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl8412605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:Fixed;',
'	text-align:right;',
'	vertical-align:middle;',
'	border-top:.5pt solid windowtext;',
'	border-right:none;',
'	border-bottom:.5pt solid windowtext;',
'	border-left:.5pt solid windowtext;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl8512605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:Fixed;',
'	text-align:right;',
'	vertical-align:middle;',
'	border-top:.5pt solid windowtext;',
'	border-right:none;',
'	border-bottom:.5pt solid windowtext;',
'	border-left:none;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl8612605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:Fixed;',
'	text-align:right;',
'	vertical-align:middle;',
'	border-top:.5pt solid windowtext;',
'	border-right:.5pt solid windowtext;',
'	border-bottom:.5pt solid windowtext;',
'	border-left:none;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl8712605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:left;',
'	vertical-align:top;',
'	border-top:none;',
'	border-right:.5pt solid windowtext;',
'	border-bottom:none;',
'	border-left:none;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl8812605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:left;',
'	vertical-align:top;',
'	border-top:none;',
'	border-right:none;',
'	border-bottom:.5pt solid windowtext;',
'	border-left:none;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl8912605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:left;',
'	vertical-align:top;',
'	border-top:none;',
'	border-right:.5pt solid windowtext;',
'	border-bottom:.5pt solid windowtext;',
'	border-left:none;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:nowrap;}',
'.xl9012605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:windowtext;',
'	font-size:12.0pt;',
'	font-weight:700;',
'	font-style:italic;',
'	text-decoration:none;',
'	font-family:"Times New Roman", serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:right;',
'	vertical-align:bottom;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:normal;}',
'.xl9112605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:black;',
'	font-size:11.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:Calibri, sans-serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:center;',
'	vertical-align:bottom;',
'	border-top:.5pt solid windowtext;',
'	border-right:none;',
'	border-bottom:.5pt solid windowtext;',
'	border-left:.5pt solid windowtext;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:normal;}',
'.xl9212605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:black;',
'	font-size:11.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:Calibri, sans-serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:center;',
'	vertical-align:bottom;',
'	border-top:.5pt solid windowtext;',
'	border-right:.5pt solid windowtext;',
'	border-bottom:.5pt solid windowtext;',
'	border-left:none;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:normal;}',
'.xl9312605',
'	{padding-top:1px;',
'	padding-right:1px;',
'	padding-left:1px;',
'	mso-ignore:padding;',
'	color:black;',
'	font-size:11.0pt;',
'	font-weight:400;',
'	font-style:normal;',
'	text-decoration:none;',
'	font-family:Calibri, sans-serif;',
'	mso-font-charset:0;',
'	mso-number-format:General;',
'	text-align:general;',
'	vertical-align:bottom;',
'	border-top:.5pt solid windowtext;',
'	border-right:.5pt solid windowtext;',
'	border-bottom:.5pt solid windowtext;',
'	border-left:none;',
'	mso-background-source:auto;',
'	mso-pattern:auto;',
'	white-space:normal;}',
'--></style>',
'</head>',
'',
'<body>',
'<!--[if !excel]>&nbsp;&nbsp;<![endif]-->',
'<!--The following information was generated by Microsoft Excel''''s Publish as Web',
'Page wizard.-->',
'<!--If the same item is republished from Excel, all information between the DIV',
'tags will be replaced.-->',
'<!----------------------------->',
'<!--START OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD -->',
'<!----------------------------->',
'',
'',
'<div id="proforma_template - Copy_12605" align=center x:publishsource="Excel">',
' <tr>  <td colspan=8><div id="header">',
'	 <img src="#WORKSPACE_IMAGES#JanuzLogo.jpg" style="float:left" width="35%">',
'	<br>',
'</div></td></tr>',
'<table border=0 cellpadding=0 cellspacing=0 width=648 style=''''border-collapse:',
' collapse;table-layout:fixed;width:487pt''''>',
' <col width=47 style=''''mso-width-source:userset;mso-width-alt:1678;width:35pt''''>',
' <col width=33 style=''''mso-width-source:userset;mso-width-alt:1166;width:25pt''''>',
' <col width=47 style=''''mso-width-source:userset;mso-width-alt:1678;width:35pt''''>',
' <col width=82 style=''''mso-width-source:userset;mso-width-alt:2929;width:62pt''''>',
' <col width=198 style=''''mso-width-source:userset;mso-width-alt:7054;width:149pt''''>',
' <col width=61 style=''''mso-width-source:userset;mso-width-alt:2161;width:46pt''''>',
' <col width=94 style=''''mso-width-source:userset;mso-width-alt:3328;width:70pt''''>',
' <col width=86 style=''''mso-width-source:userset;mso-width-alt:3072;width:65pt''''>',
' <tr height=21 style=''''height:15.6pt''''>',
'  <td colspan=8 height=21 class=xl7012605 width=648 style=''''height:15.6pt;',
'  width:487pt''''>PROFORMA<span style=''''mso-spacerun:yes''''>  </span>INVOICE</td>',
' </tr>',
' <tr height=120 style=''''mso-height-source:userset;height:90.0pt''''>',
'  <td colspan=5 height=120 class=xl7212605 width=407 style=''''height:90.0pt;',
'  width:306pt''''>To, <br>',
'    &P15_CUST_NAME. <br>',
'    &P15_CUST_ADDR1.<span style=''''mso-spacerun:yes''''>  </span><br>',
'    &P15_CUST_ADDR2. <br>',
'	&P15_CUST_CITY. &nbsp;,  &P15_CUST_STATE. &nbsp;, &P15_CUST_COUNTRY. &nbsp;, &P15_CUST_ZIP. <br>',
'    Ref: E-Mail Order.</td>',
'  <td colspan=3 class=xl7412605 width=241 style=''''width:181pt''''>Ref No.:',
'  339/2015-16 <br>',
'    Date: 01st Apr, 2016.<span style=''''mso-spacerun:yes''''> </span></td>',
' </tr>',
' <tr height=21 style=''''height:15.6pt''''>',
'  <td colspan=8 height=21 class=xl7312605 width=648 style=''''height:15.6pt;',
'  width:487pt''''></td>',
' </tr>',
' <tr height=21 style=''''height:15.6pt''''>',
'  <td colspan=8 height=21 class=xl8312605 style=''''height:15.6pt''''></td>',
' </tr>',
' <tr height=21 style=''''height:15.6pt''''>',
'  <td colspan=7 rowspan=2 height=43 class=xl7212605 width=562 style=''''border-right:',
'  .5pt solid black;border-bottom:.5pt solid black;height:31.8pt;width:422pt''''>We',
'  confirm below our Current Lowest F.O.B. prices for the following items of',
'  your interest:<span style=''''mso-spacerun:yes''''>      </span><br>',
'    <font class="font512605">Kindly RE-FAX the Proforma duly signed/stamped, to',
'  enable us to arrange shipment.<span style=''''mso-spacerun:yes''''> </span></font></td>',
'  <td class=xl6512605 style=''''border-left:none''''>Total Cubic</td>',
' </tr>',
' <tr height=22 style=''''mso-height-source:userset;height:16.2pt''''>',
'  <td height=22 class=xl6612605 style=''''height:16.2pt;border-left:none''''>&P15_TOTAL_CUBIC.</td>',
' </tr>',
' <tr height=21 style=''''height:15.6pt''''>',
'  <td height=21 class=xl7812605 style=''''height:15.6pt;border-top:none''''>SL #</td>',
'  <td class=xl7812605 style=''''border-top:none;border-left:none''''>Qty</td>',
'  <td class=xl7812605 style=''''border-top:none;border-left:none''''>UOM</td>',
'  <td class=xl7812605 style=''''border-top:none;border-left:none''''>PACKING</td>',
'  <td class=xl7912605 style=''''border-top:none;border-left:none''''>Items',
'  Description</td>',
'  <td colspan=2 class=xl8012605>Unit FOB US$</td>',
'  <td class=xl8112605>TOTAL US$</td>',
' </tr>'');',
' For Rec_d In enq_products Loop',
' htp.p(''<tr height=19 style=''''height:14.4pt''''>',
'  <td height=19 class=xl7612605 width=47 style=''''height:14.4pt;border-top:none;',
'  width:35pt''''>'' || Rec_d.sr_no || ''</td>'');',
' htp.p( ''<td class=xl7612605 width=33 style=''''border-top:none;border-left:none;',
'  width:25pt''''>'' || Rec_d.eod_quantity || ''</td>'');',
'  htp.p(''<td class=xl7612605 width=47 style=''''border-top:none;border-left:none;',
'  width:35pt''''>'' || Rec_d.pm_uom || ''</td>'');',
'  htp.p(''<td class=xl7612605 width=82 style=''''border-top:none;border-left:none;',
'  width:62pt''''>'' || Rec_d.packing || ''</td>'');',
'  htp.p(''<td class=xl7712605 width=198 style=''''border-top:none;border-left:none;',
'  width:149pt''''>'' || Rec_d.pm_name || ''</td>'');',
'  htp.p(''<td colspan=2 class=xl9112605 width=155 style=''''border-right:.5pt solid black;',
'  width:116pt''''>'' || Rec_d.unit_fob || ''</td>'');',
'  htp.p(''<td class=xl9312605 width=86 style=''''border-top:none;width:65pt''''>'' || Rec_d.total_fob || ''</td>',
' </tr>'');',
' end loop;',
' htp.p(''<tr height=21 style=''''height:15.6pt''''>',
'  <td height=21 class=xl6712605 style=''''height:15.6pt;border-top:none''''>&nbsp;</td>',
'  <td class=xl6812605 style=''''border-top:none;border-left:none''''>&P15_TOTAL_QTY.</td>',
'  <td colspan=5 class=xl8412605 style=''''border-right:.5pt solid black;',
'  border-left:none''''>Total FOB US$</td>',
'  <td class=xl6912605 style=''''border-top:none;border-left:none''''>&P15_TOTAL_US_DOLL.</td>',
' </tr>',
' <tr height=21 style=''''height:15.6pt''''>',
'  <td colspan=8 height=21 class=xl8212605 style=''''height:15.6pt''''>&nbsp;</td>',
' </tr>',
' <tr height=21 style=''''height:15.6pt''''>',
'  <td height=21 class=xl6412605 style=''''height:15.6pt''''></td>',
'  <td class=xl6412605></td>',
'  <td class=xl6412605></td>',
'  <td class=xl6412605></td>',
'  <td class=xl6412605></td>',
'  <td class=xl6412605></td>',
'  <td class=xl6412605></td>',
'  <td class=xl6412605></td>',
' </tr>',
' <tr height=22 style=''''mso-height-source:userset;height:16.2pt''''>',
'  <td colspan=4 rowspan=5 height=162 class=xl7212605 width=209',
'  style=''''height:120.6pt;width:157pt''''>Thanking you,<span',
'  style=''''mso-spacerun:yes''''>       </span><br>',
'    For JANUZ UNIVERSAL <br>',
'    <br>',
'    <br>',
'    <br>',
'    Dharmil D. Thacker<br>',
'    Partner<br>',
'    </td>',
'  <td colspan=4 rowspan=5 class=xl9012605 width=439 style=''''width:330pt''''>Confirmed',
'  for:<span style=''''mso-spacerun:yes''''>              </span>&P15_CUST_NAME.<br>',
'    <br>',
'    <br>',
'    <br>',
'    <br>',
'    ________________________<br>',
'    Buyer''''s Signature &amp; Seal</td>',
' </tr>',
'    ',
'',
'',
' <![if supportMisalignedColumns]>',
' <tr height=0 style=''''display:none''''>',
'  <td width=47 style=''''width:35pt''''></td>',
'  <td width=33 style=''''width:25pt''''></td>',
'  <td width=47 style=''''width:35pt''''></td>',
'  <td width=82 style=''''width:62pt''''></td>',
'  <td width=198 style=''''width:149pt''''></td>',
'  <td width=61 style=''''width:46pt''''></td>',
'  <td width=94 style=''''width:70pt''''></td>',
'  <td width=86 style=''''width:65pt''''></td>',
' </tr>',
' <![endif]>',
'</table>',
'</div>',
'    <br><br>',
'<div id ="footer" align="center" style="margin-bottom:0;">',
'    	305, Mahindra Chambers, 619/28, W.T. Patil Marg, Chembur (East), Mumbai-400 071. INDIA <br>',
'Tel. (022) 25205488 / Fax (022) 25215488/ e: januz@januzuniversal.in',
'</div>',
'',
'<!----------------------------->',
'<!--END OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD-->',
'<!----------------------------->',
'</body>',
'',
'</html>'');',
'end;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'#t_Header, #t_Body_nav {display:none;}',
'',
'',
'</style>',
''))
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'@media print',
'{',
'    #header {',
'         position: fixed;',
'         display: block;',
'         top: 0;',
'    }',
'    #footer {',
'         bottom: 0;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158836034934729912)
,p_name=>'P15_CUST_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(158771519049118650)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158836364048729913)
,p_name=>'P15_CUST_ADDR1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(158771519049118650)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158836777943729913)
,p_name=>'P15_CUST_ADDR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(158771519049118650)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158837150047729914)
,p_name=>'P15_CUST_CITY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(158771519049118650)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158837478169729914)
,p_name=>'P15_CUST_STATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(158771519049118650)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158837919243729914)
,p_name=>'P15_CUST_COUNTRY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(158771519049118650)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158838376005729914)
,p_name=>'P15_CUST_ZIP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(158771519049118650)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158838709196729915)
,p_name=>'P15_TOTAL_CUBIC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(158771519049118650)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158839096889729915)
,p_name=>'P15_TOTAL_QTY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(158771519049118650)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158839525325729915)
,p_name=>'P15_TOTAL_US_DOLL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(158771519049118650)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158840428591827488)
,p_name=>'P15_ENQ_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(158771519049118650)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(158839833490738427)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'select cm_name,cm_address1,cm_address2,country.st_name,state.st_name,cm_city,cm_zip',
'into :P15_CUST_NAME,:P15_CUST_ADDR1,:P15_CUST_ADDR2,:P15_CUST_COUNTRY,:P15_CUST_STATE,:P15_CUST_CITY,:P15_CUST_ZIP',
'from V_CUSTOMER_MASTER,V_ENQUIRIES_ORDERS_MST,V_SETUP_TABLE country, V_SETUP_TABLE state',
'where eom_enq_id = :P15_ENQ_ID',
'and cm_country = country.st_id',
'and country.st_type = ''COUNTRY''',
'and cm_state = state.st_id',
'and state.st_type = ''STATE''',
'and eom_customer_id = cm_id;',
'',
'select sum(eod_quantity) total_qty, round(sum(eod_quantity * PM_CUBIC_SPACE),2) total_cubic,round(sum(EOD_FOB_DOLL_RND * eod_quantity),2) total_fob',
'into  :P15_TOTAL_QTY,:P15_TOTAL_CUBIC,:P15_TOTAL_US_DOLL',
'from V_ENQUIRIES_ORDERS_DETAILS,V_PRODUCT_MASTER',
'where eod_enq_id =  :P15_ENQ_ID',
'and eod_product_id = pm_id;',
'',
'--gen_excel();',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>158890983121566923
);
wwv_flow_imp.component_end;
end;
/
