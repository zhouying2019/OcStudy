//
//  main.swift
//  test1
//
//  Created by admin on 2022/4/13.
//

import Foundation

class FTTradeAnimal {
    var length : Double
    var weight : Double
    var name : String

    init(length : Double, weight : Double, name : String) {
        self.length = length
        self.weight = weight
        self.name = name
    }

    func run() {
        print("\(self.name) is running")
    }
    func eat(food : String) -> String {
        print("\(self.name)is eating \(food)")
        return food;
    }
    class func taste(){
        print("animal is tasting")
    }
}

var animal1 = FTTradeAnimal(length: 100, weight: 200, name: "lisa")
animal1.run()
print(animal1.eat(food: "apple"))
FTTradeAnimal.taste();
//print("Hello, World!")

