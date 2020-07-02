//
//  Generate Parentheses.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-01.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/generate-parentheses/

/**
 Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

 For example, given n = 3, a solution set is:

 [
   "((()))",
   "(()())",
   "(())()",
   "()(())",
   "()()()"
 ]
 */

func generateParenthesis(_ n: Int) -> [String] {
    var ans = [String]()
    dfs(ans: &ans, s: "", l: n, r: n)
    return ans
}

func dfs(ans:inout [String], s:String, l:Int,r:Int){
    if l > r{
        return
    }
    
    if l == 0 && r == 0{
        ans.append(s)
        return
    }
    
    if l > 0{
        dfs(ans: &ans, s: s+"(", l: l-1, r: r)
    }
    
    if r > 0{
        dfs(ans: &ans, s: s+")", l: l, r: r-1)
    }
}
