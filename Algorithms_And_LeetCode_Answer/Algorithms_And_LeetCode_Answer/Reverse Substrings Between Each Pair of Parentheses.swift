//
//  Reverse Substrings Between Each Pair of Parentheses.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-07.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/reverse-substrings-between-each-pair-of-parentheses/

/**
 You are given a string s that consists of lower case English letters and brackets.

 Reverse the strings in each pair of matching parentheses, starting from the innermost one.

 Your result should not contain any brackets.

  

 Example 1:

 Input: s = "(abcd)"
 Output: "dcba"
 Example 2:

 Input: s = "(u(love)i)"
 Output: "iloveu"
 Explanation: The substring "love" is reversed first, then the whole string is reversed.
 Example 3:

 Input: s = "(ed(et(oc))el)"
 Output: "leetcode"
 Explanation: First, we reverse the substring "oc", then "etco", and finally, the whole string.
 Example 4:

 Input: s = "a(bcdefghijkl(mno)p)q"
 Output: "apmnolkjihgfedcbq"
 */

func reverseParentheses(_ s: String) -> String {
     
    let frp = s.firstIndex(of: ")")
    var res = s
    if let rfrp = frp{
        let cuts = s [..<rfrp]
        let marcfrplp = String(cuts).lastIndex(of: "(")
        
        var marchs = s[marcfrplp!...rfrp]
        marchs.remove(at: rfrp)
        marchs.remove(at: marcfrplp!)
        
        res = reverseParentheses(String(s[..<marcfrplp!]) + String(marchs.reversed()) + String(s[s.index(after: rfrp)...]))
        
    }
    
    return res
}
