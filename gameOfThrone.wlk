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

    method guardar() {
      rocaDragon.vaciar()



      
    }

    method tieneEncima() = artefactos

    method tiene() = rocaDragon.almacen() + artefactos

    method posee(element) = artefactos.contains(element)  or rocaDragon.almacen.contains(element)
}

object collar {
}

object espada {
}

object libro {
}

object armadura {
}

object rocaDragon {
    const property almacen = #{}

    method vaciar() {
    almacen.addAll(daenerys.artefactos())
    daenerys.artefactos().clear()
    }
}