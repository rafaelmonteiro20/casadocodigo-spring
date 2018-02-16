package com.casadocodigo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/pagamento")
public class PagamentoController {

	@RequestMapping
	public ModelAndView pagamento() {
		return new ModelAndView("/pagamento");
	}
	
	@RequestMapping(value = "/finalizar", method = RequestMethod.POST)
	public ModelAndView finalizar() {
		
		
		
		
		return new ModelAndView("redirect:/produtos");
	}
	
}
