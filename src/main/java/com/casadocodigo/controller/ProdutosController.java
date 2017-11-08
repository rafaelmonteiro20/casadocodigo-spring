package com.casadocodigo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.casadocodigo.model.Produto;

@Controller
@RequestMapping("/produtos")
public class ProdutosController {

	@RequestMapping("/form")
	public String form() {
		return "produtos/form";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String salvar(Produto produto) {
		System.out.println(produto.getTitulo());
		
		return "";
	}
	
}