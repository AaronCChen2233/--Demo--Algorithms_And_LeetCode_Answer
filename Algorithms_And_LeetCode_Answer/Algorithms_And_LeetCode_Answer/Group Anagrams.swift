//
//  Group Anagrams.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-17.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/group-anagrams/

/**Given an array of strings, group anagrams together.

Example:

Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
Output:
[
  ["ate","eat","tea"],
  ["nat","tan"],
  ["bat"]
]*/

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var answer = [[String]]()
    var group = [String]()
    
    for s in strs{
        let g = String(s.sorted())
        if let gi = group.lastIndex(of: g){
            answer[gi].append(s)
        }else{
            answer.append([s])
            group.append(g)
        }
    }
    
    return answer
}
