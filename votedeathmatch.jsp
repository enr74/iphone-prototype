<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@ include file="header.jsp" %>
<%
String videoId1 = request.getParameter("videoId1");
String videoId2 = request.getParameter("videoId2");
Object title1 = videoId1;
Object img1 = videoId1;
Object title2 = videoId2;
Object img2 = videoId2;
try {
    Map map = (Map)session.getAttribute("videos");
    Map<String, Object> videoProperties = (Map<String, Object>)map.get(videoId1);
    title1 = videoProperties.get("title");
    img1 = (String)videoProperties.get("image");
    videoProperties = (Map<String, Object>)map.get(videoId2);
    title2 = videoProperties.get("title");
    img2 = (String)videoProperties.get("image");
} catch (Exception e){
    e.printStackTrace(response.getWriter());
}
%>
<body>

    <div class="iphone horizontal">
        <div class="phone">
    	<div class="display">
            <div class="screen">
                <div class="titlebar">Death Match</div>
                <div align="center" height="140" style="padding-top: 40px;padding-bottom: 5px">
                    <table>
                        <tr>
                        <td><img height="150" id="v1" src="<%=img1%>" onclick="voteDeathMatch('<%=videoId1%>', +2)"/></td>
                        <td><img height="150" id="v2" src="<%=img2%>" onclick="voteDeathMatch('<%=videoId2%>', +2)"/></td>
                        </tr>
                    
                    </table>
                    </ul>
                </div>
            </div>
                 <a href="#" id="v1" onclick="voteDeathMatch('<%=videoId1%>', +2)" class="D0 R25 upbutton">L</a> 
                <a href="#" id="v2" onclick="voteDeathMatch('<%=videoId2%>', +2)" class="D0 L25 upbutton">R</a>
        </div>
        </div>
        <a href="index.jsp" class="bigbutton">Exit</a>
    </div>
</body>
</html>