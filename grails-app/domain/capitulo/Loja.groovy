package capitulo

class Loja {
	
	String nome
	String endereco
	Integer numero
	String potencia

    static constraints = {
		nome(nullable: false, blank: false)
		//endereco(nullable: true, blank: true) ESTAVA DANDO ERRO, RESOLVE DUVIDA
		endereco(nullable: false, blank: false)
		numero(nullable: false, blank: false, min: 0)
		potencia(nullable: false, blank: false, inList: ["GOB", "COMAB", "GL"])
    }
}
