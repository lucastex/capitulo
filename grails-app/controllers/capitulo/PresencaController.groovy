package capitulo

class PresencaController {

    def index = { 
		def allPresenca = Presenca.findAll()
		def membros = Membro.findAll()
		def reuniao = Reuniao.get(params.id)
		[presenca: allPresenca, membros: membros, reuniao: reuniao]
	}
	
	
	def save = {
		
		params.each { name, value ->
			if (name.startsWith("membro_")) {
				def membroId = name.substring(7)
				def presenca = new Presenca()
				presenca.reuniao = Reuniao.load(params.reuniao)
				presenca.membro = Membro.load(membroId)
				presenca.status = true
				if(presenca.save()){
					flash.message = "Livro de Presenca cadastrado"
				} else {
					flash.message = "Erro ao cadastrar presença"
				}	
			}	
		}
		redirect controller: "reuniao", action: "index"
		
		/*def presenca = new Presenca(params)
				if(presenca.save()){
					flash.message = "Presença registrada com sucesso"
				} else {
					flash.message = "Erro ao registrar presenca"
				}
				redirect action: "index", controller: "reuniao"*/
	}
}
