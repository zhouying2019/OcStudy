//
//  FTTradeCat.swift
//  FTTradeSwiftDemo1
//
//  Created by admin on 2022/4/13.
//

import Foundation

class FTTradeCat :FTTradeAnimal {
    var pawColor : String;
    //所有属性都要在构造时被赋初值
    init() {
        
        self.pawColor = "white";
        super.init(name: "name", lenght: 33, weight: 10, age: 90);

    }
    
     override init(name: String, lenght: Double, weight: Double, age: Int) {
         //init参数和父类init相同就算是重写 要加override，可以没有override的构造函数
        self.pawColor = "green"
        super.init(name: name, lenght: lenght, weight: weight, age: age)
    }
    
    init(name: String, lenght: Double, weight: Double, age: Int, pawColor: String){
        //子类独有的属性要在superinit之前赋值
        self.pawColor = pawColor;
        super.init(name: name, lenght: lenght, weight: weight, age: age);
        //如果要用到父类的属性就要写superinit，然后再对那些属性赋值，所以子类的构造函数必须要写上superinit。
        self.name = name;
        self.length = lenght;
        self.weight = weight;
//        self.age = age;
//        self.pawColor = pawColor;
    }
    
    convenience init(name: String, lenght: Double, weight: Double, age: Int, furColor: String) {
        //便利构造函数需要调用制定构造函数，而且self.init要写在其他self之前
        self.init();
        self.pawColor = furColor;
    }

    override func eat(food: String) {
        //重写成员方法不需要super
//        super.eat(food: food);
        print("subclass test-----------------------\(food) ");
    }
    func fly() {
        print("\(self.name) is flying");
    }
}
