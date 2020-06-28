//
//  Trapping Rain Water.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-28.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/trapping-rain-water/

/**Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it is able to trap after raining.


The above elevation map is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped. Thanks Marcos for contributing this image!

Example:

Input: [0,1,0,2,1,0,1,3,2,1,2,1]
Output: 6
 */

func trap(_ height: [Int]) -> Int {
    var ans = 0
    var rmax = [Int](repeating: 0, count: height.count)
    var max = 0
    var i = height.count - 1
    while i >= 0 {
        if height[i] > max {
            max = height[i]
        }
        rmax[i] = max
        i-=1
    }

    
    var j = 0
    while j < height.count - 1{
        let s = [height[j], rmax[j+1]].min()!
        j += 1
        while s > height[j]{
            ans = ans + (s - height[j])
            j += 1
        }
    }
   
    return ans
}
