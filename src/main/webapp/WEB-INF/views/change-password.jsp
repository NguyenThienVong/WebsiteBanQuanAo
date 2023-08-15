<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="layou/layou2.jsp"/>
<title>V-Shopper | Change-Password</title>
</head>
<body>
<header id="header"><!--header-->
		<jsp:include page="layou/layou1.jsp"/>
		<jsp:include page="layou/layou3.jsp"/>
		<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Change Password</h2>
                        <form action="/home/change-password" method="post">
                        <h5 class="text-danger">${message }</h5>
                            <div class="group-input">
                                <label for="username">Username *</label>
                                <input type="text" id="username" name="username">
                            </div>
                            <div class="group-input">
                                <label for="pass">Password *</label>
                                <input type="password" id="password" name="password">
                            </div>

                            <div class="group-input">
                                <label for="pass">New Password *</label>
                                <input type="password" id="newpassword" name="newpassword">
                            </div>

                            <div class="group-input">
                                <label for="pass">Confirm New Password *</label>
                                <input type="password" id="confirmpassword" name="confirmpassword">
                            </div>

                            <button type="submit" class="site-btn login-btn">Confirm</button>
                        </form>
					</div><!--/login form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
		
		
		<jsp:include page="layou/layou4.jsp"/>
</body>
</html>