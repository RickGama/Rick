<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="miEstilo" href="/css/mi-estilo.css">
</head>
<body>

	<jsp:include page="lateral.jsp"></jsp:include>
	<br>

	<h1 style="color: blue;" align="center">Nuevos Productos</h1>


	<br>
	<br>
	<table style="width: 60%">
		<thead>

			<tr>
				<th>ID</th>
				<th>Nombre</th>
				<th>Precio</th>
				<th>Imagen</th>
				<th>Eliminar</th>
				<th>Actualizar</th>
			</tr>

		</thead>
		<tbody>

			<c:forEach var="producto" items="${productos}">
				<tr>
					<td>${producto.id}</td>
					<td>${producto.name}</td>
					<td>${producto.precio}</td>
					<td>${producto.imagen}</td>
					<td>
						<form action="productos/remove" method="post">
							<input type="hidden" name="id"  value="${producto.id}" /> <input
								type="submit" value="-"> <span class="badge"> </span>
						</form>
					</td>
					<td>
						<form action="productos" method="post">
							<input type="hidden" name="id"  value="${producto.id}" /> <input
								type="submit" value="U"> <span class="badge"> </span>
						</form>					
					</td>
		
				</tr>
			</c:forEach>
		</tbody>
	</table>


	<br />
	<a href="<%=request.getContextPath()%>/tienda/productos/add">Agregar
		producto</a>
	<a href="<%=request.getContextPath()%>/tienda/productos/remove">Eliminar
		producto</a>
	<a href="<%=request.getContextPath()%>/tienda/productos/update">Actualizar
		producto</a>
</body>
<jsp:include page="menu.jsp"></jsp:include>

</html>