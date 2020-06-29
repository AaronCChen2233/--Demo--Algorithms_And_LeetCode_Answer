//
//  Subsets.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-28.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/subsets/

/**
 Given a set of distinct integers, nums, return all possible subsets (the power set).

 Note: The solution set must not contain duplicate subsets.

 Example:

 Input: nums = [1,2,3]
 Output:
 [
   [3],
   [1],
   [2],
   [1,2,3],
   [1,3],
   [2,3],
   [1,2],
   []
 ]
 */

func subsets(_ nums: [Int]) -> [[Int]] {
    var ans = [[Int]]()
    
    for n in nums{
        var temp = ans
        
        for i in 0..<temp.count{
            temp[i].append(n)
        }
        
        for t in temp{
            ans.append(t)
        }
        
        ans.append([n])

    }
    
    ans.append([])
    
    return ans
}
