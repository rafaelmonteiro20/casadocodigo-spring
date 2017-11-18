package com.casadocodigo.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.casadocodigo.dao.ProdutoDAO;
import com.casadocodigo.model.Produto;
import com.casadocodigo.model.TipoLivro;
import com.casadocodigo.storage.FileSaver;

@Controller
@RequestMapping("/produtos")
public class ProdutosController {
	
	@Autowired
	private ProdutoDAO produtoDAO;
	
	@Autowired
	private FileSaver fileSaver;
	

	@RequestMapping("/form")
	public ModelAndView form(Produto produto) {
		ModelAndView mv = new ModelAndView("produtos/form");
		mv.addObject("tipos", TipoLivro.values());
		return mv;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView salvar(MultipartFile capa, @Valid Produto produto, 
		BindingResult bindingResult, RedirectAttributes attributes) {
		
		if(bindingResult.hasErrors()) {
			return this.form(produto);
		}
		
		String caminho = fileSaver.write(capa);
		produto.setCaminhoCapa(caminho);
		
		produtoDAO.salvar(produto);
		attributes.addFlashAttribute("mensagem", "Produto salvo com sucesso!");
		return new ModelAndView("redirect:produtos");
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView listar() {
		ModelAndView mv = new ModelAndView("produtos/list");
		mv.addObject("produtos", produtoDAO.listar());
		return mv;
	}
	
	
}
