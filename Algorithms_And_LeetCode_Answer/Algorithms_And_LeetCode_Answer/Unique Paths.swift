//
//  Unique Paths.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-16.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/unique-paths/

/**A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).

The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).

How many possible unique paths are there?


Above is a 7 x 3 grid. How many possible unique paths are there?*/

func uniquePaths(_ m: Int, _ n: Int) -> Int {
    var map = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
    
    map[0] = [Int](repeating: 1, count: m)
    
    for i in 0..<n{
        map[i][0] = 1
    }
    
    for r in 1..<n{
        for c in 1..<m{
            map[r][c] += map[r-1][c] + map[r][c-1]
        }
    }
    return map[n-1][m-1]
}
