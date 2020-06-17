//
//  Basic Calculator.swift
//  Algorithms_And_LeetCode_Answer
//
//  Created by Aaron Chen on 2020-06-17.
//  Copyright © 2020 Aaron Chen. All rights reserved.
//

import Foundation

// MARK: - https://leetcode.com/problems/basic-calculator/

/**Implement a basic calculator to evaluate a simple expression string.

The expression string may contain open ( and closing parentheses ), the plus + or minus sign -, non-negative integers and empty spaces .

Example 1:

Input: "1 + 1"
Output: 2
Example 2:

Input: " 2-1 + 2 "
Output: 3
Example 3:

Input: "(1+(4+5+2)-3)+(6+8)"
Output: 23*/

func calculate(_ s: String) -> Int {
    return Int(evaluate(s))!
}

func evaluate(_ inputString: String)-> String{
    var input = inputString
    input = input.replacingOccurrences(of: "--", with: "+")
    input = input.replacingOccurrences(of: "+-", with: "-")
    let fristRPIndex = input.firstIndex(of: ")")
    var result = ""
    
    if let fristRpI = fristRPIndex{
        /**find brackets*/
        let cutedinputString = input[..<fristRpI]
        let martchfristRPIndex = String(cutedinputString).lastIndex(of: "(")
        
        var evaluateStr = input[martchfristRPIndex!...fristRpI]
        evaluateStr.remove(at: fristRpI)
        evaluateStr.remove(at: martchfristRPIndex!)
        
        input = input.replacingOccurrences(of: "("+String(evaluateStr)+")", with:  evaluate(String(evaluateStr)))
        result = evaluate(input)
    }else{
        /**calculate here*/
        result = input
        
        let minus = input.split(separator: "-")
          if minus.count > 1{
              result = minus.reduce(""){
                  var n1 = Int($0)
                  var n2 = Int($1)
                  
                  if n1 == nil{
                      n1 = Int(evaluate($0))
                      if n1 == nil {return String($1)}
                  }
                  
                  if n2 == nil{
                      n2 = Int(evaluate(String($1)))
                  }
                  return String(n1!-n2!)
              }
          }
        
        let plus = input.split(separator: "+")
        if plus.count > 1{
            result = plus.reduce(""){
                var n1 = Int($0)
                var n2 = Int($1)
                
                if n1 == nil{
                    n1 = Int(evaluate($0))
                    if n1 == nil {return String($1)}
                }
                
                if n2 == nil{
                    n2 = Int(evaluate(String($1)))
                }
                return String(n1!+n2!)
            }
        }
    }
    
    return result
}
