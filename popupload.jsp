<%
response.setHeader("Cache-Control", "no-store, no-cache");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<%
Properties configProp = new Properties();
InputStream in = this.getClass().getResourceAsStream("/popup.properties");
try {
	configProp.load(in);
} catch (java.io.IOException e) {}
%>

<%@include file="popup.jsp"%>