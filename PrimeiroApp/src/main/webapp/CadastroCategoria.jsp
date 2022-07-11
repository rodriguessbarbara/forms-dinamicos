<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@page import="VO.Categoria"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Cadastro Categoria</title>
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
<form id="frmprincipal" method="post" action="CadastroCategoria" class="ml-3">
	  
   <div class="form-group row" >
	    <div class="col-sm-12">
	    	<h1 class="mt-1"> Cadastro de Categoria</h1>
		</div>
  </div>  
   
   <div class="form-group row" >
   		 <div class="col-sm-2">
			<span>Código:</span> 
		</div>
		<div class="col-sm-10">
			<input  type="text" onblur="teste()"  maxlength="100" name="codigo" id="codigo" placeholder="Informe o código"
			value="<c:out value = "${vo.codigo}"/>" class="rounded" /> 
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
			<input type="text" maxlength="100" name="descricao" id="descricao"  placeholder="Informe a descrição"
			value="<c:out value = "${vo.descricao}"/>" class="rounded"/>
		</div>
   </div> 
      
   <div class="form-group row" >
   		<div class="col-sm-4"> </div>
   		
   		<div class="col-sm-2">
			<a href="ListaCategoria" class="btn btn-xs btn btn-info btn-sm">Pesquisar</a>
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