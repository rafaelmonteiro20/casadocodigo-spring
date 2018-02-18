package com.casadocodigo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.casadocodigo.model.Estado;
import com.casadocodigo.model.UsuarioSistema;

@Controller
@RequestMapping("/pagamento")
public class PagamentoController {
	
	@RequestMapping
	public ModelAndView pagamento(UsuarioSistema usuarioSistema) {
		ModelAndView mv = new ModelAndView("/pagamento");
		mv.addObject("estados", Estado.values());
		return mv;
	}
	
	@RequestMapping(value = "/finalizar", method = RequestMethod.POST)
	public ModelAndView finalizar(UsuarioSistema usuarioSistema) {
		
		System.out.println("Recebendo dados:");
		System.out.println(usuarioSistema);
		
		return new ModelAndView("redirect:/pagamento");
	}
	
}
