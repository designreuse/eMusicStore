<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: maro
  Date: 19/03/16
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Cart</h1>
                    <p>All the selected product in your shopping bag.</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">
            <div ng-controller = "cartCtrl" ng-init="initCartid('${cartId}')">
                <div>
                    <a class="btn btn-danger pull-left"><span class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>
                </div>

                <div class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th>Unit price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <tr ng-repeat = "item in cart.cartItems">
                        <td>{{item.product.productName}}</td>
                        <td>{{item.product.productPrice}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                            <span class="glyphicon glyphicon-remove"></span>Remove</a></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>Grand total:</td>
                        <td>fake 456.67</td>
                        <td></td>
                    </tr>
                </div>
            </div>

            <a href="<spring:url value="/productList" /> ">Continue Shopping</a>
        </section>
    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>