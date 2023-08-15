<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<html lang="en">
<head>

<jsp:include page="layou/layou2.jsp" />
<meta charset="utf-8">
<title>Shop | V-Shopper</title>

</head>
<!--/head-->

<body>
	<header id="header">
		<!--header-->
		<jsp:include page="layou/layou1.jsp" />
		<jsp:include page="layou/layou3.jsp" />

		<section id="advertisement">
			<div class="container">
				<img src="images/shop/advertisement.jpg" alt="" />
			</div>
		</section>

		<section>
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="left-sidebar">
							<h2>Category</h2>
							<div class="panel-group category-products" id="accordian">
								<!--category-productsr-->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordian"
												href="#sportswear"> <span class="badge pull-right"><i
													class="fa fa-plus"></i></span> Sportswear
											</a>
										</h4>
									</div>
									<div id="sportswear" class="panel-collapse collapse">
										<div class="panel-body">
											<ul>
												<li><a href="">Nike </a></li>
												<li><a href="">Under Armour </a></li>
												<li><a href="">Adidas </a></li>
												<li><a href="">Puma</a></li>
												<li><a href="">ASICS </a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordian"
												href="#mens"> <span class="badge pull-right"><i
													class="fa fa-plus"></i></span> Mens
											</a>
										</h4>
									</div>
									<div id="mens" class="panel-collapse collapse">
										<div class="panel-body">
											<ul>
												<li><a href="">Fendi</a></li>
												<li><a href="">Guess</a></li>
												<li><a href="">Valentino</a></li>
												<li><a href="">Dior</a></li>
												<li><a href="">Versace</a></li>
												<li><a href="">Armani</a></li>
												<li><a href="">Prada</a></li>
												<li><a href="">Dolce and Gabbana</a></li>
												<li><a href="">Chanel</a></li>
												<li><a href="">Gucci</a></li>
											</ul>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordian"
												href="#womens"> <span class="badge pull-right"><i
													class="fa fa-plus"></i></span> Womens
											</a>
										</h4>
									</div>
									<div id="womens" class="panel-collapse collapse">
										<div class="panel-body">
											<ul>
												<li><a href="">Fendi</a></li>
												<li><a href="">Guess</a></li>
												<li><a href="">Valentino</a></li>
												<li><a href="">Dior</a></li>
												<li><a href="">Versace</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="#">Kids</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="#">Fashion</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="#">Households</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="#">Interiors</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="#">Clothing</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="#">Bags</a>
										</h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a href="#">Shoes</a>
										</h4>
									</div>
								</div>
							</div>
							<!--/category-productsr-->

							<div class="brands_products">
								<!--brands_products-->
								<h2>Brands</h2>
								<div class="brands-name">
									<ul class="nav nav-pills nav-stacked">
										<li><a href=""> <span class="pull-right">(50)</span>Acne
										</a></li>
										<li><a href=""> <span class="pull-right">(56)</span>GrÃ¼ne
												Erde
										</a></li>
										<li><a href=""> <span class="pull-right">(27)</span>Albiro
										</a></li>
										<li><a href=""> <span class="pull-right">(32)</span>Ronhill
										</a></li>
										<li><a href=""> <span class="pull-right">(5)</span>Oddmolly
										</a></li>
										<li><a href=""> <span class="pull-right">(9)</span>Boudestijn
										</a></li>
										<li><a href=""> <span class="pull-right">(4)</span>RÃ¶sch
												creative culture
										</a></li>
									</ul>
								</div>
							</div>
							<!--/brands_products-->

							<div class="price-range">
								<!--price-range-->
								<h2>Price Range</h2>
						<form action="/home/price" method="post">
								<div class="well">
								<input type="hidden" name="min" value="0">
									<input type="text" class="span2" value="" data-slider-min="0"
										data-slider-max="600" data-slider-step="5"
										value="[0,250]" name="max" id="sl2"><br />
										<b>$
										0</b> 
										<b class="pull-right">$600</b>
								</div>
								<button class="btn btn-warning">Filter</button>
						</form>
							</div>
							<!--/price-range-->

							<div class="shipping text-center">
								<!--shipping-->
								<img src="images/home/shipping.jpg" alt="" />
							</div>
							<!--/shipping-->

						</div>
					</div>

					<div class="col-sm-9 padding-right">
					
						<div class="features_items">
							<!--features_items-->
							<h2 class="title text-center">Features Items</h2>
				<c:forEach var="item" items="${page.content}">
							<div class="col-sm-4">
								<div class="product-image-wrapper">
									<div class="single-products">
										<div class="productinfo text-center">
											<img src="/images/shop/${item.image}" alt="" style="width: 260px;height: 260px"/>
											<h2>${item.price}$</h2>
											<p>${item.name}</p>
											<a href="/home/cart/add/${item.id}" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>Add to cart</a>
										</div>
									</div>
									<div class="choose">
										<ul class="nav nav-pills nav-justified">
											<li><a href="/home/product/detail/${item.id}"><i class="fa fa-plus-square"></i>Views
													Details</a></li>
											<li><a href="/home/cart/add/${item.id}"><i class="fa fa-plus-square"></i>Add to cart
													</a></li>	
										</ul>
									</div>
								</div>
							</div>
				</c:forEach>

							
						</div>
						<center>
						
						<a style="font-size: 20px" class=" btn btn-warning" href="/home/product?p=0">First</a> <a
								style="font-size: 20px" class="btn btn-warning" href="/home/product?p=${page.number-1}">Previous</a>
							<a style="font-size: 20px" class="btn btn-warning" href="/home/product?p=${page.number+1}">Next</a> <a
								style="font-size: 20px" class="btn btn-warning" href="/home/product?p=${page.totalPages-1}">Last</a>
								<!--features_items <ul class="pagination">
							<li class="active"><a href="/home/product?p=0">1</a></li>
							<li><a href="/home/product?p=1">2</a></li>
							<li><a href="/home/product?p=2">3</a></li>
							<li><a href="/home/product?p=${page.number+1}">&raquo;</a></li>
						</ul>-->
						</center>
						<br>
						
					</div>
				</div>
			</div>
		</section>
		

		<jsp:include page="layou/layou4.jsp" />



		<script src="js/jquery.js"></script>
		<script src="js/price-range.js"></script>
		<script src="js/jquery.scrollUp.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.prettyPhoto.js"></script>
		<script src="js/main.js"></script>
</body>
</html>