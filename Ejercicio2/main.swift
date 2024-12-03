import Foundation

// EJERCICIO 2

var continuarJugando = true
var bala = 0
var numeroJugador = 1
repeat {
    print("¿Quieres jugar a la ruleta rusa? [y] [n]: ")
    let respuesta = readLine()!
    if respuesta == "y"
    {
        
        if bala == 0 {
            bala = Int.random(in: 1..<5)
        }
        
        print("El número que mata es: ", bala)
        
        print("Pulsa enter para continuar: ")
        print(readLine()!)
    
        let disparo = Int.random(in: 1..<5)
        
        if disparo == bala
        {
        
            print("El número que ha salido al jugador\(numeroJugador)  es: \(disparo). Has perdido")
        }
        else
        {
            if numeroJugador == 1
            {
                numeroJugador = 2
            }
            else
            {
                numeroJugador = 1
            }
            print("El número que ha salido al jugador\(numeroJugador)  es: \(disparo). Has ganado")
        }
        
    }
    else if respuesta == "n"
    {
        continuarJugando = false
    }
    else
    {
        print("ERROR: responde con [y] o [n]")
    }
} while continuarJugando == true
