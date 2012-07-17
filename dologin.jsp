<%

String username = request.getParameter("username");
String password = request.getParameter("password");
String redirect = request.getParameter("redirect");

session.setAttribute("user",username);

response.sendRedirect(redirect);

%>