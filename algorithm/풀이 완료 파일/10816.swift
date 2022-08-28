//
//  10816.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/29.
//

import Foundation

let inputValue = Int(readLine()!)!
let inputList = readLine()!.split(separator:" ").map{Int($0)!}.sorted(by: <)
var inputDic = [Int: Int]()
let equalValue = Int(readLine()!)!
let equalList = readLine()!.split(separator:" ").map{Int($0)!}
var equalS = false

for a in inputList {
    if inputDic[a] == nil {
        inputDic[a] = 1
    } else {
        inputDic[a]! += 1
    }
}

for a in equalList {
    if inputDic[a] == nil {
        print("0", terminator:" ")
    } else {
        print(inputDic[a]!, terminator:" ")
    }
}
