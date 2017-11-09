<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Listagem de Produtos</title>
	</head>
	
	<body>
		<h1>Listagem de produtos</h1>
		
		<table>
			<tr>
				<td>Titulo</td>
				<td>Valores</td>
			</tr>
			
			<c:forEach var="produto" items="#{produtos}">
				<tr>
					<td>${produto.titulo}</td>
					<td>
						<c:forEach var="preco" items="${produto.precos}">
							[${preco.valor} - ${preco.tipoLivro}]
						</c:forEach>
					</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>