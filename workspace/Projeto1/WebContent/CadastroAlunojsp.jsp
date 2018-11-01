<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>
	<form action="ControladorAluno" method="post">
	<input type="hidden" name="acao" value="cadastrar">	
	
		<div class="form-group">
			<label for="exampleInputEmail1">Primeiro Nome</label> <input name="primeiroNome"
				type="text" class="form-control" id="exampleInputNome"
				aria-describedby="NomeHelp" placeholder="Digite seu primeiro nome"> <small
				id="nomelHelp" class="form-text text-muted"></small>
		</div>
		<div class="form-group">
			<label for="exampleInputUltNome">Último Nome</label> <input name="ultimoNome"
				type="text" class="form-control" id="exampleInputUltNome"
				placeholder="Digite seu ultimo nome">
		</div>
		<div class="form-group">
			<label for="exampleInputEmail">Email</label> <input name="email" type="text"
				class="form-control" id="exampleInputEmail" placeholder="Digite seu Email">
		</div>

		<button type="submit" class="btn btn-primary">Enviar</button>
	</form>

</body>
</html>