
object alpiste {
	method energiaPorGramo() { return 4}
}

object mondongo {
	method energiaPorGramo() { return 100}
}

object bigMac {
	method energiaPorGramo() { return 2}
}

object alcaucil {
	method energiaPorGramo(){	return 20}
}

object sorgo {
	method energiaPorGramo(){return 9}
}

object mijo {
	var joules = 20
	method mojarse(){
		joules = 15
	}
	method secarse(){
		joules = 20
	}
	method energiaPorGramo(){
		return joules
	}
}

object canelones{
	var joules = 20
	var tieneSalsa = false
	var tieneQueso = false
	method ponerSalsa(){
		if(not tieneSalsa){
			tieneSalsa = true
			joules += 5	
		}
	}
	method sacarSalsa(){
		if(tieneSalsa){
			tieneSalsa = false
			joules -= 5	
		}
	}
	method ponerQueso(){
		if(not tieneQueso){
			tieneQueso = true
			joules += 7	
		}
	}
	method sacarQueso(){
		if(tieneQueso){
			tieneQueso = true
			joules -= 7	
		}
	}
	method energiaPorGramo(){return joules}
}
