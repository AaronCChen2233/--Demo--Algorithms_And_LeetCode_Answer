//
//  Counting Bits.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-15.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/counting-bits/

/**Given a non negative integer number num. For every numbers i in the range 0 ≤ i ≤ num calculate the number of 1's in their binary representation and return them as an array.

Example 1:

Input: 2
Output: [0,1,1]
Example 2:

Input: 5
Output: [0,1,1,2,1,2]*/

func countBits(_ num: Int) -> [Int] {
    
    if num == 0{
        return [0]
    }
    
    var ans = [Int](repeating: 0, count: num+1)
    
    for i in 1...num{
        ans[i] = i % 2 == 0 ? ans[i/2] : ans[i-1] + 1
    }
    
    return ans
}
