package capitulo

class Presenca {
	
	Membro membro
	Reuniao reuniao
	Boolean status
	
    static constraints = {
		membro(nullable: false, blank: false)
		reuniao(nullable: false, blank: false)
		status(nullable: false, blank: false)
    }
}
