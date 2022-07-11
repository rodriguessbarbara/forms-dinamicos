<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@page import="VO.Produto"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cadastro Produto</title>
	<link rel="stylesheet" href="css/main.css" type="text/css">	

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
	<form action="CadastroProduto" method="post">
		<h1> Cadastro de Produto</h1>
		<span>Código: </span> <input type="number" name="codigo" id="codigo" class="rounded"/>
	<br />
		<span>Nome: </span> <input type="text" name="nome" id="nome" class="rounded"/>
	<br />
		<span>Descrição: </span> <input type="text" name="descricao" id="descricao" class="rounded"/>
	<br />
		<span>EAN: </span> <input type="text" name="EAN" id="EAN" class="rounded"/>
	<br />
		<span>Categoria: </span>
		<select id="categoria" name="categoria" class="rounded">
					<option value="1"> Categoria 1 </option>
					<option value="2"> Categoria 2 </option>
					<option value="3"> Categoria 3 </option>
		</select>
	<br />
		<span>Preço: </span> <input type="number" name="preco" id="preco" class="rounded"/>
	<br />
		<span>Ativo: </span> <input type="checkbox" maxlength="20" id="ativo" name="ativo"/>
	<br />
	<a href="ListaProduto">Pesquisar</a>
	<input type="submit" value="Enviar"/>
	</form>
-->


<div class="divPrincipal">
	<form id="frmprincipal" method="post" action="CadastroProduto" class="ml-3">
	  
   <div class="form-group row" >
	    <div class="col-sm-12">
	    	<h1 class="mt-1"> Cadastro de Produto</h1>
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
			<span>Nome:</span> 
		</div>
		<div class="col-sm-10">
			<input  type="text" onblur="teste()"  maxlength="100" name="nome" id="nome" placeholder="Informe seu nome"
			value="<c:out value = "${vo.nome}"/>" class="rounded"/> 
		</div>
   </div> 
   
   <div class="form-group row" >
   		 <div class="col-sm-2">
			<span>Descrição:</span> 
		</div>
		<div class="col-sm-10">
			<input type="text" name="descricao" id="descricao" placeholder="Informe a descrição"
			value="<c:out value = "${vo.descricao}"/>" class="rounded"/>
		</div>
   </div>
   
	<div class="form-group row" >
   		 <div class="col-sm-2">
			<span>EAN:</span> 
		</div>
		<div class="col-sm-10">
			<input type="text" name="EAN" id="EAN" placeholder="Informe seu EAN"
			value="<c:out value = "${vo.EAN}"/>" class="rounded"/>
		</div>
	</div>
   
   <div class="form-group row" >
   		 <div class="col-sm-2">
			<span>Categoria:</span> 
		</div>
		<div class="col-sm-10">
			<select id="categoria" name="categoria" class="rounded" value="<c:out value = "${vo.categoria}"/>">
					<option value="1"> Categoria 1 </option>
					<option value="2"> Categoria 2 </option>
					<option value="3"> Categoria 3 </option>
			</select>
		</div>
   </div>
   
   	<div class="form-group row" >
   		 <div class="col-sm-2">
			<span>Preço:</span> 
		</div>
		<div class="col-sm-10">
			<input type="number" name="preco" id="preco" placeholder="Informe o preço" class="rounded" value="<c:out value = "${vo.preco}"/>" />
		</div>
   </div>     
   
    <div class="form-group row" >
   		<div class="mb-3 form-check">
			<span>Ativo:</span> 
		</div>
		<div class="col-sm-10">
			<input type="checkbox" maxlength="20" id="ativo" name="ativo">
		</div>
   </div> 
   
   <div class="form-group row" >
   		<div class="col-sm-4">
   		</div>
   		
   		<div class="col-sm-2">
			<a href="ListaProduto" class="btn btn-xs btn btn-info btn-sm">Pesquisar</a>
   	    </div>
   		
   		<div class="col-sm-2">
   		 	<input type="submit" onclick="return validar();" value="Enviar" class="btn btn-xs btn btn-success btn-sm"  />
   		</div>
   		 
   		<div class="col-sm-4">
   		</div>			 
  </div> 
</form>
</div>	

	
</body>
</html>