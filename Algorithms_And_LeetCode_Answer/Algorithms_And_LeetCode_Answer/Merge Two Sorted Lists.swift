//
//  Merge Two Sorted Lists.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-16.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/merge-two-sorted-lists/

/**Merge two sorted linked lists and return it as a new sorted list. The new list should be made by splicing together the nodes of the first two lists.

Example:

Input: 1->2->4, 1->3->4
Output: 1->1->2->3->4->4*/

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard let t1 = l1 else {
        return l2
    }
    
    guard let t2 = l2 else {
        return l1
    }
    
        let (p, q) = t1.val <= t2.val ? (t1, t2) : (t2, t1)
       p.next = mergeTwoLists(p.next, q)
       return p
}
