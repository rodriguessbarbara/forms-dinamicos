<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@page import="VO.Cliente"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Cadastro Cliente</title>
	<link rel="stylesheet" href="css/main.css" type="text/css">	
	<link rel="stylesheet" href="css/bootstrap.min.css">	
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/jquery.mask.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/validator.js"></script>	
	
</head>

<body>

<div class="divPrincipal" >
<form id="frmprincipal" method="post" action="CadastroCliente" class="ml-3">
	  
   <div class="form-group row" >
	    <div class="col-sm-12">
	    	<h1 class="mt-1"> Cadastro de Cliente</h1>
		</div>
  </div>  
   
   <div class="form-group row" >
   		 <div class="col-sm-2">
			<span>Código:</span> 
		</div>
		<div class="col-sm-10">
			<input  type="text" onblur="teste()"  maxlength="100" name="codigo" id="codigo" placeholder="Informe seu código"
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
			<span>Email:</span> 
		</div>
		<div class="col-sm-10">
			<input  type="email" onblur="teste()"  maxlength="40" name="email" id="email" placeholder="Informe seu email"
			value="<c:out value = "${vo.email}"/>"class="rounded"/> 
		</div>
   </div> 
   
   <div class="form-group row" >
   		 <div class="col-sm-2">
			<span>Telefone:</span> 
		</div>
		<div class="col-sm-10">
			<input  type="tel" onblur="teste()"  maxlength="40" name="telefone" id="telefone" placeholder="Informe seu telefone"
			value="<c:out value = "${vo.telefone}"/>" class="rounded"/> 
		</div>
   </div> 
   
   <div class="form-group row" >
   		 <div class="col-sm-2">
			<span>Endereço:</span> 
		</div>
		<div class="col-sm-10">
			<input  type="text" onblur="teste()"  maxlength="40" name="endereco" id="endereco" placeholder="Informe seu endereço"
			value="<c:out value = "${vo.telefone}"/>" class="rounded"/> 
		</div>
   </div> 
   
	<div class="form-group row" >
   		 <div class="col-sm-2">
			<span>Bairro:</span> 
		</div>
		<div class="col-sm-10">
			<input  type="text" onblur="teste()"  maxlength="40" name="bairro" id="bairro" placeholder="Informe seu bairro"
			value="<c:out value = "${vo.bairro}"/>" class="rounded"/> 
		</div>
	</div> 
	
	<div class="form-group row" >
   		 <div class="col-sm-2">
			<span>Cidade:</span> 
		</div>
		<div class="col-sm-10">
			<input  type="text" onblur="teste()"  maxlength="40" name="cidade" id="cidade" placeholder="Informe sua cidade"
			value="<c:out value = "${vo.cidade}"/>" class="rounded"/> 
		</div>
	</div> 
	
	<div class="form-group row" >
   		 <div class="col-sm-2">
			<span>CEP:</span> 
		</div>
		<div class="col-sm-10">
			<input  type="number" onblur="teste()"  maxlength="9" name="CEP" id="CEP" placeholder="XXXXX-XXX"
			value="<c:out value = "${vo.CEP}"/>" class="rounded"/> 
		</div>
	</div> 
   
   	<div class="form-group row" >
   		 <div class="col-sm-2">
			<span>CPF:</span> 
		</div>
		<div class="col-sm-10">
			<input  type="number" onblur="teste()"  maxlength="12" name="CPF" id="CPF" placeholder="XXX-XXX-XXX-XX"
			value="<c:out value = "${vo.CPF}"/>" class="rounded"/> 
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
   		<div class="col-sm-4"> </div>
   		
   		<div class="col-sm-2">
			<a href="ListaCliente" class="btn btn-xs btn btn-info btn-sm">Pesquisar</a>
   	    </div>
   		
   		<div class="col-sm-2">
   		 	<input type="submit" onclick="return validar();" value="Enviar" class="btn btn-xs btn btn-success btn-sm"/>
   		</div>
   		 
   		<div class="col-sm-4"> </div>			 
	</div> 
</form>
</div>	

</body>
</html>