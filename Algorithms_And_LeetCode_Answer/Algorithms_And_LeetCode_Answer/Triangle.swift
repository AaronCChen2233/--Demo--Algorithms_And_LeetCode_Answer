//
//  Triangle.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-26.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/triangle/

/**
 Given a triangle, find the minimum path sum from top to bottom. Each step you may move to adjacent numbers on the row below.

 For example, given the following triangle

 [
      [2],
     [3,4],
    [6,5,7],
   [4,1,8,3]
 ]
 The minimum path sum from top to bottom is 11 (i.e., 2 + 3 + 5 + 1 = 11).
 */

func minimumTotal(_ triangle: [[Int]]) -> Int {
    var ans = triangle
    var i = ans.count - 2
    
    while i >= 0 {
        for j in 0...i{
            ans[i][j] += [ans[i+1][j] , ans[i+1][j+1]].min()!
        }
        i -= 1
    }

    return ans[0][0]
}

