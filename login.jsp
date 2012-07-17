<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="header.jsp" %>
<%String redirect = request.getParameter("redirect"); %>
<body>
    <div class="iphone horizontal">
        <div class="phone">
    	<div class="display">
            <div class="screen">
                <div class="titlebar">Login</div>
                <div class="scroll iscroll form" >
					<form action="dologin.jsp" method="post">
                    <input type="hidden" name="redirect" value="<%=redirect%>"/>
                    <input class="iinput" type="text" id="login" name="username" value=""/>
                    <label for="login">Login</label>
                    <br/>
                    <br/>
                    <input class="ipassword" type="password" id="password" name="password" value=""/>
                    <label for="password">Password</label>
                    <br/>
                    <br/>
                    <input type="submit" value="Login"/>
                    <br/>
                    </form>
                </div>
            </div>
        </div>
        </div>
        <a href="applications.jsp" class="bigbutton">Exit</a>
    </div>
</body>
</html>
