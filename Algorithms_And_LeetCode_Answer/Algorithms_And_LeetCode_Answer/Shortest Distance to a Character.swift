//
//  Shortest Distance to a Character.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-26.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/shortest-distance-to-a-character/

/**
 Given a string S and a character C, return an array of integers representing the shortest distance from the character C in the string.

 Example 1:

 Input: S = "loveleetcode", C = 'e'
 Output: [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0]
 */

func shortestToChar(_ S: String, _ C: Character) -> [Int] {
    var ans = [Int](repeating: S.count, count: S.count)
    var u = 0
    var i = 0
    var findfirst = false
    for c in S{
        if c == C{
            findfirst = true
            while u >= 0{
                ans[i-u] = [ans[i-u], u].min()!
                u-=1
            }
        }
        u += 1
        ans[i] = findfirst ? u:S.count
        
        i += 1
    }
    return ans
}
