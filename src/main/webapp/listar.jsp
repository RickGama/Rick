<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Cliente</title>
</head>
<body>
Lista de clientes:
</br>

<a href="w">url relativa a la ruta actual</a> </br>
<a href="/w">url absoluta al host</a> </br>
<a href="<%=request.getContextPath()%>/w">url absoluta al contexto</a> </br>


</body>
</html>