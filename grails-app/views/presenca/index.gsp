<html>
	<body>
		<h1>Lista de Presença - <g:formatDate date="${reuniao.data}" format="dd/MM/yyyy"/></h1>
		<hr />
		<h2>${flash.message}</h2>
		<g:form controller="presenca" action="save" method="post">
			<input type="hidden" name="reuniao" value="${reuniao.id}">
			<g:each in="${membros}" var="m">
				<input type="checkbox" name="membro_${m.id}" value="true" />${m.nome}<br>
			</g:each>
			<p>
				<input type="submit" value="salvar">
			</p>
		</g:form>
		<i>Marque os membros presentes</i>
	</body>
</html>