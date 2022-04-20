//
//  FTTradeAnimal.swift
//  FTTradeSwiftDemo1
//
//  Created by admin on 2022/4/13.
//

import Foundation

class FTTradeAnimal{
    var name : String;
    var length : Double;
    var weight :Double;
    //构造方法不用写计算属性
    var s : Double { return length * weight }
    private var age = 1;
    var wrappedAge : Int {
        get { return age}
        set { age = min(newValue,10)}
    }
        
    init(name : String, lenght : Double, weight : Double, age : Int) {
        self.name = name;
        self.length = lenght;
        self.weight = weight;
        self.wrappedAge = age;
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
