<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="viewport" content="width=device-width" />
	<link rel="icon" href="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/favicon.png?6587815016992574778" type="image/png" />
	<link rel="stylesheet" href="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/style.css?6587815016992574778" />
	
	<title>Livros de Java, SOA, Android, iPhone, Ruby on Rails e muito mais - Casa do Código</title>
	
	<style>
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
		.additional-checkout-button+.additional-checkout-button 
			{margin-left:10px
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
				width:100;
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
		.additional-checkout-button--apple-pay:visited{
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
		.additional-checkout-button--paypal {
			vertical-align:top;
			line-height:0 !important;
			padding:0 !important
		}
		.additional-checkout-button--amazon {
			background-color:#fad676 !important;
			position:relative !important
		}
		.additional-checkout-button--amazon .additional-checkout-button__logo {
			-webkit-transform:translateY(4px) !important;
			transform:translateY(4px) !important
		}
		.additional-checkout-button--amazon .alt-payment-list-amazon-button-image {
			max-height:none !important;
			opacity:0 !important;
			position:absolute !important;
			top:0 !important;
			left:0 !important;
			width:100% !important;
			height:100% !important
		}
		.additional-checkout-button-visually-hidden {
			border:0 !important;
			clip:rect(0, 0, 0, 0) !important;
			clip:rect(0 0 0 0) !important;
			width:1px !important;
			height:1px !important;
			margin:-2px !important;
			overflow:hidden !important;
			padding:0 !important;
			position:absolute !important
		}
	</style>
</head>

<body>
	<%@ include file="/WEB-INF/header.jsp" %>
	
	<main>
		<jsp:doBody />	
	</main>

	<%@ include file="/WEB-INF/footer.jsp" %>
	
	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/discount.js?6587815016992574778"></script>
	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/229/assets/menu.js?6587815016992574778"></script>
</body>
</html>
