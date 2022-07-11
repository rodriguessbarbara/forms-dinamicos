<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@page import="VO.Cargo"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Cadastro Cargo</title>
	
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
	<form action="CadastroCargo" method="post">
			<h1> Cadastro de Cargo</h1>
			<span>Código: </span> <input type="number" name="codigo" id="codigo" placeholder="Informe seu código"/>
		<br />
			<span>Nome: </span> <input type="text" name="nome" id="nome" placeholder="Informe seu nome"/>
		<br />
			<span>Observação: </span> <textarea rows="5" name="observacao" id="observacao" placeholder="Informe alguma observação, se houver."> </textarea>
		<br />
			<span>Ativo: </span> <input type="checkbox" maxlength="20" id="ativo" name="ativo"/>
		<br />
		<a href="ListaCargo">Pesquisar</a>
		<input type="submit" value="Enviar"/>
	</form>
-->
	
	
<div class="divPrincipal">
	<form id="frmprincipal" method="post" action="CadastroCargo" class="ml-3">
	  
   <div class="form-group row" >
	    <div class="col-sm-12">
	    	<h1 class="mt-1"> Cadastro de Cargo </h1>
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
			<span>Observação:</span> 
		</div>
		<div class="col-sm-10">
			<textarea rows="5"  maxlength="100" name="observacao" id="observacao"
			placeholder="Informe a Observação, se houver." value="<c:out value = "${vo.observacao}"/>" class="rounded"></textarea>
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
			<a href="ListaCargo" class="btn btn-xs btn btn-info btn-sm">Pesquisar</a>
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