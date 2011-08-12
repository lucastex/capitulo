class BootStrap {

    def init = { servletContext ->

		def l1 = new Loja(nome:)
		
		l1.save()
		
		
		println "INICIOU APP"

    }

    def destroy = {
    }
}
