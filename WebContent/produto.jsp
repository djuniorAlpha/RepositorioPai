<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1">

<title>The Division Games</title>

<!-- Loading third party fonts -->
<link
	href="http://fonts.googleapis.com/css?family=Roboto:100,300,400,700|"
	rel="stylesheet" type="text/css">
<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="fonts/lineo-icon/style.css" rel="stylesheet" type="text/css">

<!-- Loading main css file -->
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/style.css">

<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->

</head>


<body>

	<!-- jsp:useBean id="dao" class="com.thedivisiongames.dao.ProdutoDAO"/-->


	<div id="site-content">
		<div class="site-header">
			<div class="container">
				<a href="index.jsp" id="branding"> <img src="image/logo.png"
					alt="" class="logo" height="50" width="200">
				</a>
				<!-- #branding -->

				<div class="right-section pull-right">
					<a href="cart.html" class="cart"><i class="icon-cart"></i> 0
						items in cart</a> <a href="#">My Account</a> <a href="#">Logout <small>(John
							Smith)</small></a>
				</div>
				<!-- .right-section -->

				<div class="main-navigation">
					<button class="toggle-menu">
						<i class="fa fa-bars"></i>
					</button>
					<ul class="menu">
						<li class="menu-item home"><a href="index.jsp"><i
								class="icon-home"></i></a></li>
						<li class="menu-item"><a href="products.html">Accessories</a></li>
						<li class="menu-item"><a href="products.html">Promotions</a></li>
						<li class="menu-item"><a href="products.html">PC</a></li>
						<li class="menu-item current-menu-item"><a
							href="products.html">Playstation</a></li>
						<li class="menu-item"><a href="products.html">Xbox</a></li>
						<li class="menu-item"><a href="products.html">Wii</a></li>
					</ul>
					<!-- .menu -->
					<div class="search-form">
						<label><img src="images/icon-search.png"></label> <input
							type="text" placeholder="Search...">
					</div>
					<!-- .search-form -->

					<div class="mobile-navigation"></div>
					<!-- .mobile-navigation -->
				</div>
				<!-- .main-navigation -->

				<div class="breadcrumbs">
					<div class="container">
						<a href="index.jsp">Home</a> <a href="products.html">${produto.plataforma}</a>
						<span>${produto.nome}</span>
					</div>
				</div>
			</div>
			<!-- .container -->
		</div>
		<!-- .site-header -->

		<main class="main-content">
		<div class="container">
			<div class="page">

				<div class="entry-content">
					<div class="row">
						<div class="col-sm-6 col-md-4">
							<div class="product-images">
								<figure class="large-image">
									<a href="BuscaImagem?id=${produto.id}"><img
										src="BuscaImagem?id=${produto.id}" alt=""></a>
								</figure>

								<c:forEach var="img" items="${imagem}">

									<div class="thumbnails">
										<a href="BuscaGaleria?id=${img.id}"><img
											src="BuscaGaleria?id=${img.id}" alt=""></a>
									</div>

								</c:forEach>

							</div>
						</div>
						<div class="col-sm-6 col-md-8">
							<h2 class="entry-title">${produto.nome}</h2>
							<small class="price"><fmt:formatNumber type="currency"
									value="${produto.valor}" /></small>

							<p>${produto.descricao}</p>

							<div class="addtocart-bar">
								<form action="#">
									<label for="#">Quantidade</label> <select name="#">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
									</select> <input type="submit" value="Adicionar ao Carrinho">
								</form>

								<div class="social-links square">
									<strong>Compartilhe</strong> <a href="#" class="facebook"><i
										class="fa fa-facebook"></i></a> <a href="#" class="twitter"><i
										class="fa fa-twitter"></i></a> <a href="#" class="google-plus"><i
										class="fa fa-google-plus"></i></a> <a href="#" class="pinterest"><i
										class="fa fa-pinterest"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<section>
					<header>
						<h2 class="section-title">Produtos Similares</h2>
					</header>
					<div class="product-list">
						<div class="product">
							<div class="inner-product">
								<div class="figure-image">
									<img src="image/alphaprotocol.jpg" alt="Game 1" height="250"
										width="200">
								</div>
								<h3 class="product-title">
									<a href="#">Alpha Protocol</a>
								</h3>
								<small class="price">R$ 20,00</small>
								<p>Lorem ipsum dolor sit consectetur adipiscing elit do
									eiusmod tempor...</p>
								<a href="#" class="button">Comprar</a>
								<!--a href="#" class="button muted">Read Details</a-->
							</div>
						</div>
						<!-- .product -->

						<div class="product">
							<div class="inner-product">
								<div class="figure-image">
									<img src="image/gta5.jpeg" alt="Game 2" height="250"
										width="200">
								</div>
								<h3 class="product-title">
									<a href="#">Grand Theft Auto V</a>
								</h3>
								<small class="price">R$ 20,00</small>
								<p>Lorem ipsum dolor sit consectetur adipiscing elit do
									eiusmod tempor...</p>
								<a href="#" class="button">Comprar</a>
								<!--a href="#" class="button muted">Read Details</a-->
							</div>
						</div>
						<!-- .product -->

						<div class="product">
							<div class="inner-product">
								<div class="figure-image">
									<img src="image/needforspeed.jpg" alt="Game 3" height="250"
										width="200">
								</div>
								<h3 class="product-title">
									<a href="#">Need for Speed rivals</a>
								</h3>
								<small class="price">R$ 20,00</small>
								<p>Lorem ipsum dolor sit consectetur adipiscing elit do
									eiusmod tempor...</p>
								<a href="#" class="button">Comprar</a>
								<!--a href="#" class="button muted">Read Details</a-->
							</div>
						</div>
						<!-- .product -->

						<div class="product">
							<div class="inner-product">
								<div class="figure-image">
									<img src="image/bighunter.png" alt="Game 4" height="250"
										width="200">
								</div>
								<h3 class="product-title">
									<a href="#">Big game hunter</a>
								</h3>
								<small class="price">R$ 20,00</small>
								<p>Lorem ipsum dolor sit consectetur adipiscing elit do
									eiusmod tempor...</p>
								<a href="#" class="button">Add to cart</a>
								<!--a href="#" class="button muted">Read Details</a-->
							</div>
						</div>
						<!-- .product -->

					</div>
					<!-- .product-list -->
				</section>


			</div>
		</div>
		<!-- .container --> </main>
		<!-- .main-content -->

		<div class="site-footer">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">Information</h3>
							<ul class="no-bullet">
								<li><a href="#">Site map</a></li>
								<li><a href="#">About us</a></li>
								<li><a href="#">FAQ</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>
						<!-- .widget -->
					</div>
					<!-- column -->
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">Consumer Service</h3>
							<ul class="no-bullet">
								<li><a href="#">Secure</a></li>
								<li><a href="#">Shipping &amp; Returns</a></li>
								<li><a href="#">Shipping</a></li>
								<li><a href="#">Orders &amp; Returns</a></li>
								<li><a href="#">Group Sales</a></li>
							</ul>
						</div>
						<!-- .widget -->
					</div>
					<!-- column -->
					<div class="col-md-2">
						<div class="widget">
							<h3 class="widget-title">My Account</h3>
							<ul class="no-bullet">
								<li><a href="#">Login/Register</a></li>
								<li><a href="#">Settings</a></li>
								<li><a href="#">Cart</a></li>
								<li><a href="#">Order Tracking</a></li>
								<li><a href="#">Logout</a></li>
							</ul>
						</div>
						<!-- .widget -->
					</div>
					<!-- column -->
					<div class="col-md-6">
						<div class="widget">
							<h3 class="widget-title">Receba nossas Noticias</h3>
							<form action="#" class="newsletter-form">
								<input type="text" placeholder="Enter your email..."> <input
									type="submit" value="Subsribe">
							</form>
						</div>
						<!-- .widget -->
					</div>
					<!-- column -->
				</div>
				<!-- .row -->

				<div class="colophon">
					<div class="copy">
						Desenvolvido por <u><b>The Division Games</b></u>
					</div>
					<div class="social-links square">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-google-plus"></i></a> <a href="#"><i
							class="fa fa-pinterest"></i></a>
					</div>
					<!-- .social-links -->
				</div>
				<!-- .colophon -->
			</div>
			<!-- .container -->
		</div>
		<!-- .site-footer -->
	</div>

	<div class="overlay"></div>

	<div class="auth-popup popup">
		<a href="#" class="close"><i class="fa fa-close"></i></a>
		<div class="row">
			<div class="col-md-6">
				<h2 class="section-title">Login</h2>
				<form action="#">
					<input type="text" placeholder="Username..."> <input
						type="password" placeholder="Password..."> <input
						type="submit" value="Login">
				</form>
			</div>
			<!-- .column -->
			<div class="col-md-6">
				<h2 class="section-title">Create an account</h2>
				<form action="#">
					<input type="text" placeholder="Username..."> <input
						type="text" placeholder="Email address..."> <input
						type="submit" value="register">
				</form>
			</div>
			<!-- .column -->
		</div>
		<!-- .row -->
	</div>
	<!-- .auth-popup -->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/app.js"></script>

</body>

</html>