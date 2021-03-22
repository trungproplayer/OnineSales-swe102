<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sneakers Login</title>
        <link href="css/LoginStyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
            <div class="loginbox">
                <img src="images\avatar.png" class="avatar">
                <h2>Sign Up</h2>
                <form action="SignupControl" method="post">
                    <div class="inputBox">
                        <input id="user" type="text" name="username" required="">
                        <label>User name</label>
                    </div>
                    <div class="inputBox">
                        <input id="pass" type="password" name="password" required="">
                        <label>Password</label>
                    </div>
                    <div class="inputBox">
                        <input id="repass" type="password" name="repassword" required="">
                        <label>Re-password</label>
                    </div>
                    <p style="color:red">${mess}</p>
                    <input type="submit" name="Login" value="Sign Up">
                    <br/>
                    <br/>
                    <div>
                        <a href="Login.jsp"><< Back</a>
                    </div>
                </form>
            </div>
    </body>
</html>
