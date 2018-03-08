<%@ taglib tagdir="/WEB-INF/tags" prefix="custom" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<custom:pageTemplate>
	<main>
		<section class="vitrineDestaquinho container">
			<h2 class="vitrineDestaquinho-titulo">Últimos lançamentos</h2>
			<ul class="vitrineDestaquinho-lista">
				<c:forEach var="produto" items="${ultimosLancamentos}">
					<li class="livroNaVitrine vitrineDestaquinho-produto">
						<a href="${s:mvcUrl('PC#detalhes').arg(0, produto.id).build()}" class="livroNaVitrine-link" title="${produto.titulo}: ${produto.subtitulo}">
							<div class="livroNaVitrine-imagemContainer" role="presentation">
								<img class="livroNaVitrine-imagem " alt="Livro de ${produto.titulo}" title="${produto.titulo}"
									src="//cdn.shopify.com/s/files/1/0155/7645/products/8ROjv5OVfks54j7FvDehRuYHax0-et96hKHyplURGe4_large.jpg?v=1518105341" />
							</div>
							<span class="livroNaVitrine-nome">${produto.titulo}</span>
						</a>
					</li>
				</c:forEach>
			</ul>
		</section>

		<h3 class="homeCall container">Conheça todos os nossos livros</h3>

		<section class="vitrineDaColecao container">
			<ul class="vitrineDaColecao-lista">
				<c:forEach var="produto" items="${produtos}">
					<li class="livroNaVitrine vitrineDaColecao-produto">
						<a href="${s:mvcUrl('PC#detalhes').arg(0, produto.id).build()}" class="livroNaVitrine-link" title="${produto.titulo}: ${produto.subtitulo}">
							<div class="livroNaVitrine-imagemContainer" role="presentation">
								<img class="livroNaVitrine-imagem " src="//cdn.shopify.com/s/files/1/0155/7645/products/8ROjv5OVfks54j7FvDehRuYHax0-et96hKHyplURGe4_large.jpg?v=1518105341" 
									alt="Livro de ${book.title}" title="${book.title}" />
							</div>
							<span class="livroNaVitrine-nome">${book.title}</span>
						</a>
					</li>
				</c:forEach>
			</ul>
		</section>
	</main>
</custom:pageTemplate>