<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<!-- JqueryUI -->
<link rel="stylesheet" type="text/css" href="${ctx}/css/jquery-ui.css">
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/css/bootstrap.min.css">
<!-- Awesome font icons -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/css/font-awesome.min.css" media="screen">
<!-- Owlcoursel -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/css/owl-coursel/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/css/owl-coursel/owl.transitions.css">
<!-- Magnific-popup -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/css/magnific-popup/magnific-popup.css">
<!-- Style -->
<link rel="stylesheet" type="text/css" href="${ctx}/css/style.css"
	media="screen">
<!-- Fw -->
<link rel="stylesheet" type="text/css" href="${ctx}/css/fw.css"
	media="screen">
</head>
<body class="bg-m">



	<div class="preloader">
		<i class="fa fa-spinner"></i>
	</div>
	<%@include file="header.jsp"%>
	<!-- Banner -->
	<section class="m-t-0">
	<div class="container">
		<div class="row slider slider-1">
			<div class="owl" data-items="4" data-itemsDesktop="3"
				data-itemsDesktopSmall="2" data-itemsTablet="2" data-itemsMobile="1"
				data-transitionstyle="fade" data-singleItem="true"
				data-autoplay="true" data-pag="false" data-buttons="false">
				<div class="col-sm-8 col-md-9 pull-right">
					<div class="slider-item">
						<img src="${ctx }/images/bg-13.png" alt="image">
						<div class="slider-caption">
							<h3 class="heading-size-3">100% Natural</h3>
							<h2 class="heading-size-1">
								ORGANIC
								</h1>
								<h4 class="heading-size-5">Best product organic shop</h4>
						</div>
					</div>
				</div>
				<div class="col-sm-8 col-md-9 pull-right">
					<div class="slider-item">
						<img src="${ctx }/images/bg-12.png" alt="image">
						<div class="slider-caption">
							<h3 class="heading-size-3">We supply farm</h3>
							<h2 class="heading-size-1">
								VEGETABLE
								</h1>
								<h4 class="heading-size-5">Farm fresh vegetables & fruits</h4>
						</div>
					</div>
				</div>
				<div class="col-sm-8 col-md-9 pull-right">
					<div class="slider-item">
						<img src="${ctx }/images/bg-21.png" alt="image">
						<div class="slider-caption">
							<h3 class="heading-size-3">Simply</h3>
							<h1 class="heading-size-1">FRUIT</h1>
							<h4 class="heading-size-5">Little things make a big
								difference</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section class="m-t-0">
	<div class="container">
		<div class="row m-0">
			<div class="col-sm-4 m-b-30 p-0">
				<div class="banner bg-img-8 bg-2">
					<div class="caption">
						<h2 class="heading-size-4">Vegetables</h2>
						<h3 class="heading-size-6 f-normal">SIMPPLY FRESHER</h3>
						<a href="#" class="btn ht-btn ht-btn-bg-2">Read more</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4 m-b-30 p-0">
				<div class="banner bg-img-0 bg-6">
					<div class="caption">
						<h2 class="heading-size-4">Fruits</h2>
						<h3 class="heading-size-6 f-normal">FEED YOUR FAMILY</h3>
						<a href="#" class="btn ht-btn ht-btn-bg-2">Read more</a>
					</div>
				</div>
			</div>
			<div class="col-sm-4 p-0">
				<div class="banner bg-img-7 bg-3">
					<div class="caption">
						<h2 class="heading-size-4">Organics</h2>
						<h3 class="heading-size-6 f-normal">100% ORGANIC</h3>
						<a href="#" class="btn ht-btn ht-btn-bg-2">Read more</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- Product tabs -->
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
							<div class="col-sm-6 col-md-4 col-lg-3">
								<!-- Product item -->
								<div class="product-item">
									<a href="${ctx }/product_detail.jsp"> <img
										src="${ctx }/images/5.jpg" alt="image">
									</a>
									<div class="product-caption">
										<h4 class="product-name">
											<a href="#">Apple</a>
										</h4>
										<div class="product-price-group">
											<span class="product-price">$64.00</span>
										</div>
										<div class="ht-btn-group">
											<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
											<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
												class="fa fa-exchange"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-4 col-lg-3">
								<!-- Product item -->
								<div class="product-item border-green">
									<a href="${ctx }/product_detail.jsp"> <img
										src="${ctx }/images/20.jpg" alt="image">
									</a>
									<div class="product-caption">
										<h4 class="product-name">
											<a href="#">Peaches</a>
										</h4>
										<div class="product-price-group">
											<span class="product-price">$64.00</span>
										</div>
										<div class="ht-btn-group">
											<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
											<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
												class="fa fa-exchange"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-4 col-lg-3">
								<!-- Product item -->
								<div class="product-item">
									<a href="${ctx }/product_detail.jsp"> <img
										src="${ctx }/images/14.jpg" alt="image">
									</a>
									<div class="product-caption">
										<h4 class="product-name">
											<a href="#">Pineapple</a>
										</h4>
										<div class="product-price-group">
											<span class="product-price">$64.00</span>
										</div>
										<div class="ht-btn-group">
											<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
											<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
												class="fa fa-exchange"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-4 col-lg-3">
								<!-- Product item -->
								<div class="product-item">
									<a href="${ctx }/product_detail.jsp"> <img
										src="${ctx }/images/13.jpg" alt="image">
									</a>
									<div class="product-caption">
										<h4 class="product-name">
											<a href="#">Defiant tomato</a>
										</h4>
										<div class="product-price-group">
											<span class="product-price">$64.00</span>
										</div>
										<div class="ht-btn-group">
											<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
											<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
												class="fa fa-exchange"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-4 col-lg-3">
								<!-- Product item -->
								<div class="product-item">
									<a href="${ctx }/product_detail.jsp"> <img
										src="${ctx }/images/12.jpg" alt="image">
									</a>
									<div class="product-caption">
										<h4 class="product-name">
											<a href="#">Pear</a>
										</h4>
										<div class="product-price-group">
											<span class="product-price">$64.00</span>
										</div>
										<div class="ht-btn-group">
											<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
											<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
												class="fa fa-exchange"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-4 col-lg-3">
								<!-- Product item -->
								<div class="product-item">
									<a href="${ctx }/product_detail.jsp"> <img
										src="${ctx }/images/25.jpg" alt="image">
									</a>
									<div class="product-caption">
										<h4 class="product-name">
											<a href="#">Corn</a>
										</h4>
										<div class="product-price-group">
											<span class="product-price">$64.00</span>
										</div>
										<div class="ht-btn-group">
											<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
											<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
												class="fa fa-exchange"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-4 col-lg-3">
								<!-- Product item -->
								<div class="product-item">
									<a href="product_detail.jsp"> <img
										src="${ctx }/images/7.jpg" alt="image">
									</a>
									<div class="product-caption">
										<h4 class="product-name">
											<a href="#">lemon</a>
										</h4>
										<div class="product-price-group">
											<span class="product-price">$64.00</span>
										</div>
										<div class="ht-btn-group">
											<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
											<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
												class="fa fa-exchange"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-4 col-lg-3">
								<!-- Product item -->
								<div class="product-item">
									<a href="product_detail.jsp"> <img
										src="${ctx }/images/8.jpg" alt="image">
									</a>
									<div class="product-caption">
										<h4 class="product-name">
											<a href="#">Red bell pepper</a>
										</h4>
										<div class="product-price-group">
											<span class="product-price">$64.00</span>
										</div>
										<div class="ht-btn-group">
											<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
											<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
												class="fa fa-exchange"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="tab-review">
						............</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Testimonials -->
	<section class="text-center m-t-30">
	<div class="container">
		<div class="bg-img-1">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-4">
					<div class="testimonials">
						<h3 class="title f-30">Testimonials</h3>
						<div class="owl" data-items="4" data-itemsDesktop="3"
							data-itemsDesktopSmall="2" data-itemsTablet="2"
							data-itemsMobile="1" data-transitionstyle="fade"
							data-singleItem="true" data-autoplay="true" data-pag="true"
							data-buttons="false">
							<div class="testimonial-item">
								<span><img src="${ctx }/images/1.jpg" alt="image"></span>
								<p>ORANIC has freed up my time by delivering excellent
									quality fruit and veg to my doorstep. I couldn't buy the same
									quality or quantity for the same price anywhere else locally.
									It's a great service.</p>
								<strong>Bec Stewart, Marketing Director</strong>
							</div>
							<div class="testimonial-item">
								<span><img src="${ctx }/images/2.jpg" alt="image"></span>
								<p>After having ORGANIC deliver fruit and vegetables to my
									home, for about 10 years, I can unreservedly recommend them I
									appreciate the freshness, variety, convenience, and all round
									goodness Well done Wild Greens!</p>
								<strong>Anneliese Whipp, Registered Nurse Como</strong>
							</div>
							<div class="testimonial-item">
								<span><img src="${ctx }/images/3.jpg" alt="image"></span>
								<p>Fresh fruit and vegies, easy and reliable service, and
									always with a smile – highly recommended.</p>
								<strong>Peter and Lisa . Balmain</strong>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- Product slider-->
	<section class="text-center">
	<div class="container">
		<h3 class="title f-30">Featured</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
		<div class="row">
			<div class="owl" data-items="4" data-itemsDesktop="3"
				data-itemsDesktopSmall="2" data-itemsTablet="2" data-itemsMobile="1"
				data-transitionstyle="backslide" data-singleItem="false"
				data-autoplay="false" data-pag="false" data-buttons="false">
				<div class="col-lg-12">
					<!-- Product item -->
					<div class="product-item">
						<a href="product_detail.jsp"> <img src="${ctx }/images/8.jpg"
							alt="image">
						</a>
						<div class="product-caption">
							<h4 class="product-name">
								<a href="#">Red bell pepper</a>
							</h4>
							<div class="product-price-group">
								<span class="product-price">$64.00</span>
							</div>
							<div class="ht-btn-group">
								<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
								<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
									class="fa fa-exchange"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<!-- Product item -->
					<div class="product-item">
						<a href="product_detail.jsp"> <img src="${ctx }/images/9.jpg"
							alt="image">
						</a>
						<div class="product-caption">
							<h4 class="product-name">
								<a href="#">Strawberry</a>
							</h4>
							<div class="product-price-group">
								<span class="product-price">$6,00</span>
							</div>
							<div class="ht-btn-group">
								<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
								<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
									class="fa fa-exchange"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<!-- Product item -->
					<div class="product-item">
						<a href="product_detail.jsp"> <img src="${ctx }/images/10.jpg"
							alt="image">
						</a>
						<div class="product-caption">
							<h4 class="product-name">
								<a href="#">Celery Leaf</a>
							</h4>
							<div class="product-price-group">
								<span class="product-price">$6,00</span>
							</div>
							<div class="ht-btn-group">
								<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
								<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
									class="fa fa-exchange"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<!-- Product item -->
					<div class="product-item">
						<a href="product_detail.jsp"> <img src="${ctx }/images/11.jpg"
							alt="image">
						</a>
						<div class="product-caption">
							<h4 class="product-name">
								<a href="#">Orange</a>
							</h4>
							<div class="product-price-group">
								<span class="product-price">$64.00</span>
							</div>
							<div class="ht-btn-group">
								<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
								<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
									class="fa fa-exchange"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<!-- Product item -->
					<div class="product-item">
						<a href="product_detail.jsp"> <img src="${ctx }/images/12.jpg"
							alt="image">
						</a>
						<div class="product-caption">
							<h4 class="product-name">
								<a href="#">Pear</a>
							</h4>
							<div class="product-price-group">
								<span class="product-price">$64.00</span>
							</div>
							<div class="ht-btn-group">
								<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
								<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
									class="fa fa-exchange"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<!-- Product item -->
					<div class="product-item">
						<a href="product_detail.jsp"> <img src="${ctx }/images/22.jpg"
							alt="image">
						</a>
						<div class="product-caption">
							<h4 class="product-name">
								<a href="#">Fresh peas</a>
							</h4>
							<div class="product-price-group">
								<span class="product-price">$64.00</span>
							</div>
							<div class="ht-btn-group">
								<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
								<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
									class="fa fa-exchange"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<!-- Product item -->
					<div class="product-item">
						<a href="product_detail.jsp"> <img src="${ctx }/images/14.jpg"
							alt="image">
						</a>
						<div class="product-caption">
							<h4 class="product-name">
								<a href="#">Pineapple</a>
							</h4>
							<div class="product-price-group">
								<span class="product-price">$64.00</span>
							</div>
							<div class="ht-btn-group">
								<a href="#" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
								<a href="#">Add to cart</a> <a href="#" class="compare_btn"><i
									class="fa fa-exchange"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section class="m-t-30">
	<div class="container text-center">
		<h3 class="title f-30">From Blog</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
		<div class="row m-t-30">
			<div class="owl" data-items="3" data-itemsDesktop="3"
				data-itemsDesktopSmall="2" data-itemsTablet="2" data-itemsMobile="1"
				data-transitionstyle="fade" data-singleItem="false"
				data-autoplay="false" data-pag="false" data-buttons="false">
				<div class="col-sm-12">
					<div class="blog-item m-b-0">
						<a href="#" class="blog-img"> <img
							src="${ctx }/images/banner1.jpg" alt="image">
						</a>
						<div class="blog-caption">
							<ul class="blog-date">
								<li><i class="fa fa-clock-o"></i>Nov 04, 2016</li>
								<li><a href="#"><i class="fa fa-comments-o"></i>3</a></li>
							</ul>
							<h3 class="blog-heading">
								<a href="#">Growing Tomatoes, Peppers and Eggplants in
									Containers</a>
							</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore.</p>
							<a href="#" class="btn ht-btn ht-btn-1"><i
								class="fa fa-long-arrow-right"></i>Read more</a>
						</div>
					</div>
				</div>
				<!--end blog-->
				<div class="col-sm-12">
					<div class="blog-item m-b-0">
						<a href="#" class="blog-img"> <img
							src="${ctx }/images/banner2.jpg" alt="image">
						</a>
						<div class="blog-caption">
							<ul class="blog-date">
								<li><i class="fa fa-clock-o"></i>Nov 04, 2016</li>
								<li><a href="#"><i class="fa fa-comments-o"></i>3</a></li>
							</ul>
							<h3 class="blog-heading">
								<a href="#">Container Vegetables - Broccoli & Cauliflower</a>
							</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore.</p>
							<a href="#" class="btn ht-btn ht-btn-1"><i
								class="fa fa-long-arrow-right"></i>Read more</a>
						</div>
					</div>
				</div>
				<!--end blog-->
				<div class="col-sm-12">
					<div class="blog-item m-b-0">
						<a href="#" class="blog-img"> <img
							src="${ctx }/images/banner3.jpg" alt="image">
						</a>
						<div class="blog-caption">
							<ul class="blog-date">
								<li><i class="fa fa-clock-o"></i>Nov 04, 2016</li>
								<li><a href="#"><i class="fa fa-comments-o"></i>3</a></li>
							</ul>
							<h3 class="blog-heading">
								<a href="#">Growing Pole & Bush Beans</a>
							</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore.</p>
							<a href="#" class="btn ht-btn ht-btn-1"><i
								class="fa fa-long-arrow-right"></i>Read more</a>
						</div>
					</div>
				</div>
				<div class="col-sm-12">
					<div class="blog-item m-b-0">
						<a href="#" class="blog-img"> <img
							src="${ctx }/images/banner4.jpg" alt="image">
						</a>
						<div class="blog-caption">
							<ul class="blog-date">
								<li><i class="fa fa-clock-o"></i>Nov 04, 2016</li>
								<li><a href="#"><i class="fa fa-comments-o"></i>3</a></li>
							</ul>
							<h3 class="blog-heading">
								<a href="#">Indeterminate Tomatoes</a>
							</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore.</p>
							<a href="#" class="btn ht-btn ht-btn-1"><i
								class="fa fa-long-arrow-right"></i>Read more</a>
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