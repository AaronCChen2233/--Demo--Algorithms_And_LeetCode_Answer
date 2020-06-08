//
//  Sum of Square Numbers.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-08.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/sum-of-square-numbers/

/**Given a non-negative integer c, your task is to decide whether there're two integers a and b such that a2 + b2 = c.
 
 Example 1:
 
 Input: 5
 Output: True
 Explanation: 1 * 1 + 2 * 2 = 5
 
 
 Example 2:
 
 Input: 3
 Output: False*/

func judgeSquareSum(_ c: Int) -> Bool {
    let rc = Int(Double(c).squareRoot())
    var i = 0
    var j = rc
    while i <= rc{
        let s = i*i + j*j
        if s == c{
            return true
        }
        if s < c {
            i+=1
        }
        if s > c{
            j -= 1
        }
    }
    return false
}
