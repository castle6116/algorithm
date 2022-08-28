//
//  8958.swift
//  Algorijum
//
//  Created by 김진우 on 2022/05/30.
//

import Foundation

var inputNum = Int(readLine()!)!

for _ in 0..<inputNum {
    let itemInput = readLine()!
    var result = 0
    var oCount = 0
    for item in itemInput{
        if item == "O" {
            oCount += 1
            result += oCount
        } else if item == "X" {
            oCount = 0
        }
    }
    print(result)
}
