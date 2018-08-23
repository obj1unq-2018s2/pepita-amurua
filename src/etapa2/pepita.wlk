import comidas.*

/*
 * p.ej. pepita.comer(alpiste, 300) o pepita.comer(alcaucil, 50) 
 */
object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia -= kms + 10 }
	
	// metodos nuevos	
	method estaDebil() {
		var estaDebil = false
		if(energia < 50){
			estaDebil = true
		}
		return estaDebil
	}
	method estaFeliz(){
		var estaFeliz = false
		if(energia > 500 && energia < 1000){
			estaFeliz = true	
		}
		return estaFeliz
	}
	
	method quiereVolar() = energia / 5
	
	/*method cuantoQuiereVolar(){
		var cuanto = self.quiereVolar() 
		if(energia > 300 && energia < 400){
			cuanto += 10
		}
		if(energia % 20 == 0){
			cuanto += 15
		}
		return cuantoQuiereVolar
	}*/
	
	method cuantoQuiereVolar() { 
		var cuanto = self.energia() / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	
	method salirAComer() {
		self.volar(5)
		self.comer(alpiste,80)
		self.volar(5)
	}
	
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {
			self.comer(alpiste,20)
		} else if(self.estaFeliz()) {
			self.volar(8)
		}
	}
}