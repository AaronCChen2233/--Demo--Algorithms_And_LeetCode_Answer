//
//  Partition Labels.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-08.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/partition-labels/

/**A string S of lowercase letters is given. We want to partition this string into as many parts as possible so that each letter appears in at most one part, and return a list of integers representing the size of these parts.
 
 Example 1:
 Input: S = "ababcbacadefegdehijhklij"
 Output: [9,7,8]
 Explanation:
 The partition is "ababcbaca", "defegde", "hijhklij".
 This is a partition so that each letter appears in at most one part.
 A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits S into less parts.
 Note:
 
 S will have length in range [1, 500].
 S will consist of lowercase letters ('a' to 'z') only.*/

func partitionLabels(_ S: String) -> [Int] {
    var ansert = [Int]()
    var index = [Int](repeating: 0, count: 26)
    var i = 0
    let a = Int(Character("a").asciiValue!)
    for s in S{
        index[Int(String(s.asciiValue!))!-a] = i
        i += 1
    }
    
    var last = -1
    var first = 0
    i = 0
    for s in S{
        if index[Int(String(s.asciiValue!))!-a] > last{
            last = index[Int(String(s.asciiValue!))!-a]
        }
        if i == last{
            ansert.append(last-first+1)
            first = last+1
            last = -1
        }
        i += 1
    }
    
    return ansert
}
