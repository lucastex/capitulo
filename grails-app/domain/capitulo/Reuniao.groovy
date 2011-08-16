package capitulo

class Reuniao {
	
	Gestao gestao
	Date data
	Loja loja
	
	static hasMany =  [presenca: Presenca]
	static mappedBy = [presenca: 'reuniao']
	
    static constraints = {
		gestao(nullable: false, blank:false)
		data(nullable: false, blank:false)
		loja(nullable: false, blank:false)
    }
}
