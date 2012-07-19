<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.util.Properties"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="header.jsp" %>
<%
Map map = (Map)session.getAttribute("videos");
Set videoSet = new TreeSet(new Comparator(){
    public int compare(Object o1, Object o2){
        Map video1 = (Map)o1;
        Map video2 = (Map)o2;
        Integer rating1 = (Integer)video1.get("rating");
        Integer rating2 = (Integer)video2.get("rating");
        if (rating1.compareTo(rating2)==0){
            String id1 = (String)video1.get("id");
            String id2 = (String)video2.get("id");
            return id1.compareTo(id2);
        }
        return rating2.compareTo(rating1);
    }
});
videoSet.addAll(map.values());
%>
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
                    Iterator videos = videoSet.iterator();
                    while(videos.hasNext()){
                        Map videoProperties = (Map)videos.next();
                        Object videoId = videoProperties.get("id");
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
        <a href="index.jsp" class="bigbutton">Exit</a>
    </div>
</body>
</html>

