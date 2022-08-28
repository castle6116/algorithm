//
//  Queue.swift
//  Algorijum
//
//  Created by 김진우 on 2022/08/26.
//

import Foundation

struct QueueItem<T> {
    var Queue = [T]()
    private var index = 0
    
    var count: Int {
        Queue.count - index
    }
    
    mutating func enqueue(_ value: T) {
        Queue.append(value)
    }
    
    mutating func dequeue() -> T {
        if Queue.count <= index {
            return -1 as! T
        }
        
        defer {
            index += 1
        }
        
        return Queue[index]
    }
    
    mutating func push(_ value: T) {
        Queue.append(value)
    }
    
    mutating func pop() -> T {
        if Queue.first != nil {
            return Queue.removeFirst()
        } else {
            return -1 as! T
        }
    }
    
    mutating func size() -> Int {
        return Queue.count - index
    }
    
    mutating func empty() -> Int {
        if Queue.count <= index {
            return 1
        } else {
            return 0
        }
    }
    
    mutating func front() -> T {
        if Queue.count <= index {
            return -1 as! T
        } else {
            return Queue[index]
        }
    }
    
    mutating func back() -> T {
        if Queue.count <= index {
            return -1 as! T
        } else {
            if let last = Queue.last {
                return last
            } else {
                return -1 as! T
            }
        }
    }
    
}
