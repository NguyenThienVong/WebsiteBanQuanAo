<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="layou/layou2.jsp"/>
<meta charset="UTF-8">
<title>Home | V-Shopper</title>
</head>
<body>
<header id="header"><!--header-->
		<jsp:include page="layou/layou1.jsp"/>
		<jsp:include page="layou/layou3.jsp"/>
		<!-- Shopping Cart Section Begin -->
<section class="shopping-cart spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				
					<table class="table table-striped">
						<thead style="background-color: black; color: white;">
							<tr>
								<th>No.</th>
								<th>Product Image</th>
								<th>Product ID</th>
								<th>Product Name</th>
								<th>Product Price</th>
								<th>Quantity</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0" />
							<c:forEach var="item" items="${page.content}">
								<tr>
									<td class="p-price text-dark">${i=i+1}</td>
									<td class="text-center"><img src="/images/shop/${item.product.image}"
										alt="" width=80px/></td>
									<td>${item.product.id}</td>
									<td>${item.product.name}</td>
									<td>$${item.product.price}</td>
									<td>${item.quantity }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	
</section>
<!-- Shopping Cart Section End -->
		
		<jsp:include page="layou/layou4.jsp"/>
</body>
</html>