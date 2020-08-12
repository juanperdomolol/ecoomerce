<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" />
<link rel="stylesheet"
	href="https://cdn.datatables.net/select/1.3.0/css/select.dataTables.min.css" />
<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="../css/shop-homepage.css" rel="stylesheet">
<title>Descripción</title>
<script src="../scripts/jquery.min.js"></script>
<script src="../scripts/webfont.js"></script>
<link href="../scripts/rateit.css" rel="stylesheet" type="text/css">
</head>

<body>
	<!-- Navigation -->
	<jsp:include page="menu2.jsp"></jsp:include>
	<br />
	<br />
	<br />
	<!-- Page Content -->
	<div class="container">

		<div class="row">


			<div class="col-lg-3">
				<h1 class="my-4">Descripción</h1>
				<div class="list-group">
					<div class="list-group" id="div_categories"></div>
				</div>
			</div>
			<br>

			<!-- /.col-lg-3 -->
			<!-- Content here -->
			<br /> <br /> <br />
			<div class="col-lg-9">

				<!-- /.card -->
				<br />
				<!-- Descripcion -->
				<div class="card card-outline-secondary my-4">
					<jsp:include page="../portal/descripcion.jsp" />
					<div class="card-body" id="div_reviews2">
				

						
						<!-- Descripcion -->

						<div class="clearfix"></div>
						<div id="div_review_response"></div>

						<div class="collapse" id="collapseComment">
							<br />
							<div class="card card-body"></div>
						</div>

						<div id="div_reviews"></div>

					</div>
				</div>
				<!-- /.card -->

			</div>
			<!-- /.col-lg-9 -->

		</div>

	</div>
	<!-- /.container -->

	<!-- Footer -->



	<!-- Bootstrap core JavaScript -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../scripts/jquery.rateit.js" type="text/javascript"></script>
	<script src="../js/portal.js"></script>
	<!--  <script src="../js/item.js" type="text/javascript"></script> -->
	<script src="../js/ServiciosItem.js" type="text/javascript"></script>

<!-- 
	<script type="text/javascript">
		getCategories(1);
		
	</script>
	<script src="../js/portal.js"></script>

 -->

</body>

</html>