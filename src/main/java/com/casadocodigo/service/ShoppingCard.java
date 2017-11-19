package com.casadocodigo.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

import com.casadocodigo.model.ShoppingItem;

@Component
@Scope(value = WebApplicationContext.SCOPE_SESSION)
public class ShoppingCard {

	private List<ShoppingItem> itens = new ArrayList<>();
	
	public void adicionar(ShoppingItem item) {
		itens.add(item);
	}

	public List<ShoppingItem> getItens() {
		return Collections.unmodifiableList(itens);
	}
	
	public int getQuantidadeDeItens() {
		return itens.size();
	}
	
}
