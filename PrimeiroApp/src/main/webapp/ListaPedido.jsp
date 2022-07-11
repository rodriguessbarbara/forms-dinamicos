<%@page import="java.util.ArrayList"%>
<%@page import="VO.Pedido"%>
<%@page import="DAO.PedidoDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Lista Pedido</title>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">	
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/jquery.mask.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/validator.js"></script>	
</head>

<body class="ml-3">
	<h1 class="mt-1">Listagem Pedidos</h1>
	<table class="table">
	  	<tr>
		    <th scope="col">Codigo</th>
		    <th scope="col">Cliente</th>
		    <th scope="col">Vendedor</th>
		    <th scope="col">Produto</th>
	  	</tr>
	  	
	  	<c:forEach var="item" items="${lista}" varStatus="contador" >
	  		<tr>
			    <td colspan="1"><c:out value = "${item.codigo}"/></td>
			    <td><c:out value = "${item.cliente}"/></td>
			    <td><c:out value = "${item.vendedor}"/></td>			    
			    <td><c:out value = "${item.produto}"/></td>		
			    
			<td>		    
		    <a Href="ApagarPedido?id=<c:out value = "${item.codigo}"/>">Apagar</a>  
		    <a Href="EditarPedido?id=<c:out value = "${item.codigo}"/>">Editar</a>   
		    </td>   	    		  
			</tr> 	
	  	</c:forEach>
	</table>
</body>

</html>