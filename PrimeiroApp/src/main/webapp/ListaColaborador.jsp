<%@page import="java.util.ArrayList"%>
<%@page import="VO.Colaborador"%>
<%@page import="DAO.ColaboradorDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Lista Colaborador</title>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">	
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/jquery.mask.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/validator.js"></script>	
</head>

<body class="ml-3">
	<h1 class="mt-1">Listagem Colaboradores</h1>
	 <table class="table">
	  	<tr>
		    <th scope="col">Codigo</th>
		    <th scope="col">Nome</th>
		    <th scope="col">Cargo</th>
		    <th scope="col">Email</th>
		    <th scope="col">Observação</th>
		    <th scope="col">Ativo</th>
	  	</tr>
	  	
	  	<c:forEach var="item" items="${lista}" varStatus="contador" >
	  		<tr>
			    <td colspan="1"><c:out value = "${item.codigo}"/></td>
			    <td><c:out value = "${item.nome}"/></td>
			    <td><c:out value = "${item.cargo}"/></td>
   			    <td><c:out value = "${item.email}"/></td>
			    <td><c:out value = "${item.observacao}"/></td>			    
			    <td><c:out value = "${item.ativo}"/></td>
			    
			<td>		    
		    <a Href="ApagarColaborador?id=<c:out value = "${item.codigo}"/>">Apagar</a>  
		    <a Href="EditarColaborador?id=<c:out value = "${item.codigo}"/>">Editar</a>   
		    </td>
		       	    				  
			</tr> 	
	  	</c:forEach>
	</table>
</body>
</html>