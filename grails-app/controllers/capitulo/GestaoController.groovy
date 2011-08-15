package capitulo

class GestaoController {

    def index = {
		def allGestoes = Gestao.findAll()
		[gestoes: allGestoes]
	}
	
	def save = {
		def gestao = new Gestao(params)
		if(gestao.save()){
			flash.message = "Gestão criado com sucesso"
		}else{
			flash.message = "Ocorreu erro ao salvar a Gestão"
		}
		redirect action: "index"
	}
	
}
