//
//  3Sum.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-14.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/3sum/

/**Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

Note:

The solution set must not contain duplicate triplets.

Example:

Given array nums = [-1, 0, 1, 2, -1, -4],

A solution set is:
[
  [-1, 0, 1],
  [-1, -1, 2]
]*/

func threeSum(_ nums: [Int]) -> [[Int]] {
    var ans = [[Int]]()
    
    let sorted = nums.sorted()
    var i = 0
    
    for a in sorted{
        if i > 0 && a == sorted[i-1]{
            i += 1
            continue
        }
        
        var l = i + 1
        var r = sorted.count - 1
        
        while l < r {
            let s = a + sorted[l] + sorted[r]
            if s > 0{
                r -= 1
            }else if s < 0{
                l += 1
            }else{
                ans.append([a, sorted[l], sorted[r]])
                l += 1
                while sorted[l] == sorted[l - 1] && l < r {
                    l += 1
                }
            }
        }
        i += 1
    }

    return ans
}
