//
//  Find All Numbers Disappeared in an Array.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-15.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/

/**Given an array of integers where 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.
 
 Find all the elements of [1, n] inclusive that do not appear in this array.
 
 Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.
 
 Example:
 
 Input:
 [4,3,2,7,8,2,3,1]
 
 Output:
 [5,6]*/

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    
    var ans = [Int]()
    
    var isM = [Bool](repeating: true, count: nums.count)
    
    for n in nums{
        isM[n-1] = false
    }
    
    var i = 1
    for m in isM{
        
        if m {
            ans.append(i)
        }
        i += 1
    }
    return ans

}
