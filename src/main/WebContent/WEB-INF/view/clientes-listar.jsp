<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%-- <link href="${pageContex.request.contexPath}/resources/css/bootstrap.min.css" rel="stylesheet"> --%>
	     <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
         <link href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" rel="stylesheet">
	
</head>
<body>

<section>

	<div class="container" style="padding-top: 10px">
		<h1> Clientes </h1>
	</div>

	<div class="container" style="text-align: center;">
		<button class="btn btn-primary" onClick="window.location.href='/ismac-libreria-web/clientes/findOne?opcion=1'; return false;">Agregar</button>
	</div>

<div class="container table-responsive" >

	<table id="tabla1"
	 	   name="tabla1"
	 	   data-search="True"
	 	   data-pagination="True"
	 	   data-height=600
	 	   data-toogle="tabla"
	 	   data-toolbar=".toolbar"
	 	   class="table table-striped table-sm"
	>
		<thead>
			<tr>
				<th data-sortable="True">idCliente</th>
				<th data-sortable="True">cedula</th>
				<th data-sortable="True">nombre</th>
				<th data-sortable="True">apellido</th>
				<th data-sortable="True">direccion</th>
				<th data-sortable="True">correo</th>
				<th data-sortable="True">Acciones</th>
			
			</tr>
		</thead>
		<tbody>
			<c:forEach var ="item" items= "${clientes}">
				<tr>
					<td>${item.idCliente}</td>	
					<td>${item.cedula}</td>
					<td>${item.nombre}</td>
					<td>${item.apellido}</td>
					<td>${item.direccion}</td>
					<td>${item.correo}</td>	
					<td>
						<button class="btn btn-success" onClick="window.location.href='/ismac-libreria-web/clientes/findOne?opcion=1&idCliente=${item.idCliente}'">Actualizar</button>
						<button class="btn btn-danger" onClick="window.location.href='/ismac-libreria-web/clientes/findOne?opcion=2&idCliente=${item.idCliente}'">Borrar</button>
					</td>		
				</tr>
			</c:forEach>
			
		</tbody>
	</table>	

</div>

	

</section>


<footer>

</footer>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script type="text/javascript">
	
		var $tabla1 = $('#tabla1')
		$(function(){
			$tabla1.bootstrapTable({ sortReset: true  
				});
		});
	
	</script>

</body>
</html>