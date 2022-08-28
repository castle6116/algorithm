//
//  11729.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/06.
//

import Foundation

let inputValue = Int(readLine()!)!

print("\(pow(2, inputValue) - 1)")

hanoi(inputValue, 1, 2, 3)

func hanoi(_ num: Int, _ start: Int, _ mid: Int, _ end: Int) {
    if num == 1 {
        print("\(start) \(end)")
        return
    }
    
    hanoi(num - 1, start, end, mid)
    hanoi(1, start, mid, end)
    hanoi(num - 1, mid, start, end)
}
