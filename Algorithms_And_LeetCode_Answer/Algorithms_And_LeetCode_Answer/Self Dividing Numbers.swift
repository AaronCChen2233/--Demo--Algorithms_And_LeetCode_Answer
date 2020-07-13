//
//  Self Dividing Numbers.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-13.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/self-dividing-numbers/

/**A self-dividing number is a number that is divisible by every digit it contains.
 
 For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.
 
 Also, a self-dividing number is not allowed to contain the digit zero.
 
 Given a lower and upper number bound, output a list of every possible self dividing number, including the bounds if possible.
 
 Example 1:
 Input:
 left = 1, right = 22
 Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]*/

func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var a = [Int]()
    var i = left
    
    while i <= right {
        
        if isDivide(i){
            a.append(i)
        }
        i += 1
    }
    return a
}

func isDivide(_ n:Int)->Bool{
    var e = n
    
    while e != 0 {
        let me = e%10
        /**because divide number not allow 0*/
        if me == 0 || n % me != 0{
            return false
        }
        e /= 10
    }
    return true
}
