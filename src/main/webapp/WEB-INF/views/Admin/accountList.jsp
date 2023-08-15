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
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info">Account List
					<a href="accountControl" class="btn btn-success float-right">Add New Account</a>
				</h3>
				<table class="table text-center">
					<thead>
						<tr style="background-color: black; ">
							<th class ="p-0 m-0"  width="10%" style="font-weight: bolder; font-size: 18px;color: white;">Photo</th>
							<th style="font-weight: bolder; font-size: 18px; color: white;">Username</th>
							<th style="font-weight: bolder; font-size: 18px; color: white;">Password</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Fullname</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Email</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Activated</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Admin</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr style="font-size: 20px">
								<td class ="px-0 m-0"  width="10%">
									<img src="/images/shop/${item.photo}" alt="" width="50%" class="img-fluid">
								</td>
								<td>${item.username}</td>
								<td>${item.password}</td>
								<td>${item.fullname}</td>
								<td>${item.email}</td>
								
								<td>${item.activated}</td>
								<td>${item.admin}</td>
								<td> 
									<a class='btn btn-dark btn-xs' style="font-size: 14px" href="account/edit/${item.username}"> 
									<span class="glyphicon glyphicon-edit"></span> Edit	</a> 
									<a href="account/delete/${item.username}" style="font-size: 14px" class="btn btn-danger btn-xs"> 
									<span class="glyphicon glyphicon-remove"></span> Delete
								</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr />
				<div class="text-center">
					<a href="/admin/account?p=0" class="btn btn-primary">First</a> 
					<a	href="/admin/account?p=${page.number-1}" class="btn btn-primary">Previous</a>
					<a href="/admin/account?p=${page.number+1}" class="btn btn-primary">Next</a>
					<a href="/admin/account?p=${page.totalPages-1}"	class="btn btn-primary">Last</a>
				</div>
				<hr />
			</div>
		</div>
	</div>
	<!-- End Container fluid  -->
          
            </div>
           
        </div>
</body>
</html>