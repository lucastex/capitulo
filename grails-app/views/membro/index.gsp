<html>
	<head>
		<link rel="stylesheet" href="${resource(dir:'css',file:'css.css')}" type="text/css" media="all" />
	</head>
	<body>
		<h1>Membros - ${membros.size()} cadastrados</h1>
		<hr />
		<h2>${flash.message}</h2>
		<g:form controller="membro" action="save" method="get">
			
			<p>
				<label>Nome</label>
				<input type="text" name="nome">
			</p>
			<p>
				<label>Email</label>
				<input type="text" name="email">
			</p>
			<p>
				<label>CID</label>
				<input type="text" name="cid">
			</p>
			<p>
				<label>Iniciacao</label>
				<g:datePicker name="iniciacao" precision="day"/>
			</p>
			<p>
				<label>Elevacao</label>
				<g:datePicker name="elevacao" precision="day"  noSelection="['':'Não possui elevação']"/>
			</p>
			<p>
				<label>Investidura</label>
				<g:datePicker name="investidura" precision="day"  noSelection="['':'Não possui investidura']"/>
			</p>
			<p>
				<label>Chevalier</label>
				<g:datePicker name="chevalier" precision="day"  noSelection="['':'Não possui chevalier']"/>
			</p>
			<p>
				<input type="submit" value="cadastrar">
			</p>
			
		</g:form>
		<g:if test="${membros.size() > 0}">
			<table border="1" width="100%">
				<tr>
					<th>#</th>
					<th>Nome</th>
					<th>E-mail</th>
					<th>CID</th>
					<th>Data de Iniciacao</th>
					<th>Data de Elevacao</th>
					<th>Data de Investidura</th>
					<th>Data de Chevalier</th>
					<th>Ações</th>
				</tr>
				<g:each in="${membros}" var="m">
					<tr>
						<td>${m.id}</td>
						<td>${m.nome}</td>
						<td>${m.email}</td>
						<td>${m.cid}</td>
						<td><g:formatDate date="${m.iniciacao}" format="dd/MM/yyyy"/></td>
						<td><g:formatDate date="${m.elevacao}" format="dd/MM/yyyy"/></td>
						<td><g:formatDate date="${m.investidura}" format="dd/MM/yyyy"/></td>
						<td><g:formatDate date="${m.chevalier}" format="dd/MM/yyyy"/></td>
						<td><g:link controller="membro" action="delete" id="${m.id}">Deletar</g:link> | 
							<g:link controller="membro" action="load" id="${m.id}">Editar</g:link></td>
					</tr>
				</g:each>
			</table>
		</g:if>
		<g:else>
			<p>Não existem lojas cadastradas</p>
		</g:else>
		<g:render template="/templates/toolbar" />
	</body>
</html>