package com.casadocodigo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.casadocodigo.dao.ProdutoDAO;
import com.casadocodigo.model.Produto;

@Controller
@RequestMapping("/produtos")
public class ProdutosController {
	
	@Autowired
	private ProdutoDAO produtoDAO;
	

	@RequestMapping("/form")
	public String form() {
		return "produtos/form";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String salvar(Produto produto) {
		produtoDAO.salvar(produto);
		return "produtos/form";
	}
	
}
