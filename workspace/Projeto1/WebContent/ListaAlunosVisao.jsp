<%@page import="unama.br.Modelo.Aluno"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<% List<Aluno> listaaluno = (List<Aluno>) request.getAttribute("LISTA-ALUNOS"); %>
<table>
<tr>
<a href="CadastroAlunojsp.jsp">Cadastro</a>
<table class="table">
  <thead>
  <tr>
  <th>#</th>
  <th>Primeiro Nome</th>
  <th>Ultimo Nome</th>
  <th>Email</th>
  </tr>
  
  </thead>
  <tbody>
 <%for(Aluno aluno : listaaluno){ %>>
    <tr>
      <td scope="col">#</td>
      <td scope="col"><%= aluno.getPrimeiroNome()%></td>
      <td scope="col"><%= aluno.getUltimoNome() %></td>
      <td scope="col"><%= aluno.getEmail() %></td>
    </tr>
    <%} %>
  </tbody>
</table>

</html>