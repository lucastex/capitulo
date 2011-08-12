package capitulo

class LojaController {

    def index = { 
	
		def allLojas = Loja.findAll()
		[lojas: allLojas]
	
	}
}
