package com.casadocodigo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

import com.casadocodigo.dao.ProdutoDAO;
import com.casadocodigo.model.Produto;
import com.casadocodigo.model.ShoppingItem;
import com.casadocodigo.model.TipoLivro;
import com.casadocodigo.service.ShoppingCard;

@Controller
@RequestMapping("/shopping")
@Scope(value = WebApplicationContext.SCOPE_REQUEST)
public class ShoppingCartController {

	@Autowired
	private ProdutoDAO produtoDAO;
	
	@Autowired
	private ShoppingCard shoppingCard;
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView adicionarProduto(Long produtoId, TipoLivro tipoLivro) {
		ShoppingItem item = criarItem(produtoId, tipoLivro);
		shoppingCard.adicionar(item);
		return new ModelAndView("redirect:/produtos");
	}

	private ShoppingItem criarItem(Long produtoId, TipoLivro tipoLivro) {
		Produto produto = produtoDAO.buscarPorId(produtoId);
		return new ShoppingItem(produto, tipoLivro);
	}
	
}
