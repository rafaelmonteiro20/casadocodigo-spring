<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="custom" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<custom:pageTemplate>
	<article id="produto_${produto.id}">
		<header class="cabecalhoProdutoLivro container">
			<div class="cabecalhoProdutoLivro-tituloEAutor">
				<h1 class="cabecalhoProdutoLivro-titulo">
					<span class="cabecalhoProdutoLivro-titulo-principal" role="presentation">${produto.titulo}</span> 
					<span class="cabecalhoProdutoLivro-titulo-sub" role="presentation">${produto.subtitulo}</span>
				</h1>
				<span class="cabecalhoProdutoLivro-nomeAutor">Rodrigo Turini</span>
			</div>

			<div class="imagemLivroNinja " role="img">
				<img class="imagemLivroNinja-principal" class="vitrineDestacao-itemPrincipal-imagem"
					src="//cdn.shopify.com/s/files/1/0155/7645/products/Amazon-Java-9_large.png?v=1506020938"
					alt="Livro de Java 9" title="Livro de Java 9">
				<div class="imagemLivroNinja-tablet" style="" role="presentation">
					<svg width="181px" viewBox="0 0 181 242"
						style="width: 100%; height: 1px; padding-bottom: 133.7%; padding-bottom: calc(100% * 242/ 181 - 1px); overflow: visible;"
						preserveAspectRatio="xMidYMin slice" role="presentation">
			<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
				<path
							d="M69.1643321,12.5046687 L111.92731,12.5046687 L111.92731,26.1669056 L69.1643321,26.1669056 L69.1643321,12.5046687 Z"
							id="Fill-63" fill="#B9BBB8"></path>
				<path
							d="M174.00728,3.05307652 L6.83436313,3.05307652 C3.25784434,3.05307652 0.332198029,5.97166188 0.332198029,9.53882176 L0.332198029,234.576731 C0.332198029,238.144618 3.25784434,241.063203 6.83436313,241.063203 L174.00728,241.063203 C177.583799,241.063203 180.509445,238.144618 180.509445,234.576731 L180.509445,9.53882176 C180.509445,5.97166188 177.583799,3.05307652 174.00728,3.05307652 L174.00728,3.05307652 Z M85.8370175,19.5175625 L103.403286,19.5175625 C104.367569,19.5175625 105.159111,20.3064676 105.159111,21.2684229 C105.159111,22.2420118 104.367569,23.0200104 103.403286,23.0200104 L85.8370175,23.0200104 C84.8610732,23.0200104 84.0811924,22.2420118 84.0811924,21.2684229 C84.0811924,20.3064676 84.8610732,19.5175625 85.8370175,19.5175625 L85.8370175,19.5175625 Z M77.0484168,19.5175625 C78.0236323,19.5175625 78.8035131,20.3064676 78.8035131,21.2684229 C78.8035131,22.2420118 78.0236323,23.0200104 77.0484168,23.0200104 C76.0834054,23.0200104 75.2925917,22.2420118 75.2925917,21.2684229 C75.2925917,20.3064676 76.0834054,19.5175625 77.0484168,19.5175625 L77.0484168,19.5175625 Z M17.6302458,29.3028943 L163.201193,29.3028943 L163.201193,213.992488 L17.6302458,213.992488 L17.6302458,29.3028943 Z"
							id="Fill-64" fill="#dfdbd6"></path>
				<path
							d="M68.8676858,10.0463386 L111.630664,10.0463386 L111.630664,23.7085755 L68.8676858,23.7085755 L68.8676858,10.0463386 Z"
							id="Fill-65" fill="#ece9e6"></path>
				<path
							d="M173.710634,0.594019308 L6.53771688,0.594019308 C2.96119809,0.594019308 0.0355517791,3.51260466 0.0355517791,7.08049164 L0.0355517791,232.117674 C0.0355517791,235.685561 2.96119809,238.604146 6.53771688,238.604146 L173.710634,238.604146 C177.287153,238.604146 180.212799,235.685561 180.212799,232.117674 L180.212799,7.08049164 C180.212799,3.51260466 177.287153,0.594019308 173.710634,0.594019308 L173.710634,0.594019308 Z M85.5403713,13.316114 L103.10664,13.316114 C104.070922,13.316114 104.862465,14.1057462 104.862465,15.0677014 C104.862465,16.0405632 104.070922,16.8185618 103.10664,16.8185618 L85.5403713,16.8185618 C84.5651558,16.8185618 83.7845462,16.0405632 83.7845462,15.0677014 C83.7845462,14.1057462 84.5651558,13.316114 85.5403713,13.316114 L85.5403713,13.316114 Z M76.7517706,13.316114 C77.726986,13.316114 78.5068668,14.1057462 78.5068668,15.0677014 C78.5068668,16.0405632 77.726986,16.8185618 76.7517706,16.8185618 C75.7867592,16.8185618 74.9959455,16.0405632 74.9959455,15.0677014 C74.9959455,14.1057462 75.7867592,13.316114 76.7517706,13.316114 L76.7517706,13.316114 Z M17.3335996,26.8438371 L162.904547,26.8438371 L162.904547,211.533431 L17.3335996,211.533431 L17.3335996,26.8438371 Z"
							id="Fill-99" fill="#fbfaf9"></path>
				<path
							d="M95.823865,225.577396 C95.823865,228.717747 93.2721242,231.263329 90.1241754,231.263329 C86.9762266,231.263329 84.4244857,228.717747 84.4244857,225.577396 C84.4244857,222.437772 86.9762266,219.892189 90.1241754,219.892189 C93.2721242,219.892189 95.823865,222.437772 95.823865,225.577396"
							id="Fill-100" fill="#ece9e6"></path>
				<rect fill="#FFFFFE" x="17" y="27" width="146" height="185"></rect>
				<image
							xlink:href="//cdn.shopify.com/s/files/1/0155/7645/products/Amazon-Java-9_large.png?v=1506020938"
							x="17" y="27" height="185" width="146"
							preserveAspectRatio="xMidYMin slice" />
			</g>
		</svg>
				</div>
				<div class="imagemLivroNinja-cel" style="" role="presentation">
					<svg width="85px" viewBox="0 0 85 170"
						style="width: 100%; height: 1px; padding-bottom: 200%; padding-bottom: calc(100% * 170/ 85 - 1px); overflow: visible;"
						preserveAspectRatio="xMidYMin slice" role="presentation">
			<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
				<path
							d="M80.1653569,2.88154085 L5.01327291,2.88154085 C2.5052637,2.88154085 0.453521213,4.92833153 0.453521213,7.43028773 L0.453521213,164.734331 C0.453521213,167.236287 2.5052637,169.283078 5.01327291,169.283078 L80.1653569,169.283078 C82.6733661,169.283078 84.7258375,167.236287 84.7258375,164.734331 L84.7258375,7.43028773 C84.7258375,4.92833153 82.6733661,2.88154085 80.1653569,2.88154085 L80.1653569,2.88154085 Z M39.3746754,14.4286395 L51.6946055,14.4286395 C52.3709881,14.4286395 52.9263799,14.9819637 52.9263799,15.6567139 C52.9263799,16.3394622 52.3709881,16.8855154 51.6946055,16.8855154 L39.3746754,16.8855154 C38.6902753,16.8855154 38.142901,16.3394622 38.142901,15.6567139 C38.142901,14.9819637 38.6902753,14.4286395 39.3746754,14.4286395 L39.3746754,14.4286395 Z M33.2107016,14.4286395 C33.8943728,14.4286395 34.4417471,14.9819637 34.4417471,15.6567139 C34.4417471,16.3394622 33.8943728,16.8855154 33.2107016,16.8855154 C32.534319,16.8855154 31.9796561,16.3394622 31.9796561,15.6567139 C31.9796561,14.9819637 32.534319,14.4286395 33.2107016,14.4286395 L33.2107016,14.4286395 Z M5.21881159,25.4907615 L79.9532585,25.4907615 L79.9532585,148.197862 L5.21881159,148.197862 L5.21881159,25.4907615 Z"
							fill="#dfdbd6"></path>
				<path
							d="M35.6268744,148.956229 L51.2849859,148.956229 L51.2849859,163.096171 L35.6268744,163.096171 L35.6268744,148.956229 Z"
							fill="#ece9e6"></path>
				<path
							d="M4.90685927,24.0532818 L80.1136078,24.0532818 L80.1136078,146.608418 L4.90685927,146.608418 L4.90685927,24.0532818 Z"
							fill="#000"></path>
				<image
							xlink:href="//cdn.shopify.com/s/files/1/0155/7645/products/Amazon-Java-9_large.png?v=1506020938"
							x="4.90685927" y="24.0532818" height="122.5551362"
							width="75.20674853" preserveAspectRatio="xMidYMin slice" />
				<path
							d="M80.2630243,0.606440311 L5.11021136,0.606440311 C2.60220216,0.606440311 0.550459668,2.65395809 0.550459668,5.15591429 L0.550459668,162.459231 C0.550459668,164.961914 2.60220216,167.008704 5.11021136,167.008704 L80.2630243,167.008704 C82.7703046,167.008704 84.8227759,164.961914 84.8227759,162.459231 L84.8227759,5.15591429 C84.8227759,2.65395809 82.7703046,0.606440311 80.2630243,0.606440311 L80.2630243,0.606440311 Z M53.0233183,13.3823405 C53.0233183,14.0650888 52.4679266,14.6104149 51.791544,14.6104149 L39.4716139,14.6104149 C38.7879426,14.6104149 38.2405684,14.0650888 38.2405684,13.3823405 C38.2405684,12.7075903 38.7879426,12.1542661 39.4716139,12.1542661 L51.791544,12.1542661 C52.4679266,12.1542661 53.0233183,12.7075903 53.0233183,13.3823405 L53.0233183,13.3823405 Z M34.5386855,13.3823405 C34.5386855,14.0650888 33.9920401,14.6104149 33.3076401,14.6104149 C32.6312574,14.6104149 32.0765946,14.0650888 32.0765946,13.3823405 C32.0765946,12.7075903 32.6312574,12.1542661 33.3076401,12.1542661 C33.9920401,12.1542661 34.5386855,12.7075903 34.5386855,13.3823405 L34.5386855,13.3823405 Z M42.6866178,162.07314 C39.8593677,162.07314 37.5641858,159.78277 37.5641858,156.962343 C37.5641858,154.141917 39.8593677,151.860272 42.6866178,151.860272 C45.5138679,151.860272 47.8017613,154.141917 47.8017613,156.962343 C47.8017613,159.78277 45.5138679,162.07314 42.6866178,162.07314 L42.6866178,162.07314 Z M5.31575004,23.216388 L80.050197,23.216388 L80.050197,145.923489 L5.31575004,145.923489 L5.31575004,23.216388 Z"
							fill="#fbfaf9"></path>
			</g>
		</svg>
				</div>
			</div>
		</header>


		<form action="/casadocodigo/carrinho/adicionar" method="POST" class="adicionarAoCarrinho">
			<input type="hidden" name="produtoID" value="${produto.id}" />
			<security:csrfInput />
			
			<ul class="adicionarAoCarrinho-listaOfertas">
				<c:forEach var="preco" items="${produto.precos}">
					<li class="adicionarAoCarrinho-oferta">
						<label class="adicionarAoCarrinho-infosDaOferta"> 
							<span class="adicionarAoCarrinho-tipoDaOferta" role="presentation">
								<span class="adicionarAoCarrinho-tipoDaOferta-nome">${preco.tipoLivro}</span> 
								<small class="adicionarAoCarrinho-tipoDaOferta-detalhe">
									(.pdf, .epub e .mobi) 
								</small>
							</span>
							<p class="adicionarAoCarrinho-preco">
								<small class="adicionarAoCarrinho-preco-promocao"> 
									<del class="adicionarAoCarrinho-preco-promocao-valor">R$ 39,90</del> por
								</small> 
								<span class="adicionarAoCarrinho-preco-valor">
									R$ ${preco.valor} 
								</span>
							</p>
						</label>

						<button class="adicionarAoCarrinho-botaoComprar" type="submit" title="Compre agora"
							name="tipoLivro" value="${preco.tipoLivro}">
							Comprar
						</button>
					</li>
				</c:forEach>
			</ul>
		</form>
		
		<section class="conteudoDoLivro infoSection">
			<h2 class="infoSection-titulo">Conteúdo</h2>
			<p class="infoSection-texto">${produto.descricao}</p>
		</section>

		<section class="autoresDoLivro infoSection">
			<h2 class="infoSection-titulo">Autor</h2>
			<div class="autoresDoLivro-autor">
				<img class="autoresDoLivro-autor-foto" title="Foto de Rodrigo Turini"
					src="//cdn.shopify.com/s/files/1/0155/7645/files/rodrigo-turini.png?12931136276439619480?v=2018-02-05">
				
				<h3 class="autoresDoLivro-autor-nome">Rodrigo Turini</h3>
				<p class="infoSection-texto autoresDoLivro-autor-descricao">
					Rodrigo Turini é Bacharel em Ciência da
					Computação e líder técnico na Alura, a plataforma de cursos online
					do Grupo Caelum. Desenvolve em diferentes linguagens, mas tem um
					envolvimento muito forte com o Java, sendo membro ativo da JCP e de
					expert groups do JavaEE. Turini participa ativamente da comunidade
					em blogs, fóruns, listas de discussões e também em eventos
					nacionais e internacionais. É um dos líderes de desenvolvimento do
					VRaptor, e contribui para diversos outros projetos e manifestos
					open source. Gosta de estudar continuamente as melhores práticas da
					orientação a objetos, programação funcional e reativa.</p>
			</div>
		</section>

		<section class="infosAdicionaisDoLivro infoSection">
			<h2 class="infoSection-titulo">Dados do produto</h2>
			<dl class="infosAdicionaisDoLivro-info">
				<dt class="infosAdicionaisDoLivro-info-titulo">Número de páginas:</dt>
				<dd class="infosAdicionaisDoLivro-info-valor">${produto.paginas}</dd>
				<dt class="infosAdicionaisDoLivro-info-titulo">Data de lançamento:</dt>
				<dd class="infosAdicionaisDoLivro-info-valor">
					<fmt:formatDate pattern="dd/MM/yyyy" value="${produto.dataLancamento}"/>
				</dd>
			</dl>
		</section>
	</article>
</custom:pageTemplate>
