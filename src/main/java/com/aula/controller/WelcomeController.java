package com.aula.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WelcomeController {	
	
	@RequestMapping(value = "/cadastroCliente", method = RequestMethod.GET)
	public String cadastroCliente (Model model) {
		return "Cadastramento_Atendimento";
	}
	
	@RequestMapping(value = "/listaCadastroCliente", method = RequestMethod.GET)
	public String listaCadastroCliente (Model model) {
		return "VisualizarCadastros";
	}
	
	@RequestMapping(value = "/armazenamentoCadastros", method = RequestMethod.POST)
	public String armazenamentoCadastros (Model model) {
		return "Armazenamento_Cadastro";
	}
	
}