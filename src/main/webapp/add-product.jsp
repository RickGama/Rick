<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/tienda/productos/add" method="post">

		<input type="text" placeholder="Nombre" name="name" /> 
		<br />
		<input type="text" placeholder="Precio" name="precio" /> 
		<br /> 
		<input type="text" placeholder="Descripcion" name="descripcion" /> 
		<br /> 
		<input type="file" id="miarchivo" name="Imagen" /> 
		<br /> 
		<button>Agregar</button>

	</form>
</body>
</html>