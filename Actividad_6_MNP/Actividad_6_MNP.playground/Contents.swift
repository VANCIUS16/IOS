import Cocoa


// Potencia
infix operator +++
func potencia(a:Int, b:Int)->Double
{
    let n1 = Double(a)
    let n2 = Double(b)
    return pow(n1, n2)
}
10+++5

// Arreglo de Menor a Mayor
var array = [2,5,3,4]

prefix operator |>
prefix func |> (coleccion:Array<Int>)->Array<Int>
{
    return coleccion.sorted()
}
|>array
/*====================================================*/

// Subscript
class Modif
{
    var valores:[Int]
    
    init(v:[Int])
    {
        self.val = v
    }
    subscript(index: Int)->Int
    {
        get
        {
            return val[index]
        }
        set(pot)
        {
            val[index] = val[index] * pot
        }
    }
}
let final = Modif(v: array)

array
final[2]
final[2]=4
final.val
/*====================================================*/

//Obtener Posicion
struct Posiciones
{

    var posicion:CGPoint

    init(pos:CGPoint)
    {
        self.posicion = pos
    }
    subscript(index:Int)->CGPoint
    {
        get
        {
            return self.posicion
        }
        set(posn)
        {
            self.posicion = posn
        }
    }
}

var pos = Posiciones(pos: CGPoint(x:3.3, y:1.2))
pos.posicion
pos.posicion = CGPoint (x:9.6, y:7.7)
pos.posicion
/*====================================================*/

//Errores
var array = ["A":1, "B":2,"C":3]
func Existe(found:String)
{
    guard let founded = array[found] else
    {
        print("Valor ingresado inexistente")
        return
    }
    print("El valor buscado:  \(founded), si  existe")
}

Existe(found:"B")
Existe(found:"Z")
/*====================================================*/
