package capitulo

class Gestao {
	
	Integer ano
	Integer semestre
	Membro mmc
	Membro m1c
	Membro m2c
	
	static hasMany  = [reunioes: Reuniao]
	static mappedBy = [reunioes: 'gestao']

    static constraints = {
		ano(nullable:false, blank:false)
		semestre(nullable:false, blank:false)
		mmc(nullable:false, blank:false)
		m1c(nullable:false, blank:false)
		m2c(nullable:false, blank:false)
    }

	static mapping = {
		reunioes sort: 'data'
	}
}
