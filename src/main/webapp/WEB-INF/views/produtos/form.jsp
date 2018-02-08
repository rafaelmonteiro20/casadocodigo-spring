<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Cadastro de produtos</title>
	</head>

	<body>
		<h1>Cadastro de produtos</h1>
	
		<spring:hasBindErrors name="produto">
			<ul>
				<c:forEach var="error" items="${errors.allErrors}">
					<li>
						<spring:message code="${error.code}" text="${error.defaultMessage}" />
					</li>
				</c:forEach>
			</ul>
		</spring:hasBindErrors>
	
		<form:form action="/casadocodigo/produtos" method="post" 
			commandName="produto" enctype="multipart/form-data">
			
			<div>
				<label for="titulo">Titulo</label>
				<form:input path="titulo" />
			</div>
	
			<div>
				<label for="subtitulo">Subtítulo</label>
				<form:input path="subtitulo" />
			</div>
			
			<div>
				<label for="descricao">Descricao</label>
				<form:textarea path="descricao" rows="10" cols="20" />
			</div>
	
			<div>
				<label for="paginas">Número de páginas</label>
				<form:input path="paginas" />
			</div>
	
			<div>
				<label for="dataLancamento">Data de lançamento</label>
				<form:input path="dataLancamento" type="date" />
			</div>
			
			<div>
				<label for="capa">Capa do livro</label>
				<input type="file" name="capa" id="capa" />
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
		</form:form>
	</body>
</html>