//
//  Single Number.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-13.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/single-number/

/**Given a non-empty array of integers, every element appears twice except for one. Find that single one.

Note:

Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

Example 1:

Input: [2,2,1]
Output: 1
Example 2:

Input: [4,1,2,1,2]
Output: 4*/

func singleNumber(_ nums: [Int]) -> Int {
    /**this one too slow*/
//    var temp = [Int]()
//
//    for n in nums{
//
//        if let i = temp.firstIndex(of: n){
//            temp.remove(at: i)
//        }else{
//            temp.append(n)
//        }
//    }
//
//    return temp[0]
  
    var r = 0
    
    for n in nums{
        r = r ^ n
    }
    return r
}
