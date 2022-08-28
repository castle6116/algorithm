//
//  10845.swift
//  Algorijum
//
//  Created by 김진우 on 2022/08/26.
//

import Foundation

func A10845() {
    var Queue = QueueItem<Int>()
    let N = Int(readLine()!)!

    for _ in 0..<N {
        let inputValue = readLine()!.split(separator: " ")
        let comment = inputValue[0]
        switch comment {
            
        case "push":
            Queue.push(Int(inputValue[1])!)
        case "pop":
            print(Queue.pop())
        case "size":
            print(Queue.size())
        case "empty":
            print(Queue.empty())
        case "front":
            print(Queue.front())
        case "back":
            print(Queue.back())
        default:
            break
        }
    }
}
