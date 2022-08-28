//
//  10815.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/29.
//

import Foundation

let inputValue = Int(readLine()!)!
let inputList = readLine()!.split(separator:" ").map{Int($0)!}.sorted(by: <)
let equalValue = Int(readLine()!)!
let equalList = readLine()!.split(separator:" ").map{Int($0)!}
var equalS = false

equalList.forEach{ binaraySearch($0) }

func binaraySearch(_ item: Int) {
    var start = 0
    var end = inputList.count - 1
    var mid = end / 2
    var equalItem = false
    
    while end - start >= 0 {
        if inputList[mid] == item {
            print("1", terminator:" ")
            equalItem = true
            break
        } else if inputList[mid] <= item {
            start = mid + 1
        } else {
            end = mid - 1
        }
        mid = (end + start) / 2
    }
    if equalItem == false {
        print("0", terminator:" ")
    }
}
