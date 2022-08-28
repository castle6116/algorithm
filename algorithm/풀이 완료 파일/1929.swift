//
//  1929.swift
//  Algorijum
//
//  Created by 김진우 on 2022/05/30.
//

import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}
var inputDic: [Int] = Array(repeating: 0, count: input[1] + 1)

for num in 2...input[1] {
    inputDic[num] = num
}

for i in 2...input[1] {
    if inputDic[i] == 0 {
        continue
    }
    
    for j in stride(from: i+i, through: input[1], by: i) {
        inputDic[j] = 0;
    }
}

for i in input[0]...input[1] {
    if inputDic[i] != 0 {
        print(inputDic[i])
    }
}

