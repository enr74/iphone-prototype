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
Object rating = null;
boolean canVote = logged;
List<String> voted = null;
Object mp4 = null;
Object webm = null;
try {
    Map map = (Map)session.getAttribute("videos");
    Map<String, Object> videoProperties = (Map<String, Object>)map.get(videoId);
    title = videoProperties.get("title");
    rating = videoProperties.get("rating");
    mp4 = videoProperties.get("mp4");
    webm = videoProperties.get("webm");
    if (logged){
        voted = (List<String>)session.getAttribute(user+".voted");
        canVote = voted==null || !voted.contains(videoId);
    }
    
} catch (Exception e){
    e.printStackTrace(response.getWriter());
}
%>
<body>
    <div class="iphone horizontal">
        <div class="phone">
        <div class="display">
            <div class="screen">
                <div class="titlebar">&nbsp;<%=title %>&nbsp;<span id="rating"><%=rating %></span></div>
                <div>                               
                    <video id=home_video class="video-js vjs-default-skin" controls preload=none width=480 height="200" autoplay>
                      <source src="<%=mp4 %>" type='video/mp4'/>
                      <source src="<%=webm %>" type='video/webm'/>
                    </video>
                </div>
                <br/>
                <div align="center" width="100%" class="icons" >
                    <%
                    String voteDn = "location.href='login.jsp?redirect=viewer.jsp?videoId="+videoId+"'";
                    String voteUp = "location.href='login.jsp?redirect=viewer.jsp?videoId="+videoId+"'";
                    if(canVote){
                        voteDn = "vote('"+videoId+"',-1)";
                        voteUp = "vote('"+videoId+"',1)";
                    } else if(logged) {
                    	voteDn = "return false;";
                        voteUp = "return false;";
                    }
                    %>
                    <table><tr>
                    <td><a href="#" onclick="<%=voteDn %>" id="down" class="icon iicon" title="like not"><em class="ii-skull2"></em></a></td>
                    <td><a href='stats.jsp' class="icon iicon" title="charts"><em class="ii-chartbar"></em></a></td>
                    <td><a href='deathmatch.jsp' class="icon iicon" title="Death Match"><em class="ii-skull"></em></a></td>
                    <td><a href="welcome.jsp" class="icon iicon"><em class="ii-movie2" title="Home"></em></a></td>
                    <td><a href="welcome.jsp" class="icon iicon"><em class="ii-bird" title="Share"></em></a></td>
                    <td><a href="welcome.jsp" class="icon iicon"><em class="ii-paperclip" title="Bookmark"></em></a></td>
                    <td><a href="#" onclick="<%=voteUp %>" id="up" class="icon iicon" title="like"><em class="ii-trophy"></em></a></td>
                    </tr></table>
                </div>  
            </div>
        </div>
        </div>
        <a href="index.jsp" class="bigbutton">Exit</a>
    </div>
</body>
</html>