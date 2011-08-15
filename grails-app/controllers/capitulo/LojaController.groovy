package capitulo

class LojaController {

	def grailsApplication


    def index = { 
		
		def allLojas = Loja.findAll()
		[lojas: allLojas, loja: new Loja()]
	
	}
	
	def load = {
		def loja = Loja.get(params.id)
		if(loja){
			[loja: loja]
		}else{
			flash.message = "A loja não existe"
			redirect action: "index"
		}
	}
	
	def update = {
		def loja = Loja.get(params.id)
		loja.properties = params
		if(loja.save()){
			flash.message = "Loja atualizada com sucesso"
		}else{
			flash.message = "Ocorreu um erro ao atualizar a Loja"
		}
		redirect action: "index"
	}
	
	def save = {
		def loja = new Loja(params)
		if(loja.save()){
			flash.message = "Loja cadastrada com sucesso"
		} else {
			flash.message = "Erro ao cadastrar Loja"
		}
		redirect action: "index"
	}
	
	def delete = {
		def loja = Loja.get(params.id)
		loja.delete()
		flash.message = "Loja removida com sucesso"
		redirect action: "index"
	}
}
