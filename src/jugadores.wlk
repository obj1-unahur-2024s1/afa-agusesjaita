object messi {
	var transporte = 0
	var conocido
	
	/*ya que la popularidad de messi es a asignar, no veo la necesidad de contemplar
	 un metodo que la haga bajar por x motivo, cuando puedo simplemente actualizarla/cambiarla*/
	method popularidad(porcentaje) {conocido = porcentaje}
	
	method popularidad() = conocido / 100
	
	method viaticoAcordado(cantidad) {transporte = cantidad}
	
	method viatico() = transporte
}

object ronaldo {
	var transporte = 0
	
	method popularidad() = messi.popularidad() / 2
	
	method viaticoAcordado(cantidad) {transporte = cantidad}
	
	method viatico() = transporte
}

object mbappe {
	var transporte = 0
	var conocido = 0
	
	method popularidad(edad, cantidadGoles) {conocido = (36.min(edad) * 2) + cantidadGoles}
	
	method popularidad() = conocido / 100
	
	method viaticoAcordado(cantidad) {transporte = cantidad}
	
	method viatico() = transporte
}
