<html>
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
				<input type="text" name="semestre">
			</p>
			<p>
				<label>MC</label>
				<input type="text" name="mc">
			</p>
			<p>
				<label>1C</label>
				<input type="text" name="1c">
			</p>
			<p>
				<label>2C</label>
				<input type="text" name="2c">
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
						<td>${g.mc}</td>
						<td>${g.1c}</td>
						<td>${g.2c}</td>
						<td><g:link controller="gestao" action="delete" id="${m.id}">Deletar</g:link> | 
							<g:link controller="gestao" action="load" id="${m.id}">Editar</g:link></td>
					</tr>
				</g:each>
			</table>
		</g:if>
		<g:else>
			<p>Não existem Gestões cadastradas</p>
		</g:else>
	</body>
</html>