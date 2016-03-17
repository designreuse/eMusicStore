<%--
  Created by IntelliJ IDEA.
  User: maro
  Date: 16/03/16
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product details</h1>

            <p class="lead">Here is the detail information </p>
        </div>

    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <img src="#" alt="image" style="width: 100%; height: 300px" />
            </div>
            <div class="col-md-5">
                <h3>${product.productName}</h3>
                <p>${product.productDescription}</p>
                <p>
                    <strong>Manufacturer</strong> : ${product.productManufacturer}
                </p>
                <p>
                    <strong>Condition</strong> : ${product.productCondition}
                </p>
                <p>
                    <strong>Category</strong> : ${product.productCategory}
                </p>
                <h4>
                    <strong>Price</strong> : ${product.productPrice} PLN
                </h4>
            </div>
        </div>
    </div>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>