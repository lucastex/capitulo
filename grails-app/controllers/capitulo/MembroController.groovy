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
}
