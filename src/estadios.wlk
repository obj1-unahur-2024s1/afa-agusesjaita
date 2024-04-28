object bombonera {
	var espacio = 0
	var costo = 0
	
	method capacidad(cantidad) {espacio = cantidad}
	
	method alquiler(precio) {costo = precio}
	
	method capacidad() = espacio
	
	method alquiler() = costo
}

object monumental {
	var espacio = 0
	var costo = 0
	
	method capacidad(porcentajeObras) {
		espacio = if (porcentajeObras.between(0, 25)) 20000 else
				  if (porcentajeObras.between(25, 50)) 40000 else
				  if (porcentajeObras.between(50, 75)) 60000 else
					80000
	}
	
	method alquiler(precio) {costo = precio}
	
	method capacidad() = espacio
	
	method alquiler() = costo
}
