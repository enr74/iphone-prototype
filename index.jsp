<%@include file='header.jsp'%>

<body>
    <div class="iphone horizontal">
        <div class="phone">
    	<div class="display">
            <div class="screen">

                <div id='slider3' class='swipe' align="center">
					<ul>
						<li style='display:block'>
							<div><img onclick="" src="images/alarm-480.jpg"/></div></li>
						<li style='display:none'><div><img onclick="location.href='viewer.jsp?videoId=1'" src="http://video-js.zencoder.com/oceans-clip.jpg"/></div></li>
						<li style='display:none'><div>4</div></li>
						<li style='display:none'><div>5</div></li>
					</ul>
				</div>

            </div>
        </div>
        </div>
        <a href="http://iphone.hohli.com" class="bigbutton">Exit</a>
    </div>

	<div align="center">	
		<a href='#' onclick='slider3.prev();return false;'><img src="images/down.png"/></a> 
		<a href='#' onclick='slider3.next();return false;'><img src="images/up.png"/></a>
	</div>	

    <script src='swipe.js'></script>
	<script>
		var slider3 = new Swipe(document.getElementById('slider3'));
	</script>

