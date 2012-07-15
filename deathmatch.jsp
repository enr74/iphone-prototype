<%@include file='header.jsp'%>



<body>

   	<div align="center">	
		<a href='#' onclick='slider3.prev();return false;'><img src="images/down.png"/></a> 
		<a href='#' onclick='slider3.next();return false;'><img src="images/up.png"/></a>
	</div>	

    <div class="iphone horizontal">
        <div class="phone">
    	<div class="display">
            <div class="screen">
                <div id='slider3' class='swipe' align="center" height="140" >
					<ul>
						<li style='display:block'>
							<div><img onclick="view(this)" height="140" src="images/alarm-480.jpg"/></div></li>
						<li style='display:none'><div>
							<img height="140" onclick="location.href='viewer.jsp?video=V0001'" src="http://video-js.zencoder.com/oceans-clip.jpg"/></div></li>
						<li style='display:none'><div>4</div></li>
						<li style='display:none'><div>5</div></li>
					</ul>
				</div>
                <div id='slider4' class='swipe' align="center" height="140" >
					<ul>
						<li style='display:block'>
							<div><img onclick="" height="140" src="images/alarm-480.jpg"/></div></li>
						<li style='display:none'><div><img height="140" onclick="location.href='viewer.jsp?video'" src="http://video-js.zencoder.com/oceans-clip.jpg"/></div></li>
						<li style='display:none'><div>4</div></li>
						<li style='display:none'><div>5</div></li>
					</ul>
				</div>
				<div align="center">	
					<img src="images/tmb-up.png" width="35"/>
					<img src="images/tmb-up.png" width="35"/>
				</div>	
            </div>
        </div>
        </div>
        <a href="http://iphone.hohli.com" class="bigbutton">Exit</a>
    </div>

	<div align="center">	
		<a href='#' onclick='slider4.prev();return false;'><img src="images/down.png"/></a> 
		<a href='#' onclick='slider4.next();return false;'><img src="images/up.png"/></a>
	</div>	


    <script src='swipe.js'></script>
	<script>
		var slider3 = new Swipe(document.getElementById('slider3'));
		var slider4 = new Swipe(document.getElementById('slider4'));
	</script>

