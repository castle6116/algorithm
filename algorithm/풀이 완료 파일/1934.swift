//
//  1934.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/05.
//

import Foundation

let tryCount = Int(readLine()!)!

for _ in 0..<tryCount {
    let readValue = readLine()!.split(separator: " ").map{Int($0)!}
    var num = readValue[0]
    var num1 = readValue[1]
    if num < num1 {
        var tmp = 0
        tmp = num
        num = num1
        num1 = tmp
    }
    
    while num1 > 0 {
        var tmp = num % num1
        num = num1
        num1 = tmp
    }
    
    print(readValue[0] * readValue[1] / num)
}
