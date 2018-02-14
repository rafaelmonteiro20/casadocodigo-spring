package com.casadocodigo.model;

import java.math.BigDecimal;

public class CarrinhoItem {

	private Produto produto;
	
	private TipoLivro tipoLivro;

	public CarrinhoItem(Produto produto, TipoLivro tipoLivro) {
		this.produto = produto;
		this.tipoLivro = tipoLivro;
	}

	public Produto getProduto() {
		return produto;
	}

	public TipoLivro getTipoLivro() {
		return tipoLivro;
	}
	
	public Long getProdutoID() {
		return produto.getId();
	}
	
	public BigDecimal getPreco() {
		return produto.precoPara(tipoLivro);
	}
	
	public BigDecimal getTotal(int quantidade) {
		return getPreco().multiply(new BigDecimal(quantidade));
	}
	
	public String getDescricao() {
		return produto.getTitulo() + ": " + produto.getSubtitulo() + " - " + tipoLivro;
	}
	
	@Override
	public String toString() {
		return "CarrinhoItem [" + produto.getTitulo() + ", " + tipoLivro + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((produto == null) ? 0 : produto.hashCode());
		result = prime * result + ((tipoLivro == null) ? 0 : tipoLivro.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CarrinhoItem other = (CarrinhoItem) obj;
		if (produto == null) {
			if (other.produto != null)
				return false;
		} else if (!produto.equals(other.produto))
			return false;
		if (tipoLivro != other.tipoLivro)
			return false;
		return true;
	}
	
}
