//
//  Backspace String Compare.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-19.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/backspace-string-compare/

/**Given two strings S and T, return if they are equal when both are typed into empty text editors. # means a backspace character.
 
 Note that after backspacing an empty text, the text will continue empty.
 
 Example 1:
 
 Input: S = "ab#c", T = "ad#c"
 Output: true
 Explanation: Both S and T become "ac".
 Example 2:
 
 Input: S = "ab##", T = "c#d#"
 Output: true
 Explanation: Both S and T become "".
 Example 3:
 
 Input: S = "a##c", T = "#a#c"
 Output: true
 Explanation: Both S and T become "c".
 Example 4:
 
 Input: S = "a#c", T = "b"
 Output: false
 Explanation: S becomes "c" while T becomes "b".*/

func backspaceCompare(_ S: String, _ T: String) -> Bool {
    var s1 = S
    var s2 = T
    var i = 0
    
    while i < s1.count {
        if s1[i] == "#"{
            if s1[i] == "#"{
                if (i != 0){
                    s1.remove(at: String.Index(encodedOffset: i-1))
                    i-=1
                }
                s1.remove(at: String.Index(encodedOffset: i))
                i-=1
            }
        }
        i += 1
    }
    
    i = 0
    while i < s2.count {
        if s2[i] == "#"{
            if (i != 0){
                s2.remove(at: String.Index(encodedOffset: i - 1))
                i-=1
            }
            s2.remove(at: String.Index(encodedOffset: i))
            i-=1
        }
        i += 1
    }
    
    return s1 == s2
}

/**If put on leet Code need those code*/
//extension String {
//    subscript(index: Int) -> String {
//        get {
//            return String(self[self.index(startIndex, offsetBy: index)])
//        }
//        set {
//            let startIndex = self.index(self.startIndex, offsetBy: index)
//            self = self.replacingCharacters(in: startIndex..<self.index(after: startIndex), with: newValue)
//        }
//    }
//
//    subscript(start: Int, end: Int) -> String {
//        get {
//            let startIndex = self.index(self.startIndex, offsetBy: start)
//            let endIndex = self.index(self.startIndex, offsetBy: end)
//            return String(self[startIndex..<endIndex])
//        }
//        set {
//            let startIndex = self.index(self.startIndex, offsetBy: start)
//            let endIndex = self.index(self.startIndex, offsetBy: end)
//            self = self.replacingCharacters(in: startIndex..<endIndex, with: newValue)
//        }
//    }
//}

