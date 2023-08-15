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
<div class="page-wrapper">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row my-2">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info">
					Best Saler List
				</h3>
				<table class="table text-center">
					<thead>
						<tr style="background-color: black; ">
							<th style="font-weight: bolder; font-size: 18px;color: white;">No.</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Product Image</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Product ID</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Product Name</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Product Price</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Quantity</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="i" value="0"/>
						<c:forEach var="item" items="${topList.content}">
							<tr style="font-size: 20px">
								<td>${i = i + 1 }</td>
								<td>
									<img src="/forUser/img/products/${item.product.image}" alt="" width="20%">
								</td>
								<td>${item.product.id}</td>
								<td>${item.product.name}</td>
								<td>${item.product.price}</td>
								<td>${item.sum }</td>
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