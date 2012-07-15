<%

	String videoId = request.getParameter("videoId");
	int vote = Integer.parseInt(request.getParameter("vote"));
	java.util.Map<String,Integer> rating = (java.util.Map)session.getAttribute("rating");
	if(rating == null){
		rating = new java.util.HashMap<String,Integer>();		
		session.setAttribute("rating",rating);
	}
	Integer savedVideoRating =  rating.get(videoId);
	if(savedVideoRating == null){
		savedVideoRating = 0;
	}
	rating.put(videoId,(savedVideoRating + vote));
%>
<%=savedVideoRating%>