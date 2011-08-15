package capitulo

class PresencaController {

    def index = { 
		def membros = Membro.findAll()
		def reuniao = Reuniao.get(params.id)
		def presentes = Presenca.findAllByReuniaoAndStatus(reuniao,true)
		[membros: membros, reuniao: reuniao, presentes: presentes]
	}
	
	
	def save = {
		
		//apaga registros antigos
		def presentes = Presenca.findAllByReuniaoAndStatus(Reuniao.load(params.reuniao),true)
		presentes.each { r ->
			
			r.delete()
		}
		
		//insere registro novo
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
		
		def allMembros = Membro.findAll()
		allMembros.each { m ->
			if(!presentes.membro.id.contains(m.id)){
				def presenca = new Presenca()
				presenca.reuniao = Reuniao.load(params.reuniao)
				presenca.membro = m
				presenca.status = false
				presenca.save()
			}
		}
		
		redirect controller: "presenca", action: "index", id: params.reuniao
		
		/*def presenca = new Presenca(params)
				if(presenca.save()){
					flash.message = "Presença registrada com sucesso"
				} else {
					flash.message = "Erro ao registrar presenca"
				}
				redirect action: "index", controller: "reuniao"*/
	}
}
