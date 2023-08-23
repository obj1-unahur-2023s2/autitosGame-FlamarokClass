import wollok.game.*

object corsa {
	var position
	
	method image() = "autitoRojo.png"
	method position(unaPosicion) {
		position = unaPosicion
	}
	method position() = position
	
	method subir() {
		if(position.y() < game.height()-1 )
			position= position.up(1)
		else position = game.at(position.x(), 0)
	}
	
	method bajar() {
		if(position.y() != 0 )
			position= position.down(1)
		else position = game.at(position.x(), game.height()-1)
	}
	
	method desplazarDerecha() {
		if(position.x() < game.width()-1 )
			position= position.right(1)
		else position = game.at(0, position.y())
	}
	
	method desplazarIzquierda() {
		if(position.x() != 0 )
			position= position.left(1)
		else position = game.at(game.width()-1 , position.y())
	}
	
}
	

