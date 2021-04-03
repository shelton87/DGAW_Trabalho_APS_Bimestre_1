<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import= "com.aula.CadastroAtendimento, java.util.ArrayList"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visualizar - Cadastros</title>
</head>
<body>
<!-- VISUALIZA��O DOS ATENDIMENTOS -->
<h3>Visualiza��o - Cadastros de Atendimentos</h3>
<%
ArrayList<CadastroAtendimento> listaCadastros = (ArrayList<CadastroAtendimento>) request.getSession().getAttribute("lista_cadastros");

if(listaCadastros != null){
	for(CadastroAtendimento c : listaCadastros){
		String cadastros = "Propriet�rio do Pet: " + c.getNomeProp() + "<br>";
		cadastros += "Nome do Pet: " + c.getNomePet() + "<br>";
		cadastros += "Ra�a do Pet: " + c.getRacaPet() + "<br>";
		cadastros += "Tipo de Servi�o: " + c.getTipoService() + "<br>";
		
		out.println(cadastros);
		out.println("--------------------------------------------------------------<br>");
	}
} else {
	out.println("Lista de cadastro vazia.");
}
%>
<br>
<input type="button" value="Voltar Cadastro Atendimento" onclick="window.location.href='/cadastroCliente'">	

</body>
</html>