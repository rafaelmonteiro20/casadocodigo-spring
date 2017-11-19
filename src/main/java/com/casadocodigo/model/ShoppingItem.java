package com.casadocodigo.model;

public class ShoppingItem {

	private Produto produto;
	private TipoLivro tipoLivro;

	public ShoppingItem(Produto produto, TipoLivro tipoLivro) {
		this.produto = produto;
		this.tipoLivro = tipoLivro;
	}

	public Produto getProduto() {
		return produto;
	}

	public TipoLivro getTipoLivro() {
		return tipoLivro;
	}

}
