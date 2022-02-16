import UIKit

protocol Shape {
    func calculateArea() -> Double
}

class CircleShap : Shape {
    
    let radius: Double
    init(_radius: Double) {
        radius = _radius
    }
    func calculateArea() -> Double {
        return Double.pi * radius * radius
    }
}
class RectangleShap : Shape {
    
    let width: Double
    let height: Double
    
    init(_width: Double, _height: Double) {
        width = _width
        height = _height
    }
    func calculateArea() -> Double {
        return width * height
    }
}
class AreaCalculator{
    func area(shap: Shape) -> Double {
        return shap.calculateArea()
    }
  
}

let objAreaCalculator = AreaCalculator()
let objCircle = CircleShap(_radius: 10)
let objRectangle = RectangleShap(_width: 2, _height: 2)

debugPrint("Area :- \(objAreaCalculator.area(shap: objRectangle))")



/*class Circle {
    
    let radius: Double
    init(_radius: Double) {
        radius = _radius
    }
    func calculateArea() -> Double {
        return Double.pi * radius * radius
    }
}
class Rectangle {
    
    let width: Double
    let height: Double
    
    init(_width: Double, _height: Double) {
        width = _width
        height = _height
    }
    func calculateArea() -> Double {
        return width * height
    }
}
class AreaCalculator{
    func area(shap: Circle) -> Double {
        return shap.calculateArea()
    }
    func area(shap: Rectangle) -> Double {
        return shap.calculateArea()
    }
}

let objAreaCalculator = AreaCalculator()
let objCircle = Circle(_radius: 10)
let objRectangle = Rectangle(_width: 2, _height: 2)

debugPrint("Area :- \(objAreaCalculator.area(shap: objCircle))")*/
