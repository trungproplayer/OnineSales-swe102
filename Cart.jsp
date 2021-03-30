<%-- 
    Document   : HomePage
    Created on : Jan 25, 2021, 12:11:53 PM
    Author     : ChauDMHE141283
--%>

<%@page import="Entity.Item"%>
<%@page import="Entity.Order"%>
<%@page import="java.util.List"%>
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
                                    <form action="SearchProduct" method="post" role="form">
                                        <div class="input-seach">
                                            <input type="text" name="search" id="" class="form-control">
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
            <div class="px-4 px-lg-0">
                <div class="pb-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                <!-- Shopping cart table -->
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">ID</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">Sản Phẩm</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Đơn Giá</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Số Lượng</div>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${sessionScope.order.listItems}" var="o">
                                                <tr>
                                                    <td>${o.id}</td>
                                                    <th scope="row">
                                                        <div class="p-2">
                                                            <img src="${o.product.image}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">${o.product.name}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                            </div>
                                                        </div>
                                                    </th>
                                                    <td class="align-middle"><strong>${o.price}</strong></td>
                                                    <td class="align-middle">
                                                        <a href="SubProduct?itemID=${o.id}"><button class="btnSub">-</button></a> 
                                                        <strong>${o.quantity}</strong>
                                                        <a href="Add?itemID=${o.id}"><button class="btnAdd">+</button></a>
                                                    </td>
                                                    <td class="align-middle"><a href="Remove?itemID=${o.id}" class="text-dark">
                                                            <button type="button" class="btn btn-danger">Delete</button>
                                                        </a>
                                                    </td>
                                                </tr> 
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- End -->
                            </div>
                        </div>

                        <div class="row py-5 p-4 bg-white rounded shadow-sm">
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Voucher</div>
                                <div class="p-4">
                                    <form action="voucher" method="get">
                                        <div class="input-group mb-4 border rounded-pill p-2">
                                            <input type="text" name="captcha" placeholder="Nhập Voucher" aria-describedby="button-addon3" class="form-control border-0">
                                            <div class="input-group-append border-0">
                                                <input id="button-addon3" type="submit" value="Sử dụng" class="btn btn-dark px-4 rounded-pill">
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </div>


                            <% HttpSession ses = request.getSession();
                                double shippingFee = 0;
                                double total = 0;
                                double totalOrder = 0;
                                int discount = 0;
                                if (ses.getAttribute("order") != null) {
                                    shippingFee = 1.5;
                                    Order order = (Order) ses.getAttribute("order");
                                    List<Item> listItems = order.getListItems();

                                    for (Item o : listItems) {
                                        total += o.getPrice() * o.getQuantity();
                                    }
                                    discount = Integer.parseInt(ses.getAttribute("discount") + "");
                                    totalOrder = total * (100 - discount) / 100 + 1.5;
                                }
                            %>

                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
                                <div class="p-4">
                                    <ul class="list-unstyled mb-4">
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng tiền hàng</strong><strong><%=total%></strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong><%=shippingFee%> $</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Discount</strong><strong><%=discount%> %</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán</strong>
                                            <h5 class="font-weight-bold"><%=totalOrder%> USD</h5>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <% ses.setAttribute("totalOrder", totalOrder);

                            %>
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thông tin mua hàng</div>
                                <div class="p-4">
                                    <form action="CompleteOrder" method="post">
                                        <c:if test="${sessionScope.acc != null}">
                                            <div class="input-group mb-4 border rounded-pill p-2">
                                                <input type="text" name="name" value="${sessionScope.acc.username}" aria-describedby="button-addon3" class="form-control border-0">
                                            </div>
                                        </c:if>
                                        <c:if test="${sessionScope.acc == null}">
                                            <div class="input-group mb-4 border rounded-pill p-2">
                                                <input type="text" name="name" placeholder="Họ Tên" aria-describedby="button-addon3" class="form-control border-0" required="">
                                            </div>
                                        </c:if>
                                        <div class="input-group mb-4 border rounded-pill p-2">
                                            <input type="text" name="address" placeholder="Địa chỉ" aria-describedby="button-addon3" class="form-control border-0" required="">
                                        </div>
                                        <div class="input-group mb-4 border rounded-pill p-2">
                                            <input type="text" name="phone" placeholder="Số điện thoại" aria-describedby="button-addon3" class="form-control border-0" required="">
                                        </div>
                                        <div class="input-group-append border-0">
                                            <input id="button-addon3" type="submit" value="Đặt Hàng" class="btn btn-dark px-4 rounded-pill">
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>




        <!-- ----------------Website features--------- -->

        <section class="website-fratures">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 feature-box">
                        <i class="fa fa-heart" aria-hidden="true"></i>
                        <div class="feature-text">
                            <p><b>100% Original items </b>are available at company</p>
                        </div>
                    </div>
                    <div class="col-md-3 feature-box">
                        <i class="fa fa-retweet" aria-hidden="true"></i>
                        <div class="feature-text">
                            <p><b>Return within 30 days </b>of receiving your order.</p>
                        </div>
                    </div>
                    <div class="col-md-3 feature-box">
                        <i class="fa fa-truck" aria-hidden="true"></i>
                        <div class="feature-text">
                            <p><b>Get free delivery for every </b>order on more than price.</p>
                        </div>
                    </div>
                    <div class="col-md-3 feature-box">
                        <i class="fa fa-credit-card-alt" aria-hidden="true"></i>
                        <div class="feature-text">
                            <p><b>Pay Online through multiple </b>options (card/Net banking)</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>
</body>
</html>
