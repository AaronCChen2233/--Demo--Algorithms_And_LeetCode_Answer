//
//  Binary Tree Coloring Game.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-24.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/binary-tree-coloring-game/

/**Two players play a turn based game on a binary tree.  We are given the root of this binary tree, and the number of nodes n in the tree.  n is odd, and each node has a distinct value from 1 to n.
 
 Initially, the first player names a value x with 1 <= x <= n, and the second player names a value y with 1 <= y <= n and y != x.  The first player colors the node with value x red, and the second player colors the node with value y blue.
 
 Then, the players take turns starting with the first player.  In each turn, that player chooses a node of their color (red if player 1, blue if player 2) and colors an uncolored neighbor of the chosen node (either the left child, right child, or parent of the chosen node.)
 
 If (and only if) a player cannot choose such a node in this way, they must pass their turn.  If both players pass their turn, the game ends, and the winner is the player that colored more nodes.
 
 You are the second player.  If it is possible to choose such a y to ensure you win the game, return true.  If it is not possible, return false.
 
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func btreeGameWinningMove(_ root: TreeNode?, _ n: Int, _ x: Int) -> Bool {
    let tnode = find(root, x)
    let leftC = count(node: tnode?.left)
    let rightC = count(node: tnode?.right)
    let leftNC = n-leftC-rightC-1
    let max = [leftC, rightC, leftNC].max()
    if max! > (n/2){
        return true
    }else{
        return false
    }
}

func count(node : TreeNode?) -> Int{
    if let cnode = node{
        return 1 + count(node: cnode.left) + count(node: cnode.right)
    }else{
        return 0
    }
}

func find (_ node :TreeNode?, _ n : Int) -> TreeNode?{
    if let cnode = node{
        if cnode.val == n{
            return cnode
        }
        let left = find(cnode.left, n)
        let right = find(cnode.right, n)
        
        if left == nil {
            return right
        }else{
            return left
        }
    }else{
        return nil
    }
}
