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
			
			<div>
				<input type="submit" value="Salvar" />
			</div>
		</form>
	</body>
</html>