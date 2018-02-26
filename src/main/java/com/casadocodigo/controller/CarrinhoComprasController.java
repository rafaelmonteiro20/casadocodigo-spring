package com.casadocodigo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

import com.casadocodigo.dao.ProdutoDAO;
import com.casadocodigo.model.CarrinhoItem;
import com.casadocodigo.model.Produto;
import com.casadocodigo.model.TipoLivro;
import com.casadocodigo.service.CarrinhoCompras;

@Controller
@RequestMapping("/carrinho")
@Scope(value = WebApplicationContext.SCOPE_REQUEST)
public class CarrinhoComprasController {

	@Autowired
	private ProdutoDAO produtoDAO;
	
	@Autowired
	private CarrinhoCompras carrinho;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView itens() {
		return new ModelAndView("carrinho/itens");
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView atualizar(String acao) {
		
		if("pagamento".equals(acao))
			return new ModelAndView("redirect:/pagamento");
		
		return new ModelAndView("redirect:/carrinho");
	}
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.POST)
	public ModelAndView adicionarProduto(Long produtoID, TipoLivro tipoLivro) {
		CarrinhoItem item = criarItem(produtoID, tipoLivro);
		carrinho.adicionar(item);
		return new ModelAndView("redirect:/carrinho");
	}
	
	@RequestMapping(value = "/remover", method = RequestMethod.GET)
	public ModelAndView remover(Long produtoID, TipoLivro tipoLivro) {
		carrinho.remover(new CarrinhoItem(new Produto(produtoID), tipoLivro));
		return new ModelAndView("redirect:/carrinho");
	}

	private CarrinhoItem criarItem(Long produtoId, TipoLivro tipoLivro) {
		Produto produto = produtoDAO.buscarPorId(produtoId);
		return new CarrinhoItem(produto, tipoLivro);
	}
	
}
