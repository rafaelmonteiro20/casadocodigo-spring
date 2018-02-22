<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="pt-BR" dir="ltr" class="no-js windows chrome desktop page--no-banner page--logo-main page--show page--show card-fields">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, height=device-height, minimum-scale=1.0, user-scalable=0">
    <meta name="referrer" content="origin">

    <title>Casa do Código - Finalizar a compra</title>

 	<link rel="stylesheet" media="all" href="//cdn.shopify.com/app/services/1557645/assets/352452628/checkout_stylesheet/v2-ltr-edge-984ee445a5a9308b52b2ad960e70adc4-5478003938689806681" />

	<script src="//cdn.shopify.com/s/assets/checkout-af29626ac70530f71ce376768e0287a752d0f21d6846ee7c5770503c88d4edb7.js"></script>
</head>

<body>
    <div class="banner" data-header>
    	<div class="wrap">
			<a href="https://www.casadocodigo.com.br" class="logo logo--left">
			    <h1 class="logo__text visually-hidden">Casa do Codigo</h1>
			    <img alt="Casa do Codigo" class="logo__image logo__image--medium" 
			    	src="//cdn.shopify.com/s/files/1/0155/7645/files/checkout_logo_223.png?5478003938689806681" />
			</a>
      	</div>
    </div>

    <button class="order-summary-toggle order-summary-toggle--show" aria-expanded="false" aria-controls="order-summary" data-drawer-toggle="[data-order-summary]">
  		<div class="wrap">
    		<div class="order-summary-toggle__inner">
      			<div class="order-summary-toggle__icon-wrapper">
			        <svg width="20" height="19" xmlns="http://www.w3.org/2000/svg" class="order-summary-toggle__icon">
			          	<path d="M17.178 13.088H5.453c-.454 0-.91-.364-.91-.818L3.727 1.818H0V0h4.544c.455 0 .91.364.91.818l.09 1.272h13.45c.274 0 .547.09.73.364.18.182.27.454.18.727l-1.817 9.18c-.09.455-.455.728-.91.728zM6.27 11.27h10.09l1.454-7.362H5.634l.637 7.362zm.092 7.715c1.004 0 1.818-.813 1.818-1.817s-.814-1.818-1.818-1.818-1.818.814-1.818 1.818.814 1.817 1.818 1.817zm9.18 0c1.004 0 1.817-.813 1.817-1.817s-.814-1.818-1.818-1.818-1.818.814-1.818 1.818.814 1.817 1.818 1.817z" />
			        </svg>
      			</div>
      			<div class="order-summary-toggle__text order-summary-toggle__text--show">
			    	<span>Exibir resumo da compra</span>
			        <svg width="11" height="6" xmlns="http://www.w3.org/2000/svg" class="order-summary-toggle__dropdown" fill="#000"><path d="M.504 1.813l4.358 3.845.496.438.496-.438 4.642-4.096L9.504.438 4.862 4.534h.992L1.496.69.504 1.812z" /></svg>
			    </div>
      			<div class="order-summary-toggle__text order-summary-toggle__text--hide">
        			<span>Ocultar resumo da compra</span>
        			<svg width="11" height="7" xmlns="http://www.w3.org/2000/svg" class="order-summary-toggle__dropdown" fill="#000"><path d="M6.138.876L5.642.438l-.496.438L.504 4.972l.992 1.124L6.138 2l-.496.436 3.862 3.408.992-1.122L6.138.876z" /></svg>
      			</div>
			    <div class="order-summary-toggle__total-recap total-recap" data-order-summary-section="toggle-total-recap">
			    	<span class="total-recap__final-price" data-checkout-payment-due-target="13980">R$ ${carrinhoCompras.total}</span>
			    </div>
    		</div>
  		</div>
	</button>

    <div class="content" data-content>
    	<div class="wrap">
        	<div class="sidebar" role="complementary">
          		<div class="sidebar__header">
					<a href="https://www.casadocodigo.com.br" class="logo logo--left">
					    <h1 class="logo__text visually-hidden">Casa do Codigo</h1>
					    <img alt="Casa do Codigo" class="logo__image logo__image--medium" src="//cdn.shopify.com/s/files/1/0155/7645/files/checkout_logo_223.png?5478003938689806681" />
					</a>
         		</div>
          		<div class="sidebar__content">
                	<div id="order-summary" class="order-summary order-summary--is-collapsed" data-order-summary>
  						<h2 class="visually-hidden">Resumo da compra</h2>
  						<div class="order-summary__sections">
							<div class="order-summary__section order-summary__section--product-list">
							  	<div class="order-summary__section__content">
							    	<table class="product-table">
      									<caption class="visually-hidden">Carrinho de compras</caption>
      									<thead>
									        <tr>
									          <th scope="col"><span class="visually-hidden">Imagem do produto</span></th>
									          <th scope="col"><span class="visually-hidden">Descrição</span></th>
									          <th scope="col"><span class="visually-hidden">Quantidade</span></th>
									          <th scope="col"><span class="visually-hidden">Preço</span></th>
									        </tr>
								      	</thead>
      									<tbody data-order-summary-section="line-items">
      									<c:forEach var="item" items="${carrinhoCompras.itens}">
      										<tr class="product" data-product-id="${item.produtoID}" data-variant-id="3845180929" data-product-type="Livro" data-customer-ready-visible>
          										<td class="product__image">
           								 			<div class="product-thumbnail">
														<div class="product-thumbnail__wrapper">
													    	<img alt="PL/SQL: Domine a linguagem do banco de dados Oracle - Impresso" class="product-thumbnail__image" 
													    		src="//cdn.shopify.com/s/files/1/0155/7645/products/plsql-featured_small.png?5478003938689806681" />
													  	</div>
    													<span class="product-thumbnail__quantity" aria-hidden="true">${carrinhoCompras.getQuantidade(item)}</span>
													</div>
          										</td>
									          	<td class="product__description">
										            <span class="product__description__name order-summary__emphasis">
										            	${item.produto.titulo}: ${item.produto.subtitulo}</span>
										            <span class="product__description__variant order-summary__small-text">${item.tipoLivro.descricao}</span>
									          	</td>
										        <td class="product__quantity visually-hidden">
										            ${carrinhoCompras.getQuantidade(item)}
										        </td>
									            <td class="product__price">
									            	<span class="order-summary__emphasis">R$ ${carrinhoCompras.getTotal(item)}</span>
									          	</td>
        									</tr>
      									</c:forEach>
      									</tbody>
    								</table>

								    <div class="order-summary__scroll-indicator">
								      	Desça para ver mais itens
								      	<svg xmlns="http://www.w3.org/2000/svg" width="10" height="12" viewBox="0 0 10 12">
								      		<path d="M9.817 7.624l-4.375 4.2c-.245.235-.64.235-.884 0l-4.375-4.2c-.244-.234-.244-.614 0-.848.245-.235.64-.235.884 0L4.375 9.95V.6c0-.332.28-.6.625-.6s.625.268.625.6v9.35l3.308-3.174c.122-.117.282-.176.442-.176.16 0 .32.06.442.176.244.234.244.614 0 .848"/>
								      	</svg>
								    </div>
  								</div>
							</div>

      						<div class="order-summary__section order-summary__section--discount" data-reduction-form="update">
  								<div class="fieldset">
    								<div class="field ">
      									<label class="field__label" for="checkout_reduction_code">Desconto</label>
      									<div class="field__input-btn-wrapper">
									        <div class="field__input-wrapper">
									          	<input placeholder="Desconto" class="field__input" data-discount-field="true" autocomplete="off" aria-required="true" size="30" type="text" 
									          		name="checkout[reduction_code]" id="checkout_reduction_code" />
									        </div>

       	 									<button name="button" type="submit" class="field__input-btn btn btn--disabled" aria-busy="false">
								            	<span class="btn__content visually-hidden-on-mobile" aria-hidden="true">Aplicar</span>
              									<span class="visually-hidden">Aplicar código de desconto</span>
									            <i class="btn__content shown-on-mobile icon icon--arrow"></i>
									            <i class="btn__spinner icon icon--button-spinner"></i>
											</button>      
										</div>
    								</div>
 								</div>
							</div>

    						<div class="order-summary__section order-summary__section--total-lines" data-order-summary-section="payment-lines">
        						<table class="total-line-table">
  									<caption class="visually-hidden">Resumo de custos</caption>
									<thead>
										<tr>
									    	<th scope="col"><span class="visually-hidden">Descrição</span></th>
									      	<th scope="col"><span class="visually-hidden">Preço</span></th>
									    </tr>
									</thead>
    								<tbody class="total-line-table__tbody">
								    	<tr class="total-line total-line--subtotal">
								        	<th class="total-line__name" scope="row">Subtotal</th>
								        	<td class="total-line__price">
									          	<span class="order-summary__emphasis" data-checkout-subtotal-price-target="13980">
									            	${carrinhoCompras.total}
									          	</span>
								        	</td>
								      	</tr>

								        <tr class="total-line total-line--shipping">
								        <th class="total-line__name" scope="row">Frete</th>
									        <td class="total-line__price">
									            <span class="order-summary__emphasis" data-checkout-total-shipping-target="0">
									            	
									            </span>
									        </td>
								        </tr>
    								</tbody>
								  	<tfoot class="total-line-table__footer">
									    <tr class="total-line">
										    <th class="total-line__name payment-due-label" scope="row">
										        <span class="payment-due-label__total">Total</span>
										    </th>
										    <td class="total-line__price payment-due">
										        <span class="payment-due__price" data-checkout-payment-due-target="13980">
										        	R$ ${carrinhoCompras.total}
										       	</span>
										    </td>
									    </tr>
								  	</tfoot>
								</table>
    						</div>
						</div>
					</div>
          		</div>
       		 </div>
	
	<div class="main" role="main">
    	<div class="main__header">
			<a href="https://www.casadocodigo.com.br" class="logo logo--left">
			    <h1 class="logo__text visually-hidden">Casa do Codigo</h1>
			    <img alt="Casa do Codigo" class="logo__image logo__image--medium" src="//cdn.shopify.com/s/files/1/0155/7645/files/checkout_logo_223.png?5478003938689806681" />
			</a>
		</div>
	
    	<div class="main__content">
    		<form:form action="/casadocodigo/pagamento/finalizar" method="post" commandName="cliente">
    		
    			<c:set var="errors" value="${requestScope['org.springframework.validation.BindingResult.cliente']}" />
    		
				<div class="section section--contact-information">
  					<div class="section__header">
    					<div class="layout-flex layout-flex--tight-vertical layout-flex--loose-horizontal layout-flex--wrap">
      						<h2 class="section__title layout-flex__item layout-flex__item--stretch">Informações de contato</h2>
    					</div>
  					</div>
  					<div class="section__content" data-section="customer-information">
        				<div class="fieldset">
          					<div class="field field--required ${errors.hasFieldErrors('email') ? 'field--error' : ''}">
            					<label class="field__label" for="email">E-mail</label>
            					<div class="field__input-wrapper">
              						<input id="email" name="email" type="email" value="${cliente.email}"
              							placeholder="E-mail" class="field__input" />
              						<form:errors path="email" cssClass="field__message field__message--error" />
            					</div>
							</div>
						</div> 
					</div> 
				</div> 

				<div class="section section--shipping-address" data-shipping-address data-update-order-summary>
					<div class="section__header">
      					<h2 class="section__title">Endereço para entrega</h2>
    				</div>

   	 				<div class="section__content">
     	 				<div class="fieldset">
							<div class="field field--required ${errors.hasFieldErrors('nome') ? 'field--error' : ''}">
  								<label class="field__label" for="nome">Nome</label>
  								<div class="field__input-wrapper">
    								<input type="text" id="nome" name="nome" value="${cliente.nome}"
    									placeholder="Nome" class="field__input" />
    								<form:errors path="nome" cssClass="field__message field__message--error" />
  								</div>
							</div>
  
							<div class="field--half field field--required ${errors.hasFieldErrors('cpf') ? 'field--error' : ''}">
								<label class="field__label" for="cpf">CPF</label>
								<div class="field__input-wrapper">
									<input type="text" id="cpf" name="cpf" value="${cliente.cpf}"
										placeholder="CPF" class="field__input" />
									<form:errors path="cpf" cssClass="field__message field__message--error" />
								</div>
							</div>
							
							<div class="field--half field field--optional">
								<label class="field__label" for="telefone">Telefone</label>
								<div class="field__input-wrapper">
									<input type="tel" id="telefone" name="telefone" value="${cliente.telefone}"
										placeholder="Telefone" class="field__input field__input--numeric" />
									<form:errors path="telefone" cssClass="field__message field__message--error" />
								</div>
							</div>
							
							<div class="field field--required ${errors.hasFieldErrors('endereco') ? 'field--error' : ''}">
								<label class="field__label" for="endereco">Endereço (com número)</label>
								<div class="field__input-wrapper">
									<input id="endereco" type="text" name="endereco" value="${cliente.endereco}"
										placeholder="Endereço (com número)" class="field__input" />
									<form:errors path="endereco" cssClass="field__message field__message--error" />
								</div>
							</div>

							<div class="field field--required ${errors.hasFieldErrors('cidade') ? 'field--error' : ''}">
								<label class="field__label" for="cidade">Cidade</label>
								<div class="field__input-wrapper">
									<input type="text" id="cidade" name="cidade" value="${cliente.cidade}"
										placeholder="Cidade" class="field__input" />
									<form:errors path="cidade" cssClass="field__message field__message--error" />
								</div>
							</div>
								
							<div class="field--half field field--required ${errors.hasFieldErrors('estado') ? 'field--error' : ''}">
								<label class="field__label" for="estado">Estado</label>
								<div class="field__input-wrapper field__input-wrapper--select">
									<select class="field__input" id="estado" name="estado">
										<option value="">Selecione</option>
										<c:forEach var="estado" items="${estados}">
											<option value="${estado}" ${estado eq cliente.estado ? 'selected="selected"' : ''}">
												${estado.descricao}
											</option>
										</c:forEach>
									</select>
									<form:errors path="estado" cssClass="field__message field__message--error" />
								</div>
							</div>
								
							<div class="field--half field field--required ${errors.hasFieldErrors('cep') ? 'field--error' : ''}">
								<label class="field__label" for="cep">CEP</label>
								<div class="field__input-wrapper">
									<input type="text" id="cep" name="cep" value="${cliente.cep}"
										placeholder="CEP" class="field__input field__input--zip" />
									<form:errors path="cep" cssClass="field__message field__message--error" />
								</div>
							</div>
  						</div>     
  					</div>   
  				</div> 

				<div class="step__footer" data-step-footer>
  					<button name="button" type="submit" class="step__footer__continue-btn btn " aria-busy="false">
  						<span class="btn__content">Finalizar Compra</span>
  						<i class="btn__spinner icon icon--button-spinner"></i>
					</button>
  					
  					<a class="step__footer__previous-link" href="/casadocodigo/carrinho">
  						<svg class="icon-svg icon-svg--color-accent icon-svg--size-10 previous-link__icon rtl-flip" 
  							role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 10">
  							<path d="M8 1L7 0 3 4 2 5l1 1 4 4 1-1-4-4" />
  						</svg>
  						<span class="step__footer__previous-link-content">Voltar ao carrinho</span>
  					</a>
				</div>
			
			</form:form>
         </div>
         <div class="main__footer">
			<div role="contentinfo" aria-label="Rodapé">
			    <p class="copyright-text">
			      Todos os direitos reservados Casa do Código
			    </p>
			</div>
         </div>
	</div>
</div>
</div>
    
  </body>
</html>
