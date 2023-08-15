<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="layoutadmin/layout1.jsp"/>
<title>V-Shopper</title>
</head>
<body>
    <div class="dashboard-main-wrapper">
 
       <jsp:include page="layoutadmin/layout2.jsp"/>
        <div class="dashboard-wrapper">
          <!-- Page wrapper  -->
<div class="page-wrapper py-2">
	<!-- Page wrapper  -->
<div class="page-wrapper py-2">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="col row">
					<div class="col-3  alert alert-info">
						<h3 class="text-center">Order</h3>
						<h5>ID: ${ord.id }</h5>
						<h5>Create Date: ${ord.createDate }</h5>
					</div>
					<div class="col-3 offset-6 alert alert-primary">
						<h3 class="text-center">Customer</h3>
						<h5>ID: ${ord.account.username }</h5>
						<h5>Name: ${ord.account.fullname }</h5>
						<h5>Address: ${ord.address }</h5>
						<h5>Email: ${ord.account.email }</h5>
					</div>
				</div>

				<table class="table text-center">
					<thead>
						<tr style="background-color: black; ">
							<th style="font-weight: bolder; font-size: 18px;color: white;">OrderDetail
								ID</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Product
								Image</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Product ID</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Product
								Name</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Product
								Price</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Quantity</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Order ID</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${item.id}</td>
								<td><img src="/forUser/img/products/${item.product.image}"
									alt="" width=50% /></td>
								<td>${item.product.id}</td>
								<td>${item.product.name}</td>
								<td>$${item.product.price}</td>
								<td>${item.quantity }</td>
								<td>${item.order.id}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
			</div>
		</div>
	</div>
           
        </div>
</body>
</html>