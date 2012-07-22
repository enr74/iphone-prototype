<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.util.Properties"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="header.jsp" %>
<%
String videoId = request.getParameter("videoId");
Map map = (Map)session.getAttribute("videos");
Map video = (Map)map.get(videoId);
Object title = video.get("title");
Object rating = video.get("rating");
Object won = video.get("won");
Object lost = video.get("lost");
Object image = video.get("image");
%>
<body>
    <div class="iphone horizontal">
        <div class="phone">
        <div class="display">
              <div class="titlebar">
                 <%=title %>
             </div>
            <div class="screen">
                <div class="scroll iscroll">
                    <ul class="imenu">
                        <li><%=rating %></li>
                        <li><%=won %></li>
                        <li><%=lost %></li>
                    </ul>
                </div>
                <div >
                <img src="<%=image %>"/>
                </div>
            </div>
        </div>
        </div>
        <a href="index.jsp" class="bigbutton">Exit</a>
    </div>
</body>
</html>
