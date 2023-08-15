<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<jsp:include page="layou/layou2.jsp" />

<title>Cart | V-Shopper</title>
<link href="${pageContext.request.contextPath}/css/cta.css"
	rel="stylesheet">
</head>
<!--/head-->

<body>
	<header id="header">
		<!--header-->
		<jsp:include page="layou/layou1.jsp" />

		<jsp:include page="layou/layou3.jsp" />
		<section id="cart_items">
			<div class="container">
				<div class="breadcrumbs">
					<ol class="breadcrumb">
						<li><a href="#">Home</a></li>
						<li class="active">Shopping Cart</li>
					</ol>
				</div>
				<div class="table-responsive cart_info">
					<table class="table table-condensed">
						<thead>
							<tr class="cart_menu">
								<td>Image</td>
								<td class="image">Name</td>
								<td class="price">Price</td>
								<td class="description">Quantity</td>
								<td class="quantity">Total</td>
								<td class="total">Action</td>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${cart.items}">
								<form action="/home/cart/update" method="post">
									<input type="hidden" name="id" value="${item.id}">
									<tr>
										<td class="cart_product"><a href=""><img
												src="/images/shop/${item.image}" style="width: 50px;"></a></td>
										<td class="cart_description">
											<h4>
												<a href="">${item.name}</a>
											</h4>
											<p>Web ID: 1089772</p>
										</td>
										<td class="cart_price">
											<p>${item.price }</p>
										</td>
										<td class="cart_quantity">
											<div class="cart_quantity_button">
												<a class="cart_quantity_up" href="/home/cart/add/${item.id}">
													+ </a> <input name="qty" value="${item.qty}" min="0"
													onblur="this.form.submit()"
													class="text-center text-warning"
													style="width: 50px; height: 30px; font-size: 18px; font-weight: bolder; border: none">
												<a class="cart_quantity_down"
													href="/home/cart/sub/${item.id}"> - </a>
											</div>
										</td>
										<td class="cart_total">
											<p class="cart_total_price">${item.price * item.qty}</p>
										</td>
										<td class="cart_delete"><a class="cart_quantity_delete"
											href="/home/cart/remove/${item.id}"><i
												class="fa fa-times"></i></a></td>
									</tr>
								</form>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

			<center>
				<div>
					<div class="proceed-checkout">
						<c:if test="${!isLogin}">
							<a href="/home/login" class="btn btn-warning">PROCEED TO
								CHECK OUT</a>
						</c:if>

						<c:if test="${isLogin}">
							<a href="/home/checkout" class="btn btn-warning">PROCEED TO
								CHECK OUT</a>
						</c:if>
					</div>
				</div>
				<br>
				<a class="cta" href="/home/product"> <span>Continue
						shopping</span> <svg viewBox="0 0 13 10" height="10px" width="15px">
    <path d="M1,5 L11,5"></path>
    <polyline points="8 1 12 5 8 9"></polyline>
  </svg>
				</a>

			</center>
		</section>

		<!--/#cart_items-->
		<br>
		<section id="do_action">
			<div class="container">
				<div class="heading">
					<h3>What would you like to do next?</h3>
					<p>Choose if you have a discount code or reward points you want
						to use or would like to estimate your delivery cost.</p>
				</div>
				<div class="row">
					<div class="col-sm-6">
						<div class="chose_area">
							<ul class="user_option">
								<li><input type="checkbox"> <label>Use
										Coupon Code</label></li>
								<li><input type="checkbox"> <label>Use Gift
										Voucher</label></li>
								<li><input type="checkbox"> <label>Estimate
										Shipping & Taxes</label></li>
							</ul>
							<ul class="user_info">
								<li class="single_field"><label>Country:</label> <select>
										<option>United States</option>
										<option>Bangladesh</option>
										<option>UK</option>
										<option>India</option>
										<option>Pakistan</option>
										<option>Ucrane</option>
										<option>Canada</option>
										<option>Dubai</option>
								</select></li>
								<li class="single_field"><label>Region / State:</label> <select>
										<option>Select</option>
										<option>Dhaka</option>
										<option>London</option>
										<option>Dillih</option>
										<option>Lahore</option>
										<option>Alaska</option>
										<option>Canada</option>
										<option>Dubai</option>
								</select></li>
								<li class="single_field zip-field"><label>Zip Code:</label>
									<input type="text"></li>
							</ul>
							<a class="btn btn-default update" href="">Get Quotes</a> <a
								class="btn btn-default check_out" href="">Continue</a>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="total_area">
							<ul>
								<li>Cart Sub Total <span>${cart.total }</span></li>
								<li>Eco Tax <span>Free</span></li>
								<li>Shipping Cost <span>Free</span></li>
								<li>Total <span>${cart.total }</span></li>
							</ul>
							<a class="btn btn-default update" href="">Update</a> <a
								class="btn btn-default check_out" href="">Check Out</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/#do_action-->
		<jsp:include page="layou/layou4.jsp" />
</body>
</html>