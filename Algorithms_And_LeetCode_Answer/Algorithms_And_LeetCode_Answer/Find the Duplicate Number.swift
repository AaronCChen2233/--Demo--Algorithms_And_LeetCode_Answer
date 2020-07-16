//
//  Find the Duplicate Number.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-16.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation
// MARK: - https://leetcode.com/problems/find-the-duplicate-number/

/**Given an array nums containing n + 1 integers where each integer is between 1 and n (inclusive), prove that at least one duplicate number must exist. Assume that there is only one duplicate number, find the duplicate one.

Example 1:

Input: [1,3,4,2,2]
Output: 2
Example 2:

Input: [3,1,3,4,2]
Output: 3*/

func findDuplicate(_ nums: [Int]) -> Int {
    var t = nums[0]
    var r = nums[0]
    
    t = nums[t]
    r = nums[nums[r]]
    
    while  t != r {
        t = nums[t]
        r = nums[nums[r]]
    }
    
    t = nums[0]
    while t != r{
        t = nums[t]
        r = nums[r]
    }
    
    return r
    
}
