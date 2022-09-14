//
//  2004.swift
//  algorithm
//
//  Created by 김진우 on 2022/08/31.
//

import Foundation

func A2004() {
    func twoZeroCount(_ value: Int) -> Int {
        var count = 0
        var value = value
        while value >= 2 {
            count += value / 2
            value /= 2
        }
        return count
    }
    
    func fiveZeroCount(_ value: Int) -> Int {
        var count = 0
        var value = value
        while value >= 5 {
            count += value / 5
            value /= 5
        }
        return count
    }
    
    let n = readLine()!.split(separator: " ").map{Int($0)!}
    let fiveZeroCount = fiveZeroCount(n[0]) - (fiveZeroCount(n[1]) + fiveZeroCount(n[0] - n[1]))
    let twoZeroCount = twoZeroCount(n[0]) - (twoZeroCount(n[1]) + twoZeroCount(n[0] - n[1]))
    print(min(fiveZeroCount, twoZeroCount))
    
}
