<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@include file="header.jsp"%>

<%
String user = (String)session.getAttribute("user");
if (user!=null){
    session.setAttribute("user",null);
    session.setAttribute(user+".voted",null);
}
%>

<body id="index">
    <div class="iphone horizontal">
        <div class="phone">
        <div class="display home">
            <div class="topbar"></div>
            <div class="screen">
                <div class="app upackinglist">
                    <a href="welcome.jsp" title="uPackingList" class="external">30Seconds</a>
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