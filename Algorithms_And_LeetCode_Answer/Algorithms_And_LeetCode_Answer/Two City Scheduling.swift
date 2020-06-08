//
//  Two City Scheduling.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-07.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/two-city-scheduling/

/**There are 2N people a company is planning to interview. The cost of flying the i-th person to city A is costs[i][0], and the cost of flying the i-th person to city B is costs[i][1].
 
 Return the minimum cost to fly every person to a city such that exactly N people arrive in each city.
 
 
 
 Example 1:
 
 Input: [[10,20],[30,200],[400,50],[30,20]]
 Output: 110
 Explanation:
 The first person goes to city A for a cost of 10.
 The second person goes to city A for a cost of 30.
 The third person goes to city B for a cost of 50.
 The fourth person goes to city B for a cost of 20.
 
 The total minimum cost is 10 + 30 + 50 + 20 = 110 to have half the people interviewing in each city.
 
 
 Note:
 
 1 <= costs.length <= 100
 It is guaranteed that costs.length is even.
 1 <= costs[i][0], costs[i][1] <= 1000*/

func twoCitySchedCost(_ costs: [[Int]]) -> Int {
    var sum = 0
    var d = [Int]()
    for c in costs{
        d.append(c[0]-c[1])
        sum += c[0]
    }
    d.sort(by: >)
    for m in 0..<costs.count/2{
        sum -= d[m]
    }
    return sum
    
}
