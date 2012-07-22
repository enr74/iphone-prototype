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
Object views = video.get("views");
%>
<body>
    <div class="iphone horizontal">
        <div class="phone">
        <div class="display">

            <div class="screen">
                <div class="titlebar">&nbsp;<%=title %>&nbsp;</div>
                <div class="scroll iscroll">
                    <table>
                        <tr>
                            <td>
                            <ul class="imenu">                      
                                <li style="height: 180px;"><a href="viewer.jsp?videoId=<%=videoId%>"><img style="padding: 11px" width=240 src="<%=image %>"/></a>                            
                                </li>
                             </ul>
                            </td>
                            <td>
                                <ul class="imenu">
                                    <li>Score: <%=rating %></li>
                                    <li>Matches won: <%=won %></li>
                                    <li>Matches lost: <%=lost %></li>
                                    <li>Views: <%=views %></li>                        
                                </ul>
                            </td>
                    </tr>
                    </table>

                     
                </div>

            </div>
        </div>
        
        </div>
        <a href="index.jsp" class="bigbutton">Exit</a>
    </div>
</body>
</html>
