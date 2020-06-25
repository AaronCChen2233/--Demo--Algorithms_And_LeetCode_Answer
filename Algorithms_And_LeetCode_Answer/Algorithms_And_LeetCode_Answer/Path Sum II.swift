//
//  Path Sum II.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-24.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

// MARK: - https://leetcode.com/problems/path-sum-ii/submissions/

/**Given a binary tree and a sum, find all root-to-leaf paths where each path's sum equals the given sum.

Note: A leaf is a node with no children.

Example:

Given the below binary tree and sum = 22,

      5
     / \
    4   8
   /   / \
  11  13  4
 /  \    / \
7    2  5   1
Return:

[
   [5,4,11,2],
   [5,8,4,5]
]*/

import Foundation
func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
    var ans = [[Int]]()
    var nowsum = [Int]()
    preOrder(root, sum, &nowsum, &ans)
    return ans
}

func preOrder(_ node : TreeNode?, _ sum:Int, _ nowsum:inout [Int],_ ans:inout [[Int]]){
    if let cnode = node{
        nowsum.append(cnode.val)
        let nowsumInt =  nowsum.reduce(0, +)
        
        if nowsumInt == sum && cnode.left == nil && cnode.right == nil{
            ans.append(nowsum)
        }
        
        preOrder(cnode.left, sum, &nowsum, &ans)
        preOrder(cnode.right, sum, &nowsum, &ans)
        
        nowsum.remove(at: nowsum.count - 1)
    }
}

