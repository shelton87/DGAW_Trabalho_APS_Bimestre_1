<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.aula.CadastroAtendimento, java.util.ArrayList"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Armazenamento - Cadastro</title>
</head>
<body>
<h3>Cadastros de Atendimentos Salvos</h3>
<%
	
	String nomeProp = request.getParameter("nomeProp");
	String nomePet = request.getParameter("nomePet");
	String racaPet = request.getParameter("racaPet");
	String tipoService = request.getParameter("tipoService");
	
	CadastroAtendimento cadastro = new CadastroAtendimento();
	cadastro.setNomeProp(nomeProp);
	cadastro.setNomePet(nomePet);
	cadastro.setRacaPet(racaPet);
	cadastro.setTipoService(tipoService);
	
	//ArrayList<CadastroAtendimento> listaCadastros = (ArrayList<CadastroAtendimento>) application.getAttribute("lista_cadastros");
	ArrayList<CadastroAtendimento> listaCadastros = (ArrayList<CadastroAtendimento>) request.getSession().getAttribute("lista_cadastros");
	
	if(listaCadastros == null){	
		listaCadastros = new ArrayList<CadastroAtendimento>();
		//application.setAttribute("lista_cadastros", listaCadastros);
		request.getSession().setAttribute("lista_cadastros", listaCadastros);
	}
	
	listaCadastros.add(cadastro);
	
	for(CadastroAtendimento c : listaCadastros){
		String cadastros = "Proprietário do Pet: " + c.getNomeProp() + "<br>";
		cadastros += "Nome do Pet: " + c.getNomePet() + "<br>";
		cadastros += "Raça do Pet: " + c.getRacaPet() + "<br>";
		cadastros += "Tipo de Serviço: " + c.getTipoService() + "<br>";
		
		out.println(cadastros);
		out.println("--------------------------------------------------------------<br>");
	}
	
%>
<br>
<input type="button" value="Voltar Cadastro Atendimento" onclick="window.location.href='/cadastroCliente'">
</body>
</html>