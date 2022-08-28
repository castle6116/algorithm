//
//  15828.swift
//  Algorijum
//
//  Created by 김진우 on 2022/08/28.
//

import Foundation

struct A15828Queue {
    var Queue = [Int]()
    var index = 0
    var count: Int {
        return Queue.count
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

func A15828() {
    let buferSize = Int(readLine()!)!
    var bufer = A15828Queue()
    var result = [Int]()
    while true {
        let readValue = Int(readLine()!)!
        if readValue == -1 {
            while bufer.count != bufer.index {
                result.append(bufer.dequeue())
            }
            
            if result.count == 0 {
                print("empty")
                break
            } else {
                result.enumerated().forEach { (index,item) in
                    if index == result.count - 1 {
                        print(item, terminator: "")
                    } else {
                        print(item, terminator: " ")
                    }
                    
                }
                break
            }
        } else {
            if readValue != 0 && bufer.count - bufer.index < buferSize {
                bufer.enqueue(readValue)
            } else if readValue == 0 {
                _ = bufer.dequeue()
            }
        }
    }
}
