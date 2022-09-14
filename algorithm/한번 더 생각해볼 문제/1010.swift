//
//  1010.swift
//  algorithm
//
//  Created by 김진우 on 2022/08/29.
//

import Foundation

func A1010() {
    let inputValue = Int(readLine()!)!
    for _ in 0..<inputValue {
        let bridge = readLine()!.split(separator: " ").map{Int($0)!}
        var pascal = Array(repeating: Array(repeating: 0, count: 31), count: 31)
        
        print(river(bridge[1], bridge[0]))
        func river(_ x: Int, _ y: Int) -> Int {
            if x == y || y == 0 {
                return 1
            }
            
            if pascal[x][y] != 0 {
                return pascal[x][y]
            }
            pascal[x][y] = river(x-1, y-1) + river(x-1, y)
            return pascal[x][y]
        }
    }
}
