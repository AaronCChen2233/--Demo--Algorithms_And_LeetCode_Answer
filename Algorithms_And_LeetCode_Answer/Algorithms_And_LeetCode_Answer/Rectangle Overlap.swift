//
//  Rectangle Overlap.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-29.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/rectangle-overlap/

/**
 A rectangle is represented as a list [x1, y1, x2, y2], where (x1, y1) are the coordinates of its bottom-left corner, and (x2, y2) are the coordinates of its top-right corner.

 Two rectangles overlap if the area of their intersection is positive.  To be clear, two rectangles that only touch at the corner or edges do not overlap.

 Given two (axis-aligned) rectangles, return whether they overlap.

 Example 1:

 Input: rec1 = [0,0,2,2], rec2 = [1,1,3,3]
 Output: true
 Example 2:

 Input: rec1 = [0,0,1,1], rec2 = [1,0,2,1]
 Output: false
 */

func isRectangleOverlap(_ rec1: [Int], _ rec2: [Int]) -> Bool {
    return rec2[0] < rec1[2] && rec2[2] > rec1[0] && rec2[1] < rec1[3] && rec2[3] > rec1[1]
}
