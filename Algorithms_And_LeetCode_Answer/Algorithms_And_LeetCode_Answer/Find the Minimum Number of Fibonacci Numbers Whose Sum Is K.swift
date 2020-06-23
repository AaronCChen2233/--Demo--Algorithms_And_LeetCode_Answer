//
//  Find the Minimum Number of Fibonacci Numbers Whose Sum Is K.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-22.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/find-the-minimum-number-of-fibonacci-numbers-whose-sum-is-k/

/**
 Given the number k, return the minimum number of Fibonacci numbers whose sum is equal to k, whether a Fibonacci number could be used multiple times.

 The Fibonacci numbers are defined as:

 F1 = 1
 F2 = 1
 Fn = Fn-1 + Fn-2 , for n > 2.
 It is guaranteed that for the given constraints we can always find such fibonacci numbers that sum k.
  

 Example 1:

 Input: k = 7
 Output: 2
 Explanation: The Fibonacci numbers are: 1, 1, 2, 3, 5, 8, 13, ...
 For k = 7 we can use 2 + 5 = 7.
 Example 2:

 Input: k = 10
 Output: 2
 Explanation: For k = 10 we can use 2 + 8 = 10.
 Example 3:

 Input: k = 19
 Output: 3
 Explanation: For k = 19 we can use 1 + 5 + 13 = 19.
 */

func findMinFibonacciNumbers(_ k: Int) -> Int {
    var l = k
    var fa = [1, 1]
    var ans = 0
    
    
    while fa[fa.count-1] < k {
        fa.append(fa[fa.count-1]+fa[fa.count-2])
    }
    
    var r = fa.count
    
    while r>0 {
        r -= 1
        while fa[r] <= l {
            l -= fa[r]
            ans += 1
            print(fa[r])
        }
    }

    return ans
}
