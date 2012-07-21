<%
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
        if (property.equalsIgnoreCase("lost")){
            value = Integer.valueOf((String)value);
        }
        if (property.equalsIgnoreCase("won")){
            value = Integer.valueOf((String)value);
        }
	    videoProperties.put(property, value);
	    videoProperties.put("id", videoId);
	}
	session.setAttribute("videos",map);
}
%>