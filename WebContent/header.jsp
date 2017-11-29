<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<header>
	<div class="container">
		<div class="row top-header">
			<div class="col-sm-3 text-left">
				<a href="#" class="logo"> <img src="${ctx }/images/logo.png" alt="logo">
				</a>
			</div>
			<div class="col-sm-9">
				<ul class="top-link pull-right">
					<li class="hidden-xs"><a href="">Wishlist</a></li>
					<li class="hidden-xs"><a href="#">Compare</a></li>
					<li class="hidden-xs"><a href="${ctx }/product_checkout.jsp">Checkout</a></li>
					<li class="dropdown hidden-xs"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown" id="dropdownMenu1"
						aria-haspopup="true" aria-expanded="false">My Account <span
							class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<c:if test="${user==null }">
								<li><a href="${ctx }/login.jsp">Login</a></li>
								<li><a href="${ctx }/register.jsp">Register</a></li>
							
							</c:if>
							<c:if test="${user != null }">
								${user.email }
								您已登录
									<li><a href="${ctx }/user/loginout">Log out</a></li>
							</c:if>
						</ul></li>
					<li class="pull-right">
						<div class="cart dropdown">
							<a href="#" class="cart-item dropdown-toggle" id="dropdownMenu2"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <span>2</span><i
								class="fa fa-cart-plus"></i>
							</a>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
								<li>
									<div class="media">
										<div class="media-left">
											<a href="#"> <img class="media-object" src="${ctx }/images/9.jpg"
												width="50" alt="...">
											</a>
										</div>
										<div class="media-body">
											<h4 class="product-name">Lorem ipsum dolor</h4>
											<p>
												$15.0<span> x 3</span> <i class="fa fa-remove"></i>
											</p>
										</div>
									</div>
								</li>
								<li>
									<div class="media">
										<div class="media-left">
											<a href="#"> <img class="media-object" src="${ctx }/images/8.jpg"
												width="50" alt="...">
											</a>
										</div>
										<div class="media-body">
											<h4 class="product-name">Lorem ipsum dolor</h4>
											<p>
												$15.0<span> x 3</span> <i class="fa fa-remove"></i>
											</p>
										</div>
									</div>
								</li>
								<li class="table-div">
									<ul class="table-content">
										<li class="row m-0">
											<div class="col col-xs-6">
												<strong>Total:</strong>
											</div>
											<div class="col col-xs-6 color-3 f-bold">$240.00</div>
										</li>
									</ul>
								</li>
								<li>
									<p>
										<a href="#" class="btn ht-btn bg-3">Checkout</a> <a href="#"
											class="btn ht-btn bg-6">Cart</a>
									</p>
								</li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="bg-mn color-inher">
			<div class="row m-0">
				<div class="col-sm-1 col-md-1 col-lg-2 p-0">
					<div class="dropdown category-bar">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="true"> <i
							class="fa fa-bars"></i><span>Categories</span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#"><span><img src="${ctx }/images/25.jpg"
										width="50" alt="image"></span>Vegetables</a></li>
							<li><a href="#"><span><img src="${ctx }/images/18.jpg"
										width="50" alt="image"></span>Broccoli</a></li>
							<li><a href="#"><span><img src="${ctx }/images/16.jpg"
										width="50" alt="image"></span>Cabbage</a></li>
							<li><a href="#"><span><img src="${ctx }/images/22.jpg"
										width="50" alt="image"></span>Bean</a></li>
							<li><a href="#"><span><img src="${ctx }/images/21.jpg"
										width="50" alt="image"></span>Heirloom</a></li>
							<li><a href="#"><span><img src="${ctx }/images/20.jpg"
										width="50" alt="image"></span>Fruit</a></li>
							<li><a href="#"><span><img src="${ctx }/images/19.jpg"
										width="50" alt="image"></span>Organic</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-8 col-md-8 col-lg-7 p-0">
					<div class="main-menu">
						<nav class="navbar navbar-default menu">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed m-r-xs-15"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="${ctx }/index.jsp">Home</a></li>
								<li><a href="${ctx }/product/show">Shop</a></li>
								<li><a href="${ctx }/login.jsp">Login</a></li>
								<li><a href="${ctx }/register.jsp">Register</a></li>
								<li><a href="#">Contact us</a></li>
							</ul>
						</div>
						</nav>
					</div>
				</div>
				<div class="col-sm-3 col-md-3 col-lg-3 p-0">
					<div class="search-box m-l-xs-15 m-r-xs-15">
						<input type="text" class="form-item" placeholder="Search...">
						<button type="submit" class="fa fa-search"></button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</header>
</body>
</html>