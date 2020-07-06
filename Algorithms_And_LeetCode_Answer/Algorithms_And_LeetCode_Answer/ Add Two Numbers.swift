//
//   Add Two Numbers.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-06.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/add-two-numbers/

/**You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Example:

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
Explanation: 342 + 465 = 807.*/

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var n1 = l1
    var n2 = l2
    var a = [Int]()
    var sn : ListNode? = nil
    var u = 0
    while n1 != nil || n2 != nil || u != 0 {
        var s = u
        u = 0
        if let un1 = n1{
            s += un1.val
            n1 = un1.next
        }
        
           if let un2 = n2{
              s += un2.val
            n2 = un2.next
          }
        
        
        u = s/10
        let v = s%10
        a.append(v)
    }
    
    var i = a.count-1
    
    while i >= 0 {
        sn = ListNode(a[i], sn)
        i -= 1
    }
    

    return sn
}

public class ListNode {
    public var val: Int
    public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
