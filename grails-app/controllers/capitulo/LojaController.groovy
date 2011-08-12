package capitulo

class LojaController {

	def grailsApplication


    def index = { 
	
		def loja = Loja.findAll()
		if(loja.size() == 0){
			def l1 = new Loja(nome:"Loja Maconica", numero:123, endereco:"Av Avenida", potencia:"GOB")
			l1.save()
		}
		
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
