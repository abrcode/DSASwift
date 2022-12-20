//
//  TwoSum.swift
//
//  Created by Aniket Rao on 20/12/22.
//

import Foundation

class TwoSum {
    
    func twoSum(_ nums: [Int] , _ target : Int) -> [Int] {
        
        var map : [Int : Int] = [:]
        
        for (i , n) in nums.enumerated() {
            
            let diff = target - n
            
            if let anotherIndex = map[diff] {
                return [i, anotherIndex]
            } else {
                map[n] = i
            }
        }
        return []
    }
    
}
