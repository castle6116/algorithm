//
//  1620.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/29.
//

import Foundation

let inputValue = readLine()!.split(separator:" ").map{Int($0)!}
var nameList = [String: Int]()
var numberList = [Int: String]()

for i in 1...inputValue[0] {
    let inputText = readLine()!
    nameList[inputText] = i
    numberList[i] = inputText
}

for _ in 0..<inputValue[1] {
    let searchValue = readLine()!
    if let value = Int(searchValue) {
        print(numberList[value]!)
    } else {
        print(nameList[searchValue]!)
    }
}
