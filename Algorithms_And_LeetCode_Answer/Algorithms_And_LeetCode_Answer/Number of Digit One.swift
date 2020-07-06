//
//  Number of Digit One.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-06.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/number-of-digit-one/

/**Given an integer n, count the total number of digit 1 appearing in all non-negative integers less than or equal to n.

Example:

Input: 13
Output: 6
Explanation: Digit 1 occurred in the following numbers: 1, 10, 11, 12, 13.*/

func countDigitOne(_ n: Int) -> Int {
    let l = String(n).count
    var ans = 0
    
    var g = 1
    var o = 10
    
    for _ in 1...l{
        let left = n % o
        let mix = [0,left-g+1].max()!
        let ug = (n/o)*g
        ans += ug + [g, mix].min()!
        
        g *= 10
        o *= 10
    }
    
    return ans
}
