<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.util.Properties"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="header.jsp" %>
<body>
    <div class="iphone horizontal">
        <div class="phone">
    	<div class="display">
            <div class="screen">
                <div class="titlebar">
                    Stats
                </div>
                <div class="scroll iscroll">
                    <%
                    Map map = (Map)session.getAttribute("videos");
                    Iterator videos = map.keySet().iterator();
                    while(videos.hasNext()){
                        String videoId= (String) videos.next();
                        Map<String, Object> videoProperties = (Map<String, Object>)map.get(videoId);
                        Object image = videoProperties.get("image");
                        Object rating = videoProperties.get("rating");
                        Object title = videoProperties.get("title");
                    %>
                    <ul>
                        <li><img width="200" onclick="location.href='viewer.jsp?videoId=<%=videoId%>'" src="<%=image%>"/><%=title %>:<b><%=rating %></b></li>
                    </ul>
                    <%
                    }
                    %>
                </div>
            </div>
        </div>
        </div>
        <a href="applications.jsp" class="bigbutton">Exit</a>
    </div>
</body>
</html>

