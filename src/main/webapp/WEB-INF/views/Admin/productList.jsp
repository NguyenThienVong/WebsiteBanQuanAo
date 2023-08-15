<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>V-Shopper</title>
<jsp:include page="layoutadmin/layout1.jsp"/>
</head>
<body>
  <div class="dashboard-main-wrapper">
 
       <jsp:include page="layoutadmin/layout2.jsp"/>
        <div class="dashboard-wrapper">
          <!-- Page wrapper  -->
<div class="page-wrapper py-2">
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
					Product List <a href="productControl" class="btn btn-success float-right">Add
						New Product</a>
				</h3>
				<table class="table text-center">
					<thead>
						<tr style="background-color: black;">
							<th style="font-weight: bolder; font-size: 18px;color: white;">Product ID</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Product
								Name</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Image</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Price</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">CreateDate</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Available</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Category ID</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr style="font-size: 20px">
								<td>${item.id}</td>
								<td>${item.name}</td>
								<td><img src="/images/shop/${item.image }" alt=""
									width=50% /></td>
								<td>${item.price}</td>
								<td>${item.createDate}</td>
								<td>${item.available}</td>
								<td>${item.category.name}</td>
								<td>
									<a class='btn btn-warning btn-xs'
									style="font-size: 14px"
									href="product/edit/${item.id}"> <span
										class="glyphicon glyphicon-edit"></span> Edit
									</a> 
									<a href="product/delete/${item.id}"
									style="font-size: 14px" class="btn btn-danger btn-xs"> <span
										class="glyphicon glyphicon-remove"></span> Delete
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr />
				<div class="text-center">
					<a href="/admin/product?p=0" class="btn btn-primary">First</a> <a
						href="/admin/product?p=${page.number-1}" class="btn btn-primary">Previous</a>
					<a href="/admin/product?p=${page.number+1}" class="btn btn-primary">Next</a>
					<a href="/admin/product?p=${page.totalPages-1}"
						class="btn btn-primary">Last</a>
				</div>
				<hr />
			</div>
		</div>
	</div>
           
        </div>
</body>
</html>