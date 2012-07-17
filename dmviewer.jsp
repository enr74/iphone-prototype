<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="header.jsp" %>
<%

String user = (String)session.getAttribute("user");
boolean logged = user!=null;

String videoId = request.getParameter("videoId");
Object title = videoId;
try {
	Map map = (Map)session.getAttribute("videos");
	Map<String, Object> videoProperties = (Map<String, Object>)map.get(videoId);
	title = videoProperties.get("title");
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
				      <source src="http://localhost:8080/oceans-clip.mp4" type='video/mp4'/>
				      <source src="http://localhost:8080/oceans-clip.webm" type='video/webm'/>
						</video>
				</div>
            </div>
        </div>
        </div>
        <a href="applications.jsp" class="bigbutton">Exit</a>
    </div>
    
</body>
</html>
    