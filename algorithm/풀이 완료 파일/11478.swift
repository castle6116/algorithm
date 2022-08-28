//
//  11478.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/01.
//

import Foundation

let inputValue = Array(readLine()!)
var inputSet = Set<String>()

for i in 0..<inputValue.count {
    var inputString = ""
    for j in i..<inputValue.count {
        inputString += String(inputValue[j])
        inputSet.insert(inputString)
    }
}
print(inputSet.count)
