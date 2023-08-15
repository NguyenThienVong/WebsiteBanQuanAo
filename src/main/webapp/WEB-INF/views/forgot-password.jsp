<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="layou/layou2.jsp"/>
<title>V-Shopper ForgotPassWord</title>
</head>
<body>
<jsp:include page="layou/layou1.jsp"/>
<jsp:include page="layou/layou3.jsp"/>
<div class="row">
			<div class="col-sm-4 col-sm-offset-1">
				<div class="login-form">
					${message}
					<form action="home/forgot-password" method="post" enctype="multipart/form-data">
						<label>UserName</label>
						<p>
							<input class="form-control"type="text"  name="username" placeholder="UserName">
						</p>
						<label>Email</label>
						<p>
							<input class="form-control" type="email" name="email" placeholder="UserName">
						</p>
						<button type="submit">Send</button>
					</form>
				</div>
			</div>
		</div>
		<br>
<jsp:include page="layou/layou4.jsp"/>
</body>
</html>