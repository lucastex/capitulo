import capitulo.*

class BootStrap {

    def init = { servletContext ->


		def l1 = new Loja(nome:"Pitágoras", numero:1031, endereco:"Rua Julio Cesar Ribeiro, 91", potencia:"GL")
		if (l1.save()) {	
			println "Loja Pitagoras cadastrada"
		} else {
			println "Erro para cadastrar Loja Pitagoras"
			l1.errors.allErrors.each { println it }
		}

		def l2 = new Loja(nome:"Loja Londrina", numero:3050, endereco:"Rua Castro Alves, 397", potencia:"COMAB")
		if (l2.save()) {	
			println "Loja Londrina cadastrada"
		} else {
			println "Erro para cadastrar Loja Londrina"
			l2.errors.allErrors.each { println it }
		}
		
		
		
		
		def m1 = new Membro(nome:"Membro1",email:"email@dominio.com.br",cid:"12341",iniciacao: new Date())
		m1.save()
		def m2 = new Membro(nome:"Membro2",email:"email@dominio.com.br",cid:"12342",iniciacao: new Date())
		m2.save()
		def m3 = new Membro(nome:"Membro3",email:"email@dominio.com.br",cid:"12343",iniciacao: new Date())
		m3.save()
		def m4 = new Membro(nome:"Membro4",email:"email@dominio.com.br",cid:"12344",iniciacao: new Date())
		m4.save()
		def m5 = new Membro(nome:"Membro5",email:"email@dominio.com.br",cid:"12345",iniciacao: new Date())
		m5.save()
		def m6 = new Membro(nome:"Membro6",email:"email@dominio.com.br",cid:"12346",iniciacao: new Date())
		m6.save()
		def m7 = new Membro(nome:"Membro7",email:"email@dominio.com.br",cid:"12347",iniciacao: new Date())
		m7.save()
		def m8 = new Membro(nome:"Membro8",email:"email@dominio.com.br",cid:"12348",iniciacao: new Date())
		m8.save()
		
		
		
		
		def g1 = new Gestao(ano:"2010",semestre:"1",mmc:m1,m1c:m2,m2c:m3)
		g1.save()
		def g2 = new Gestao(ano:"2011",semestre:"2",mmc:m4,m1c:m5,m2c:m6)
		g2.save()
		
		
		
		
		
		def r1 = new Reuniao(gestao:g1,data:new Date(),loja:l1)
		r1.save()
		def r2 = new Reuniao(gestao:g1,data:new Date(),loja:l1)
		r2.save()
		
		
		
		
		println "INICIOU APP"
    }

    def destroy = {
    }
}
