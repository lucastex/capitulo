package capitulo

class Reuniao {
	
	Gestao gestao
	Date data
	Loja loja

    static constraints = {
		gestao(nullable: false, blank:false)
		data(nullable: false, blank:false)
		loja(nullable: false, blank:false)
    }
}
