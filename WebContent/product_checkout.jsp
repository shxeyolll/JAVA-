<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Checkout</title>
<!-- JqueryUI -->
<link rel="stylesheet" type="text/css" href="${ctx }/css/jquery-ui.css">
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"
	href="${ctx }/css/bootstrap.min.css">
<!-- Awesome font icons -->
<link rel="stylesheet" type="text/css"
	href="${ctx }/css/font-awesome.min.css" media="screen">
<!-- Owlcoursel -->
<link rel="stylesheet" type="text/css"
	href="${ctx }/css/owl-coursel/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="${ctx }/css/owl-coursel/owl.transitions.css">
<!-- Magnific-popup -->
<link rel="stylesheet" type="text/css"
	href="${ctx }/css/magnific-popup/magnific-popup.css">
<!-- Style -->
<link rel="stylesheet" type="text/css" href="${ctx }/css/style.css"
	media="screen">
<!-- Fw -->
<link rel="stylesheet" type="text/css" href="${ctx }/css/fw.css"
	media="screen">
</head>
<body>




	<div class="preloader">
		<i class="fa fa-spinner"></i>
	</div>
	<%@include file="header.jsp"%>
	<div class="heading-inner-page">
		<div class="container">
			<h2>Checkout</h2>
			<ul class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li><a href="#">Account</a></li>
				<li>Checkout</li>
			</ul>
		</div>
	</div>
	<!-- Checkout -->
	<section>
	<div class="container">
		<div>
			<div id="content">
				<div class="panel-group">
					<div class="panel panel-default">
						<div id="collapse0" class="panel-collapse collapse in"
							role="tabpanel">
							<c:if test="${user == null }">
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-6">
											<div class="bore p-40 p-xs-20">
												<h3 class="title">New Customer</h3>
												<p>
													<strong>Register Account</strong>
												</p>
												<p>By creating an account you will be able to shop
													faster, be up to date on an order's status, and keep track
													of the orders you have previously made.</p>
												<a href="#" class="btn ht-btn bg-6 m-t-20">Continue</a>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="bore p-40 p-xs-20">
												<h3 class="title">Login</h3>
												<p>
													<strong>I am a returning customer</strong>
												</p>
												<form>
													<div class="form-group">
														<label class="control-label f-normal" for="input-email">E-Mail
															Address</label> <input type="text" name="email" value=""
															placeholder="E-Mail Address" id="input-email"
															class="form-control form-item">
													</div>
													<div class="form-group m-t-30">
														<label class="control-label f-normal" for="input-password">Password</label>
														<input type="password" name="password" value=""
															placeholder="Password" id="input-password"
															class="form-control form-item"> <a
															class="f-normal m-b-30" href="#">Forgotten Password</a>
													</div>
													<button type="submit" class="btn ht-btn bg-6 m-t-20">Login</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</c:if>
						</div>
					</div>


					<!--panel-->
					<div class="panel panel-default">
						<div id="collapse5" class="panel-collapse collapse in"
							role="tabpanel">
							<c:if test="${user != null }">
								<div class="panel-body">
									<div class="table-responsive">
										<form>
											<div>
												<div class="table-div">
													<div class="row m-0 table-heading">
														<div class="col col-xs-1">
															<strong>Image</strong>
														</div>
														<div class="col col-xs-3">
															<strong>Product Name</strong>
														</div>
														<div class="col col-xs-2">
															<strong>Model</strong>
														</div>
														<div class="col col-xs-2">
															<strong>Quantity</strong>
														</div>
														<div class="col col-xs-2">
															<strong>Unit Price</strong>
														</div>
														<div class="col col-xs-2">
															<strong>Total</strong>
														</div>
													</div>
													<c:forEach items="${cartlist }" var="c">
														<div class="row m-0 table-content">
															<div class="col col-xs-1">
																<a href="#"><img src="${ctx }/images/12.jpg"
																	width="70" alt="iPhone" title="iPhone"></a>
															</div>
															<div class="col col-xs-3">
																<a href="#">${c.product.productname }</a>
															</div>
															<div class="col col-xs-2">product ${c.product.productid }</div>
															<div class="col col-xs-2">
																<div class="input-group btn-block">
																	<input type="number" value="${c.count }" size="1"
																		class="form-control form-item">
																</div>
															</div>
															<div class="col col-xs-2">$ ${c.product.price }</div>
															<div class="col col-xs-2">$ ${c.count*c.product.price  }</div>
														</div>
														<!--end row-->
													</c:forEach>
												</div>
											</div>
											<div class="row">
												<div class="col-xs-5 pull-right">
													<div class="total table-div">
														<ul class="table-content">
															<li class="row m-0">
																<div class="col col-xs-6 text-right">
																	<strong class=" text-right">Sub-Total:</strong>
																</div>
																<div class="col col-xs-6">$300.00</div>
															</li>
															<li class="row m-0">
																<div class="col col-xs-6">
																	<strong>Eco Tax (0):</strong>
																</div>
																<div class="col col-xs-6">-$0.00</div>
															</li>
															<li class="row m-0">
																<div class="col col-xs-6">
																	<strong>VAT (20%):</strong>
																</div>
																<div class="col col-xs-6">-$60.00</div>
															</li>
															<li class="row m-0">
																<div class="col col-xs-6">
																	<strong>Total:</strong>
																</div>
																<div class="col col-xs-6">$240.00</div>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</form>
									</div>
									<div class="buttons m-t-30">
										<div class="pull-right">
											<button type="button" class="btn ht-btn bg-6">Confirm
												Order</button>
										</div>
									</div>
								</div>
							</c:if>
						</div>
					</div>
					<!--/panel-->
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- Process order -->
	<section class="process">
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-md-4">
				<div class="media ht-media">
					<div class="media-left">
						<i class="fa fa-phone bg-6"></i>
					</div>
					<div class="media-body">
						<h5 class="media-heading">Support 24/7: 0123-456-789</h5>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-md-4">
				<div class="media ht-media">
					<div class="media-left">
						<i class="fa fa-truck bg-2"></i>
					</div>
					<div class="media-body">
						<h5 class="media-heading">Free shipping on all orders</h5>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-md-4">
				<div class="media ht-media">
					<div class="media-left">
						<i class="fa fa-undo bg-6"></i>
					</div>
					<div class="media-body">
						<h5 class="media-heading">100% money back guarantee</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- Footer -->
	<footer class="color-inher">
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-sm-3 m-b-xs-30">
					<h3 class="title">Infomation</h3>
					<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Delivery Information</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms & Conditions</a></li>
					</ul>
				</div>
				<div class="col-sm-3 m-b-xs-30">
					<h3 class="title">My Account</h3>
					<ul>
						<li><a href="#">My Account</a></li>
						<li><a href="#">Order History</a></li>
						<li><a href="#">Wish List</a></li>
						<li><a href="#">Guide use</a></li>
					</ul>
				</div>
				<div class="col-sm-3 m-b-xs-30">
					<h3 class="title">Extras</h3>
					<ul>
						<li><a href="#">Brands</a></li>
						<li><a href="#">Gift Vouchers</a></li>
						<li><a href="#">Affiliates</a></li>
						<li><a href="#">Specials</a></li>
					</ul>
				</div>
				<div class="col-sm-3 m-b-xs-30">
					<h3 class="title">Customer Service</h3>
					<ul>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">Returns</a></li>
						<li><a href="#">Site Map</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="container">
			<p>
				Copyright &copy; 2017.Company name All rights reserved.<a
					target="_blank" href="http://www.17sucai.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
			</p>
		</div>
	</div>
	</footer>
	<!-- jQuery -->
	<script src="${ctx }/js/jquery/jquery-2.2.4.min.js"></script>
	<!-- JqueryUI -->
	<script src="${ctx }/js/jquery/jquery-ui.js"></script>
	<!-- Bootstrap -->
	<script src="${ctx }/js/bootstrap/bootstrap.min.js"></script>
	<!-- Owl-coursel -->
	<script src="${ctx }/js/owl-coursel/owl.carousel.js"></script>
	<!-- Magnific-popup -->
	<script src="${ctx }/js/magnific-popup/jquery.magnific-popup.min.js"></script>
	<!-- Script -->
	<script src="${ctx }/js/script.js"></script>
</body>
</html>

