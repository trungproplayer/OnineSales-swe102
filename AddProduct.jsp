<%-- 
    Document   : HomePage
    Created on : Jan 25, 2021, 12:11:53 PM
    Author     : ChauDMHE141283
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sneakers</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/responsive.css">
    </head>
    <body>
        <div id="wallpaper">
            <header>
                <div class="top">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <p>Chào mừng đến với sneakers Running - Thế Giới Giày của bạn!</p>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <div class="top-menu">
                                    <ul>
                                        <c:if test="${sessionScope.acc == null}">
                                            <li><a href="Login.jsp"><strong> Login </strong></a></li>
                                        </c:if>
                                        <c:if test="${sessionScope.acc != null}">
                                            <li><strong>Hello ${sessionScope.acc.username}</strong></li>
                                            <c:if test="${sessionScope.acc.isAdmin == 1}">
                                                <li><a href="ManagerAccountControl"><strong>Manage Account</strong></a></li>
                                            </c:if>
                                            <c:if test="${sessionScope.acc.isSell == 1}">
                                                <li><a href="ManagerProductControl"><strong>Manage Product</strong></a></li>
                                            </c:if>
                                            <li><a href="LogoutControl"><strong> Logout </strong></a></li>
                                        </c:if>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-6 col-xs-6 col-sm-6 col-md-3 col-lg-3 order-md-0 order-0">
                                <div class="logo">
                                    <a href="#"><img src="images/logo.png" alt=""></a>
                                    <h1>Website bán hàng</h1>
                                </div>
                            </div>
                            <div class="col-12 col-xs-12 col-sm-12 col-md-6 col-lg-6 order-md-1 order-2">
                                <div class="form-seach-product">
                                    <form action="/" method="GET" role="form">
                                        <div class="input-seach">
                                            <input type="text" name="s" id="" class="form-control">
                                            <button type="submit" class="btn-search-pro"><i class="fa fa-search"></i></button>
                                        </div>
                                        <div class="clear"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-menu-header">
                    <div class="container">
                        <div id="nav-menu">
                            <ul>
                                <li><a href="HomeControl">Trang chủ</a></li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </header>
            <form class="container" action="AddProduct" method="get">
                <div>Name:</div><input type="text" name="name"><br/>
                <div>Image Src:</div><input type="text" name="image"><br/>
                <div>Price:</div><input type="text" name="price"><br/>
                <div>Title:</div><input type="text" name="title"><br/>
                <div>Des:</div><input type="text" name="des"><br/>
                <div>Cate ID:</div><input type="text" name="cateID"><br/>
                <br/>
                <input class="p-2 px-3 text-uppercase " type="submit" value="Thêm SP">
            </form>
    </body>
</html>
