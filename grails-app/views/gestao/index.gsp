<html>
	<head>
		<link rel="stylesheet" href="${resource(dir:'css',file:'css.css')}" type="text/css" media="all" />
	</head>
	<body>
		<h1>Gestões - ${gestoes.size()} cadastrados</h1>
		<hr />
		<h2>${flash.message}</h2>
		<g:form controller="gestao" action="save" method="get">
			
			<p>
				<label>Ano</label>
				<input type="text" name="ano">
			</p>
			<p>
				<label>Semestre</label>
				<select name="semestre">
					<option value="01">01 | Janeiro - Junho</option>
					<option value="02">02 | Julho - Dezembro</option>
				</select>
			</p>
			<p>
				<label>MC</label>
				<select name="mmc.id">
					<g:each in="${membros}" var="m">
						<option value="${m.id}">${m.nome}</option>
					</g:each>
				</select>
			</p>
			<p>
				<label>1C</label>
				<select name="m1c.id">
					<g:each in="${membros}" var="m">
						<option value="${m.id}">${m.nome}</option>
					</g:each>
				</select>
			</p>
			<p>
				<label>2C</label>
				<select name="m2c.id">
					<g:each in="${membros}" var="m">
						<option value="${m.id}">${m.nome}</option>
					</g:each>
				</select>
			</p>
			<p>
				<input type="submit" value="cadastrar">
			</p>
			
		</g:form>
		<g:if test="${gestoes.size() > 0}">
			<table border="1" width="100%">
				<tr>
					<th>#</th>
					<th>Ano</th>
					<th>Semestre</th>
					<th>MC</th>
					<th>1C</th>
					<th>2C</th>
					<th>Ações</th>
				</tr>
				<g:each in="${gestoes}" var="g">
					<tr>
						<td>${g.id}</td>
						<td>${g.ano}</td>
						<td>${g.semestre}</td>
						<td>${g.mmc}</td>
						<td>${g.m1c}</td>
						<td>${g.m2c}</td>
						<td><g:link controller="gestao" action="delete" id="${g.id}">Deletar</g:link> | 
							<g:link controller="gestao" action="load" id="${g.id}">Editar</g:link></td>
					</tr>
				</g:each>
			</table>
		</g:if>
		<g:else>
			<p>Não existem Gestões cadastradas</p>
		</g:else>
		<g:render template="/templates/toolbar" />
	</body>
</html>