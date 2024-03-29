<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="header.jsp" %>
<body  id="welcome">
    <div class="iphone horizontal">
        <div class="phone">
    	<div class="display">
            <div class="screen">
               <div id='slider3' class="swipe" align="center">
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
                    	<li style='display:<%=display%>'><div><img src="<%=image%>"/></div></li>
                    	<%
                    	display = "none";
                    }
                    
                    %>
                    </ul>
                </div>
                <a href="#" id="playbutton" onclick="play()" class="middle playbutton">P</a>
                <a href="#" id="leftbutton" onclick="slider3.prev();return false;" class="middle leftbutton">L</a> 
                <a href="#" id="rightbutton" onclick="slider3.next();return false;" class="middle rightbutton">R</a>
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
            var id = videos[index];
            location.href='viewer.jsp?videoId='+id;
        }     
    </script>

</body>
</html>