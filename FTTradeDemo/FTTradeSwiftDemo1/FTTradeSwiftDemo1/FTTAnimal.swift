//
//  FTTAnimal.swift
//  FTTradeSwiftDemo1
//
//  Created by admin on 2022/4/13.
//

import Foundation

class FTTradeAnimal{
    var name : String;
    var length : Double;
    var weight :Double;
    var age : Int;
    
    init(name : String, lenght : Double, weight : Double, age : Int) {
        self.name = name;
        self.length = lenght;
        self.weight = weight;
        self.age = age;
    }
    
    private func run() {
        print("\(self.name) is running");
    }
    
    func eat(food : String) {
        run();
        print("\(self.name) is eating \(food)");
    }
    
    class func taste()->(nose : String, eyes : String) {
        print("animal is tasting");
        return ("cc","ss");
    }
}
