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
	
	<h1> Libros </h1>



	<table>
		<thead>
			<tr>
				<th>idLibro</th>
				<th>titulo</th>
				<th>editorial</th>
				<th>numPaginas</th>
				<th>edicion</th>
				<th>idioma</th>
				<th>fechaPublicacion</th>
				<th>descripcion</th>
				<th>tipoPasta</th>
				<th>ISBN</th>
				<th>numEjemplares</th>
				<th>portada</th>
				<th>presentacion</th>
				<th>precio</th>
				<th>categoria</th>
				<th>autor</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var ="item" items= "${libros}">
				<tr>
					<td>${item.idLibro}</td>	
					<td>${item.titulo}</td>
					<td>${item.editorial}</td>
					<td>${item.numPaginas}</td>
					<td>${item.edicion}</td>
					<td>${item.idioma}</td>	
					<td>${item.fechaPublicacion}</td>	
					<td>${item.descripcion}</td>
					<td>${item.tipodePasta}</td>
					<td>${item.isbn}</td>
					<td>${item.numEjemplares}</td>
					<td>${item.portada}</td>
					<td>${item.presentacion}</td>	
					<td>${item.precio}</td>	
					<td>${item.categoria}</td>
					<td>${item.autor}</td>
					<td>
						<button onClick="window.location.href='/ismac-libreria-web/libros/findOne?opcion=1&idCliente=${item.idLibro}'">Actualizar</button>
						<button onClick="window.location.href='/ismac-libreria-web/libros/findOne?opcion=2&idCliente=${item.idLibro}'">Borrar</button>
					</td>
						
				</tr>
			</c:forEach>
			
		</tbody>
	</table>	
</body>
</html>