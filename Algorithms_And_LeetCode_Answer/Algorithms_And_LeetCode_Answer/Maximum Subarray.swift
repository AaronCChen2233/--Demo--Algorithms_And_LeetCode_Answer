//
//  Maximum Subarray.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-07.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation
// MARK: - https://leetcode.com/problems/maximum-subarray/

/**Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

Example:

Input: [-2,1,-3,4,-1,2,1,-5,4],
Output: 6
Explanation: [4,-1,2,1] has the largest sum = 6.
Follow up:

If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.*/

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
            var maxa = [Int]()
    for i in 0..<nums.count{
        if i == 0{
            maxa.append(nums[i])
        }else{
            /**if last is bigger than 0 that mena untill here is increase*/
            if maxa[i-1] > 0{
                maxa.append(nums[i]+maxa[i-1])
            }else{
                maxa.append(nums[i])
            }
        }
        
    }
    return maxa.max()!
    }
}
