<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eliminar producto</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/tienda/productos/remove" method="post">

		<input type="text" placeholder="id" name="id" /> 
		<br />
		<button>Eliminar</button>

	</form>
</body>
</html>