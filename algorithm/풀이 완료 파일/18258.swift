//
//  18258.swift
//  Algorijum
//
//  Created by 김진우 on 2022/08/26.
//

import Foundation

func A18258() {
    let file = FileIO()
    var Queue = QueueItem<Int>()
    var res = ""
    for _ in 0 ..< file.readInt() {
        // 아스키 코드로 입력 받아서 Int형으로 캐스팅하는 시간을 줄임
        let cmd = file.readString()
        // push
        if cmd == 448 {
            Queue.enqueue(file.readInt())
        }
        // pop
        else if cmd == 335 {
            res += "\(Queue.dequeue())\n"
        }
        // size
        else if cmd == 443 {
            res += "\(Queue.count)\n"
        }
        // empty
        else if cmd == 559 {
            res += "\(Queue.empty())\n"
        }
        // front
        else if cmd == 553 {
            res += "\(Queue.front())\n"
        }
        // back
        else if cmd == 401 {
            res += "\(Queue.back())\n"
        }
    }
    print(res)
    
}
