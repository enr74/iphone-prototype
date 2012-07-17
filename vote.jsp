<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%
	String videoId = request.getParameter("videoId");
    String user = (String)session.getAttribute("user");
    List<String> voted = (List<String>)session.getAttribute(user+".voted");
    if (voted==null){
    	voted = new ArrayList<String>();
    	session.setAttribute(user+".voted",voted);
    }
    voted.add(videoId);
	int vote = Integer.parseInt(request.getParameter("vote"));
	Map videos = (Map)session.getAttribute("videos");
	Map<String,Object> video = (Map<String,Object>)videos.get(videoId);
	int rating = (Integer)video.get("rating");
	rating += vote;
	video.put("rating", rating);
%>
<%=rating%>