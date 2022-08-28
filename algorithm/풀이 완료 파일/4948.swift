//
//  4948.swift
//  Algorijum
//
//  Created by 김진우 on 2022/05/30.
//

import Foundation
var endPoint = true
while endPoint {
    let input = Int(readLine()!)!
    if input == 0 {
        break
    } else if input == 1 {
        print(1)
        continue
    }
    var decimalDic = Array(repeating: 0, count: input * 2 + 1)
    var count = 0
    
    for i in 2...input * 2 {
        decimalDic[i] = i
    }

    for i in 2...input * 2 {
        if decimalDic[i] == 0 {
            continue
        }
        
        for j in stride(from: i+i, through: input * 2, by: i) {
            decimalDic[j] = 0;
        }
    }

    for i in input + 1 ..< input * 2 {
        if decimalDic[i] != 0 {
            count += 1
        }
    }
    
    print(count)
}

