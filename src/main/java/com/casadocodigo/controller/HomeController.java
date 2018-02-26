package com.casadocodigo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.casadocodigo.dao.ProdutoDAO;

@Controller
public class HomeController {

	@Autowired
	private ProdutoDAO produtoDAO;
	
	@RequestMapping("/home")
	@Cacheable(value="produtos")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("ultimosLancamentos", produtoDAO.ultimosLancamentos());
		mv.addObject("produtos", produtoDAO.produtosMaisAntigos());
		return mv;
	}
	
}
