package capitulo

class GestaoController {

    def index = {
		def allGestoes = Gestao.findAll()
		def membros = Membro.findAll()
		[gestoes: allGestoes, membros: membros]
	}
	
	def save = {
		def gestao = new Gestao(params)
		if(gestao.save()){
			flash.message = "Gestão criada com sucesso"
		}else{
			flash.message = "Ocorreu erro ao salvar a Gestão"
		}
		redirect action: "index"
	}
	
}
