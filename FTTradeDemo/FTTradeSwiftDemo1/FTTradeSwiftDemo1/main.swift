//
//  main.swift
//  FTTradeSwiftDemo1
//
//  Created by admin on 2022/4/13.
//

import Foundation
//test animal
var animal1 = FTTradeAnimal(name: "lisa", lenght: 130.9, weight: 200.7, age: 23);
animal1.eat(food: "banana");
print("\(FTTradeAnimal.taste().nose) + \(FTTradeAnimal.taste().eyes)");
print("animal的面积\(animal1.s)")

var dog1 = FTTradeDog(name: "rose", lenght: 112.2, weight: 22.2, age: 33);
dog1.bark();
dog1.eat(food: "pineaple");
dog1.furColor = "oliver"
print(dog1.wrappedAge)
dog1.swim();
print(dog1.xuAge);

var cat1 = FTTradeCat(name: "lily", lenght: 111, weight: 211, age: 3);
print(cat1.wrappedAge)

//enum
enum Planet: Int ,CaseIterable{
    case mercury , venus, earth, mars, jupiter, saturn, uranus, neptune
}
for p in Planet.allCases {
    print(p.rawValue);
}



