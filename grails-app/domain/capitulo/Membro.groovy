package capitulo

class Membro {

	String nome
	String email
	Integer cid
	Date iniciacao
	Date elevacao
	Date investidura
	Date chevalier
	
    static constraints = {
		nome(nullable: false, blank: false)
		email(nullable: false, blank: false, email: true)
		cid(nullable: false, blank: false, min: 0)
		iniciacao(nullable: true, blank: true)
		elevacao(nullable: true, blank: true)
		investidura(nullable: true, blank: true)
		chevalier(nullable: true, blank: true)
    }

	String toString() {
		"$cid - $nome"
	}
}
