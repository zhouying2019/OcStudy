//
//  FTTradeDog.swift
//  FTTradeSwiftDemo1
//
//  Created by admin on 2022/4/13.
//

import Foundation

class FTTradeDog :FTTradeAnimal, Talk {
    
    
    var furColor : String? {
        willSet {
            print("willset----\(self.furColor!)")
        }
        didSet {
            print("didSet----\(self.furColor!)")
        }
    }
    //不可选必须有个初始化的值
    //var mouth: String = "testmouth"
    var mouth: String?
    //enum不属于实例对象 属于类对象
    enum Planet: Int {
        case mercury , venus, earth, mars, jupiter, saturn, uranus, neptune
    }

    
    override init(name: String, lenght: Double, weight: Double, age: Int) {
        
//        self.furColor = "red";
//        self.mouth = "big mouth"
        super.init(name: name, lenght: lenght, weight: weight, age: age);
//        self.furColor = "red";

    }
    
    convenience init(name: String, lenght: Double, weight: Double, age: Int, furColor: String) {
        self.init(name: name, lenght: lenght, weight: weight, age: age);
        self.furColor = furColor;
    }
    
    required init(mouth : String) {
        self.mouth = mouth;
//        self.furColor = "red"
        super.init(name: "", lenght: 11, weight: 1, age: 1)
    }
    
    override func eat(food: String) {
//        super.eat(food: food);
        print("subclass test-----------------------\(food) ");
    }
    
    func bark() {
        print("\(self.name) is barking");
    }
    
    //
    func useMouth() {
        if let tmp = self.mouth {
            print("\(tmp)")
        }else {
            print("fail")
        }
    }
}

extension FTTradeDog {
    var xuAge : Int { return self.wrappedAge + 5}
    
    func swim() {
        print("\(self.name) is swimming")
    }
    //不能在extension里重写协议的构造器
//    required init(mouth: String) {
//        self.mouth = mouth;
//
//    }
    
}

protocol Talk {
    var mouth : String? {set get}
    init(mouth : String);
    
    func useMouth();
}
