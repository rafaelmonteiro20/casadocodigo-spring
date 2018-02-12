<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width" />
	<link rel="icon" href="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/favicon.png?12931136276439619480" type="image/png" />
	<link rel="stylesheet" href="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/style.css?6587815016992574778" />

	<title>Seu carrinho de compras - Casa do Código</title>

	<style media="all">
		.additional-checkout-button {
			border:0 !important;
			border-radius:5px !important;
			display:inline-block;
			margin:0 0 10px;
			padding:0 24px !important;
			max-width:100%;
			min-width:150px !important;
			line-height:44px !important;
			text-align:center !important
		}
		.additional-checkout-button+.additional-checkout-button {
			margin-left:10px
		}
		.additional-checkout-button:last-child {
			margin-bottom:0
		}
		.additional-checkout-button span {
			font-size:14px !important
		}
		.additional-checkout-button img {
			display:inline-block !important;
			height:1.3em !important;
			margin:0 !important;
			vertical-align:middle !important;
			width:auto !important
		}
		@media (max-width: 500px) {
			.additional-checkout-button {
				display:block;
				margin-left:0 !important;
				padding:0 10px !important;
				width:100%
			}
		}
		.additional-checkout-button--apple-pay {
			background-color:#000 !important;
			color:#fff !important;
			display:none;
			font-family:-apple-system, &#39;Helvetica Neue&#39;, sans-serif !important;
			min-width:150px !important;
			white-space:nowrap !important
		}
		.additional-checkout-button--apple-pay:hover,.additional-checkout-button--apple-pay:active,
		.additional-checkout-button--apple-pay:visited {
			color:#fff !important;
			text-decoration:none !important
		}
		.additional-checkout-button--apple-pay .additional-checkout-button__logo {
			background:-webkit-named-image(apple-pay-logo-white) center center no-repeat !important;
			background-size:auto 100% !important;
			display:inline-block !important;
			vertical-align:middle !important;
			width:3em !important;
			height:1.3em !important
		}
		@media (max-width: 500px) {
			.additional-checkout-button--apple-pay {
				display:none
			}
		}
		.additional-checkout-button--google-pay {
			background-color:#fff;
			background-origin:content-box;
			background-position:center;
			background-repeat:no-repeat;
			background-size:contain;
			border:0;
			border-radius:4px;
			-webkit-box-shadow:0 1px 3px 0 #6d6d6d;
			box-shadow:0 1px 3px 0 #6d6d6d;
			outline:0;
			padding:10px 8px;
			width:240px;
			height:40px;
			min-height:40px
		}
		.additional-checkout-button--google-pay .short {
			width:160px
		}
		.additional-checkout-button--google-pay:focus {
			-webkit-box-shadow:0 1px 3px 0 #6d6d6d, inset 0 0 0 1px #a8abb3;
			box-shadow:0 1px 3px 0 #6d6d6d, inset 0 0 0 1px #a8abb3
		}
		.additional-checkout-button--google-pay:hover:enabled {	
			background-color:#f7f7f7
		}
		.additional-checkout-button--google-pay:active:enabled {
			background-color:#e7e8e8
		}
		.additional-checkout-button--google-pay .no-shadow {
			-webkit-box-shadow:inset 0 0 0 1px #dadce0;
			box-shadow:inset 0 0 0 1px #dadce0
		}
		.additional-checkout-button--google-pay .no-shadow:focus {
			-webkit-box-shadow:inset 0 0 0 1px #a8abb3;
			box-shadow:inset 0 0 0 1px #a8abb3
		}
		.additional-checkout-button--google-pay:disabled::before {
			content:&#39;&#39;;
			width:100%;
			height:100%;
			display:block;
			background-color:rgba(255,255,255,0.5)
		}
		.additional-checkout-button--paypal-express {
			background-color:#ffc439 !important
		}
		.additional-checkout-button--paypal{vertical-align:top;line-height:0 !important;padding:0 !important}.additional-checkout-button--amazon{background-color:#fad676 !important;position:relative !important}.additional-checkout-button--amazon .additional-checkout-button__logo{-webkit-transform:translateY(4px) !important;transform:translateY(4px) !important}.additional-checkout-button--amazon .alt-payment-list-amazon-button-image{max-height:none !important;opacity:0 !important;position:absolute !important;top:0 !important;left:0 !important;width:100% !important;height:100% !important}.additional-checkout-button-visually-hidden{border:0 !important;clip:rect(0, 0, 0, 0) !important;clip:rect(0 0 0 0) !important;width:1px !important;height:1px !important;margin:-2px !important;overflow:hidden !important;padding:0 !important;position:absolute !important}
	</style>
</head>

<body>
	<header role="banner" class="cabecalhoPrincipal container">
		<h1 class="cabecalhoPrincipal-titulo">
			<a tabindex="1" href="/" class="cabecalhoPrincipal-linkTitulo">
			<svg class="logo" role="img" aria-labelledby="altLogo"  x="0px" y="0px" viewBox="0 0 208.769 70" enable-background="new 0 0 208.769 70" xml:space="preserve">
			<title id="altLogo">Casa do Código - Livros e Tecnologia</title>
			<rect id="back" fill="#FFFFFF" width="65" height="70"/>
			<g id="symbol">
				<polygon fill="#F9C45B" points="24.51,22.881 24.51,29.806 24.51,40.193 24.51,47.118 31.435,47.118 47.151,47.118 47.151,40.32 
					31.272,40.32 31.272,29.744 47.151,29.744 47.151,22.881 31.435,22.881 	"/>
				<polygon fill="#F7975F" points="24.51,16.125 17.849,22.881 17.849,47.118 24.51,53.875 47.151,53.875 47.151,47.371 
					47.151,47.118 31.435,47.118 24.51,47.118 24.51,40.193 24.51,29.806 24.51,22.881 31.435,22.881 47.151,22.881 47.151,22.692 
					47.151,16.125 	"/>
			</g>
			<g id="typo">
				<path fill="#FFFFFF" d="M88.608,39.432c-0.498,0.133-1.08,0.2-1.747,0.2c-0.743,0-1.43-0.133-2.06-0.4
					c-0.631-0.268-1.179-0.668-1.648-1.202c-0.467-0.535-0.834-1.203-1.101-2.005c-0.268-0.8-0.402-1.735-0.402-2.804
					c0-1.188,0.141-2.19,0.423-3.006c0.281-0.815,0.657-1.477,1.124-1.981c0.468-0.505,0.998-0.869,1.592-1.092
					c0.593-0.222,1.194-0.334,1.804-0.334c1.32,0,2.338,0.169,3.049,0.512l0.958-1.469c-0.743-0.267-1.395-0.45-1.959-0.545
					c-0.565-0.097-1.291-0.145-2.183-0.145c-0.832,0-1.648,0.147-2.448,0.445c-0.802,0.297-1.525,0.768-2.171,1.413
					c-0.647,0.645-1.166,1.478-1.559,2.493c-0.393,1.018-0.59,2.254-0.59,3.708c0,1.394,0.178,2.601,0.535,3.617
					c0.356,1.016,0.838,1.852,1.447,2.504c0.609,0.655,1.322,1.14,2.137,1.459c0.816,0.318,1.693,0.478,2.628,0.478
					c0.771,0,1.499-0.067,2.183-0.2c0.681-0.133,1.416-0.504,2.204-1.114l-0.958-1.046C89.524,39.129,89.105,39.299,88.608,39.432z"/>
				<path fill="#FFFFFF" d="M157.916,39.019c-0.498,0.133-1.079,0.201-1.747,0.201c-0.744,0-1.43-0.133-2.059-0.4
					c-0.633-0.268-1.18-0.668-1.648-1.203c-0.468-0.534-0.835-1.202-1.102-2.004c-0.267-0.801-0.4-1.736-0.4-2.805
					c0-1.187,0.14-2.19,0.422-3.006c0.281-0.816,0.657-1.477,1.124-1.982c0.467-0.503,0.997-0.869,1.592-1.091
					c0.593-0.223,1.194-0.334,1.804-0.334c1.321,0,2.337,0.17,3.05,0.512l0.957-1.47c-0.743-0.267-1.396-0.448-1.959-0.545
					c-0.564-0.098-1.291-0.145-2.182-0.145c-0.832,0-1.648,0.148-2.45,0.445c-0.802,0.298-1.525,0.768-2.172,1.414
					c-0.644,0.645-1.165,1.477-1.558,2.493c-0.392,1.017-0.589,2.254-0.589,3.706c0,1.395,0.178,2.602,0.535,3.618
					c0.357,1.017,0.838,1.852,1.446,2.505c0.609,0.654,1.321,1.14,2.138,1.458c0.816,0.318,1.692,0.478,2.628,0.478
					c0.771,0,1.5-0.067,2.183-0.201c0.682-0.133,1.417-0.505,2.204-1.113l-0.958-1.046C158.833,38.715,158.414,38.885,157.916,39.019z"
					/>
				<path fill="#FFFFFF" d="M99.92,39.732c-0.2-0.512-0.301-1.043-0.301-1.592c0-0.757,0.023-1.558,0.067-2.405
					c0.046-0.846,0.067-1.714,0.067-2.605c0-0.4-0.041-0.801-0.122-1.202c-0.081-0.4-0.245-0.768-0.49-1.101
					c-0.244-0.334-0.601-0.605-1.068-0.812c-0.468-0.208-1.088-0.312-1.859-0.312c-0.816,0-1.6,0.081-2.349,0.244
					c-0.749,0.164-1.407,0.416-1.97,0.757l0.557,1.337c0.208-0.119,0.448-0.226,0.723-0.322s0.565-0.178,0.869-0.245
					c0.304-0.067,0.601-0.12,0.891-0.155c0.288-0.037,0.56-0.056,0.812-0.056c0.861,0,1.455,0.163,1.781,0.489
					c0.326,0.327,0.49,0.898,0.49,1.714c0,0.357-0.022,0.757-0.067,1.202c-0.208-0.029-0.412-0.044-0.612-0.044c-0.2,0-0.405,0-0.613,0
					c-1.024,0-1.996,0.056-2.916,0.167c-0.921,0.112-1.634,0.515-2.138,1.212c-0.505,0.699-0.757,1.374-0.757,2.027
					c0,0.489,0.084,0.927,0.256,1.313c0.171,0.387,0.405,0.717,0.702,0.991c0.296,0.275,0.65,0.486,1.057,0.634
					c0.409,0.148,0.85,0.223,1.325,0.223c0.475,0,0.95-0.053,1.424-0.156c0.476-0.103,0.853-0.234,1.136-0.389
					c0.281-0.156,0.523-0.335,0.723-0.535c0.2-0.2,0.367-0.404,0.501-0.612h0.111c0.312,1.038,0.698,1.558,1.158,1.558h1.581
					C100.443,40.687,100.12,40.245,99.92,39.732z M97.949,37.873c-0.074,0.193-0.189,0.394-0.345,0.602
					c-0.155,0.208-0.352,0.397-0.59,0.567c-0.238,0.17-0.571,0.312-1.002,0.423c-0.431,0.112-0.853,0.167-1.268,0.167
					c-0.58,0-1.056-0.167-1.426-0.501c-0.371-0.335-0.557-0.761-0.557-1.28c0-0.371,0.145-0.749,0.434-1.136
					c0.29-0.386,0.776-0.605,1.459-0.656c0.683-0.052,1.358-0.078,2.026-0.078c0.208,0,0.419,0.004,0.635,0.011
					c0.214,0.007,0.427,0.019,0.634,0.033V37.873z"/>
				<path fill="#FFFFFF" d="M107.424,35.29c-0.394-0.267-0.824-0.481-1.292-0.646c-0.467-0.163-0.898-0.33-1.291-0.501
					c-0.393-0.171-0.723-0.365-0.99-0.579c-0.267-0.215-0.401-0.517-0.401-0.902c0-0.549,0.153-0.935,0.457-1.159
					c0.304-0.222,0.783-0.334,1.435-0.334c0.549,0,1.066,0.064,1.547,0.19c0.483,0.125,0.895,0.271,1.236,0.434l0.422-1.469
					c-0.4-0.193-0.872-0.361-1.413-0.501c-0.542-0.141-1.214-0.211-2.015-0.211c-1.083,0-1.93,0.249-2.538,0.746
					c-0.609,0.498-0.914,1.279-0.914,2.348c0,0.654,0.133,1.173,0.401,1.559c0.267,0.386,0.596,0.7,0.99,0.947
					c0.392,0.245,0.824,0.445,1.291,0.601c0.468,0.156,0.899,0.319,1.292,0.489c0.393,0.171,0.723,0.383,0.99,0.634
					c0.267,0.253,0.4,0.602,0.4,1.047c0,0.655-0.208,1.105-0.624,1.358c-0.414,0.253-0.943,0.379-1.581,0.379
					c-0.564,0-1.12-0.081-1.67-0.245c-0.549-0.163-0.994-0.341-1.336-0.534l-0.535,1.514c0.402,0.223,0.899,0.416,1.492,0.579
					c0.593,0.164,1.314,0.245,2.16,0.245c0.653,0,1.221-0.085,1.704-0.256c0.482-0.17,0.886-0.404,1.212-0.7
					c0.326-0.297,0.568-0.653,0.723-1.069c0.156-0.415,0.234-0.861,0.234-1.336c0-0.668-0.133-1.207-0.4-1.615
					C108.147,35.895,107.817,35.557,107.424,35.29z"/>
				<path fill="#FFFFFF" d="M118.61,39.732c-0.199-0.512-0.3-1.043-0.3-1.592c0-0.757,0.022-1.558,0.067-2.405
					c0.045-0.846,0.067-1.714,0.067-2.605c0-0.4-0.04-0.801-0.122-1.202c-0.082-0.4-0.245-0.768-0.49-1.101
					c-0.245-0.334-0.601-0.605-1.069-0.812c-0.468-0.207-1.088-0.312-1.859-0.312c-0.816,0-1.6,0.081-2.348,0.244
					c-0.75,0.164-1.407,0.416-1.971,0.757l0.556,1.337c0.209-0.119,0.45-0.226,0.725-0.322c0.273-0.097,0.564-0.178,0.868-0.245
					c0.304-0.067,0.602-0.12,0.891-0.155c0.29-0.037,0.561-0.056,0.813-0.056c0.86,0,1.455,0.163,1.781,0.489
					c0.326,0.327,0.49,0.898,0.49,1.714c0,0.357-0.023,0.757-0.067,1.202c-0.209-0.029-0.412-0.044-0.612-0.044
					c-0.201,0-0.406,0-0.613,0c-1.024,0-1.996,0.056-2.917,0.167c-0.921,0.112-1.633,0.515-2.138,1.212
					c-0.505,0.699-0.757,1.374-0.757,2.027c0,0.489,0.085,0.927,0.256,1.313c0.169,0.387,0.405,0.717,0.7,0.991
					c0.297,0.275,0.65,0.486,1.058,0.634c0.408,0.148,0.849,0.223,1.324,0.223c0.475,0,0.95-0.053,1.426-0.156
					c0.475-0.103,0.854-0.234,1.136-0.389c0.281-0.156,0.523-0.335,0.723-0.535c0.199-0.2,0.367-0.404,0.501-0.612h0.112
					c0.312,1.038,0.698,1.558,1.157,1.558h1.581C119.134,40.687,118.812,40.245,118.61,39.732z M116.295,38.475
					c-0.155,0.208-0.352,0.397-0.589,0.567c-0.237,0.17-0.571,0.312-1.002,0.423c-0.431,0.112-0.854,0.167-1.269,0.167
					c-0.579,0-1.054-0.167-1.424-0.501c-0.372-0.335-0.558-0.761-0.558-1.28c0-0.371,0.145-0.749,0.435-1.136
					c0.29-0.386,0.774-0.605,1.458-0.656c0.682-0.053,1.358-0.078,2.025-0.078c0.209,0,0.419,0.004,0.635,0.011
					c0.214,0.007,0.427,0.019,0.634,0.033v1.849h0.001C116.565,38.067,116.452,38.268,116.295,38.475z"/>
				<path fill="#FFFFFF" d="M133.87,37.184V25.427h-1.781v4.631c-0.371-0.132-0.716-0.23-1.035-0.289
					c-0.32-0.059-0.754-0.09-1.303-0.09c-1.572,0-2.809,0.494-3.707,1.48c-0.899,0.988-1.346,2.432-1.346,4.33
					c0,1.99,0.36,3.452,1.079,4.387c0.721,0.935,1.822,1.403,3.306,1.403c0.757,0,1.416-0.17,1.981-0.512
					c0.564-0.341,0.994-0.771,1.291-1.292h0.09l0.445,1.581h1.202c-0.12-0.592-0.187-1.198-0.2-1.814
					C133.877,38.627,133.87,37.94,133.87,37.184z M132.09,37.34h-0.001V37.34c-0.164,0.801-0.467,1.398-0.912,1.792
					c-0.445,0.393-1.046,0.589-1.803,0.589c-0.521,0-0.962-0.107-1.325-0.322c-0.363-0.216-0.656-0.508-0.879-0.88
					c-0.223-0.369-0.383-0.815-0.478-1.335c-0.097-0.521-0.145-1.084-0.145-1.694c0-1.484,0.289-2.564,0.868-3.239
					c0.58-0.675,1.382-1.012,2.405-1.012c0.565,0,1.017,0.045,1.359,0.133c0.341,0.089,0.647,0.238,0.912,0.445V37.34z"/>
				<path fill="#FFFFFF" d="M143.539,31.206c-0.4-0.512-0.909-0.905-1.524-1.181c-0.616-0.274-1.34-0.412-2.171-0.412
					c-1.572,0-2.779,0.501-3.618,1.503c-0.838,1.002-1.257,2.445-1.257,4.33c0,0.877,0.097,1.673,0.289,2.393
					c0.193,0.72,0.49,1.336,0.892,1.848c0.402,0.513,0.909,0.905,1.524,1.18c0.616,0.274,1.34,0.412,2.17,0.412
					c1.573,0,2.779-0.501,3.617-1.502c0.839-1.002,1.259-2.445,1.259-4.33c0-0.876-0.098-1.674-0.29-2.393
					C144.236,32.333,143.94,31.718,143.539,31.206z M139.843,39.721c-0.549,0-1.016-0.119-1.403-0.356
					c-0.386-0.237-0.698-0.549-0.935-0.936c-0.237-0.385-0.411-0.837-0.523-1.358c-0.112-0.52-0.167-1.06-0.167-1.625
					c0-2.864,1.01-4.29,3.027-4.275c0.549,0,1.017,0.115,1.404,0.345c0.387,0.231,0.698,0.538,0.934,0.923
					c0.238,0.386,0.412,0.838,0.523,1.359c0.111,0.519,0.167,1.068,0.167,1.648C142.871,38.311,141.862,39.737,139.843,39.721z"/>
				<polygon fill="#FFFFFF" points="168.169,25.171 166.01,25.171 164.074,28.355 165.454,28.355 	"/>
				<path fill="#FFFFFF" d="M165.32,29.602c-2.962,0-5.344,2.115-5.344,5.699c0,3.407,2.27,5.543,5.165,5.543
					c2.582,0,5.365-1.736,5.365-5.722C170.507,31.851,168.414,29.602,165.32,29.602z M165.231,39.375c-1.915,0-3.251-1.78-3.251-4.141
					c0-2.026,1.002-4.163,3.296-4.163c2.316,0,3.229,2.294,3.229,4.119C168.504,37.617,167.101,39.375,165.231,39.375z"/>
				<path fill="#FFFFFF" d="M181.261,24.793h-1.938v6.435h-0.044c-0.49-0.846-1.581-1.625-3.25-1.625c-2.605,0-4.854,2.182-4.831,5.766
					c0,3.273,2.026,5.477,4.63,5.477c1.759,0,3.05-0.912,3.629-2.115h0.068l0.089,1.871h1.736c-0.044-0.735-0.089-1.826-0.089-2.783
					V24.793z M179.324,36.082c0,0.311-0.022,0.579-0.089,0.846c-0.357,1.446-1.558,2.338-2.872,2.338c-2.093,0-3.184-1.804-3.184-3.986
					c0-2.36,1.202-4.141,3.229-4.141c1.469,0,2.538,1.024,2.827,2.248c0.067,0.245,0.089,0.579,0.089,0.824V36.082z"/>
				<path fill="#FFFFFF" d="M195.29,31.451h-0.045c-0.489-0.892-1.491-1.848-3.362-1.848c-2.493,0-4.876,2.049-4.876,5.699
					c0,2.983,1.915,5.255,4.587,5.255c1.67,0,2.85-0.802,3.429-1.804h0.044v1.18c0,2.738-1.469,3.784-3.472,3.784
					c-1.336,0-2.45-0.4-3.162-0.868l-0.491,1.514c0.869,0.579,2.294,0.891,3.586,0.891c1.358,0,2.872-0.335,3.941-1.291
					c1.024-0.958,1.536-2.45,1.536-4.942v-6.257c0-1.291,0.022-2.182,0.089-2.939h-1.736L195.29,31.451z M195.045,36.014
					c0,0.335-0.045,0.713-0.155,1.047c-0.402,1.246-1.492,2.003-2.717,2.003c-2.093,0-3.184-1.758-3.184-3.874
					c0-2.493,1.336-4.075,3.206-4.075c1.447,0,2.383,0.936,2.738,2.093c0.09,0.245,0.112,0.535,0.112,0.869V36.014z"/>
				<path fill="#FFFFFF" d="M203.582,29.602c-2.962,0-5.343,2.115-5.343,5.699c0,3.407,2.27,5.543,5.165,5.543
					c2.582,0,5.365-1.736,5.365-5.722C208.769,31.851,206.676,29.602,203.582,29.602z M203.493,39.375c-1.915,0-3.25-1.78-3.25-4.141
					c0-2.026,1.002-4.163,3.295-4.163c2.315,0,3.229,2.294,3.229,4.119C206.766,37.617,205.363,39.375,203.493,39.375z"/>
				<path fill="#FFFFFF" d="M184.186,25.572c-0.734,0-1.224,0.557-1.224,1.224c0,0.668,0.467,1.202,1.179,1.202
					c0.78,0,1.247-0.534,1.247-1.202C185.389,26.107,184.899,25.572,184.186,25.572z"/>
				<rect x="183.206" y="29.824" fill="#FFFFFF" width="1.959" height="10.777"/>
			</g>
		</svg>
		</a>
	</h1>

	<div id="navegacaoCabecalho" class="cabecalhoPrincipal-navegacao">
		<div class="cabecalhoPrincipal-categoriasEBusca" role="presentation">
			<nav role="navigation" aria-label="Categorias de livros" class="colecoesDaCDC">
				<li class="colecoesDaCDC-colecaoItem">
					<a href="/collections/livros-de-programacao" class="colecoesDaCDC-colecaoLink colecoesDaCDC-colecaoLink--comSubColecao">
						Programação
					</a>
					<nav class="colecoesDaCDC-colecaoItem-subColecoes">
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/programacao-logica">Lógica</a>
						</li>
							 
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/programacao-java">Java</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/programacao-net">.NET</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/programacao-php">PHP</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/programacao-games">Games</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/programacao-oo">Orientação a Objetos</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/programacao-funcional">Funcional</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/programacao-outros">Outros</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item colecaoItem-subColecoes-item--todos">
							<a href="/collections/livros-de-programacao">Todos</a>
						</li>
					</nav>
				</li>

				<li class="colecoesDaCDC-colecaoItem">
					<a href="/collections/livros-de-mobile" class="colecoesDaCDC-colecaoLink colecoesDaCDC-colecaoLink--comSubColecao">
						Mobile
					</a>
					<nav class="colecoesDaCDC-colecaoItem-subColecoes">
					
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/mobile-ios">iOS</a>
						</li>
					
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/mobile-android">Android</a>
						</li>
					
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/mobile-multiplataforma">Multiplataforma</a>
						</li>
					
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/mobile-outros">Outros</a>
						</li>
					
						<li class="colecaoItem-subColecoes-item colecaoItem-subColecoes-item--todos">
							<a href="/collections/livros-de-mobile">Todos</a>
						</li>
					</nav>
				</li>

				<li class="colecoesDaCDC-colecaoItem">
					<a href="/collections/livros-de-front-end" class="colecoesDaCDC-colecaoLink colecoesDaCDC-colecaoLink--comSubColecao">
						Front-end
					</a>
					<nav class="colecoesDaCDC-colecaoItem-subColecoes">
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/front-end-html-e-css">HTML e CSS</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/front-end-javascript">JavaScript</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/front-end-outros">Outros</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item colecaoItem-subColecoes-item--todos">
							<a href="/collections/livros-de-front-end">Todos</a>
						</li>
					</nav>
				</li>

				<li class="colecoesDaCDC-colecaoItem">
					<a href="/collections/livros-de-infraestrutura" class="colecoesDaCDC-colecaoLink colecoesDaCDC-colecaoLink--comSubColecao">
						Infraestrutura
					</a>
					<nav class="colecoesDaCDC-colecaoItem-subColecoes">
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/infraestrutura-redes">Redes</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/infraestrutura-dados">Dados</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/infraestrutura-outros">Outros</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item colecaoItem-subColecoes-item--todos">
							<a href="/collections/livros-de-infraestrutura">Todos</a>
						</li>
					</nav>
				</li>

				<li class="colecoesDaCDC-colecaoItem">
					<a href="/collections/livros-de-business" class="colecoesDaCDC-colecaoLink colecoesDaCDC-colecaoLink--comSubColecao">
						Business
					</a>
					<nav class="colecoesDaCDC-colecaoItem-subColecoes">
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/business-startups">Startups</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/business-marketing-digital">Marketing Digital</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/business-gestao">Gestão</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/business-agile">Agile</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item">
							<a href="/collections/business-outros">Outros</a>
						</li>
							
						<li class="colecaoItem-subColecoes-item colecaoItem-subColecoes-item--todos">
							<a href="/collections/livros-de-business">Todos</a>
						</li>
					</nav>
				</li>

				<li class="colecoesDaCDC-colecaoItem">
					<a href="/collections/design-e-ux" class="colecoesDaCDC-colecaoLink ">
						Design & UX
					</a>
					<nav class="colecoesDaCDC-colecaoItem-subColecoes">
						<li class="colecaoItem-subColecoes-item colecaoItem-subColecoes-item--todos">
							<a href="/collections/design-e-ux">Todos</a>
						</li>
					</nav>
				</li>
			</nav>
			
			<form role="search" aria-labelledby="rotuloBuscaPrincipal" action="/pesquisar"
				  method="GET" class="buscaPrincipal">
				<label id="rotuloBuscaPrincipal" class="buscaPrincipal-label" for="campoBuscaPrincipal">
					Busque por autor, título...
				</label>
				<input type="hidden" name="type" value="product">
				<input id="campoBuscaPrincipal" class="buscaPrincipal-campo"
				       placeholder="O que procura?" type="search" name="q"
					   required="required" aria-required>
				<button class="buscaPrincipal-submit" type="submit" title="buscar"></button>
			</form>
		</div>

		<a tabindex="3" href="/cart" title="Ir para sacola de compras" class="sacola cabecalhoPrincipal-itemNavegacao">
			<svg width="60px" height="24px" viewBox="0 0 60 24" role="img" aria-labelledby="sacolaLabel" class="sacola-icone">
				<title id="sacolaLabel">
					Você tem ${carrinhoCompras.quantidade} itens na sacola
				</title>
				<g fill="none" fill-rule="evenodd" stroke="#FBFAF9" stroke-linecap="square" stroke-width="2">
					<path d="m47.550692,23l-18,0l0,-17l18,0l0,17z"/>
						<path d="m34.550692,9l0,-4c0,-2.2 1.8,-4 4,-4s4,1.8 4,4l0,4"/>
				</g>
				<g>
					<circle cy="14.681157" cx="13.148581" r="9" role="presentation" fill="#FFF"/>
					<text text-decoration="none" text-anchor="middle" x="13.148581" y="19" class="sacola-contador"> ${carrinhoCompras.quantidade}</text>
				</g>
			 </svg>
		</a>

		<a tabindex="2" class="cabecalhoPrincipal-itemNavegacao cabecalhoPrincipal-mostraCategoriasEBusca" href="#navegacaoCabecalho">
			<img class="cabecalhoPrincipal-iconeItemNavegacao" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/hamburguer.svg?6587815016992574778"
				 alt="Abrir navegação por categorias e busca">
		</a>

		<a tabindex="-1" class="cabecalhoPrincipal-itemNavegacao cabecalhoPrincipal-escondeCategoriasEBusca" href="#">
			<img class="cabecalhoPrincipal-iconeItemNavegacao" alt="Ir para ao topo da página"
				 src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/hamburguer.svg?6587815016992574778">
		</a>
	</div>
	</header>

	<main>
		<section class="infoSection container">
			<h2 class="infoSection-titulo">Seu carrinho</h2>
	
			<form class="formularioDoCarrinho" action="/carrinho" method="post">
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
							<td class="formularioDoCarrinho-item formularioDoCarrinho-item-preco">R$ </td>
							<td class="formularioDoCarrinho-item">
								<input class="formularioDoCarrinho-item-quantidade" type="number"  min="0"
									   id="updates_3845180929" name="updates[3845180929]" value="${carrinhoCompras.getQuantidade(item)}">
							</td>
							<td class="formularioDoCarrinho-item formularioDoCarrinho-item-precoTotal" title="Preço unitário: R$69,90">R$69,90</td>
							<td class="formularioDoCarrinho-item">
								<a href="/cart/change?id=3845180929&quantity=0">
									<img class="formularioDoCarrinho-item-remover-imagem"  src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/trash.png?6587815016992574778" alt="X" title="Remover">
								</a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
		
					<tfoot class="formularioDoCarrinho-rodape">
						<tr>
							<td class="formularioDoCarrinho-rodape-item formularioDoCarrinho-finalizar" colspan="3">
								<button class="formularioDoCarrinho-finalizar-botao" type="submit" name="checkout">Finalizar<span class="formularioDoCarrinho-finalizar-botao-texto" role="presentation"> compra</span></button>
							</td>
							<td class="formularioDoCarrinho-rodape-item">
								<button class="formularioDoCarrinho-atualizar" type="submit" class="update-cart" name="update">Atualizar</button>
							</td>
							<td class="formularioDoCarrinho-rodape-item">
								R$139,80
							</td>
							<td></td>
						</tr>
					</tfoot>
				</table>
			</form>
		</section>
	</main>
	
	<footer class="caelum-footer" style="margin-top: 50px">
		<div class="grupoCaelum">
			<div class="container">
				<p class="grupoCaelum-title"><a href="http://www.caelum.com.br/grupo">Grupo Caelum</a></p>
				<ul class="grupoCaelum-list">
					<li class="grupoCaelum-column">
						<p class="grupoCaelum-column-title">Educação</p>
						<ul class="grupoCaelum-column-list">
							<li class="column-item">
								<a href="http://www.caelum.com.br/grupo">
									<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/footer-icon-caelum.svg?6587815016992574778">
									<span class="column-item-title">Caelum</span>
								</a>
							</li>
							<li class="column-item">
								<a href="http://www.casadocodigo.com.br">
									<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/footer-icon-cdc.svg?6587815016992574778"><span class="column-item-title">Casa do Código</span>					
								</a>
							</li>
						</ul>
					</li>
					<li class="grupoCaelum-column">
						<p class="grupoCaelum-column-title">Educação Online</p>
						<ul class="grupoCaelum-column-list">
							<li class="column-item">
								<a href="http://www.alura.com.br">
									<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/footer-icon-alura.svg?6587815016992574778#alura"><span class="column-item-title">Alura</span>
								</a>
							</li>
							<li class="column-item">
								<a href="http://www.alurastart.com.br">
									<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/footer-icon-alurastart.svg?6587815016992574778"><span class="column-item-title">Alura Start</span>
								</a>
							</li>
							<li class="column-item">
								<a href="http://www.musicdot.com.br">
									<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/footer-icon-musicdot.svg?6587815016992574778"><span class="column-item-title">MusicDot</span>
								</a>
							</li>
							<li class="column-item">
								<a href="http://www.aluralingua.com.br">
									<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/footer-icon-aluralingua.svg?6587815016992574778"><span class="column-item-title">Alura LÃ­ngua</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="grupoCaelum-column">
						<p class="grupoCaelum-column-title">Comunidade</p>
						<ul class="grupoCaelum-column-list">
							<li class="column-item">
								<a href="http://hipsters.tech">
									<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/footer-icon-hipsters-pontotech.svg?6587815016992574778"><span class="column-item-title">Hipsters ponto Tech</span>
								</a>
							</li>
							<li class="column-item">
								<a href="http://hipsters.jobs">
									<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/footer-icon-hipsters-jobs.svg?6587815016992574778"><span class="column-item-title">Hipsters ponto Jobs</span>
								</a>
							</li>				
							<li class="column-item">
								<a href="http://www.guj.com.br">
									<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/footer-icon-guj.svg?6587815016992574778"><span class="column-item-title">GUJ</span>
								</a>
							</li>
						</ul>
					</li>
					<li class="grupoCaelum-column">
						<p class="grupoCaelum-column-title">Parceiros</p>
						<ul class="grupoCaelum-column-list">
							<li class="column-item">
								<a href="http://www.imasters.com.br">
									<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/footer-icon-imasters.svg?6587815016992574778"><span class="column-item-title">iMasters</span>
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</footer>

	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/discount.js?6587815016992574778"></script>
	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/menu.js?6587815016992574778"></script>
</body>
</html>
