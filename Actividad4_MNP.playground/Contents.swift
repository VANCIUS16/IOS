import Darwin

var datos = [3,6,9,2,4,1]
//var menor = []

for dato in datos{
  if dato<5{
    //menor = [datos];
    print(dato)
  }
}

//------------------------------
var r = 0
func suma(a:Int, b:Int)-> Int{
    r = a + b;
    return r
}
print(r)
suma(a:2,b:4)
//-----------------------------

func potencia(a:Float, b:Float)-> Float{
    let x:Float = pow(a,b)
    return x
}
potencia(a:2,b:3)
//------------------------------

var mesess = ["Enero":1, "Febrero":2, "Marzo":3, "Abril":4, "Mayo":5, "Junio":6, "Julio":7, "Agosto":8, "Septiembre":9, "Octubre":10, "Noviembre":11, "Diciembre":12]
enum meses {
       case Enero
       case Febrero
       case Marzo
       case Abril
       case Mayo
       case Junio
       case Julio
       case Agosto
       case Septiembre
       case Octubre
       case Noviembre
       case Diciembre
}

func numeroMes(meses:meses)-> meses{
   
 switch meses{
 case .Enero:
        print(1)
 case .Febrero:
        print(2)
 case .Marzo:
        print(3)
 case .Abril:
        print(4)
 case .Mayo:
        print(5)
 case .Junio:
        print(6)
 case .Julio:
        print(7)
 case .Agosto:
        print(8)
 case .Septiembre:
        print(9)
 case .Octubre:
        print(10)
 case .Noviembre:
        print(11)
 case .Diciembre:
        print(12)
  }
    return meses
}
var mes:meses = .Enero
numeroMes(meses:mes)
