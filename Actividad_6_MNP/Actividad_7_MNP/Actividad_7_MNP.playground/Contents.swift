var numeros:[Float] = [8.3,10.5,9.9]
var datos = [3,7,9,2]
var indice:Int = 0

for i in numeros
{
    numeros[indice] = i*2
    indice
}
numeros

func Impuesto(arreglo:[Float]) -> [Float]
{
    var resultado:[Float] = []
    for i in arreglo
    {
        resultado.append(i*0.16)
    }
    return resultado
}

Impuesto(arreglo: numeros)
numeros
//-------------------------------------------------------

let Suma = {(x:Int, y:Int) -> Int in return x + y}
Suma(2, 2)

func SumaTres(a:Int, b:Int, c:Int) -> Int
{
    return Suma(a, b) + c
}

SumaTres(a:2, b:2, c:2)
//-------------------------------------------------------

extension Array
{
    func SAcumulada<T> (inicial:T, acumula:(T, Element)->T)->T
    {
        var respuesta:T = inicial
        for valor in self
        {
            respuesta = acumula(respuesta, valor)
        }
        return respuesta
    }
}
//---------------------------------------------------------

let datos2 = [3,4,5,6,1,0]
var sumarle2 = datos2.map{a in return a + 2}

var precios = [4.2, 5.3,8.2, 4.5]
var prmasiva = precios.map{a in return a + (a * 0.16)}
sumarle2
prmasiva

var filtro = datos2.filter{a in a > 3}
 filtro

var filtro2 = prmasiva.filter{a in a > 6.0}
filtro2

//Suma acumulada
var acumulado = datos2.reduce(0){(a, b) in a + b}
acumulado
//ordenado de mayor a menor
 var orden = datos2.sorted{(a, b) -> Bool in a > b}
 orden

//Combinación de métodos
var porDosFiltroAcumulado = datos2.map{a in a * 2}.filter{a in a > 3}.reduce(0){(a, b) in a + b}
porDosFiltroAcumulado
