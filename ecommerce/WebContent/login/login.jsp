<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="../css/login.css" rel="stylesheet">
<title>eCommerce</title>
</head>
<body>
	<!-- Navigation -->
	<jsp:include page="../portal/menu.jsp" />
	<!-- Page Content -->
	<div class="container login-container">
		<br /> <br /> <br />
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6 login-form-1">
				<h3>Ingresar al Sistema</h3>
				<form action="j_security_check" method="post" onsubmit="return validacion()">
					<div class="form-group">
						<input type="text" class="form-control" name="j_username" id="j_username"
							placeholder="Your Email *" value="" pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}+[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}+[a-zA-ZñÑáéíóúÁÉÍÓÚüÜ]{2,25}"/>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" name="j_password" id="j_password"
							placeholder="Your Password *" value=""  pattern="[A-Za-z][A-Za-z0-9]*[0-9][A-Za-z0-9]*"/>
					</div>
					<div class="form-group">
						<input type="submit" class="btnSubmit btn btn-primary" value="Login" />
					</div>
					
				</form>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>
	
	<script type="text/javascript">

	function validacion() {
		var name= document.getElementById("j_username").value;
		var password = document.getElementById("j_password").value;
		  if (name==null || name.length==0) {
		    // Si no se cumple la condicion...
		    alert('[ERROR] El usuario está vacio');
		    return false;
		  }
		  else if (password==null || password.length==0) {
		    // Si no se cumple la condicion...
		    alert('[ERROR] La contraseña esta vacia');
		    return false;
		  }
		  

		  // Si el script ha llegado a este punto, todas las condiciones
		  // se han cumplido, por lo que se devuelve el valor true
		  return true;
		}
	
	</script>
	<!-- /.container -->
	<!-- Footer -->
	<jsp:include page="../portal/footer.jsp" />
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>