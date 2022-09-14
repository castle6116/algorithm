//
//  9375.swift
//  algorithm
//
//  Created by 김진우 on 2022/08/31.
//

import Foundation

func A9375() {
    let r = Int(readLine()!)!
    for _ in 0..<r {
        let n = Int(readLine()!)!
        var item = [String: [String]]()
        var itemCount = [Int]()
        if n == 0 {
            print("0")
            continue
        }
        for _ in 0..<n {
            let input = readLine()!.split(separator: " ").map{String($0)}
            if item[input[1]] != nil {
                item[input[1]]?.append(input[0])
            } else {
                item[input[1]] = [input[0]]
            }
        }
        
        for (key, value) in item {
            itemCount.append(value.count + 1)
        }
        print(itemCount.reduce(1, *) - 1)
    }
}

