<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.Map"%>
<%@ include file="header.jsp" %>
<%
String user = (String)session.getAttribute("user");
if (user!=null){
    session.setAttribute("user",null);
    session.setAttribute(user+".voted",null);
}

if (session.getAttribute("videos")==null){
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
}
%>
<body>
    <div class="iphone horizontal">
        <div class="phone">
        <div class="display home">
            <div class="topbar"></div>
            <div class="screen">
                <div class="app upackinglist">
                    <a href="welcome.jsp" title="uPackingList" class="external" onmouseover="display'message')">30Seconds</a>
                </div>
                <div class="dock">
                    <div class="app upackinglist">
                        <a href="welcome.jsp" title="uPackingList" class="external">30Seconds</a>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <a href="index.jsp" class="bigbutton">Exit</a>
    </div>
</body>
</html>