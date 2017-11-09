package com.casadocodigo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.casadocodigo.dao.ProdutoDAO;
import com.casadocodigo.model.Produto;
import com.casadocodigo.model.TipoLivro;

@Controller
@RequestMapping("/produtos")
public class ProdutosController {
	
	@Autowired
	private ProdutoDAO produtoDAO;
	

	@RequestMapping("/form")
	public ModelAndView form() {
		ModelAndView mv = new ModelAndView("produtos/form");
		mv.addObject("tipos", TipoLivro.values());
		return mv;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String salvar(Produto produto, RedirectAttributes attributes) {
		produtoDAO.salvar(produto);
		attributes.addFlashAttribute("mensagem", "Produto salvo com sucesso!");
		return "redirect:produtos";
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView listar() {
		ModelAndView mv = new ModelAndView("produtos/list");
		mv.addObject("produtos", produtoDAO.listar());
		return mv;
	}
	
	
}
