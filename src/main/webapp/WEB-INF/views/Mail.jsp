<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="layou/layou2.jsp" />
<meta charset="UTF-8">
<title>Home | V-Shopper</title>
</head>
<body>
	<header id="header">
		<!--header-->
		<jsp:include page="layou/layou1.jsp" />
		<jsp:include page="layou/layou3.jsp" />
		
		<div class="row">
			<div class="col-sm-4 col-sm-offset-1">
				<div class="login-form">
					${message}
					<form action="home/send2.htm" method="post" enctype="multipart/form-data">
						<label>Form</label>
						<p>
							<input class="form-control" name="from" placeholder="From">
						</p>
						<label>To</label>
						<p>
							<input name="to" placeholder="To">
						</p>
						<label>subject</label>
						<p>
							<input name="subject" placeholder="Subject">
						</p>
						<label>file</label>
						<p>
							<input type="file" name="attach">
						</p>
						<label>Body</label>
						<p>
							<textarea name="body" placeholder="Body" style="height: 100px"></textarea>
						</p>
						<button>Send</button>
					</form>
				</div>
			</div>
		</div>
		<br>
		<jsp:include page="layou/layou4.jsp" />
</body>
</html>