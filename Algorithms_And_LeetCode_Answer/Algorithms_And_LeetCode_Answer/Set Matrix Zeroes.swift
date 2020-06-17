//
//  Set Matrix Zeroes.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-17.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/set-matrix-zeroes/

/**Given a m x n matrix, if an element is 0, set its entire row and column to 0. Do it in-place.

Example 1:

Input:
[
  [1,1,1],
  [1,0,1],
  [1,1,1]
]
Output:
[
  [1,0,1],
  [0,0,0],
  [1,0,1]
]
Example 2:

Input:
[
  [0,1,2,0],
  [3,4,5,2],
  [1,3,1,5]
]
Output:
[
  [0,0,0,0],
  [0,4,5,0],
  [0,3,1,0]
]
Follow up:

A straight forward solution using O(mn) space is probably a bad idea.
A simple improvement uses O(m + n) space, but still not the best solution.
Could you devise a constant space solution?*/

func setZeroes(_ matrix: inout [[Int]]) {
    var c = [Int]()
    var r = [Int]()
    
    for i in 0..<matrix.count {
        for j in 0..<matrix[0].count{
            if matrix[i][j]==0{
                c.append(i)
                r.append(j)
            }
        }
    }
    
    for i in 0..<matrix.count {
        for j in 0..<matrix[0].count{
            if c.contains(i) ||  r.contains(j) {
                matrix[i][j] = 0
            }
        }
    }
}
