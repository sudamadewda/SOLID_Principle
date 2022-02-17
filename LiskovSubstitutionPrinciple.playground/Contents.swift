import UIKit


protocol Shape  {
    var width : Double { get }
}

class Rectangle: Shape {
    
    var width: Double = 0
    var length : Double = 0

    var area: Double {
        return width * length
    }
}

class Square : Shape {
    var width: Double = 0
    var area: Double {
       // return width * width
        return pow(width, 2) // power function use for more readable code
    }
}

let objRectengle = Rectangle()
objRectengle.width = 5
objRectengle.length = 7
debugPrint("Area of rectangle : - \(objRectengle.area)")
let objSquare = Square()
objSquare.width = 4
debugPrint("Area of square : - \(objSquare.area)")

