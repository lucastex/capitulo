<html>
	<body>
		<h1>Relatório de Presença de Usuários</h1>
		<hr />
		<h2>${flash.message}</h2>
		<hr />
		<g:each in="${gestoes}" var="gestao">
		<div align="center"><h2>Gestão ${gestao.ano}/${gestao.semestre}</h2></div>
		<table border="1" width="100%">
			<tr>
				<th>&nbsp;</th>
				<g:each in="${gestao.reunioes}" var="reuniao">
					<th><g:formatDate date="${reuniao.data}" format="dd/MM"/></th>
				</g:each>
				<th>%</th>
			</tr>
			<g:each in="${membros}" var="membro">
				<tr>
					<td>${membro.nome}</td>
					<g:each in="${gestao.reunioes}" var="reuniao">

						<g:set var="achou" value="${false}" />
						<g:each in="${reuniao.presenca}" var="presenca">
							<g:if test="${presenca.membro.id == membro.id}">
								<g:set var="achou" value="${true}" />
								<g:if test="${presenca.status == true}"><td bgcolor='green'>&nbsp;</td></g:if>
								<g:else><td bgcolor='red'>&nbsp;</td></g:else>&nbsp;
							</g:if>
						</g:each>

						<g:if test="${!achou}">
							<td align="center">-</td>
						</g:if>
					</g:each>
					<td>98%</td>
				</tr>
			</g:each>			
				<td rowspan="2">TOTAL</td>
				<td>3 membros</td>
				<td>9 membros</td>
				<td rowspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td>30% presentes</td>
				<td>50% presentes</td>
			</tr>
		</table>
		</g:each>		
	</body>
</html>