<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@ include file="header.jsp" %>
<body>

   	<div align="center">	
		<a href='#' onclick='slider3.prev();return false;'><img src="images/down.png"/></a> 
		<a href='#' onclick='slider3.next();return false;'><img src="images/up.png"/></a>
	</div>	

    <div class="iphone horizontal">
        <div class="phone">
    	<div class="display">
            <div class="screen">
                <div id='slider3' class='swipe' align="center" height="140" style="padding-top: 10px;padding-bottom: 10px">
                    <ul>
                    <%
                    Map map = (Map)session.getAttribute("videos");
                    Iterator videos = map.keySet().iterator();
                    String display = "block";
                    while(videos.hasNext()){
                        String videoId= (String) videos.next();
                        Map<String, Object> videoProperties = (Map<String, Object>)map.get(videoId);
                        String image = (String)videoProperties.get("image");
                        %>
                        <li style='display:<%=display%>'><div><img height="140" onclick="location.href='dmviewer.jsp?videoId=<%=videoId%>'" src="<%=image%>"/></div></li>
                        <%
                        display = "none";
                    }
                    
                    %>
                    </ul>
				</div>
                <div id='slider4' class='swipe' align="center" height="140" style="padding-top: 10px;padding-bottom: 10px">
					<ul>
                    <%
                    videos = map.keySet().iterator();
                    display = "block";
                    while(videos.hasNext()){
                        String videoId= (String) videos.next();
                        Map<String, Object> videoProperties = (Map<String, Object>)map.get(videoId);
                        String image = (String)videoProperties.get("image");
                        %>
                        <li style='display:<%=display%>'><div><img height="140" onclick="location.href='dmviewer.jsp?videoId=<%=videoId%>'" src="<%=image%>"/></div></li>
                        <%
                        display = "none";
                    }
                    
                    %>
					</ul>
				</div>
            </div>
        </div>
        </div>
        <a href="applications.jsp" class="bigbutton">Exit</a>
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

