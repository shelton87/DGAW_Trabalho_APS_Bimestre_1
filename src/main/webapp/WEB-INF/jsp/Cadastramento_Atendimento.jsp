<%@page import="org.omg.CORBA.PUBLIC_MEMBER"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.aula.CadastroAtendimento, java.util.ArrayList"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Petshop - Cadastro</title>
</head>
<body>

	<form action="armazenamentoCadastros" method="post">
		<!-- Propriet�rio do Pet -->
		<h3>Cadastro de Atendimento - Petshop</h3>

		<!-- Propriet�rio do Pet -->
		<label for="nomeProp">Propriet�rio do Pet:</label>
		<input type="text" id="nomeProp" name="nomeProp"><br><br>

		<!-- Nome do Pet -->
		<label for="nomePet">Nome do Pet:</label>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<input type="text" id="nomePet" name="nomePet"><br><br>

		<!-- Ra�a do Pet -->
		<label for="racaPet">Ra�a do Pet:</label>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<input type="text" id="racaPet" name="racaPet"><br><br>

		<!-- Tipo de Servi�o -->
		<label for="tipoService">Tipo de Servi�o:</label>
		&nbsp&nbsp&nbsp&nbsp
		<select name="tipoService" id="tipoService">
			<option value="Banho">Banho</option>
			<option value="Tosa">Tosa</option>
			<option value="Veterinaria">Veterin�ria</option>
			<option value="Compra">Compra</option>
		</select><br><br>

		<!-- Enviar Formul�rio -->
		<input type="submit" value="Enviar">
	</form>
	<br>
	<input type="button" value="Ver Lista Cadastros" onclick="window.location.href='/listaCadastroCliente'">

</body>
</html>