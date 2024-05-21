import Autos.*

class Dependencia {
	var flota = [ ]
	var empleados = null
	
	method flota() = flota
	method empleados() = empleados
	
	method agregarRodado(rodado) = flota.add(rodado)
	
	method quitarRodado(rodado) = flota.remove(rodado)
	
	method pesoTotalFlota() = flota.sum({rodado => rodado.peso()})
	
	method tamanioFlota() = flota.size()
	
	method estaBienEquipada() = (flota.size() >= 3) and flota.all({rodado => rodado.velocidadMax() >= 100})
	
	method capacidadTotalEnColor(color) {
		const flotaDeColor = flota.filter({rodado => rodado.color() == color})
		return flotaDeColor.sum({rodado => rodado.capacidad()})
	}
	
	method colorDelRodadoMasRapido(){
		var colorAutoMasRapido = flota.max({rodado => rodado.velocidadMax()})
		return colorAutoMasRapido.color()
	} 	
	
	method capacidadFaltante() = self.empleados() - self.capacidadtotal()
	
	method capacidadtotal() = flota.sum({rodado => rodado.capacidad()})
	
	method esGrande() = ((empleados >= 40) and (flota.size() >= 5))
}
