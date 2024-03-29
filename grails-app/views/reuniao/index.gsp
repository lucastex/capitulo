<html>
	<head>
		<link rel="stylesheet" href="${resource(dir:'css',file:'css.css')}" type="text/css" media="all" />
	</head>
	<body>
		<h1>Reuniões - ${reunioes.size()} cadastradas</h1>
		<hr />
		<h2>${flash.message}</h2>
		<g:form controller="reuniao" action="save" method="get">
			<p>
				<label>Gestão</label>
				<select name="gestao.id">
					<g:each in="${gestoes}" var="g">
						<option value="${g.id}">${g.ano} - ${g.semestre}</option>
					</g:each>
				</select>
			</p>
			<p>
				<label>Data</label>
				<g:datePicker name="data" precision="day" />
			</p>
			<p>
				<label>Loja</label>
				<select name="loja.id">
					<g:each in="${lojas}" var="l">
						<option value="${l.id}">${l.nome}</option>
					</g:each>
				</select>
			</p>
			<p>
				<input type="submit" value="cadastrar">
			</p>
		</g:form>
		<g:if test="${reunioes.size() > 0}">
			<table width="100%">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th>Gestão</th>
						<th>Data</th>
						<th>Loja</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<g:each in="${reunioes}" var="r" status="st">
						<tr ${(st % 2 == 0) ? 'class="odd"' : ''}>
							<td>${r.id}</td>
							<td>${r.gestao.ano} - ${r.gestao.semestre}</td>
							<td><g:formatDate date="${r.data}" format="dd/MM/yyyy"/></td>
							<td>${r.loja.nome}</td>
							<td>
								<g:link controller="reuniao" action="delete" id="${r.id}">Deletar</g:link> | 
								<g:link controller="reuniao" action="load" id="${r.id}">Editar</g:link> | 
								<g:link controller="presenca" action="index" id="${r.id}">Presenca</g:link>
							</td>
						</tr>
					</g:each>
				<tbody>
			</table>
		</g:if>
		<g:else>
			<p>Não existem Reuniões cadastradas</p>
		</g:else>
		<g:render template="chart" />
		<g:render template="/templates/toolbar" />
	</body>
</html>