//
//  Permutations II.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-19.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/permutations-ii/

/**Given a collection of numbers that might contain duplicates, return all possible unique permutations.

Example:

Input: [1,1,2]
Output:
[
  [1,1,2],
  [1,2,1],
  [2,1,1]
]*/

func permuteUnique(_ nums: [Int]) -> [[Int]] {
    var result = [[Int]]()
    var used = [Bool](repeating: false, count: nums.count)
    var t = [Int]()
    let sortedNums = nums.sorted()
    
    backtrack(&result, &used, &t, sortedNums)
    
    return result
    
}

func backtrack( _ r:inout [[Int]], _ used: inout [Bool], _ t: inout [Int], _ ns:[Int]){
    
    if (t.count == ns.count){
        r.append(t)
    }else{
        for i in 0..<ns.count{
            if used[i]{
                continue
            }
            
            if i > 0 && ns[i-1] == ns[i] && !used[i-1]{
                continue
            }
            used[i] = true
            
            t.append(ns[i])
            backtrack(&r, &used, &t, ns)
            used[i] = false
            t.remove(at: t.count-1)
        }
        
    }
}
