//
//  2161.swift
//  Algorijum
//
//  Created by 김진우 on 2022/08/28.
//

import Foundation

struct A2161Queue {
    var Queue = [Int]()
    var index = 0
    var count: Int {
        return Queue.count - index
    }
    
    mutating func enqueue(_ value: Int) {
        Queue.append(value)
    }
    
    mutating func dequeue() -> Int {
        defer {
            index += 1
        }
        
        return Queue[index]
    }
}

func A2161() {
    let readValue = Int(readLine()!)!
    var resultArray = A2161Queue()
    var result = [Int]()
    
    for a in 1...readValue {
        resultArray.enqueue(a)
    }
    
    while result.count != readValue {
        result.append(resultArray.dequeue())
        if result.count != readValue {
            resultArray.enqueue(resultArray.dequeue())
        }
    }
    
    result.forEach { item in
        print(item ,terminator: " ")
    }
}
