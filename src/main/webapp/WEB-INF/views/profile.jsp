<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<!-- Contact Section Begin -->
		<center>
<section class="contact-section spad">
	<div class="container">
		<div class="row" style="font-size: 20px">
			<div class="col-lg-6 offset-lg-3 ">
				<div class="contact-title">
					<h4>Your Profile</h4>
				</div>
				<div class="contact-widget">
					<div class="offset-3 col-6 pb-2">
						<img src="/images/shop/${photo}" alt="" class=" img-thumbnail" style="width: 300px; height: 300px" />
					</div>

					<div class="cw-item">
						<div class="ci-icon">
							<i class="ti-user"></i>
						</div>
						<div class="ci-text">
							<span>Username:</span>
							<p>${username}</p>
						</div>
					</div>
					<div class="cw-item">
						<div class="ci-icon">
							<i class="ti-face-smile"></i>
						</div>
						<div class="ci-text">
							<span>Fullname:</span>
							<p>${fullname}</p>
						</div>
					</div>
					<div class="cw-item">
						<div class="ci-icon">
							<i class="ti-email"></i>
						</div>
						<div class="ci-text">
							<span>Email:</span>
							<p>${email}</p>
						</div>
					</div>
					<div class="cw-item">
						<div class="ci-text col p-0 m-0 pr-4">
							<form action="/home/myorder" method="post">
								<input type="hidden" name="username" value="${username}"
									onblur="this.form.submit()">
								<button class="btn btn-warning text-light col" style="font-size:20px; font-weight:bolder;">My Order</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Contact Section End -->
		</center>
			<jsp:include page="layou/layou4.jsp"/>
</body>
</html>