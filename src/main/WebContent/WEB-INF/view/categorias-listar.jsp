<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> Categorias </h1>

<button onClick="window.location.href='/ismac-libreria-web/categorias/findOne?opcion=1'; return false;">Agregar</button>
	<table>
		<thead>
			<tr>
				<th>idCategoria</th>
				<th>categoria</th>
				<th>descripcion</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var ="item" items= "${categorias}">
				<tr>
					<td>${item.idCategoria}</td>	
					<td>${item.categoria}</td>
					<td>${item.descripcion}</td>	
					<td>
						<button onClick="window.location.href='/ismac-libreria-web/categorias/findOne?opcion=1&idCategoria=${item.idCategoria}'">Actualizar</button>
						<button onClick="window.location.href='/ismac-libreria-web/categorias/findOne?opcion=2&idCategoria=${item.idCategoria}'">Borrar</button>
					</td>		
				</tr>
			</c:forEach>
			
		</tbody>
	</table>	
	
</body>
</html>