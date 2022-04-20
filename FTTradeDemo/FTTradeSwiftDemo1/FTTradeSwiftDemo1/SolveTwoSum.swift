//
//  SolveTwoSum.swift
//  FTTradeSwiftDemo1
//
//  Created by admin on 2022/4/14.
//

import Foundation
class SolveTwoSum {
    class func solve(nums : [Int], target : Int) -> [Int] {
        var map = [Int : Int]();
        for (index, value) in nums.enumerated() {
            let tmp = target - nums[index];
            if map.keys.contains(tmp) {
                if let v = map[tmp] {
                    return [index, v];
                }
            }
            map[value] = index;
        }
       
        fatalError("fail")
       
    }
}
