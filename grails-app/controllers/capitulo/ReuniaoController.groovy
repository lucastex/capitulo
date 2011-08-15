package capitulo

class ReuniaoController {

    def index = { 
		def allReunioes = Reuniao.findAll()
		[reunioes: allReunioes]
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
