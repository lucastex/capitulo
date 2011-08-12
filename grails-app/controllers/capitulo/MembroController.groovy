package capitulo

class MembroController {

	def index = {
		def allMembros = Membro.findAll()
		[membros: allMembros]
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
