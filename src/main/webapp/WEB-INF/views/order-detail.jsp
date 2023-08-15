<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<link href="${pageContext.request.contextPath}/css/cta.css"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Checkout | V-Shopper</title>
<jsp:include page="layou/layou2.jsp" />
</head>
<body>
	<header id="header">
		<!--header-->
		<jsp:include page="layou/layou1.jsp" />
		<jsp:include page="layou/layou3.jsp" />
		<!-- Shopping Cart Section Begin -->
		<section class="checkout-section spad">
			<div class="container">
				<div class="row">
					<div class="col-lg-10">
						<div class="alert alert-success col row mx-1" role="alert">
							Order Successfully!</div>
						<div class="mx-1 mb-2">
							<h5>
								<strong>Order ID:</strong> ${order.id }
							</h5>
							<h5>
								<strong>Name:</strong> ${order.account.fullname }
							</h5>
							<h5>
								<strong>Address:</strong> ${order.address }
							</h5>
							<h5>
								<strong>Email:</strong> ${order.account.email }
							</h5>
							<h5>
								<strong>Create Date:</strong> ${order.createDate }
							</h5>
						</div>
						<div class="cart-table">
							<table>
								<thead>
									<tr>
										<th>No.</th>
										<!-- <th>Image</th> -->
										<th class="p-name">Product Name</th>
										<th>Price</th>
										<th>Quantity</th>
										<th>Total</th>
									</tr>
								</thead>
								<tbody>
									<c:set var="i" value="0" />
									<c:forEach var="item" items="${items}">
										<input type="hidden" name="id" value="${item.id}">
										<tr>
											<td>${i=i+1}</td>
											<%-- <td class="cart-pic first-row">
										<img src="/forUser/img/products/${item.product.image}" alt="" width=50%></td> --%>
											<td class="cart-title first-row">
												<h5>${item.product.name }</h5>
											</td>
											<td class="p-price first-row">$${item.price }</td>
											<td class="p-price first-row">${item.quantity }</td>
											<td class="total-price first-row">$${item.price*item.quantity}</td>

										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-lg-4">
								<div class="cart-buttons">
									
									<a class="cta" href="/home/product">
										<span>Continue shopping</span>
										<svg viewBox="0 0 13 10" height="10px" width="15px">
    <path d="M1,5 L11,5"></path>
    <polyline points="8 1 12 5 8 9"></polyline>
  </svg>
									</a>
								</div>
							</div>
							<c:set var="total" value="${0}" />
							<c:forEach var="item" items="${items }">
								<c:set var="total" value="${total+(item.price*item.quantity) }" />
							</c:forEach>
							<div class="col-lg-4 offset-lg-4">
								<div class="proceed-checkout">
									<ul>
										<li class="cart-total">Total: &nbsp &nbsp $${total } <span></span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Shopping Cart Section End -->
<br>
		<jsp:include page="layou/layou4.jsp" />
</body>
</html>