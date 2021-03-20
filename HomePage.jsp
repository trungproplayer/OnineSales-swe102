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
                                    <a href="HomeControl"><img src="images/logo.png" alt=""></a>
                                    <h1>Thế Giới Sneakers</h1>
                                </div>
                            </div>
                            <div class="col-12 col-xs-12 col-sm-12 col-md-6 col-lg-6 order-md-1 order-2">
                                <div class="form-seach-product">
                                    <form action="SearchProduct" method="post" role="form">
                                        <div class="input-seach">
                                            <input type="text" name="search" id="" class="form-control">
                                            <button type="submit" class="btn-search-pro"><i class="fa fa-search"></i></button>
                                        </div>
                                        <div class="clear"></div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-6 col-xs-6 col-sm-6 col-md-3 col-lg-3 order-md-2 order-1" style="text-align: right">
                                <a href="Cart.jsp" class="icon-cart">
                                    <div class="icon">
                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                        <c:if test="${sessionScope.order.listItems != null}">
                                            <span>${sessionScope.order.listItems.size()}</span>
                                        </c:if>
                                        <c:if test="${sessionScope.order.listItems == null}">
                                            <span>0</span>
                                        </c:if>
                                    </div>
                                    <div class="info-cart">
                                        <p>Giỏ hàng</p>
                                    </div>
                                    <span class="clear"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="main-menu-header">
                    <div class="container">
                        <div id="nav-menu">
                            <ul>
                                <li class="current-menu-item"><a href="HomeControl">Trang chủ</a></li>
                                <li>
                                    <a href="HomeControl">Sản phẩm</a>
                                    <ul>
                                        <c:forEach items="${listC}" var="o">
                                            <li><a href="CategoryControl?cid=${o.id}">${o.name}</a></li>
                                            </c:forEach>
                                    </ul>
                                </li>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </header>
            <div id="content">
                <div class="container">
                    <div class="slider">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="images/background2.png" alt="First slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/background1.png" alt="Second slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/background3.png" alt="Second slide">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="product-box">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 order-lg-0 order-1">
                                <div class="sidebar">
                                    <div class="category-box">
                                        <h3>Danh mục sản phẩm</h3>
                                        <div class="content-cat">
                                            <ul>
                                                <c:forEach items="${listC}" var="o">
                                                    <li><i class="fa fa-angle-right"></i> <a href="CategoryControl?cid=${o.id}">${o.name}</a></li>
                                                    </c:forEach>
                                            </ul>
                                        </div>
                                        <div class="card bg-light mb-3">
                                            <div class="card-header bg-primary text-white text-uppercase">Quảng Cáo Shop</div>
                                            <div class="card-body">
                                                <iframe class="img-fluid" src="https://www.youtube.com/embed/50ADv_dZkTY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                                <!--<iframe class="img-fluid" src="https://www.youtube.com/embed/YoPWl0hXMYM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>-->

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-9 order-lg-1 order-0">
                                <div class="product-section">
                                    <h2 class="title-product">
                                        <div class="title">Sản phẩm ${cateName}</div>
                                        <div class="clear"></div>
                                    </h2>
                                    <div class="content-product-box">
                                        <div class="row">
                                            <c:forEach items="${listP}" var="o">
                                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                                                    <div class="item-product">
                                                        <div class="thumb">
                                                            <a href="ShowInforControl?id=${o.id}"><img src="${o.image}" alt=""></a>
                                                            <div class="action">
                                                                <a href="AddToCart?pID=${o.id}" class="buy"><i class="fa fa-cart-plus"></i> Mua ngay</a>
                                                                <div class="clear"></div>
                                                            </div>
                                                        </div>
                                                        <div class="info-product">
                                                            <h4><a href="ShowInforControl?id=${o.id}">${o.name}</a></h4>
                                                            <div class="price">
                                                                <span class="price-current">${o.price}$</span>
                                                            </div>
                                                            <a href="ShowInforControl?id=${o.id}" class="view-more">Xem chi tiết</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <div class="box-footer info-contact">
                                <h3>Thông tin khác</h3>
                                <div class="content-list">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i> Chính sách bảo mật</a></li>
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i> Chính sách đổi trả</a></li>
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i> Phí vẫn chuyển</a></li>
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i> Hướng dẫn thanh toán</a></li>
                                        <li><a href="#"><i class="fa fa-angle-double-right"></i> Chương trình khuyến mãi</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
        <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v6.0"></script>
    </body>
</html>

