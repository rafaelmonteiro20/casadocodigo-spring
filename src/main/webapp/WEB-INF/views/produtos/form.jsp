<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Cadastro de produtos</title>
	</head>
	
	<body>
		<h1>Cadastro de produtos</h1>
		
		<form action="/casadocodigo/produtos" method="post">
			<div>
				<label for="titulo">Titulo</label>
				<input type="text" name="titulo" id="titulo" />
			</div>
			
			<div>
				<label for="descricao">Descricao</label>
				<textarea rows="10" cols="20" name="descricao" id="descricao">
				
				</textarea>
			</div>
			
			<div>
				<label for="paginas">Número de páginas</label>
				<input type="text" name="paginas" id="paginas" />
			</div>
			
			<c:forEach var="tipo" items="${tipos}" varStatus="status">
				<div>
					<label for="price_${tipo}">${tipo}</label>
					<input type="text" name="precos[${status.index}].valor" id="price_${tipo}" />
					<input type="hidden" name="precos[${status.index}].tipoLivro" value="${tipo}" />
				</div>
			</c:forEach>
			
			<div>
				<input type="submit" value="Salvar" />
			</div>
		</form>
	</body>
</html>