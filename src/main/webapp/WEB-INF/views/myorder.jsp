<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="layou/layou2.jsp"/>
<title>Home | V-Shopper</title>
</head>
<body>
<header id="header"><!--header-->
		<jsp:include page="layou/layou1.jsp"/>
		<jsp:include page="layou/layou3.jsp"/>
		<!-- Breadcrumb Section Begin -->

<!-- Breadcrumb Section Begin -->

<!-- Shopping Cart Section Begin -->
<section class="shopping-cart spad">
	<div class="container">
		<div class="col">
			<div class="alert alert-primary" role="alert">
				<h3>Thanks a lot for your choosing my product!</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="cart-table">
					<table class="table table-bordered ">
						<thead>
							<tr style="background-color: black; color: white;">
								<th>No.</th>
								<th>Order ID</th>
								<th>Create Date</th>
								<th>Address</th>
								<th>Order Details</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0" />
							<c:forEach var="item" items="${items}">
								<tr>
									<td class="p-price text-dark">${i=i+1}</td>
									<td class="p-price first-row">
										<h5>${item.id }</h5>
									</td>
									<td class="p-price text-dark first-row">${item.createDate }</td>
									<td class="cart-title first-row text-dark">${item.address }</td>
									<td class="total-price first-row">
										<a href="/home/myOrderDetail?id=${item.id}"
											style="font-size: 14px">Order Detail</a>
									</td>
									<td class="total-price first-row">
										<a href="/home/myorder/delete/${item.id}"
											style="font-size: 14px">Hủy</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shopping Cart Section End -->
		<jsp:include page="layou/layou4.jsp"/>
</body>
</html>