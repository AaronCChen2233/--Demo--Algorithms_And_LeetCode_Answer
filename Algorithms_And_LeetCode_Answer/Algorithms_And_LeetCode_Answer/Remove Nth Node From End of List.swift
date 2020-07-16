//
//  Remove Nth Node From End of List.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-07-16.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/remove-nth-node-from-end-of-list/

/**Given a linked list, remove the n-th node from the end of list and return its head.

Example:

Given linked list: 1->2->3->4->5, and n = 2.

After removing the second node from the end, the linked list becomes 1->2->3->5.
Note:

Given n will always be valid.

Follow up:

Could you do this in one pass?*/

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    let ans = ListNode(0)
    ans.next = head
    var t = head
    var c = 0
    
    while t != nil {
        t = t?.next
        c += 1
    }
    
    t=ans
    c -= n
    
    for _ in 0..<c{
        t = t?.next
    }
    t?.next = t?.next?.next
    
    return ans.next
}
