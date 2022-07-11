<%@page import="java.util.ArrayList"%>
<%@page import="VO.Cliente"%>
<%@page import="DAO.ClienteDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
                       
<head>
	<meta charset="ISO-8859-1">
	<title>Lista Cliente</title>   
	<link rel="stylesheet" href="css/bootstrap.min.css">	
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/jquery.mask.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/validator.js"></script>	
	                         
</head>
<body class="ml-3">

<h1 class="mt-1">Listagem Clientes</h1>
		 <table class="table">
		  	<tr>
			    <th scope="col">Codigo</th>
			    <th scope="col">Nome</th>
			    <th scope="col">Email</th>
			    <th scope="col">Telefone</th>
			    <th scope="col">Endereço</th>
			    <th scope="col">Bairro</th>
   			    <th scope="col">Cidade</th>
			    <th scope="col">CEP</th>
			    <th scope="col">CPF</th>
			    <th scope="col">Ativo</th>
		  	</tr>
		  	
		  	<c:forEach var="item" items="${lista}" varStatus="contador" >
		  		<tr>
				    <td><c:out value = "${item.codigo}"/></td>
				    <td><c:out value = "${item.nome}"/></td>
				    <td><c:out value = "${item.email}"/></td>
				    <td><c:out value = "${item.telefone}"/></td>
				    <td><c:out value = "${item.endereco}"/></td>
				    <td><c:out value = "${item.bairro}"/></td>
   				    <td><c:out value = "${item.cidade}"/></td>
				    <td><c:out value = "${item.CEP}"/></td>
				    <td><c:out value = "${item.CPF}"/></td>
				    <td><c:out value = "${item.ativo}"/></td>
				    
			<td>		    
		    <a Href="ApagarCliente?id=<c:out value = "${item.codigo}"/>">Apagar</a>  
		    <a Href="EditarCliente?id=<c:out value = "${item.codigo}"/>">Editar</a>   
		    </td>   				  
				</tr> 	
		  	</c:forEach>
		</table>
</body>
</html>