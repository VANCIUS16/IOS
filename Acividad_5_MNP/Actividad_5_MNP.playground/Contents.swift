class Persona
{
    var nombre = ""
    var pasos:Int
    var Saludo = "Mucho Gusto"
    var caminado = "Numeros de pasos caminados: "

    init(nombre:String, pasos:Int)
    {
        self.nombre = nombre
        self.pasos = pasos
    }

    func Hablar(nombres:String)
    {
        self.nombre = nombres
    }

    func Caminar(pasos:Int)
    {
        self.pasos = pasos
    }
}

var Juan = Persona(nombre: "Jaun", pasos:50)
Juan.Caminar(pasos:500)

print("El se llama \(Juan.nombre) y dió \(Juan.pasos) pasos")
//****************************************************************

struct Pantalla
{
    var ancho:Int
    var alto:Int

    init(alto:Int, ancho:Int)
    {
        self.alto = alto
        self.ancho = ancho
    }

    func estructura() ->(Int, Int)
    {
        return (self.ancho, self.alto)
    }
}
var pant = Pantalla(alto:1080, ancho:720)
pant.estructura()
//****************************************************************

extension Int
{
    func horas() ->Int
    {
        return self*24*60
    }
}
extension String
{
    var algo:String{
        
        switch self{
            
        case "Domingo":
            return String(1)
        case "Lunes":
            return String(2)
        case "Martes":
            return String(3)
        case "Miercoles":
            return String(4)
        case "Jueves":
            return String(5)
        case "Viernes":
            return String(6)
        case "Sabado":
            return String(7)
        default:
            return "Nada Bro"
        }
    }
}
3.horas()
"Jueves".algo
//****************************************************************


let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var existente:Int?

existente = dias["GDL"]
existente = dias["PUE"]
existente = dias["DF"]

if let cont = dias["DF"]{
    print("SI existe")
}else{
    print("No existe")
}
