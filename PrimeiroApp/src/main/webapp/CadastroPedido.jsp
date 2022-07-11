<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@page import="VO.Pedido"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cadastro Pedido</title>
	
	<link rel="stylesheet" href="css/main.css" type="text/css">
	<link rel="stylesheet" href="css/bootstrap.min.css">	
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/jquery.mask.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/validator.js"></script>	
</head>

<body>
<!--

	<form action="CadastroPedido" method="post">
			<h1> Cadastro de Pedido</h1>
			<span>Código: </span>  <input type="number" name="codigo" id="codigo" placeholder="Informe o código do pedido" class="rounded"/>
		<br />
			<span>Cliente: </span> 
			<select name="cliente" id="cliente" class="rounded">
				<option value="1"> Cliente 1 </option>
				<option value="2"> Cliente 2 </option>
				<option value="3"> Cliente 3 </option>
			</select>
		<br />
			<span>Vendedor: </span> 
			<select name="vendedor" id="vendedor" class="rounded">
				<option value="1"> Vendedor 1 </option>
				<option value="2"> Vendedor 2 </option>
				<option value="3"> Vendedor 3 </option>
			</select>
		<br />
			<span>Produto: </span> 
			<select name="produto" id="produto" class="rounded">
				<option value="1"> Produto 1 </option>
				<option value="2"> Produto 2 </option>
				<option value="3"> Produto 3 </option>
			</select>
		<br />

		<a href="ListaPedido">Pesquisar</a>
		<input type="submit" value="Enviar"/>
	</form>
-->	
	
<div class="divPrincipal">
<form id="frmprincipal" method="post" action="CadastroPedido" class="ml-3">
	  
   <div class="form-group row" >
	    <div class="col-sm-12">
	    	<h1 class="mt-1"> Cadastro de Pedido</h1>
		</div>
  </div>  
  
   <div class="form-group row" >
 		<div class="col-sm-2">
			<span>Código: </span> 
		</div>
		<div class="col-sm-10">
			<input  type="number"  maxlength="3" id="codigo" name="codigo" placeholder="Informe o código"
			value="<c:out value = "${vo.codigo}"/>" class="rounded"/>
		</div>
   </div> 
   
   <div class="form-group row" >
   		 <div class="col-sm-2">
			<span>Cliente:</span> 
		</div>
		<div class="col-sm-10">
			<select name="cliente" id="cliente" value="<c:out value = "${vo.cliente}"/>" class="rounded" >
				<option value="1"> Cliente 1 </option>
				<option value="2"> Cliente 2 </option>
				<option value="3"> Cliente 3 </option>
			</select>
		</div>
   </div> 
   
   <div class="form-group row" >
   		 <div class="col-sm-2">
			<span>Vendedor:</span> 
		</div>
		<div class="col-sm-10">
			<select name="vendedor" id="vendedor" value="<c:out value = "${vo.vendedor}"/>" class="rounded">
				<option value="1"> Vendedor 1 </option>
				<option value="2"> Vendedor 2 </option>
				<option value="3"> Vendedor 3 </option>
			</select>
		</div>
   </div>
   
	<div class="form-group row" >
   		 <div class="col-sm-2">
			<span>Produto:</span> 
		</div>
		<div class="col-sm-10">
			<select name="produto" id="produto" value="<c:out value = "${vo.produto}"/>" class="rounded">
				<option value="1"> Produto 1 </option>
				<option value="2"> Produto 2 </option>
				<option value="3"> Produto 3 </option>
			</select>
		</div>
   </div>
    
   
   <div class="form-group row" >
   		<div class="col-sm-4">
   		</div>
   		
   		<div class="col-sm-2">
			<a href="ListaPedido" class="btn btn-xs btn btn-info btn-sm">Pesquisar</a>
   	    </div>
   		
   		<div class="col-sm-2">
   		 	<input type="submit" onclick="return validar();" value="Enviar" class="btn btn-xs btn btn-success btn-sm"  />
   		</div>
   		 
   		<div class="col-sm-4"> </div>			 
  </div> 
</form>
</div>		
	
	
		
</body>
</html>