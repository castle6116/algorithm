//
//  main.swift
//  Algorijum
//
//  Created by 김진우 on 2022/05/28.
//

import Foundation

var input = Int(readLine()!)!

for _ in 0..<input {
    holy()
}

func holy(){
    let value = readLine()!.split(separator: " ").map{Double($0)!}
    var average = 0.0
    var averageCount = 0.0
    for i in 1...Int(value[0]) {
        average += value[i]
    }
    average /= value[0]
    
    for i in 1...Int(value[0]) {
        if average < value[i] {
            averageCount += 1
        }
    }
    let result:Double = averageCount / value[0] * 100
    print(String(format: "%.3f", result) + "%")
}

