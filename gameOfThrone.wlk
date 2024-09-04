object daenerys{
    const property artefactos = #{}
    const property historial = []

   
    var cantMax = 2

    method encontrar(element) {
        historial.add(element)
        if ( artefactos.size() < cantMax) { /*&& !artefactos.contains(element) por si me pide que no se pueda repetir un elemento en una misma lista*/ 
            artefactos.add(element)
        } 
    }

    method cantidadMax(valor) { cantMax = valor }

    method cantMax() = cantMax

    method volverA(lugar) {  //algo más generico
        lugar.guardar(self.artefactos())
        artefactos.clear()
    }

    method tieneEncima() = self.artefactos()

    method posesiones() = castillo.almacen() + self.artefactos()

    method posee(element) = self.posesiones().contains(element) 
    
    method historia() = historial
    
}

object collar { }

object espada { }

object libro { }

object armadura { }

object castillo {
    const property almacen = #{}

    method guardar(elements) {
    almacen.addAll(elements)
    }
}