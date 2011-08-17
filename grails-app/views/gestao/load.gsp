<html>
	<head>
		<link rel="stylesheet" href="${resource(dir:'css',file:'css.css')}" type="text/css" media="all" />
	</head>
	<body>
		<h1>Editar Gestões - ${gestao.ano}/${gestao.semestre}</h1>
		<hr />
		<h2>${flash.message}</h2>
		<g:form controller="gestao" action="update" method="get">
			<input type="hidden" name="id" value="${gestao.id}">
			<p>
				<label>Ano</label>
				<input type="text" name="ano" value="${gestao.ano}">
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
						<option value="${m.id}" <g:if test="${gestao.mmc.id == m.id}">selected="yes"</g:if>>${m.nome}</option>
					</g:each>
				</select>
			</p>
			<p>
				<label>1C</label>
				<select name="m1c.id">
					<g:each in="${membros}" var="m">
						<option value="${m.id}" <g:if test="${gestao.m1c.id == m.id}">selected="yes"</g:if>>${m.nome}</option>
					</g:each>
				</select>
			</p>
			<p>
				<label>2C</label>
				<select name="m2c.id">
					<g:each in="${membros}" var="m">
						<option value="${m.id}" <g:if test="${gestao.m2c.id == m.id}">selected="yes"</g:if>>${m.nome}</option>
					</g:each>
				</select>
			</p>
			<p>
				<input type="submit" value="atualizar">
			</p>
		</g:form>
		<g:render template="/templates/toolbar" />
	</body>
</html>