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
        Integer won1 = (Integer)video1.get("won");
        Integer won2 = (Integer)video2.get("won");
        Integer lost1 = (Integer)video1.get("lost");
        Integer lost2 = (Integer)video2.get("lost");
        Integer score2 = new Integer(rating2.intValue() + won2.intValue() - lost2.intValue());
        Integer score1 = new Integer(rating1.intValue() + won1.intValue() - lost1.intValue());
        if (score1.compareTo(score2)==0){
            String id1 = (String)video1.get("id");
            String id2 = (String)video2.get("id");
            return id1.compareTo(id2);
        }
        return score2.compareTo(score1);
    }
});
videoSet.addAll(map.values());
%>
<script>
var onDisplay;
function show(id){
    var display = document.getElementById(id).style.display;
    if (display=='none') {
        document.getElementById(id).style.display = 'block';
        if(onDisplay) document.getElementById(onDisplay).style.display = 'none';
        onDisplay = id;
    } else {
        document.getElementById(id).style.display = 'none';
    }
    
}
</script>
<body>
    <div class="iphone horizontal">
        <div class="phone">
        <div class="display">
            <div class="screen">
                <div class="titlebar">
                    Charts
                </div>
                <div class="scroll iscroll">
                    <ul class="imenu">
                    <%
                    int i = 1;
                    Iterator videos = videoSet.iterator();
                    while(videos.hasNext()){                        
                        Map videoProperties = (Map)videos.next();
                        Object videoId = videoProperties.get("id");
                        Object image = videoProperties.get("image");
                        Object rating = videoProperties.get("rating");
                        Object title = videoProperties.get("title");
                        Object won = videoProperties.get("won");
                        Object lost = videoProperties.get("lost");
                        
                    %>
                        <li> <a class="arrow"  href="video.jsp?videoId=<%=videoId%>"><%=i++%>. <%=title %></a></li>                    
                    <%
                    }
                    %>
                    </ul>
                </div>
            </div>
        </div>
        </div>
        <a href="index.jsp" class="bigbutton">Exit</a>
    </div>
</body>
</html>

