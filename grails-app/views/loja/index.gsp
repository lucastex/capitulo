<html>
	<body>
		<h1>Lojas - ${lojas.size()} cadastradas</h1>
		<hr />
		<h2>${flash.message}</h2>
		<g:form controller="loja" action="save" method="get">
			
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
				<input type="submit" value="cadastrar">
			</p>
			
		</g:form>
		
		<g:if test="${lojas.size() > 0}">
			<table border="1" width="100%">
				<tr>
					<th>#</th>
					<th>Nome</th>
					<th>Endereço</th>
					<th>Numero</th>
					<th>Potência</th>
					<th>Ações</th>
				</tr>
				<g:each in="${lojas}" var="l">
					<tr>
						<td>${l.id}</td>
						<td>${l.nome}</td>
						<td>${l.endereco}</td>
						<td>${l.numero}</td>
						<td>${l.potencia}</td>
						<td><g:link controller="loja" action="delete" id="${l.id}">Deletar</g:link> | 
							<g:link controller="loja" action="load" id="${l.id}">Editar</g:link></td>
					</tr>
				</g:each>
			</table>
		</g:if>
		<g:else>
			<p>Não existem lojas cadastradas</p>
		</g:else>
		
	</body>
</html>