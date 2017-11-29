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
<title>Product detail</title>
<!-- JqueryUI -->
<link rel="stylesheet" type="text/css" href="${ctx}/css/jquery-ui.css">
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap.min.css">
<!-- Awesome font icons -->
<link rel="stylesheet" type="text/css" href="${ctx}/css/font-awesome.min.css"
	media="screen">
<!-- Owlcoursel -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/css/owl-coursel/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/css/owl-coursel/owl.transitions.css">
<!-- Magnific-popup -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/css/magnific-popup/magnific-popup.css">
<!-- Magnific-popup -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/css/magnific-popup/magnific-popup.css">
<!-- Style -->
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css"
	media="screen">
<!-- Fw -->
<link rel="stylesheet" type="text/css" href="${ctx}/css/fw.css" media="screen">
</head>
<body>




	<div class="preloader">
		<i class="fa fa-spinner"></i>
	</div>
	<%@ include file="header.jsp" %>
	<div class="heading-inner-page">
		<div class="container">
			<h2>Product detail</h2>
			<ul class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li><a href="#">Product</a></li>
				<li><a href="#">Pepper</a></li>
				<li>Red bell pepper</li>
			</ul>
		</div>
	</div>
	<!-- Product -->
	<section class="m-t-30">
	<div class="container">
		<div class="row">
			<!-- Product image gallery -->
			<div class="col-sm-6 col-md-7">
				<ul class="thumbnails p-0">
					<li><a class="thumbnail img-large image-zoom"
						href="images/8.jpg" title="iPhone"> <img src="images/8.jpg"
							alt="iPhone">
					</a></li>
					<li class="image-additional"><a class="thumbnail image-zoom"
						href="images/9.jpg" title="iPhone"> <img src="images/9.jpg"
							title="iPhone" alt="iPhone">
					</a></li>
					<li class="image-additional"><a class="thumbnail image-zoom"
						href="images/10.jpg" title="iPhone"> <img src="images/10.jpg"
							title="iPhone" alt="iPhone">
					</a></li>
					<li class="image-additional"><a class="thumbnail image-zoom"
						href="images/11.jpg" title="iPhone"> <img src="images/11.jpg"
							title="iPhone" alt="iPhone">
					</a></li>
					<li class="image-additional"><a class="thumbnail image-zoom"
						href="images/12.jpg" title="iPhone"> <img src="images/12.jpg"
							title="iPhone" alt="iPhone">
					</a></li>
					<li class="image-additional"><a class="thumbnail image-zoom"
						href="images/13.jpg" title="iPhone"> <img src="images/13.jpg"
							title="iPhone" alt="iPhone">
					</a></li>
				</ul>
			</div>
			<!-- Product decr -->
			<div class="col-sm-6 col-md-5">
				<div class="product-pare m-t-xs-60">
					<h1>Red bell pepper</h1>
					<ul class="list-unstyled m-b-20">
						<li><span>Fruit size:</span>4.5 inches by 4 inches</li>
						<li><span>Matures:</span>70 to 80 days</li>
						<li><span>Plant spacing:</span>18 to 24 inches apart</li>
						<li><span>Plant size:</span>24 to 36 inches tall, 18 to 24
							inches wide</li>
					</ul>
					<p>The bell pepper is a cultivar group of the species Capsicum
						annuum. Cultivars of the plant produce fruits in different colors,
						including red, yellow, orange, green...</p>
					<p class="product-price">$65.00</p>
					<div class="quantily-wrap">
						<label class="control-label" for="input-quantity"></label> <input
							type="number" value="1" size="2" id="input-quantity"
							class="form-control form-item">
					</div>
					<button type="button" class="btn ht-btn bg-3 m-t-0">Add to
						Cart</button>
					<div class="m-t-30">
						<a href="#">0 reviews</a> / <a href="#">Write a review</a>
					</div>
				</div>
			</div>
		</div>
		<!-- End row -->
		<!-- Tabs -->
		<div class="row m-t-30">
			<div class="col-sm-9">
				<div class="p-30 bore">
					<h3 class="title">DESCRIPTION</h3>
					<p>A red bell pepper is simply a mature green bell pepper. As
						it matures, it becomes sweeter and milder, and by the time it is
						ripe, it is literally bursting with nutrients. In fact, the sweet
						red pepper is considered one of the most nutrient-dense vegetables
						you can consume. Like all peppers, they are very high in the
						important antioxidant vitamins A and C, which fight cell damage in
						the body and are especially important for healthy eyes and skin.
						Red peppers are one of a small list of foods that contain
						lycopene, a carotenoid that has been associated with lowering the
						risk of various cancers.</p>
					<h5>Nutrition Facts</h5>
					<ul class="list-border width-auto-xs">
						<li>Calories: 46</li>
						<li>Carbohydrates: 9g</li>
						<li>Dietary fiber: 3g</li>
						<li>Protein: 1g</li>
						<li>Sugars: 6g</li>
						<li>Vitamin A: 93% DV</li>
						<li>Vitamin C: 317%</li>
						<li>Vitamin E: 12%</li>
						<li>Vitamin K: 9%</li>
						<li>Thiamin: 6%</li>
						<li>Vitamin B6: 22%</li>
						<li>Folate: 17%</li>
						<li>Manganese: 8%</li>
						<li>Potassium: 9%</li>
					</ul>
				</div>
				<form class="form-horizontal p-30 bore m-t-30">
					<h3 class="title">Write a review</h3>
					<div class="form-group required">
						<div class="col-sm-12">
							<label class="control-label m-b-10" for="input-name">Your
								Name</label> <input type="text" name="name" value="" id="input-name"
								class="form-control form-item">
						</div>
					</div>
					<div class="form-group required">
						<div class="col-sm-12">
							<label class="control-label m-b-10" for="input-review">Your
								Review</label>
							<textarea name="text" rows="5" id="input-review"
								class="form-control form-item"></textarea>
							<div class="help-block">
								<span class="text-danger">Note:</span> HTML is not translated!
							</div>
						</div>
					</div>
					<div class="buttons clearfix">
						<div class="">
							<button type="button" class="btn btn-primary ht-btn bg-6">Submit</button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-sm-3">
				<div class="banner bg-img-13">
					<div class="caption text-center">
						<h2 class="heading-size-3 f-bold">100%</h2>
						<h3 class="heading-size-5 f-normal">ORGANIC</h3>
						<a href="#" class="btn ht-btn ht-btn-bg-2">Read more</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- Product relaed -->
	<section>
	<div class="container">
		<h3 class="title">Product Related</h3>
		<div class="row product-bor">
			<div class="owl" data-items="4" data-itemsDesktop="4"
				data-itemsDesktopSmall="3" data-itemsTablet="2" data-itemsMobile="1"
				data-transitionstyle="backslide" data-singleItem="false"
				data-autoplay="false" data-pag="false" data-buttons="true">
				<div class="col-sm-12">
					<!-- Product item -->
					<div class="product-item m-b-0">
						<a href="product_detail.jsp" class="product-img"> <img
							src="images/5.jpg" alt="image">
						</a>
						<div class="product-caption">
							<h4 class="product-name">
								<a href="#">Apple</a>
							</h4>
							<ul class="list-inline rating">
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star"></i></li>
								<li><i class="fa fa-star"></i></li>
							</ul>
							<div class="product-price-group">
								<span class="product-price-old">$12,00</span> <span
									class="product-price">$52,00</span>
							</div>
						</div>
						<div class="ht-btn-group">
							<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
								class="fa fa-exchange"></i></a> <a href="#">Add to cart</a>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<!-- Product item -->
					<div class="product-item m-b-0">
						<a href="product_detail.jsp" class="product-img"> <img
							src="images/6.jpg" alt="image">
						</a>
						<div class="product-caption">
							<h4 class="product-name">
								<a href="#">Apple</a>
							</h4>
							<ul class="list-inline rating">
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star"></i></li>
								<li><i class="fa fa-star"></i></li>
							</ul>
							<div class="product-price-group">
								<span class="product-price-old">$12,00</span> <span
									class="product-price">$52,00</span>
							</div>
						</div>
						<div class="ht-btn-group">
							<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
								class="fa fa-exchange"></i></a> <a href="#">Add to cart</a>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<!-- Product item -->
					<div class="product-item m-b-0">
						<a href="product_detail.jsp" class="product-img"> <img
							src="images/7.jpg" alt="image">
						</a>
						<div class="product-caption">
							<h4 class="product-name">
								<a href="#">Apple</a>
							</h4>
							<ul class="list-inline rating">
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star"></i></li>
								<li><i class="fa fa-star"></i></li>
							</ul>
							<div class="product-price-group">
								<span class="product-price-old">$12,00</span> <span
									class="product-price">$52,00</span>
							</div>
						</div>
						<div class="ht-btn-group">
							<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
								class="fa fa-exchange"></i></a> <a href="#">Add to cart</a>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<!-- Product item -->
					<div class="product-item m-b-0">
						<a href="product_detail.jsp" class="product-img"> <img
							src="images/8.jpg" alt="image">
						</a>
						<div class="product-caption">
							<h4 class="product-name">
								<a href="#">Apple</a>
							</h4>
							<ul class="list-inline rating">
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star"></i></li>
								<li><i class="fa fa-star"></i></li>
							</ul>
							<div class="product-price-group">
								<span class="product-price-old">$12,00</span> <span
									class="product-price">$52,00</span>
							</div>
						</div>
						<div class="ht-btn-group">
							<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
								class="fa fa-exchange"></i></a> <a href="#">Add to cart</a>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<!-- Product item -->
					<div class="product-item m-b-0">
						<a href="product_detail.jsp" class="product-img"> <img
							src="images/9.jpg" alt="image">
						</a>
						<div class="product-caption">
							<h4 class="product-name">
								<a href="#">Apple</a>
							</h4>
							<ul class="list-inline rating">
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star"></i></li>
								<li><i class="fa fa-star"></i></li>
							</ul>
							<div class="product-price-group">
								<span class="product-price-old">$12,00</span> <span
									class="product-price">$52,00</span>
							</div>
						</div>
						<div class="ht-btn-group">
							<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
								class="fa fa-exchange"></i></a> <a href="#">Add to cart</a>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<!-- Product item -->
					<div class="product-item m-b-0">
						<a href="product_detail.jsp" class="product-img"> <img
							src="images/10.jpg" alt="image">
						</a>
						<div class="product-caption">
							<h4 class="product-name">
								<a href="#">Apple</a>
							</h4>
							<ul class="list-inline rating">
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star color-6"></i></li>
								<li><i class="fa fa-star"></i></li>
								<li><i class="fa fa-star"></i></li>
							</ul>
							<div class="product-price-group">
								<span class="product-price-old">$12,00</span> <span
									class="product-price">$52,00</span>
							</div>
						</div>
						<div class="ht-btn-group">
							<a href="#"><i class="fa fa-heart-o"></i></a> <a href="#"><i
								class="fa fa-exchange"></i></a> <a href="#">Add to cart</a>
						</div>
					</div>
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
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- JqueryUI -->
	<script src="js/jquery/jquery-ui.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap/bootstrap.min.js"></script>
	<!-- Owl-coursel -->
	<script src="js/owl-coursel/owl.carousel.js"></script>
	<!-- Magnific-popup -->
	<script src="js/magnific-popup/jquery.magnific-popup.min.js"></script>
	<!-- Script -->
	<script src="js/script.js"></script>
</body>
</html>