object daenerys{
    const property artefactos = #{}
    var cantMax = 2

    method encontrar(element) {
        if ( artefactos.size() < cantMax) /*&& !artefactos.contains(element)*/ {
            artefactos.add(element)
        } 
    }

    method cantidadMax(valor) { cantMax = valor }

    method cantMax() = cantMax

    method volverACasa() {
      rocaDragon.vaciar()
    }

    method tieneEncima() = artefactos

    method posesiones() = rocaDragon.almacen() + artefactos

    method posee(element) = self.posesiones().contains(element)
}

object collar { }

object espada { }

object libro { }

object armadura { }

object rocaDragon {
    const property almacen = #{}

    method vaciar() {
    almacen.addAll(daenerys.artefactos())
    daenerys.artefactos().clear()
    }
}

object historia {
  
}