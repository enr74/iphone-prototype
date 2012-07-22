<%
response.setHeader("Cache-Control", "no-store, no-cache");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<%
Iterator popupkeys = configProp.keySet().iterator();
while(popupkeys.hasNext()){
    String key = (String)popupkeys.next();
    String[] ids = StringUtils.split(configProp.getProperty(key), "$");
    String popupId = ids[0];
    String popupTitle = ids[1];
    String popupText = ids[2];
    String popupType = ids[3];    
%>
    <div class="pop-up_<%=popupType%>" id="<%=popupId%>">
      <h3><%=popupTitle%></h3>
      <p><%=popupText%></p>
    </div>
<%}%>


