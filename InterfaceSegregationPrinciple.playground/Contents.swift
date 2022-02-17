import UIKit

protocol Mammal  {
    func eat()
    func walk()
}
protocol Human: Mammal {
    func goToWork()
    func buyACar()
   
}
protocol Animal: Mammal {
   // We can added another fun here for Animal
    func hunt()
}

class Person: Human {
    func goToWork() {
        debugPrint("Person goes to work")
    }
    
    func buyACar() {
        debugPrint("Person buys a house")
    }
    
    func eat() {
        debugPrint("Person eats food")
    }
    
    func walk() {
        debugPrint("Person walks")
    }
    
    
}

class Dogs: Animal {
    func hunt() {
        
    }
    
    func eat() {
        
    }
    
    func walk() {
        
    }
    

    
}
