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
<title>Register</title>
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

	<%@include file="header.jsp" %>
	<div class="heading-inner-page">
		<div class="container">
			<h2>Register</h2>
			<ul class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li>Register</li>
			</ul>
		</div>
	</div>
	<!-- Login page -->
	<div class="m-t-60">
		<div class="container">
			<div class="bg-img-2 position-left">
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<div class="box p-40 p-xs-20 bg-white">
							<form action= "${ctx }/user/register">
								<div class="form-group">
									<label class="control-labe" for="input-email">E-mail</label> <input
										type="text" name="email" value="" placeholder="E-mail"
										id="input-email" class="form-control form-item">
								</div>
								<div class="form-group">
									<label class="control-label" for="input-email">UserName
									</label> <input type="text" name="username" value=""
										placeholder="Last Name" id="input-last-name"
										class="form-control form-item">
								</div>
								<div class="form-group">
									<label class="control-label" for="input-password">Password</label>
									<input type="password" name="password" value=""
										placeholder="Password" id="input-password"
										class="form-control form-item">
								</div>
								<div class="form-group">
									<label class="control-label" for="input-password">Confirm Password</label>
									<input type="password" name="confirmpassword" value=""
										placeholder="Password" id="input-password"
										class="form-control form-item">
								</div>
								${registererror }
								<div class="m-t-15">
									<input type="checkbox" name="agree" class="m-r-10" value="1">
									I have read and agree to the <a href="#" class="agree"><b
										class="color-6">Privacy Policy</b></a> <br>
								</div>
								<button type="submit" class="btn ht-btn bg-6 m-t-30">Register</button>
							</form>
						</div>
					</div>
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

