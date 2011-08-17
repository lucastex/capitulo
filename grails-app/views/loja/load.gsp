<html>
	<head>
		<link rel="stylesheet" href="${resource(dir:'css',file:'css.css')}" type="text/css" media="all" />
	</head>
	<body>
		<h1>Editar Loja - ${loja.nome}</h1>
		<hr />
		<h2>${flash.message}</h2>
		<g:form controller="loja" action="update" method="get">
			<input type:"hidden" name="id" value="${loja.id}"/>
			<p>
				<label>Nome</label>
				<input type="text" name="nome" value="${loja.nome}">
			</p>
			<p>
				<label>Endereco</label>
				<input type="text" name="endereco" value="${loja.endereco}">
			</p>
			<p>
				<label>Numero</label>
				<input type="text" name="numero" value="${loja.numero}">
			</p>
			<p>
				<label>Potencia</label>
				<select name="potencia">
					<option value="GOB" <g:if test="${loja.potencia == 'GOB'}">selected="yes"</g:if>>GOB</option>
					<option value="COMAB" <g:if test="${loja.potencia == 'COMAB'}">selected="yes"</g:if>>COMAB</option>
					<option value="GL" <g:if test="${loja.potencia == 'GL'}">selected="yes"</g:if>>GL</option>
				</select>
			</p>
			<p>
				<input type="submit" value="atualizar">
			</p>
		</g:form>
		<g:render template="/templates/toolbar" />
	</body>
</html>