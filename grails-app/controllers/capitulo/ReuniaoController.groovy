package capitulo

class ReuniaoController {

    def index = { 
		def allReunioes = Reuniao.findAll()
		def gestoes = Gestao.findAll()
		def lojas = Loja.findAll()
		[reunioes: allReunioes, gestoes: gestoes, lojas: lojas]
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
}
