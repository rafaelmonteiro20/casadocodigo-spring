package com.casadocodigo.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

import com.casadocodigo.model.DadosPagamento;
import com.casadocodigo.model.Estado;
import com.casadocodigo.model.UsuarioSistema;
import com.casadocodigo.service.CarrinhoCompras;

@Controller
@RequestMapping("/pagamento")
@Scope(value = WebApplicationContext.SCOPE_REQUEST)
public class PagamentoController {
	
	@Autowired
	private CarrinhoCompras carrinho;
	
	@Autowired
	private RestTemplate template;
	
	@RequestMapping
	public ModelAndView pagamento(UsuarioSistema usuarioSistema) {
		ModelAndView mv = new ModelAndView("/pagamento");
		mv.addObject("estados", Estado.values());
		return mv;
	}
	
	@RequestMapping(value = "/finalizar", method = RequestMethod.POST)
	public ModelAndView finalizar(@Valid UsuarioSistema usuarioSistema, BindingResult result) {
		if(result.hasErrors()) {
			return pagamento(usuarioSistema);
		}
		
		String uri = "http://book-payment.herokuapp.com/payment";
		
		try {
			String resposta = template.postForObject(uri, 
					new DadosPagamento(carrinho.getTotal()), String.class);
			
			System.out.println("Usuário: " + usuarioSistema);
			System.out.println("Total:" + carrinho.getTotal());
			System.out.println("Resposta: " + resposta);

			return new ModelAndView("redirect:/home");
		} catch (HttpClientErrorException e) {
			return new ModelAndView("redirect:/pagamento");
		}
	}
	
}
