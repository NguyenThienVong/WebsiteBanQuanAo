<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>V-Shopper</title>
<jsp:include page="layoutadmin/layout1.jsp" />
</head>
<body>
	<!-- ============================================================== -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">
		<!-- ============================================================== -->
		<!-- navbar -->
		<!-- ============================================================== -->
		<jsp:include page="layoutadmin/layout2.jsp" />
		<!-- ============================================================== -->
		<!-- end left sidebar -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- wrapper  -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper">
			<!-- Page wrapper  -->
			<div class="page-wrapper py-2">
				<!-- Container fluid  -->
<!-- Page wrapper  -->
<div class="page-wrapper py-2">
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info">
					Category List <a href="categoryControl" class="btn btn-success float-right">Add
						New Category</a>
				</h3>
				<table class="table text-center">
					<thead>
						<tr style="background-color: black;">
							<th style="font-weight: bolder; font-size: 18px;color: white;">Category Id</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Category
								Name</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr style="font-size: 20px">
								<td>${item.id}</td>
								<td>${item.name}</td>
								<td>
									<a class='btn btn-dark btn-xs'
									style="font-size: 14px"
									href="category/edit/${item.id}"> <span
										class="glyphicon glyphicon-edit"></span> Edit
									</a> 
									<a href="category/delete/${item.id}"
									style="font-size: 14px" class="btn btn-danger btn-xs"> <span
										class="glyphicon glyphicon-remove"></span> Delete
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr />
				<div class="text-center">
					<a href="/admin/category?p=0" class="btn btn-primary">First</a> <a
						href="/admin/category?p=${page.number-1}" class="btn btn-primary">Previous</a>
					<a href="/admin/category?p=${page.number+1}"
						class="btn btn-primary">Next</a> <a
						href="/admin/category?p=${page.totalPages-1}"
						class="btn btn-primary">Last</a>
				</div>
				<hr />
			</div>
		</div>
	</div>

			</div>
</body>
</html>