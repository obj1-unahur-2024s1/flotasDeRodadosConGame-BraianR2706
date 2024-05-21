import Dependencia.*

class ChevroletCorsa{
	const capacidad = 4
	const velocidadMax = 150
	const peso = 1300
	var color = null
	method capacidad() = capacidad
	method velocidadMax() = velocidadMax
	method peso() = peso
	method color() = color
}

class RenaultKwid{
	var tieneTanqueC = null
	var capacidad = if(tieneTanqueC) 3 else 4
	var velocidadMax = if(tieneTanqueC) 110 else 120
	var peso = if(tieneTanqueC) 1350 else 1200
	const color = azul
	
	method tienetanqueC() = tieneTanqueC
	method capacidad() = capacidad
	method velocidadMax() = velocidadMax
	method peso() = peso
	method color() = color
	
//	method asignarTanqueCombustible(){
//		tieneTanqueC = not(tieneTanqueC)
//		self.capacidadTotal()
//		self.cambiarVelocidadMax()
//		self.cambiarPeso()
//	}
//	method color() = color
//	method velocidadMax() = velocidadMax
//	method capacidadTotal(){
//		if(tieneTanqueC) capacidad = 3 else capacidad = 4
//	}
//	method cambiarVelocidadMax(){
//		if(tieneTanqueC) velocidadMax = 110 else 120 
//	}
//	
//	method cambiarPeso(){
//		if(tieneTanqueC) peso = 1350 else 1200
//	}
}

class Trafic{
	var interior = null
	var capacidad = if(interior == interiorPopular.interior()) 12 else 5
	const pesoBase = 4000
	var peso = pesoBase + self.asignarPeso()
	var velocidadMax = if(motor == motorPulenta.motor()) 1300 else 80
	const color = blanco
	var motor = null
	
	method color() = color
	method interior() = interior
	method capacidad() = capacidad
	method pesoBase() = pesoBase
	method peso() = peso
	method motor() = motor
	method velocidadMax() = velocidadMax
	method asignarPeso(){
		peso = pesoBase + if(interior == interiorComodo.interior()) 700 else 1000 + if(motor == motorPulenta.motor()) 800 else 500
		return peso
	}
}

object interiorComodo{
		method interior() = self
		method capacidad() = 5
		method peso() = 700
}

object interiorPopular{
	method interior() = self
	method capacidad() = 12
	method peso() = 1000
}

object motorPulenta{
	method motor() = self
	method peso() = 800
	method velocidadMax() = 1300
}

object motorBaraton{
	method motor() = self
	method peso() = 500
	method velocidadMax() = 80
}


class AutoEspecial{
	var capacidad = null
	var velocidadMax = null
	var peso = null
	var color = null
	
	method color() = color
	method capacidad() = capacidad
	method peso() = peso
	method velocidadMax() = velocidadMax
	
}

object azul{
	method color() = self
}
object blanco{
	method color() = self
}
object rojo{
	method color() = self
}
object beige{
	method color() = self
}
object verde{
	method color() = self
}