<html>
	<body>
		<h1>Lojas - ${lojas.size()} cadastradas</h1>
		<hr />
		<h2>${flash.message}</h2>
		<table border="1" width="100%">
			<tr>
				<th>#</th>
				<th>Nome</th>
				<th>Endereço</th>
				<th>Numero</th>
				<th>Potência</th>
			</tr>
			<g:each in="${lojas}" var="l">
			<tr>
				<td>${l.id}</td>
				<td>${l.nome}</td>
				<td>${l.endereco}</td>
				<td>${l.numero}</td>
				<td>${l.potencia}</td>
			</tr>
			</g:each>
		</table>
	</body>
</html>