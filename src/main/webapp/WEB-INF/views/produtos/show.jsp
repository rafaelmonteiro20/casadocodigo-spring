<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Show</title>
	</head>
	
	<body>
		<article id="${produto.titulo}" itemscope itemtype="http://schema.org/Book">
			<header id="product-highlight" class="clearfix">
				<div id="product-overview" class="container">
					<img itemprop="image" width="280px" height="395px"
						src=''
						class="product-featured-image" alt="${produto.titulo}">
					<h1 class="product-title" itemprop="name">${produto.titulo}</h1>
					<p class="product-author">
						<span class="product-author-link"> ${produto.titulo} </span>
					</p>
	
					<p itemprop="description" class="book-description">
					${produto.descricao}
					 Veja o <a
							href="${product.summaryPath}"
							target="_blank">sum&#225;rio</a> completo do livro!
					</p>
				</div>
			</header>
	
	
			<section class="buy-options clearfix">
				<form:form servletRelativeAction="/shopping" cssClass="container">
					<input type="hidden" value="${produto.id}" name="productId"/>
					<ul id="variants" class="clearfix">
						<c:forEach items="${produto.precos}" var="preco">
							<li class="buy-option">
								
								<input type="radio"
								name="tipoLivro" class="variant-radio" id="${produto.id}-${preco.tipoLivro}"
								value="${preco.tipoLivro}" ${preco.tipoLivro.name() == 'COMBO' ? 'checked' : ''}>
								 
								<label  class="variant-label" for="${produto.id}-${preco.tipoLivro}"> 
									${preco.tipoLivro}								
								</label> 
								<p class="variant-price">${preco.valor}</p>
							</li>
						</c:forEach>
					</ul>
	
					<input type="submit" class="submit-image icon-basket-alt"
						alt="Compre agora"
						title="Compre agora '${produto.titulo}'!" value="comprar"/>
	
				</form:form>
	
			</section>
	
			<div class="container">
	
				<section class="author product-detail" itemprop="author" itemscope
					itemtype="http://schema.org/Person">
					<h2 class="section-title" itemprop="name">${produto.titulo}</h2>
					<span itemprop="description">
	
						<p class="book-description">${produto.descricao}</p>
	
					</span>
				</section>
	
				<section class="data product-detail">
					<h2 class="section-title">Dados do livro:</h2>
					<p>
						Número de paginas: <span itemprop="numberOfPages">${produto.paginas}</span>
					</p>
	
	
					<p></p>
					<p>
						Encontrou um erro? <a href='/submissao-errata' target='_blank'>Submeta
							uma errata</a>
					</p>
				</section>
			</div>
		</article>
	</body>
</html>