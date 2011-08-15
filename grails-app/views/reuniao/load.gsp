<html>
	<body>
		<h1>Editar Reunião - ${reuniao.data}</h1>
		<hr />
		<h2>${flash.message}</h2>
		<g:form controller="reuniao" action="upload" method="get">
			<input type="hidden" name="id" value="${reuniao.id}">
			<p>
				<label>Gestão</label>
				<select name="gestao.id">
					<g:each in="${gestao}" var="g">
						<option value="${g.id}"<g:if test="${reuniao.gestao.id == g.id}">selected="yes"</g:if>>${g.ano} - ${g.semestre}</option>
					</g:each>
				</select>
			</p>
			<p>
				<label>Gestão</label>
				<g:datePicker name="data" precision="day" />
			</p>
			<p>
				<label>Loja</label>
				<select name="loja.id">
					<g:each in="${loja}" var="l">
						<option value="${l.id}"<g:if test="${reuniao.loja.id == l.id}">selected="yes"</g:if>>${l.nome}</option>
					</g:each>
				</select>
			</p>
			<p>
				<input type="submit" value="atualizar">
			</p>
			</g:form>
		</body>
	</html>