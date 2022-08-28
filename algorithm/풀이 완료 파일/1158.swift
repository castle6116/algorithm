//
//  1158.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/08.
//

import Foundation

let inputValue = readLine()!.split(separator: " ").map{Int($0)!}
let people = inputValue[0]
let xValue = inputValue[1]

var queueValue = [Int](repeating: 1, count: inputValue[0] + 1)
var resultValue = [Int]()

for i in 0...people {
    queueValue[i] = i
}

var num = 1
var index = 1
while true {
    if index == xValue {
        resultValue.append(queueValue[num])
        queueValue.remove(at: num)
        index = 1
    } else {
        index += 1
        num += 1
    }
    if num >= queueValue.count {
        num = 1
    }
    
    if queueValue.count == 1 {
        break
    }
}

print("<" + resultValue.map{String($0)}.joined(separator: ", ") + ">")
