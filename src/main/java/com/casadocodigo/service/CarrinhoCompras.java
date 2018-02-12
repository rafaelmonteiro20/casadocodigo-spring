package com.casadocodigo.service;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

import com.casadocodigo.model.CarrinhoItem;
import com.casadocodigo.model.Produto;
import com.casadocodigo.model.TipoLivro;

@Component
@Scope(value = WebApplicationContext.SCOPE_SESSION)
public class CarrinhoCompras {

	private Map<CarrinhoItem, Integer> itens = new LinkedHashMap<>();
	
	public void adicionar(CarrinhoItem item) {
		itens.put(item, getQuantidade(item) + 1);
	}
	
	public Collection<CarrinhoItem> getItens() {
		return itens.keySet();
	}

	public int getQuantidade(CarrinhoItem item) {
		return itens.getOrDefault(item, 0);
	}

	public int getQuantidade() {
		return itens.values().stream().reduce(0, (proximo, acumulador) -> proximo + acumulador);
	}
	
	public BigDecimal getTotal(CarrinhoItem item) {
		return item.getTotal(getQuantidade(item));
	}
	
	public BigDecimal getTotal() {
		BigDecimal total = BigDecimal.ZERO;
		
		for(CarrinhoItem item :  itens.keySet()) {
			total = total.add(item.getTotal(getQuantidade(item)));
		}
		
		return total;
	}

	public void remover(Long produtoID, TipoLivro tipoLivro) {
		itens.remove(new CarrinhoItem(new Produto(produtoID), tipoLivro));
	}
	
}
