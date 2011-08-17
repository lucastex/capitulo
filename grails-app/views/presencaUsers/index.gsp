<html>
	<body>
		<h1>Relatório de Presença de Usuários</h1>
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
					<td><capitulo:porcentagem gestao="${gestao}" membro="${membro}" /></td>
				</tr>
			</g:each>			
				<td rowspan="2">TOTAL</td>
				<g:each in="${gestao.reunioes}" var="reuniao">
					<td><capitulo:membrosPresentes gestao="${gestao}" reuniao="${reuniao}" /> presentes</td>
				</g:each>
				<td rowspan="2">&nbsp;</td>
			</tr>
			<tr>
				<g:each in="${gestao.reunioes}" var="reuniao">
					<td><capitulo:porcentagemPresentes gestao="${gestao}" reuniao="${reuniao}" />%</td>
				</g:each>
			</tr>
		</table>
		</g:each>		
		<g:render template="../toolbar" />
	</body>
</html>