object rolando{
    var property mochila = #{}

    method recolecta(algo){
        //excepcion cuando hay mas de 2 objetos en la mochila
        if(mochila.size()<2){
            mochila.add(algo)
        }else{
            self.error("No podes levantar otro objeto crack, el maximo son 2")
        }
    }

    method tieneEnMochila(algo){
        return mochila.find({elemento => elemento==algo}) 
    }

    method descartar(algo){
        return if(mochila.find({elemento => elemento ==algo})){
            mochila.remove(algo)
        }else{
            self.error("No tenes ese objeto en tu mochila mostro")
        }
    }
}

object espadaDelDestino{
    const property poder = 5
}
object libroDeHechizos{
    const property poder = 4
}
object collarDivino{
    const property poder = 3
}
object armaduraDeAceroValyrio{
    const property poder = 2
}