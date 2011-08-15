package capitulo

class GestaoController {

    def index = {
		def allGestoes = Gestao.findAll()
		[gestoes: allGestoes]
	}
	
}
