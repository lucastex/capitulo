package capitulo

/* Controller que controla o cadastro das reunioes do capitulo */ 
class ReuniaoController {

    def index = { 
		def allReunioes = Reuniao.findAll()
		def gestoes = Gestao.findAll()
		def lojas = Loja.findAll()
		def listaPresenca = []
		allReunioes.each{ r ->
			def numeroDePresentes = Presenca.countByReuniaoAndStatus(r,true)			
			listaPresenca << ["'${r.data.format("dd/MM/yyyy")}'", numeroDePresentes]
		}
		println listaPresenca
		[reunioes: allReunioes, gestoes: gestoes, lojas: lojas, listaPresenca: listaPresenca]
	}
	
	def delete = {
		def reuniao = Reuniao.get(params.id)
		reuniao.delete()
		flash.message = "Reunião deletada com sucesso"
		redirect action: "index"
	}
	
	def save = {
		def reuniao = new Reuniao(params)
		if(reuniao.save()){
			flash.message = "Reunião criada com sucesso"
		} else {
			flash.message = "Erro ao criar reunião"
		}
		redirect action: "index"
	}
	
	def load = {
		def reuniao = Reuniao.get(params.id)
		def gestao = Gestao.findAll()
		def loja = Loja.findAll()
		if(reuniao){
			[reuniao: reuniao, gestao: gestao, loja: loja]
		}
	}
	
	def upload = {
		def reuniao = Reuniao.get(params.id)
		reuniao.properties = params
		if(reuniao.save()){
			flash.message = "Reunião alterada com sucesso"
		} else {
			flash.message = "Erro ao alterar a reunião"
		}
		redirect action: "index"
	}
}
