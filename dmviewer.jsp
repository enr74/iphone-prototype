<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="header.jsp" %>
<%
String videoId = request.getParameter("videoId");
Object title = videoId;
Object mp4 = null;
Object webm = null;
Object rating = null;
try {
	Map map = (Map)session.getAttribute("videos");
	Map<String, Object> videoProperties = (Map<String, Object>)map.get(videoId);
    title = videoProperties.get("title");
    rating = videoProperties.get("rating");
    mp4 = videoProperties.get("mp4");
    webm = videoProperties.get("webm");
} catch (Exception e){
	e.printStackTrace(response.getWriter());
}
%>

<body>

    <div class="iphone horizontal">
        <div class="phone">
    	<div class="display">
            <div class="screen">
                <div class="titlebar"><%=title %></div>
				<div>								
					<video id=home_video class="video-js vjs-default-skin" controls preload=none width=480 height="200" autoplay>
				      <source src="<%=mp4 %>" type='video/mp4'/>
				      <source src="<%=webm %>" type='video/webm'/>
					</video>
				</div>
                <div align="center" width="100%" class="icons" >
                    <table><tr>
                    <td><a href='stats.jsp' class="icon iicon" title="charts"><em class="ii-chartbar"></em></a></td>
                    <td><a href="welcome.jsp" class="icon iicon"><em class="ii-movie2" title="Home"></em></a></td>
                    <td><a href="welcome.jsp" class="icon iicon"><em class="ii-bird" title="Share"></em></a></td>
                    <td><a href="welcome.jsp" class="icon iicon"><em class="ii-paperclip" title="Bookmark"></em></a></td>
                    </tr></table>
                </div>  
            </div>
        </div>
        </div>
        <a href="index.jsp" class="bigbutton">Exit</a>
    </div>
</body>
</html>
    