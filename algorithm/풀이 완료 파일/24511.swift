//
//  24511.swift
//  Algorijum
//
//  Created by 김진우 on 2022/08/28.
//

import Foundation

func A24511() {
    let stackCount = Int(readLine()!)!
    let queueStackType = readLine()!.split(separator: " ").map{Int($0)!}
    var queueStackValue = readLine()!.split(separator: " ").map{Int($0)!}
    let inputValueCount = Int(readLine()!)!
    var inputValue = readLine()!.split(separator: " ").map{Int($0)!}
    var queue = [Int]()
    var index = [Int]()
    var result = [Int]()
    
    for i in 0..<stackCount {
        if queueStackType[i] == 0 {
            index.append(i)
        }
    }
    
    for i in index {
        queue.append(queueStackValue[i])
    }
    
    inputValue.reverse()
    inputValue += queue
    
    for _ in 0 ..< inputValueCount {
        result.append(inputValue.popLast()!)
    }
    
    print(result.map{String($0)}.joined(separator:" "))
}
