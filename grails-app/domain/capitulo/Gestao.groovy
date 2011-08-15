package capitulo

class Gestao {
	
	Integer ano
	Integer semestre
	Integer mmc
	Integer m1c
	Integer m2c

    static constraints = {
		ano(nullable:false blank:false)
		semstre(nullable:false blank:false)
		mmc(nullable:false blank:false)
		m1c(nullable:false blank:false)
		m2c(nullable:false blank:false)
    }
}
