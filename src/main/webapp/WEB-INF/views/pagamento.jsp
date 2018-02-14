<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

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
    <script src="//www.paypalobjects.com/api/checkout.min.js" async="async"></script>
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
			<div class="step" data-step="contact_information">
  				<div class="step__sections">
					<div class="section section--contact-information">
  						<div class="section__header">
    						<div class="layout-flex layout-flex--tight-vertical layout-flex--loose-horizontal layout-flex--wrap">
      							<h2 class="section__title layout-flex__item layout-flex__item--stretch">Informações de contato</h2>
    						</div>
  						</div>
  						<div class="section__content" data-section="customer-information" data-shopify-pay-validate-on-load="false">
        					<div class="fieldset">
          						<div class="field field--required">
            						<label class="field__label" for="checkout_email">E-mail</label>
            						<div class="field__input-wrapper">
              							<input placeholder="E-mail" spellcheck="false" autocomplete="shipping email" data-autofocus="true" 
              								data-backup="customer_email" class="field__input" aria-required="true" size="30" 
              								type="email" name="checkout[email]" id="checkout_email" />
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
     	 					<div class="fieldset" data-address-fields>
								<div class="field--half field field--optional" data-address-field="first_name">
  									<label class="field__label" for="checkout_shipping_address_first_name">Nome</label>
  									<div class="field__input-wrapper">
    									<input placeholder="Nome" autocomplete="shipping given-name" data-backup="first_name" 
    										class="field__input" size="30" type="text" name="checkout[shipping_address][first_name]" 
    										id="checkout_shipping_address_first_name" />
  									</div>
								</div>
								
								<div class="field--half field field--required" data-address-field="last_name">
									<label class="field__label" for="checkout_shipping_address_last_name">Sobrenome</label>
									<div class="field__input-wrapper">
									    <input placeholder="Sobrenome" autocomplete="shipping family-name" data-backup="last_name" 
									    	class="field__input" aria-required="true" size="30" type="text" name="checkout[shipping_address][last_name]" 
									    	id="checkout_shipping_address_last_name" />
									 </div>
								</div>
  
								<div data-address-field="company" class="field field--required">
								    <label class="field__label" for="checkout_shipping_address_company">CPF/CNPJ</label>
								    <div class="field__input-wrapper">
								      <input placeholder="CPF/CNPJ" autocomplete="shipping organization" data-backup="company" 
								      	class="field__input" aria-required="true" size="30" type="text" name="checkout[shipping_address][company]" 
								      	id="checkout_shipping_address_company" />
								    </div>
								</div>
								
								<div class="field field--required" data-address-field="address1" data-google-places="true">
									<label class="field__label" for="checkout_shipping_address_address1">Endereço (com número)</label>
									<div class="field__input-wrapper">
										<input placeholder="Endereço (com número)" autocomplete="shipping address-line1" autocorrect="off" 
											data-backup="address1" data-google-autocomplete="true" data-google-autocomplete-title="Sugestões" 
											class="field__input" aria-required="true" size="30" type="text" name="checkout[shipping_address][address1]" 
											id="checkout_shipping_address_address1" />
									</div>
								</div>

								<div data-address-field="city" data-google-places="true" class="field field--required">
									<label class="field__label" for="checkout_shipping_address_city">Cidade</label>
									<div class="field__input-wrapper">
										<input placeholder="Cidade" autocomplete="shipping address-level2" autocorrect="off" data-backup="city" 
											class="field__input" aria-required="true" size="30" type="text" name="checkout[shipping_address][city]" 
											id="checkout_shipping_address_city" />
									</div>
								</div>
								
								<div class="field--three-eights field field--required" data-address-field="province" data-google-places="true">
									<label class="field__label" for="checkout_shipping_address_province">Estado</label>
								  	<div class="field__input-wrapper field__input-wrapper--select">
								    	<input placeholder="Estado" autocomplete="shipping address-level1" data-backup="province" 
								    		class="field__input" aria-required="true" type="text" name="checkout[shipping_address][province]" 
								    		id="checkout_shipping_address_province" />
								  	</div>
								</div>
								
								<div class="field--quarter field field--required" data-address-field="zip" data-google-places="true">
									<label class="field__label" for="checkout_shipping_address_zip"> CEP</label>
								  	<div class="field__input-wrapper">
								    	<input placeholder="22290175" autocomplete="shipping postal-code" data-backup="zip" data-google-autocomplete="true" 
								    		data-google-autocomplete-title="SugestÃµes" class="field__input field__input--zip" aria-required="true" 
								    		size="30" type="text" name="checkout[shipping_address][zip]" id="checkout_shipping_address_zip" />
								  	</div>
								</div>
								
								<div data-address-field="phone" class="field field--hidden">
								    <label class="field__label" for="checkout_shipping_address_phone">Telefone</label>
								    <div class="field__input-wrapper">
								    	<input placeholder="Telefone" autocomplete="shipping tel" data-backup="phone" data-phone-formatter="true" 
								    		data-phone-formatter-country-select="[name=&#39;checkout[shipping_address][country]&#39;]" 
								    		class="field__input field__input--numeric" size="30" type="tel" name="checkout[shipping_address][phone]" 
								    		id="checkout_shipping_address_phone" />
								    </div>
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
			</div>
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
