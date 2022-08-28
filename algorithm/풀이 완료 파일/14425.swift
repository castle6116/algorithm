//
//  14425.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/29.
//

import Foundation

let inputValue = readLine()!.split(separator:" ").map{Int($0)!}
var inputList = [String: Int]()
var count = 0

for _ in 0..<inputValue[0] {
    inputList[readLine()!] = 1
}

for _ in 0..<inputValue[1] {
    count += inputList[readLine()!] == nil ? 0 : 1
}
print(count)
