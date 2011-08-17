<html>
	<head>
		<link rel="stylesheet" href="${resource(dir:'css',file:'css.css')}" type="text/css" media="all" />
	</head>
	<body>
		<h1>Lista de Presença - <g:formatDate date="${reuniao.data}" format="dd/MM/yyyy"/></h1>
		<hr />
		<h2>${flash.message}</h2>
		<g:form controller="presenca" action="save" method="post">
			<input type="hidden" name="reuniao" value="${reuniao.id}">
			<g:each in="${membros}" var="m">
				<input type="checkbox" <g:if test="${presentes.membro.id.contains(m.id)}">checked</g:if> name="membro_${m.id}" value="true" />${m.nome}<br>
			</g:each>
			<p>
				<input type="submit" value="salvar">
			</p>
		</g:form>
		<em>Marque os membros presentes</em>
		<br />
		<g:link controller="reuniao" action="index">Voltar</g:link>
		<g:render template="/templates/toolbar" />
	</body>
</html>