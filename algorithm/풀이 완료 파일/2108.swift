//
//  2108.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/24.

import Foundation

let inputValue = Int(readLine()!)!
var inArray = [Int]()
var inDictionary = [Int : Int]()
var inDicSum = 0.0
var modeNum = 0
var modeValue = 0

for _ in 0..<inputValue {
    let inputNum = Int(readLine()!)!
    inArray.append(inputNum)
    inDicSum += Double(inputNum)
    if let item = inDictionary[inputNum] {
        inDictionary[inputNum]! += 1
    } else {
        inDictionary[inputNum] = 1
    }
}

inArray.sort(by: <)
var maxItem = inDictionary.max{$0.value < $1.value}
modeNum = maxItem!.key
modeValue = maxItem!.value
var item = inDictionary.sorted(by: <).filter{$0.value == modeValue}

print(Int(round(inDicSum / Double(inputValue))))
print(inArray[inputValue / 2])
if item.count == 1 {
    print(item[0].key)
} else {
    print(item[1].key)
}
print(abs(inArray.first! - inArray.last!))

