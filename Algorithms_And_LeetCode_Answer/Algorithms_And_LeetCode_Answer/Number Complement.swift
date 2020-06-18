//
//  Number Complement.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-18.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/number-complement/submissions/

/**
 Given a positive integer num, output its complement number. The complement strategy is to flip the bits of its binary representation.

 Example 1:

 Input: num = 5
 Output: 2
 Explanation: The binary representation of 5 is 101 (no leading zero bits), and its complement is 010. So you need to output 2.
 Example 2:

 Input: num = 1
 Output: 0
 Explanation: The binary representation of 1 is 1 (no leading zero bits), and its complement is 0. So you need to output 0.
 */

func findComplement(_ num: Int) -> Int {
     var ans = 0
    let bstr = String(num, radix: 2)
    var lan = bstr.count - 1
    var powb = 1
    while lan >= 0{
        if bstr[lan] == "0"{
            ans += powb
        }
        powb *= 2
        lan -= 1
    }
    
    
    return ans
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
