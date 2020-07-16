//
//  Move Zeroes.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-16.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/move-zeroes/

/**Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Example:

Input: [0,1,0,3,12]
Output: [1,3,12,0,0]
Note:

You must do this in-place without making a copy of the array.
Minimize the total number of operations.*/

func moveZeroes(_ nums: inout [Int]) {
    var ans = [Int]()
    var zc = 0
    for n in nums{
        if n == 0{
            zc += 1
        }else{
            ans.append(n)
        }
    }
    
    for _ in 0..<zc{
        ans.append(0)
    }
    
   nums = ans
 }
