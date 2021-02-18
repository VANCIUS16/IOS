import UIKit

var x = 0;
let x1:Int = 1;

var y = 0;
let y1:Double = 0.5;

var z = "Hola Mundo";
let z1:String = "Hola Mundo Prima"

var a = true;
let a1:Bool = false;

var numeros:Array<Int> = Array<Int>()
for i in 1...10{
numeros.append(i)
}
numeros.count;

var directorio:Dictionary<String, Int> = Dictionary<String,Int>()
directorio = ["Lunes":1]
directorio = ["Martes":2]
directorio = ["Miercoles":3]
directorio = ["Jueves":4]
directorio = ["Viernes":5]
directorio = ["Sabado":6]
directorio = ["Domingo":7]
directorio = ["Lunes":8]
directorio = ["Martes":9]
directorio = ["Miercoles":10]
directorio["Viernes"] = 15

print("Diccionario: \(directorio)")
//:)
