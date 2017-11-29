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
<title>shop</title>
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
			<h2>About us</h2>
			<ul class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li>Login</li>
			</ul>
		</div>
	</div>
	<!-- About -->
	<div>
		<div class="container text-center m-t-30">
			<h3 class="title f-30">Our Product</h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
			<div class="ht-tabs ht-tabs-product text-center">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs m-b-20" role="tablist">
					<li role="presentation" class="active"><a
						href="#tab-description" aria-controls="tab-description" role="tab"
						data-toggle="tab"><p>
								<img src="${ctx }/images/25.jpg" alt="image">
							</p>All</a></li>
					<li role="presentation"><a href="#tab-review"
						aria-controls="tab-review" role="tab" data-toggle="tab"><p>
								<img src="${ctx }/images/17.jpg" alt="image">
							</p>Vegetables</a></li>
					<li role="presentation"><a href="#tab-review"
						aria-controls="tab-review" role="tab" data-toggle="tab"><p>
								<img src="${ctx }/images/6.jpg" alt="image">
							</p>Fruist</a></li>
					<li role="presentation"><a href="#tab-review"
						aria-controls="tab-review" role="tab" data-toggle="tab"><p>
								<img src="${ctx }/images/9.jpg" alt="image">
							</p>Juice</a></li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="tab-description">
						<div class="row">
							<c:forEach items="${productlist}" var="p">
								<div class="col-sm-6 col-md-4 col-lg-3">
									<!-- Product item -->
									<div class="product-item">
										<a href="${ctx }/product_detail.jsp"> <img
											src="${ctx }/images/5.jpg" alt="image">
										</a>
										<div class="product-caption">
											<h4 class="product-name">
												<a href="#">${p.productname }</a>
											</h4>
											<div class="product-price-group">
												<span class="product-price"> $ ${p.price}</span>
											</div>
											<div class="ht-btn-group">
												<a href="#" class="wishlist_btn"><i
													class="fa fa-heart-o"></i></a> <a
													href="${ctx }/product/showcart?productid=${p.productid}">Add
													to cart</a> <a href="#" class="compare_btn"><i
													class="fa fa-exchange"></i></a>
											</div>
										</div>
									</div>
								</div>

							</c:forEach>
							<div role="tabpanel" class="tab-pane" id="tab-review">
								............</div>
						</div>
					</div>
				</div>
			</div>

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
								<i class="fa fa-undo bg-3"></i>
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

