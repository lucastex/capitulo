package capitulo

class PresencaUsersController {

    def index = { 
		def allGestoes = Gestao.findAll()
		def allMembros = Membro.findAll()
				
		[gestoes: allGestoes, membros: allMembros]
	}
	
}