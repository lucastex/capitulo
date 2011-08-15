package capitulo

class MembroController {

	def index = {
		def allMembros = Membro.findAll()
		[membros: allMembros]
	}
	
	def load = {
		def membro = Membro.get(params.id)
		if(membro){
			[membro: membro]
		} else {
			flash.message = "O membro não existe"
			redirect action: "index"
		}
	}
	
	def update = {
		def membro = Membro.get(params.id)
		membro.properties = params
		if(membro.save()){
			flash.message = "Usuário atualizado com sucesso"
		} else {
			flashmessage = "Não foi possível atualizar o membro"
		}
		redirect action: "index"
	}

	def save = {
		def membro = new Membro(params)
		if(membro.save()){
			flash.message = "Membro cadastrado com sucesso"
		} else {
			flash.message = "Erro ao cadastrar Membro"
		}
		redirect action: "index"
	}
	
	def delete = {
		def membro = Membro.get(params.id)
		membro.delete()
		flash.message = "Membro removido com sucesso"
		redirect action: "index"
	}
}
