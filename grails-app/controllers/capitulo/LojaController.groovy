package capitulo

class LojaController {

	def grailsApplication


    def index = { 
	
		def l1 = new Loja(nome:"Loja Maconica", numero:123, endereco:"Av Avenida", potencia:"GOB")
		
		l1.save()
	
		def allLojas = Loja.findAll()
		[lojas: allLojas]
	
	}
}
