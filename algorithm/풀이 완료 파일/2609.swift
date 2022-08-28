//
//  2609.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/05.
//

import Foundation

let readValue = readLine()!.split(separator: " ").map{Int($0)!}
print(GCD(readValue[0], readValue[1]))
print(LCM(readValue[0], readValue[1]))

func GCD(_ min: Int, _ max: Int) -> Int {
    let remain = min % max
    if remain == 0 {
        return max
    } else {
        return GCD(max, remain)
    }
}

func LCM(_ num: Int, _ num1: Int) -> Int {
    return num * num1 / GCD(num, num1)
}
