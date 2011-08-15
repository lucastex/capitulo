package capitulo

class GestaoController {

    def index = {
		def allGestoes = Gestao.findAll()
		def membros = Membro.findAll()
		[gestoes: allGestoes, membros: membros]
	}
	
	def load = {
		def gestao = Gestao.get(params.id)
		def membros = Membro.findAll()
		if(gestao){
			[gestao: gestao, membros: membros]
		} else {
			flash.message = "Não foi possivel editar a gestão"
			redirect action: "index"
		}
	}
	
	def update = {
		def gestao = Gestao.get(params.id)
		gestao.properties = params
		gestao.save()
		redirect action: "index"
	}
	
	def delete = {
		def gestao = Gestao.get(params.id)
		flash.message = "Gestão deletada com sucesso"
		redirect action: "index"
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
