<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Actualizar producto</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/tienda/productos/update" method="post">
		
		<input type="text" placeholder="id" name="id" /> 
		<br>
		<input type="text" placeholder="Name" name="name" /> 
		<br />
		<input type="text" placeholder="Precio" name="precio" /> 
		<br /> 
		<input type="text" placeholder="Descripcion" name="decripcion" /> 
		<br /> 
		<input type="file" id="miarchivo" name="Imagen" /> 
		<br /> 
		<button>Actualizar</button>

	</form>
</body>
</html>