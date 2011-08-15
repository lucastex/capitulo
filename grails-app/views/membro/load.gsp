<html>
	<body>
		<h1>Editar Membros - ${membro.nome}</h1>
		<hr />
		<h2>${flash.message}</h2>
		<g:form controller="membro" action="update" method="get">
			<input type="hidden" name="id" value="${membro.id}">
			<p>
				<label>Nome</label>
				<input type="text" name="nome" value="${membro.nome}">
			</p>
			<p>
				<label>Email</label>
				<input type="text" name="email" value="${membro.email}">
			</p>
			<p>
				<label>CID</label>
				<input type="text" name="cid" value="${membro.cid}">
			</p>
			<p>
				<label>Iniciacao</label>
				<g:datePicker name="iniciacao" precision="day"  value="${membro.iniciacao}" />
			</p>
			<p>
				<label>Elevacao</label>
				<g:datePicker name="elevacao" precision="day"  value="${membro.elevacao}"/>
			</p>
			<p>
				<label>Investidura</label>
				<g:datePicker name="investidura" precision="day"  value="${membro.investidura}"/>
			</p>
			<p>
				<label>Chevalier</label>
				<g:datePicker name="chevalier" precision="day"  value="${membro.chevalier}"/>
			</p>
			<p>
				<input type="submit" value="atualizar">
			</p>
			
		</g:form>
	</body>
</html>