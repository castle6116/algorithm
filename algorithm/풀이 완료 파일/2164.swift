//
//  2164.swift
//  Algorijum
//
//  Created by 김진우 on 2022/08/26.
//

import Foundation

func A2164() {
    let readValue = Int(readLine()!)!
    var Queue = QueueItem<Int>()
    
    for a in 1...readValue {
        Queue.enqueue(a)
    }
    
    while Queue.count != 1 {
        Queue.dequeue()
        Queue.enqueue(Queue.dequeue())
    }
    print(Queue.dequeue())
}
