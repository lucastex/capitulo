package capitulo

class PresencaUsersTagLib {
	
	static namespace = "capitulo"
	
	def porcentagem = { attrs, body ->
		
		def gestao = attrs.remove('gestao')
		def membro = attrs.remove('membro')
		
		if (gestao && membro) {
			
			def contadorDePresencas = 0
			def totalReunioes = gestao.reunioes.size()			
			gestao.reunioes.each { reuniao ->
				
				reuniao.presenca.each { presenca ->
				
					if (presenca.membro.id == membro.id) {
						if (presenca.status) {
							contadorDePresencas++							
						}
					}
				}
				
			}
			
			def resposta = ""
			
			if (totalReunioes > 0) {
				resposta = "${((contadorDePresencas*100)/totalReunioes)}%"
			} else {
				resposta = "-"
			}
			
			out << resposta
			
		} else {
			out << "ERRO"
		}
	}
	
	
	
	
	def membrosPresentes = { attrs, body ->
		
		def contadorMembros = 0
		
		def gestao 	= attrs.remove('gestao')
		def reuniao = attrs.remove('reuniao')
		
		gestao.reunioes.each { reuniaoEach ->
			if (reuniaoEach.id == reuniao.id) {
				reuniaoEach.presenca.each { presenca ->
					if (presenca.status) {
						contadorMembros++
					}
				}
			}
			
		}
					
		out << contadorMembros
		

	}
	
	
	
	def porcentagemPresentes = { attrs, body ->
		
		def totalMembros = 0
		def contadorMembros = 0
		
		def gestao 	= attrs.remove('gestao')
		def reuniao = attrs.remove('reuniao')
				
		gestao.reunioes.each { reuniaoEach ->
			
			if (reuniaoEach.id == reuniao.id) {
				reuniaoEach.presenca.each { presenca ->
					
					totalMembros++
					
					if (presenca.status) {
						contadorMembros++
					}
					
				}
			}
			
		}
		
		def resultado = ((contadorMembros*100)/totalMembros) 
		
		out << resultado
		
	}
	
	
	
	

}
