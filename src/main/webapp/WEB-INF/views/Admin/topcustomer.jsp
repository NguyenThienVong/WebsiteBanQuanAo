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
	<!-- Container fluid  -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info">
					Top Customer
				</h3>
				<table class="table text-center">
					<thead>
						<tr style="background-color: black; color: white;">
							<th style="font-weight: bolder; font-size: 18px;color: white;">No.</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;" class ="p-0 m-0"  width="10%">Customer Image</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Customer ID</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Customer Name</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Customer Email</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="i" value="0"/>
						<c:forEach var="item" items="${topCustomer}">
							<tr style="font-size: 20px">
								<td>${i = i + 1 }</td>
								<td  class ="px-0 m-0"  width="10%">
									<img src="/forAdmin/assets/images/users/${item.account.photo}" alt="" width="50%">
								</td>
								<td>${item.account.username}</td>
								<td>${item.account.fullname}</td>
								<td>${item.account.email}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>