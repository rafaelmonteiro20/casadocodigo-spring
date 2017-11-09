package com.casadocodigo.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Embeddable
public class Preco {

	@Column(scale = 2, precision = 10)
	private BigDecimal valor;
	
	@Enumerated(EnumType.STRING)
	@Column(name = "tipo_livro")
	private TipoLivro tipoLivro;

	
	public BigDecimal getValor() {
		return valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}

	public TipoLivro getTipoLivro() {
		return tipoLivro;
	}

	public void setTipoLivro(TipoLivro tipoLivro) {
		this.tipoLivro = tipoLivro;
	}
	
}
