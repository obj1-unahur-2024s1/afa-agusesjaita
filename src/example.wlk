import jugadores.*
import estadios.*

object afa {
	var precio 
	var recaudado = 0
	
	/* ya que el precio es asignado previamente, no veo la necesidad de un metodo que
	considere la inflacion*/
	method entradaPrecio(cantidad) {precio = cantidad}
	
	method entradaPrecio() = precio
	
	method recaudacionTotal() = recaudado
	
	method dineroTotal(estadio, jugador) {
		recaudado = (estadio.capacidad() * jugador.popularidad()) * self.entradaPrecio()
	}
	
	method realizarHomenaje(estadio, jugador) {
		self.dineroTotal(estadio, jugador)
		self.pagarAlquiler(estadio)
		self.pagarViatico(jugador)	
		recaudado = recaudado - 10000000
	}
	
	method pagarAlquiler(estadio) {
		recaudado = recaudado - estadio.alquiler()
	}
	
	method pagarViatico(jugador) {
		recaudado = recaudado - jugador.viatico()
	}
	
}

