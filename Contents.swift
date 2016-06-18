//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int
{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades )
    {
        self = velocidadInicial;
    }
}

class Auto
{
    
    var velocidad = Velocidades.Apagado;
    var velocidadActual = 0;
    var velocidadEnCadena = "";
    
    init ( )
    {
        self.velocidad = Velocidades(velocidadInicial: .Apagado )
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena : String )
    {
        
        self.velocidadActual = self.velocidad.rawValue;
        
        switch self.velocidad
        {
            case .Apagado:
                self.velocidadEnCadena = "Apagado";
                self.velocidad = Velocidades.VelocidadBaja;
            case .VelocidadBaja:
                self.velocidadEnCadena = "Velocidad Baja";
                self.velocidad = Velocidades.VelocidadMedia;
            case .VelocidadMedia:
                self.velocidadEnCadena = "Velocidad Media";
                self.velocidad = Velocidades.VelocidadAlta;
            case .VelocidadAlta:
                self.velocidadEnCadena = "Velocidad ALta";
                self.velocidad = Velocidades.VelocidadMedia;
        }
        return( self.velocidadActual, self.velocidadEnCadena )
    }
}

var auto = Auto();

for i in 1...20
{
    var velocidad = auto.cambioDeVelocidad();
    print( "\(i) : \(velocidad.actual) => \(velocidad.velocidadEnCadena)"  )
}



