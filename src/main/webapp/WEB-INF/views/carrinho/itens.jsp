<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom" %>

<custom:pageTemplate>
	<main>
		<section class="infoSection container">
			<h2 class="infoSection-titulo">Seu carrinho</h2>
	
			<form:form servletRelativeAction="/carrinho" cssClass="formularioDoCarrinho">
				<table class="formularioDoCarrinho-tabela">
					<thead class="formularioDoCarrinho-cabecalho">
						<tr>
							<th></th>
							<th class="formularioDoCarrinho-cabecalho-item">Item</th>
							<th class="formularioDoCarrinho-cabecalho-item formularioDoCarrinho-cabecalho-preco">Preço</th>
							<th class="formularioDoCarrinho-cabecalho-item">Qtd</th>
							<th class="formularioDoCarrinho-cabecalho-item">Total</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${carrinhoCompras.itens}">
						<tr>
							<td class="formularioDoCarrinho-item">
								<a href='<c:url value="/produtos/${item.produto.id}" />'>
									<img class="formularioDoCarrinho-item-imagem" src="//cdn.shopify.com/s/files/1/0155/7645/products/plsql-featured_small.png?v=1434740236" />
								</a>
							</td>
							<td class="formularioDoCarrinho-item">
								<h2 class="formularioDoCarrinho-item-titulo">${item.descricao}</h2>
							</td>
							<td class="formularioDoCarrinho-item formularioDoCarrinho-item-preco">${item.preco}</td>
							<td class="formularioDoCarrinho-item">
								<input class="formularioDoCarrinho-item-quantidade" type="number"  min="0"
									   id="alteracoes_${item.produtoID}" name="alteracoes[${item.produtoID}]" value="${carrinhoCompras.getQuantidade(item)}">
							</td>
							<td class="formularioDoCarrinho-item formularioDoCarrinho-item-precoTotal">${carrinhoCompras.getTotal(item)}</td>
							<td class="formularioDoCarrinho-item">
								<c:url value="/carrinho/remover" var="url">
									<c:param name="produtoID" value="${item.produtoID}" />
									<c:param name="tipoLivro" value="${item.tipoLivro}" />
								</c:url>
							
								<a href="${url}">
									<img class="formularioDoCarrinho-item-remover-imagem"  src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/trash.png?6587815016992574778" alt="X" title="Remover">
								</a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
		
					<tfoot class="formularioDoCarrinho-rodape">
						<tr>
							<td class="formularioDoCarrinho-rodape-item formularioDoCarrinho-finalizar" colspan="3">
								<button class="formularioDoCarrinho-finalizar-botao" type="submit" name="acao" value="pagamento">
									Finalizar<span class="formularioDoCarrinho-finalizar-botao-texto" role="presentation"> compra</span>
								</button>
							</td>
							<td class="formularioDoCarrinho-rodape-item">
								<button class="formularioDoCarrinho-atualizar" type="submit" class="update-cart" name="acao" value="atualizar">Atualizar</button>
							</td>
							<td class="formularioDoCarrinho-rodape-item">
								${carrinhoCompras.total}
							</td>
							<td></td>
						</tr>
					</tfoot>
				</table>
			</form:form>
		</section>
	</main>
</custom:pageTemplate>
