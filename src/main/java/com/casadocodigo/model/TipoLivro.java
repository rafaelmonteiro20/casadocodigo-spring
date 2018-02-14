package com.casadocodigo.model;

public enum TipoLivro {

	EBOOK("E-book"), 
	IMPRESSO("Impresso"), 
	COMBO("Combo");
	
	private String descricao;
	
	private TipoLivro(String descricao) {
		this.descricao = descricao;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
}
