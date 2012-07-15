
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<link href="http://vjs.zencdn.net/c/video-js.css" rel="stylesheet">
	<script src="http://vjs.zencdn.net/c/video.js"></script>

	<link href='style.css' rel='stylesheet'/>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>jQuery iPhone UI</title>
    <meta name="keywords" content="ajax, jquery, javascript, css, iphone, iphone interface, iphone ui" />
    <meta name="description" content="jQuery iPhone interface for web applications" />
	
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
    <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-7269638-10']);
  _gaq.push(['_setDomainName', '.hohli.com']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
</head>
