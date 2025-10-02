object tito {
  const peso = 70
  var rendimiento = 0
  const inercia = 490
  var bebidaActual = whisky

  method peso() = 0

  method bebidaActual() = bebidaActual

  method cambiarBebida(nuevaBebida){
    bebidaActual = nuevaBebida
  }

  method consumir(cantidad, bebida){
    rendimiento = bebida.efecto(cantidad)
  }

  method velocidad() = (rendimiento * inercia) / peso
}

// BEBIDAS

object whisky {
  method efecto(cantidad) = 0.9 ** cantidad
}

object terere {
  method efecto(cantidad) = (0.1 * cantidad).max(1)
}

object cianuro {
  method efecto(cantidad) = 0
}