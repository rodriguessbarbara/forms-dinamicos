<%@page import="java.util.ArrayList"%>
<%@page import="VO.Cargo"%>
<%@page import="DAO.CargoDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Lista Cargo</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">	
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/jquery.mask.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/validator.js"></script>	
</head>

<body class="ml-3">
	<h1 class="mt-1">Listagem Cargos</h1>
	<table class="table">
	<thead>
	  	<tr>
		    <th scope="col">Codigo</th>
		    <th scope="col">Nome</th>
		    <th scope="col">Observação</th>
		    <th scope="col">Ativo</th>
	  	</tr>
	</thead>
	  	
	  	<c:forEach var="item" items="${lista}" varStatus="contador" >
	  		<tr>
	  		<th scope="row"> <c:out value = "${item.codigo}"/> </th>
			    <td colspan="1"><c:out value = "${item.nome}"/></td>
			    <td><c:out value = "${item.observacao}"/></td>			    
			    <td><c:out value = "${item.ativo}"/></td>
			    
   			<td>		    
		    <a Href="ApagarCargo?id=<c:out value = "${item.codigo}"/>">Apagar</a>  
		    <a Href="EditarCargo?id=<c:out value = "${item.codigo}"/>">Editar</a>   
		    </td>   				  
			</tr> 	
	  	</c:forEach>
	</table>
</body>
</html>