//
//  Add Binary.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-14.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/add-binary/

/**Given two binary strings, return their sum (also a binary string).

The input strings are both non-empty and contains only characters 1 or 0.

Example 1:

Input: a = "11", b = "1"
Output: "100"
Example 2:

Input: a = "1010", b = "1011"
Output: "10101"*/

func addBinary(_ a: String, _ b: String) -> String {
    let l = a.count > b.count ? a.count : b.count
    var ans = ""
    var u = 0
    for i in 0..<l{
        var s = u
        u = 0
        
        if a.count > i{
            s += Int(a[a.count-i-1])!
        }
        
        if b.count > i{
            s += Int(b[b.count-i-1])!
        }
        
        u = s/2
        let v = s%2
        
        ans = "\(v)\(ans)"
        
    }
    
    if u == 1{
        ans = "\(u)\(ans)"
    }
    
    return ans
}

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
