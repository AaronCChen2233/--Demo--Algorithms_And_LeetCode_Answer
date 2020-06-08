//
//  Network Delay Time.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-08.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/network-delay-time/

/**There are N network nodes, labelled 1 to N.
 
 Given times, a list of travel times as directed edges times[i] = (u, v, w), where u is the source node, v is the target node, and w is the time it takes for a signal to travel from source to target.
 
 Now, we send a signal from a certain node K. How long will it take for all nodes to receive the signal? If it is impossible, return -1.
 
 
 
 Example 1:
 
 
 
 Input: times = [[2,1,1],[2,3,1],[3,4,1]], N = 4, K = 2
 Output: 2
 
 
 Note:
 
 N will be in the range [1, 100].
 K will be in the range [1, N].
 The length of times will be in the range [1, 6000].
 All edges times[i] = (u, v, w) will have 1 <= u, v <= N and 0 <= w <= 100.*/

func networkDelayTime(_ times: [[Int]], _ N: Int, _ K: Int) -> Int {
    var way = [Int](repeating: Int.max, count: N)
    way[K-1] = 0
    for _ in 0..<N - 1 {
        for v in times{
            if (way[v[0]-1] < Int.max && way[v[1]-1] > way[v[0]-1] + v[2]){
                way[v[1]-1] = way[v[0]-1] + v[2]
            }
        }
    }
    for v in times{
        if (way[v[0]-1] < Int.max && way[v[1]-1] > way[v[0]-1] + v[2]){
            return -1
        }
    }
    
    if (way.filter{ $0 == Int.max }.count >= 1){
        return -1
    }
    
    return way.max()!
}
