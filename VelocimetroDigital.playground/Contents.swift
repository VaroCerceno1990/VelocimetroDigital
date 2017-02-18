
/*
 Velocimetro digital
 Autor:Álvaro Ramírez Cerceño
 Semana 4
 */

import UIKit


enum Velocidades : Int{
    case Apagado = 0,VelocidadBaja=20,VelocidadMedia=50,VelocidadAlta=120
    
    init(velocidadInicial : Velocidades )
    {
        self=velocidadInicial
    }
    
    func velocidadEnCadena() -> String{
        switch self{
        case .Apagado:
            return "Apagado"
        case .VelocidadBaja:
            return "Velocidad Baja"
        case .VelocidadMedia:
            return "Velocidad Media"
        case .VelocidadAlta:
            return "Velocidad Alta"
        }
    }
}


class Auto
{
    var velocidad:Velocidades
    init()
    {
       velocidad=Velocidades.init(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad()->( actual : Int, velocidadEnCadena: String)
    {
        let velocidadActual = self.velocidad
       
     
        var tupla:(Int,String)
        
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            break
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            break
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            break
        default:
            velocidad = .VelocidadMedia
            break
        }
        tupla=(velocidadActual.rawValue, velocidadActual.velocidadEnCadena())
        return tupla
    }
}



var auto=Auto()
var tuplaMostrar:(Int,String)
for i in 0 ..< 20{
    tuplaMostrar=auto.cambioDeVelocidad()
    print(tuplaMostrar)
    
}



