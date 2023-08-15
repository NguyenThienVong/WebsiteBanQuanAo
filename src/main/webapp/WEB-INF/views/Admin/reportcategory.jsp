<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<!-- Container fluid  -->
	<div class="container-fluid">
		<!-- Sales Cards  -->
		<div class="row ">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info">
					Statistic Category
				</h3>
				<table class="table text-center">
					<thead>
						<tr style="background-color: black;">
							<th style="font-weight: bolder; font-size: 18px;color: white;">No.</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Category Name</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Product Sum</th>
							<th style="font-weight: bolder; font-size: 18px;color: white;">Product Count</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="i" value="0"/>
						<c:forEach var="item" items="${items}">
							<tr style="font-size: 20px">
								<td>${i = i + 1 }</td>
								<td>${item.group.name}</td>
								<td>${item.sum}</td>
								<td>${item.count}</td>
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