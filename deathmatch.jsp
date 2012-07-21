<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@ include file="header.jsp" %>
<body>

    <div class="iphone horizontal">
        <div class="phone">
    	<div class="display">
            <div class="screen">
                <div class="titlebar">Death Match</div>
                <div id='slider3' class='swipe' align="center" height="140" style="padding-top: 0px;padding-bottom: 2px">
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
                        <li style='display:<%=display%>'><div><img height="140" onclick="play()" src="<%=image%>"/></div></li>
                        <%
                        display = "none";
                    }
                    
                    %>
                    </ul>
				</div>
                <div id='slider4' class='swipe' align="center" height="140" style="padding-top: 2px;padding-bottom: 0px">
					<ul>
                    <%
                    videos = map.keySet().iterator();
                    display = "block";
                    while(videos.hasNext()){
                        String videoId= (String) videos.next();
                        Map<String, Object> videoProperties = (Map<String, Object>)map.get(videoId);
                        String image = (String)videoProperties.get("image");
                        %>
                        <li style='display:<%=display%>'><div><img onclick="play()" height="140" src="<%=image%>"/></div></li>
                        <%
                        display = "none";
                    }
                    
                    %>
					</ul>
				</div>
				<a href="#" id="playdm" onclick="play()" class="inwithin playbutton">P</a>
                <a href="#" onclick="slider3.prev();return false;" class="top leftbutton">L</a> 
                <a href="#" onclick="slider3.next();return false;" class="top rightbutton">R</a>
                <a href="#" onclick="slider4.prev();return false;" class="bottom leftbutton">L</a> 
                <a href="#" onclick="slider4.next();return false;" class="bottom rightbutton">R</a>
            </div>
        </div>
        </div>
        <a href="index.jsp" class="bigbutton">Exit</a>
    </div>
    <script>
    var videos =[
    <%
    videos = map.keySet().iterator();
    while(videos.hasNext()){
        String videoId= (String) videos.next();
        %>
        '<%=videoId%>',
        <%
    }
    
    %>
    'end'];
        var slider3 = new Swipe(document.getElementById('slider3'));
        var slider4 = new Swipe(document.getElementById('slider4'));
        function play(){
            var index = slider3.getPos();
            var id1 = videos[slider3.getPos()];
            var id2 = videos[slider4.getPos()];
            location.href='dmviewer.jsp?videoId1='+id2+'&videoId2='+id2;
        }     
    </script>
</body>
</html>