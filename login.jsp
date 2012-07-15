<%@include file='header.jsp'%>

<body>
    <div class="iphone vertical">
        <div class="phone">
    	<div class="display">
            <div class="screen">
                <div class="titlebar">
                    iPhone UI
                </div>
				<div class="iscrollui" style="height: 435px; overflow: hidden; -moz-user-select: none;">
					<form action="form.php">
                    <span class="iphoneui iinputui"><input type="text" value="" name="login" id="login" class="iinput"></span>
                    <label for="login" class="ilabelui">Login</label>
                    <br>
                    <br>
                    
                    <span class="iphoneui ipasswordui"><input type="password" value="" name="password" id="password" class="ipassword" style="display: none;" tabindex="0" accesskey=""> <input type="text" autocomplete="off" size="20" style="" class="ipassword" value="" id="password_password" name="password_password"></span>
                    <label for="password_password">Password</label>
                    <br>
                    <br>
    
                    <div class="iphoneui icheckboxui off">&nbsp;</div><input type="checkbox" value="1" name="remember" id="remember" class="icheckbox" style="display: none;">
                    <label for="remember" class="ilabelui">remember me</label>
                    <br>
                    <br>
                    
                    <div class="iphoneui icheckboxui">&nbsp;</div><input type="checkbox" checked="checked" value="1" name="noremember" id="noremember" class="icheckbox" style="display: none;">
                    <label for="noremember" class="ilabelui">forgot me</label>
                    <br>
                    <br>
					
                    <div class="iphoneui iradiobuttonui on">&nbsp;</div><input type="radio" checked="checked" value="ABC" id="type_abc" name="type" class="iradiobutton" style="display: none;">
                    <label for="type_abc" class="ilabelui">ABC</label>
                    <div class="iphoneui iradiobuttonui">&nbsp;</div><input type="radio" value="DEF" id="type_def" name="type" class="iradiobutton" style="display: none;">
                    <label for="type_def" class="ilabelui">DEF</label>
                    <div class="iphoneui iradiobuttonui">&nbsp;</div><input type="radio" value="GHI" id="type_ghi" name="type" class="iradiobutton" style="display: none;">
                    <label for="type_ghi" class="ilabelui">GHI</label>
                    <br>
                    <br>
					
                    <div class="iphoneui iselectui" style="width: 320px;"><select style="width:100%" name="options" class="iselect">
                        <option>Option 1</option>
                        <option>Option 2</option>
                        <option>Option 3</option>
                        <option>Option 4</option>
                    </select><div class="ioverflow" style="width: 286px;"></div><div class="ioverflow-left"></div><div class="ioverflow-right"></div><div class="ioptions"><ul style="margin-top: -58px;"><li>Option 1</li><li>Option 2</li><li>Option 3</li><li>Option 4</li></ul></div></div>                   
                    <br>
                    <br>
					

                    <input type="submit">
                    <br>
                    </form>
                </div><div class="iscrollbar" style="height: 435px;"><div style="height: 366.006px;"></div></div>           </div>
        </div>
        </div>
        <a href="http://iphone.hohli.com" class="bigbutton">Exit</a>
    </div>
</body>
</html>
