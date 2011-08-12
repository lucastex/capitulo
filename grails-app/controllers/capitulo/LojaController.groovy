package capitulo

class LojaController {

	def grailsApplication


    def index = { 
		
		def allLojas = Loja.findAll()
		[lojas: allLojas]
	
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
}
