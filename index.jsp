<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.Map"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%
session.setAttribute("user",null);
Properties properties = new Properties();
InputStream stream = getClass().getResourceAsStream("/video.properties");
properties.load(stream);
Map map = new TreeMap();
Iterator keys = properties.keySet().iterator();
while(keys.hasNext()){
	String key = (String)keys.next();
	String[] ids = StringUtils.split(key, ".");
    if (ids.length<2){
           	continue;
    }
	String videoId = ids[0];
	String property = ids[1];
	Object value = properties.get(key);
	Map<String, Object> videoProperties = (Map<String, Object>) map.get(videoId);
	if (videoProperties==null){
		videoProperties = new LinkedHashMap<String, Object>();
		map.put(videoId, videoProperties);
	}
	if (property.equalsIgnoreCase("rating")){
		value = Integer.valueOf((String)value);
	}
	videoProperties.put(property, value);
	videoProperties.put("id", videoId);
}
session.setAttribute("videos",map);
%>

<%@ include file="header.jsp" %>

<script src='swipe.js'></script>
<body>
    <div class="iphone horizontal">
        <div class="phone">
    	<div class="display">
            <div class="screen">
               <div id='slider3' class="swipe" align="center">
                    <ul>
                    <%
                    Iterator videos = map.keySet().iterator();
                    String display = "block";
                    while(videos.hasNext()){
                    	String videoId= (String) videos.next();
                    	Map<String, Object> videoProperties = (Map<String, Object>)map.get(videoId);
                    	String image = (String)videoProperties.get("image");
                    	%>
                    	<li style='display:<%=display%>'><div><img onclick="location.href='viewer.jsp?videoId=<%=videoId%>'" src="<%=image%>"/></div></li>
                    	<%
                    	display = "none";
                    }
                    
                    %>
                    </ul>
                </div>
            </div>
        </div>
        </div>
        <a href="applications.jsp" class="bigbutton">Exit</a>
    </div>

    <div align="center">    
        <a href="#" onclick="slider3.prev();return false;"><img src="images/down.png"/></a> 
        <a href="#" onclick="slider3.next();return false;"><img src="images/up.png"/></a>
    </div>  

    <script>
        var slider3 = new Swipe(document.getElementById('slider3'));
    </script>

</body>
</html>
