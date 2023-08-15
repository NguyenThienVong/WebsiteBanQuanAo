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
				<h3 class="alert alert-info">
					Order List
					<!-- <a href="orderControl" class="btn btn-success float-right">Add
						New Order</a> -->
				</h3>
				<table class="table text-center">
					<thead>
						<tr style="background-color: black;">
							<th style="font-weight: bolder; font-size: 18px;color: white;">Order ID</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Username</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Create Date</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Address</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Order
								Detail</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr style="font-size: 20px">
								<td>${item.id}</td>
								<td>${item.account.username}</td>
								<td>${item.createDate}</td>
								<td>${item.address}</td>
								<td><a href="/admin/orderDetail?id=${item.id}"
									style="font-size: 14px">Order Detail</a></td>
								<td><a class='btn btn-danger btn-xs'
									style="font-size: 14px" href="order/delete/${item.id}"> <span
										class="glyphicon glyphicon-edit"></span> Delete
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr />
				<div class="text-center">
					<a href="/admin/order?p=0" class="btn btn-primary">First</a> <a
						href="/admin/order?p=${page.number-1}" class="btn btn-primary">Previous</a>
					<a href="/admin/order?p=${page.number+1}" class="btn btn-primary">Next</a>
					<a href="/admin/order?p=${page.totalPages-1}"
						class="btn btn-primary">Last</a>
				</div>
				<hr />
			</div>
		</div>
	</div>
           
        </div>
</body>
</html>