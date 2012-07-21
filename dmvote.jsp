<%@page import="java.util.*"%>
<%
	String videoId1 = request.getParameter("videoId1");
    String videoId2 = request.getParameter("videoId2");
    String user = (String)session.getAttribute("user");
    Set<String> matches = (Set<String>)session.getAttribute("matches");
    if(matches==null){
    	matches = new HashSet<String>();
    	session.setAttribute("matches",matches);
    }
    matches.add(videoId1+","+videoId2);
	Map videos = (Map)session.getAttribute("videos");
	Map<String,Object> video1 = (Map<String,Object>)videos.get(videoId1);
	Map<String,Object> video2 = (Map<String,Object>)videos.get(videoId2);
	
    int won = (Integer)video1.get("won");
    int lost = (Integer)video1.get("lost");
    int rating = (Integer)video1.get("rating");
    won += 1;
    rating += 1;
    video1.put("won", won);
    video1.put("rating", lost);
    
    lost = (Integer)video2.get("lost");
    rating = (Integer)video1.get("rating");
    lost += 1;
    rating -= 1;
    video2.put("rating", won);
    video2.put("lost", lost);
%>
ok