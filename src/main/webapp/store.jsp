<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Electronica Gama</title>



<!-- Bootstrap core CSS -->

<link
	href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/vendor/bootstrap/css/shop-homepage.css"
	rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<jsp:include page="menu.jsp"></jsp:include>

	<!--  -->
	<jsp:include page="lateral.jsp"></jsp:include>

	<!-- /.col-lg-3 -->

	<div class="col-lg-9">

		<div id="carouselExampleIndicators" class="carousel slide my-4"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img class="d-block img-fluid" src="/image/paquete ps4.jpg"
						width="550" height="300" alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="/image/paquete xbox one.jpg"
						width="550" height="300" alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block img-fluid" src="/image/paquete wii u.jpg"
						alt="paquete promo Wii U" width="550" height="300">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>

		<!--  caja de texto para buscar  -->

		<input type="search" placeholder="Buscar" id="busqueda">

		<!--  termina el carrusel -->


		<!--     clon      -->
		<div class="col-lg-4 col-md-6 mb-4" id="elementop"
			style="display: none;">
			<div class="card h-100">
				<a href="#"><img src="/image/PS4.jpg" alt="PS4" width="200"
					height="100" id="img"></a>

				<div class="card-body">
					<h4 class="card-title">

						<a href="#" id="non">Play Station 4</a>
					</h4>
					<h5 id="precio">$6500</h5>
					<p class="card-text" id="desc">Play Station 4 Pro 1Tb</p>

					<form action="agregar-carrito" method="post">
						<input type="hidden" name="producto" value="Play Station 4">
						<input type="submit" value="Agregar al carrito">

					</form>

				</div>
				<div class="card-footer">
					<small class="text-muted">★ ★ ★ ★ ☆</small>
				</div>
			</div>
		</div>

	


		<div class="row" id="productos"></div>
	
		<!--Aqui se agrega el contenido a clonar  -->



	</div>

	</div>



	<!-- /.row -->

	</div>
	<!-- /.col-lg-9 -->

	</div>
	<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
	</footer>

	<!--  jquery -->



	<!-- Bootstrap core JavaScript -->
	<script src="<%=request.getContextPath()%>/vendor/jquery/jquery.min.js"></script>


	<script
		src="<%=request.getContextPath()%>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/index.js"></script>

</body>

</html>
