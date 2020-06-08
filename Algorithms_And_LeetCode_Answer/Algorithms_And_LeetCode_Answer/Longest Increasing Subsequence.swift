//
//  Longest Increasing Subsequence.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-08.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/longest-increasing-subsequence/

/**Given an unsorted array of integers, find the length of longest increasing subsequence.
 
 Example:
 
 Input: [10,9,2,5,3,7,101,18]
 Output: 4
 Explanation: The longest increasing subsequence is [2,3,7,101], therefore the length is 4.
 Note:
 
 There may be more than one LIS combination, it is only necessary for you to return the length.
 Your algorithm should run in O(n2) complexity.
 Follow up: Could you improve it to O(n log n) time complexity?*/

func lengthOfLIS(_ nums: [Int]) -> Int {
    if nums.count == 0{
        return 0
    }
    
    var d = [Int]()
    
    for i in 0..<nums.count{
        var j = i
        var l = 1
        while j >= 0{
            if nums[i] > nums[j] {
                if l < d[j]+1{
                    l = d[j]+1
                }
            }
            j -= 1
        }
        d.append(l)
    }
    return d.max()!
}
