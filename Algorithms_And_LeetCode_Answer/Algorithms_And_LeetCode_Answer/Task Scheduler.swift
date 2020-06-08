//
//  Task Scheduler.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-08.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/task-scheduler/

/**Given a char array representing tasks CPU need to do. It contains capital letters A to Z where different letters represent different tasks. Tasks could be done without original order. Each task could be done in one interval. For each interval, CPU could finish one task or just be idle.
 
 However, there is a non-negative cooling interval n that means between two same tasks, there must be at least n intervals that CPU are doing different tasks or just be idle.
 
 You need to return the least number of intervals the CPU will take to finish all the given tasks.
 
 
 
 Example:
 
 Input: tasks = ["A","A","A","B","B","B"], n = 2
 Output: 8
 Explanation: A -> B -> idle -> A -> B -> idle -> A -> B.
 
 
 Constraints:
 
 The number of tasks is in the range [1, 10000].
 The integer n is in the range [0, 100].*/

func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
    var ansert = 0
    var letters = [Int](repeating: 0, count: 26)
    for t in tasks{
        letters[Int(String(t.asciiValue!))!-65] += 1
    }
    
    let max = letters.max()!
    let maxcount = letters.filter{$0 == max}.count
    
    /**those max count tasks - 1 multiply n-1 than add maxtasks count */
    ansert = ((max-1) * (n+1)) + maxcount
    
    if (ansert < tasks.count){
        return tasks.count
    }
    return ansert
}
