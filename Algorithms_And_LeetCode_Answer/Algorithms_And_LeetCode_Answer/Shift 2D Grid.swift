//
//  Shift 2D Grid.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-26.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/shift-2d-grid/

/**
 Given a 2D grid of size m x n and an integer k. You need to shift the grid k times.

 In one shift operation:

 Element at grid[i][j] moves to grid[i][j + 1].
 Element at grid[i][n - 1] moves to grid[i + 1][0].
 Element at grid[m - 1][n - 1] moves to grid[0][0].
 Return the 2D grid after applying shift operation k times.

  

 Example 1:


 Input: grid = [[1,2,3],[4,5,6],[7,8,9]], k = 1
 Output: [[9,1,2],[3,4,5],[6,7,8]]
 Example 2:


 Input: grid = [[3,8,1,9],[19,7,2,5],[4,6,11,10],[12,0,21,13]], k = 4
 Output: [[12,0,21,13],[3,8,1,9],[19,7,2,5],[4,6,11,10]]
 Example 3:

 Input: grid = [[1,2,3],[4,5,6],[7,8,9]], k = 9
 Output: [[1,2,3],[4,5,6],[7,8,9]]
 */

func shiftGrid(_ grid: [[Int]], _ k: Int) -> [[Int]] {
    let flg = grid.flatMap{$0}
    let mk = k%flg.count
    let c = grid[0].count
    let r = grid.count
    var ti = 0
    var ans = [[Int]](repeating: [Int](repeating: 0, count: c), count: r)
    
    if mk == 0{
        return grid
    }
    
    ti = flg.count - mk
    
    for i in 0..<r{
        for j in 0..<c{
            ans [i][j] = flg[ti]
            ti += 1
            if ti >= flg.count{
                ti = 0
            }
        }
    }
    
    return ans
}
