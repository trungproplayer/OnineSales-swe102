<%-- 
    Document   : Login
    Created on : Jan 25, 2021, 4:14:10 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sneakers Login</title>
        <link href="css/LoginStyle.css" rel="stylesheet" type="text/css"/>
    </head>

    <div>
        <div class="loginbox">
            <img src="images\avatar.png" class="avatar">
            <h2>Login</h2>
            <form action="LoginControl" method="get">
                <p style="color:red">${mess}</p>
                <div class="inputBox">
                    <input type="text" name="user" required="">
                    <label>Username</label>
                </div>
                <div class="inputBox">
                    <input type="password" name="pass" required="">
                    <label>password</label>
                </div>
                <input type="submit" value="Login">
            </form>

            <br/><div style="margin-left: 20px">or</div>
            <form action="Signup.jsp" method="post">
                <input type="submit" name="Login" value="Sign Up">
            </form>
        </div>
    </div>

</html>
