//
//  Ugly Number II.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-22.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/ugly-number-ii/

/**Write a program to find the n-th ugly number.
 
 Ugly numbers are positive numbers whose prime factors only include 2, 3, 5.
 
 Example:
 
 Input: n = 10
 Output: 12
 Explanation: 1, 2, 3, 4, 5, 6, 8, 9, 10, 12 is the sequence of the first 10 ugly numbers.*/

func nthUglyNumber(_ n: Int) -> Int {
    var nums = [Int](repeating: 0, count: n)
    
    var s = 0
    var t = 0
    var f = 0
    
    nums[0] = 1
    
    for i in 1..<n{
        let min = [nums[s]*2, nums[t]*3, nums[f]*5]
        
        nums[i] = min.min()!
        
        if nums[i] == nums[s]*2{
            s += 1
        }
        
        if nums[i] == nums[t]*3{
            t += 1
        }
        
        if nums[i] == nums[f]*5{
            f += 1
        }
    }
    
    return nums[n-1]
}
