<%
response.setHeader("Cache-Control", "no-store, no-cache");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>30 Seconds Demo</title>
    <meta name="keywords" content="ajax, jquery, javascript, css, iphone, iphone interface, iphone ui" />
    <meta name="description" content="30 Seconds Demo" />
	
    <link rel="stylesheet" href="css/style.css" type='text/css' media='all' />
    <link rel="stylesheet" href="css/iphone.css" type='text/css' media='all' />
	<link rel="stylesheet" href="css/iphone-480.css" type='text/css' media='only screen and (max-device-width: 480px)' />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>
    <script type="text/javascript" src="js/jquery.iphone.js"></script>
	
    <script type="text/javascript" src="js/other/jquery.mousewheel.js"></script>
	<script type="text/javascript" src="js/other/jquery.disable.text.select.js"></script>
    <script type="text/javascript" src="js/other/jquery.backgroundPosition.js"></script>	
    <script type="text/javascript" src="js/other/jquery.dPassword.js"></script>
	
    <script type="text/javascript" src="js/ui/ui.iMenu.js"></script>
    <script type="text/javascript" src="js/ui/ui.iMenuManager.js"></script>
    <script type="text/javascript" src="js/ui/ui.iTabs.js"></script>
	
    <script type="text/javascript" src="js/ui/ui.iInput.js"></script>
	<script type="text/javascript" src="js/ui/ui.iPassword.js"></script>
    <script type="text/javascript" src="js/ui/ui.iCheckBox.js"></script>
	<script type="text/javascript" src="js/ui/ui.iRadioButton.js"></script>
    <script type="text/javascript" src="js/ui/ui.iSelect.js"></script>
	
    <script type="text/javascript" src="js/ui/ui.iGallery.js"></script>
    <script type="text/javascript" src="js/ui/ui.iScroll.js"></script>
    <script type="text/javascript" src="js/30sec.js"></script>
	
    <script type="text/javascript">
    $(document).ready(function(){
		$('.display').iMenuManager({
			link   : 'a[href!=#]:not(.external):not(.bigbutton)', // selector for bind goTo event
			content: '.display',    // what content load from target URL - default is body
			title  : '.titlebar',  // where widget can found title - default is title
			back   : '.titlebar'
			});	
    });
    </script>
    
    <script src='swipe.js'></script>
</head>

<%@include file="videoload.jsp"%>
<%@include file="popupload.jsp"%>