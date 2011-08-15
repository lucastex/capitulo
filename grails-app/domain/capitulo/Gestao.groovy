package capitulo

class Gestao {
	
	Integer ano
	Integer semestre
	Membro mmc
	Membro m1c
	Membro m2c

    static constraints = {
		ano(nullable:false blank:false)
		semstre(nullable:false blank:false)
		mmc(nullable:false blank:false)
		m1c(nullable:false blank:false)
		m2c(nullable:false blank:false)
    }
}
