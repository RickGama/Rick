<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<div class="container">

	<div class="row">

		<div class="col-lg-3">

			<h1 class="my-4">Electronica GR</h1>
			<small> ${fn:length(carrito.productos)} Elementos </small>
			
			
			<div class="list-group" id="carrito">

				<c:forEach var="producto" items="${carrito.productos}">


					<form action="agregar-carrito" method="post">
						<input type="hidden" name="producto" value="${producto.key}" /> <input
							type="submit" value="+">
					</form>
						${producto.key}
					<form action="vaciar-carrito" method="post">
						<input type="hidden" name="producto" value="${producto.key}" /> <input
							type="submit" value="-">
							<span class="badge">${producto.value} </span>
					</form>

				</c:forEach>
				
				
				<button id="botonAjax">Ajax</button>
				
				<div id="plantilla" style="display:none;">
				<h1>Elemento</h1>
				oculto			
				</div>
				
				
				
			</div>

		</div>