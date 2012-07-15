
<%@include file='header.jsp'%>
<%
boolean logged = session.getAttribute("username")!=null;
%>

<body>
    <div class="iphone horizontal">
        <div class="phone">
    	<div class="display">
            <div class="screen">
            	<br/><br/><br/>	
				<div>								
					<video id=home_video class="video-js vjs-default-skin" controls preload=none width=480 height="200" autoplay>
				      <source src="http://localhost:8080/oceans-clip.mp4" type='video/mp4'/>
				      <source src="http://localhost:8080/oceans-clip.webm" type='video/webm'/>
						</video>
				</div>
				<br/>
				<div align="center" width=480>
					<%if(logged){%>
					<a href='#' id="down" onclick='vote(-1)' ><img width="32px" src="images/tmb-dn.png"/></a> 
					<a href='stats.jsp'><img id="stat" width="32px" src="images/bars.png"/></a>
					<a href='#' id="up" onclick='vote(1)' ><img width="32px" src="images/tmb-up.png"/></a>
					<%} else {%>
					<a href="login.jsp?redirect=viewer.jsp" id="down" ><img width="32px" src="images/tmb-dn.png"/></a> 
					<a href='stats.jsp'><img id="stat" width="32px" src="images/bars.png"/></a>
					<a href="login.jsp?redirect=viewer.jsp" id="up" ><img width="32px" src="images/tmb-up.png"/></a>
					<%}%>
				</div>	
            </div>
        </div>
        </div>
        <a href="http://iphone.hohli.com" class="bigbutton">Exit</a>
    </div>