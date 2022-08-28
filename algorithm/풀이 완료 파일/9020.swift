//
//  9020.swift
//  Algorijum
//
//  Created by 김진우 on 2022/05/30.
//

import Foundation

var decimalDic = [Int](repeating: 0, count: 10000 + 1)

for i in 2...10000 {
    decimalDic[i] = i
}

for i in 2...10000 {
    for j in stride(from: i+i, through: 10000, by: i) {
        decimalDic[j] = 0;
    }
}

let tryValue = Int(readLine()!)!

for _ in 0..<tryValue {
    let inputValue = Int(readLine()!)!
    var left = inputValue / 2
    var right = inputValue / 2
    
    while true {
        if (decimalDic[left] + decimalDic[right]) == inputValue {
            print("\(left) \(right)")
            break
        } else {
            left -= 1
            right += 1
        }
    }
}
