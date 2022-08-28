//
//  11651.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/24.
//

import Foundation

let inputValue = Int(readLine()!)!
var inputDic = Array(repeating: [Int](repeating: 0, count: 0), count: inputValue)

for a in 0..<inputValue {
    let inputIndex = readLine()!.split(separator: " ").map{Int($0)!}
    inputDic[a].append(contentsOf: inputIndex)
}

inputDic.sort { num, num1 in
    if num[1] == num1[1] {
        return num[0] < num1[0]
    }
    return num[1] < num1[1]
}

inputDic.forEach { num in
    print(num[0], num[1])
}
