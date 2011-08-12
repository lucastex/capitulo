<html>
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
				<input type="text" name="iniciacao">
			</p>
			<p>
				<label>Elevacao</label>
				<input type="text" name="elevacao">
			</p>
			<p>
				<label>Investidura</label>
				<input type="text" name="investidura">
			</p>
			<p>
				<label>Chevalier</label>
				<input type="text" name="chevalier">
			</p>
			<p>
				<input type="submit" value="cadastrar">
			</p>
			
		</g:form>
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
			</tr>
			<g:each in="${membros}" var="m">
			<tr>
				<td>${m.id}</td>
				<td>${m.nome}</td>
				<td>${m.endereco}</td>
				<td>${m.numero}</td>
				<td>${m.potencia}</td>
			</tr>
			</g:each>
		</table>
	</body>
</html>