//
//  Reverse Linked List.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-15.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/reverse-linked-list/

/**Reverse a singly linked list.

Example:

Input: 1->2->3->4->5->NULL
Output: 5->4->3->2->1->NULL*/

func reverseList(_ head: ListNode?) -> ListNode? {
    var r : ListNode? = nil
    var c : ListNode? = head
    
    while c != nil {
        let t = c?.next
        c?.next = r
        r = c
        c = t
    }
    return r
}

/**
* Definition for singly-linked list.
* public class ListNode {
*     public var val: Int
*     public var next: ListNode?
*     public init() { self.val = 0; self.next = nil; }
*     public init(_ val: Int) { self.val = val; self.next = nil; }
*     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
* }
*/
