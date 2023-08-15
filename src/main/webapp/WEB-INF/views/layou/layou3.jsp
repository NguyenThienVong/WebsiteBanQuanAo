<base href="${pageContext.servletContext.contextPath}/" />
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<link href="${pageContext.request.contextPath}/css/box.css"
	rel="stylesheet">
<div class="header-middle">
	<!--header-middle-->
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="logo pull-left">
					<a href="/home/index"><img src="images/home/logo.png" alt="" /></a>
				</div>

				<div class="btn-group pull-right">
					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle usa"
							data-toggle="dropdown">
							USA <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Canada</a></li>
							<li><a href="#">UK</a></li>
						</ul>
					</div>

					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle usa"
							data-toggle="dropdown">
							DOLLAR <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Canadian Dollar</a></li>
							<li><a href="#">Pound</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="shop-menu pull-right">
					<ul class="nav navbar-nav">
					<li><a href="/home/change-password"><i class="fa fa-unlock"></i>
								Change Password</a></li>
						<li><a href="/home/cart"><i class="fa fa-shopping-cart"></i>
								My Cart</a></li>
						<c:if test="${!isLogin}">
							<li><a href="/home/login"><i class="fa fa-lock"></i>
									Login</a></li>
							<li><a href="/home/register"><i class="fa fa-lock"></i>
									Register</a></li>
						</c:if>
						<c:if test="${isLogin}">
							<c:if test="${admin}">
								<li><a href="/admin/account" class="login-panel"><i
										class="fa fa-user"></i>Administration</a></li>

							</c:if>
							<div class="top-social">
								<li><a href="/home/lll"" class="text-warning"
									style="font-weight: bolder; font-size: 17px">Hello! ${fullname}</a> <a
									 style="font-weight: bolder;" id="btnLogOff"
									href="/logout" title="">[Logout]</a></li>
							</div>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!--/header-middle-->

<div class="header-bottom">
	<!--header-bottom-->
	<div class="container">
		<div class="row">
			<div class="col-sm-9">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="mainmenu pull-left">
					<ul class="nav navbar-nav collapse navbar-collapse">
						<li><a href="/home/index" class="active">Home</a></li>
						<li class="dropdown"><a href="/home/product">Shop<i
								class="fa fa-angle-down"></i></a>
							<ul role="menu" class="sub-menu">
								<li><a href="/home/product">Products</a></li>
								<li><a href="/home/product-details">Product Details</a></li>
								<li><a href="/home/checkout">Checkout</a></li>
								<li><a href="/home/cart">Cart</a></li>
								<li><a href="/home/login">Login</a></li>
							</ul></li>
						<li class="dropdown"><a href="#">Blog<i
								class="fa fa-angle-down"></i></a>
							<ul role="menu" class="sub-menu">
								<li><a href="/home/iii">Email</a></li>
								<li><a href="/home/blog-single">Blog Single</a></li>
							</ul></li>
						<li><a href="/home/Errorr">404</a></li>
						<li><a href="/home/contact">Contact</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-3">
				<div class="search_box pull-right">
					<form action="home/product" method="post">
						<input name="keywords" value="${keywords}" placeholder="Keywords?">
						<button>
							<span class="box"> Search! </span>
						</button>
					</form>
				</div>

			</div>

		</div>
	</div>
</div>
<!--/header-bottom-->
</header>
<!--/header-->