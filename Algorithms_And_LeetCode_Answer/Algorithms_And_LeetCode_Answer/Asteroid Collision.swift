//
//  Asteroid Collision.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-23.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/asteroid-collision/

/**
 We are given an array asteroids of integers representing asteroids in a row.
 
 For each asteroid, the absolute value represents its size, and the sign represents its direction (positive meaning right, negative meaning left). Each asteroid moves at the same speed.
 
 Find out the state of the asteroids after all collisions. If two asteroids meet, the smaller one will explode. If both are the same size, both will explode. Two asteroids moving in the same direction will never meet.
 
 Example 1:
 Input:
 asteroids = [5, 10, -5]
 Output: [5, 10]
 Explanation:
 The 10 and -5 collide resulting in 10.  The 5 and 10 never collide.
 Example 2:
 Input:
 asteroids = [8, -8]
 Output: []
 Explanation:
 The 8 and -8 collide exploding each other.
 Example 3:
 Input:
 asteroids = [10, 2, -5]
 Output: [10]
 Explanation:
 The 2 and -5 collide resulting in -5.  The 10 and -5 collide resulting in 10.
 Example 4:
 Input:
 asteroids = [-2, -1, 1, 2]
 Output: [-2, -1, 1, 2]
 Explanation:
 The -2 and -1 are moving left, while the 1 and 2 are moving right.
 Asteroids moving the same direction never meet, so no asteroids will meet each other.
 */

func asteroidCollision(_ asteroids: [Int]) -> [Int] {
    var ans = [Int]()
    
    for i in 0..<asteroids.count{
        while ans.count>0 && ans[ans.count-1]>0 && ans[ans.count-1] + asteroids[i] < 0{
            ans.remove(at: ans.count-1)
        }
        
        if ans.count>0 && ans[ans.count-1]>0 && ans[ans.count-1] + asteroids[i] == 0 {
            ans.remove(at: ans.count-1)
            continue
        }
        
        if asteroids[i] > 0{
            ans.append(asteroids[i])
        }
        
        if ans.count>0 && ans[ans.count-1]<0 && asteroids[i] < 0{
            ans.append(asteroids[i])
        }
        
        if ans.count == 0{
            ans.append(asteroids[i])
        }
    }
    
    return ans
}
