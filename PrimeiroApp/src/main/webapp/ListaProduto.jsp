<%@page import="java.util.ArrayList"%>
<%@page import="VO.Produto"%>
<%@page import="DAO.ProdutoDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>   
                    
<head>
	<meta charset="ISO-8859-1">
	<title>Lista Produto</title>

	<link rel="stylesheet" href="css/bootstrap.min.css">	
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/jquery.mask.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/validator.js"></script>		                            
</head>

<body class="ml-3">
<h1 class="mt-1">Listagem Produtos</h1>
		 <table class="table">
		  	<tr>
			    <th scope="col">Codigo</th>
			    <th scope="col">Nome</th>
			    <th scope="col">Descricao</th>
			    <th scope="col">EAN</th>
			    <th scope="col">Categoria</th>
			    <th scope="col">Preco</th>
			    <th scope="col">Ativo</th>
		  	</tr>
		  	
		  	<c:forEach var="item" items="${lista}" varStatus="contador" >
		  		<tr>
				    <td colspan="1"><c:out value = "${item.codigo}"/></td>
				    <td><c:out value = "${item.nome}"/></td>
				    <td><c:out value = "${item.descricao}"/></td>
				    <td><c:out value = "${item.EAN}"/></td>
				    <td><c:out value = "${item.categoria}"/></td>
				    <td><c:out value = "${item.preco}"/></td>
				    <td><c:out value = "${item.ativo}"/></td>
				    
			<td>		    
		    <a Href="ApagarProduto?id=<c:out value = "${item.codigo}"/>">Apagar</a>  
		    <a Href="EditarProduto?id=<c:out value = "${item.codigo}"/>">Editar</a>   
		    
		    </td>    				  
				</tr> 	
		  	</c:forEach>
		</table>
</body>
</html>