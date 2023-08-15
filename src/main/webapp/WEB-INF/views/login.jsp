<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
<jsp:include page="layou/layou2.jsp"/>
    <meta charset="utf-8">
    <title>Login | V-Shopper</title>
</head><!--/head-->
<body>
	<header id="header"><!--header-->
		<jsp:include page="layou/layou1.jsp"/>
		
		<jsp:include page="layou/layou3.jsp"/>
	
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Login to your account</h2>
						<form action="home/login" method="post">
							<input type="text" name="username" placeholder="Name" />
							<input type="password" name="password" placeholder="Password" />
							<span>
								<input type="checkbox" name="remember" class="checkbox"> 
								Keep me signed in
							</span>
							<h4 class="text-danger">${message}</h4>
							<a href="/home/forgot-password" class="forget-pass" style="color:red;">Forget your Password</a>
							<button type="submit">Login</button>
						</form>
					</div><!--/login form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	
	
<jsp:include page="layou/layou4.jsp"/>
	

  
   
</body>
</html>