//
//  Partition Equal Subset Sum.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-05.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/partition-equal-subset-sum/

/**
 Given a non-empty array containing only positive integers, find if the array can be partitioned into two subsets such that the sum of elements in both subsets is equal.

 Note:

 Each of the array element will not exceed 100.
 The array size will not exceed 200.
  

 Example 1:

 Input: [1, 5, 11, 5]

 Output: true

 Explanation: The array can be partitioned as [1, 5, 5] and [11].
  

 Example 2:

 Input: [1, 2, 3, 5]

 Output: false

 Explanation: The array cannot be partitioned into equal sum subsets.
 */

func canPartition(_ nums: [Int]) -> Bool {
    let s = nums.reduce(0 , +)
    
    if s % 2 != 0{
        return false
    }
    
    let h  = s / 2
    
    var ansarr = [Bool](repeating: false, count: h + 1)
    ansarr[0] = true
    
    for n in nums{
        var i = h
        while i >= n{
            ansarr[i] = ansarr[i] || ansarr[i-n]
            i-=1
        }
    }
    
    return ansarr[h]
   }
