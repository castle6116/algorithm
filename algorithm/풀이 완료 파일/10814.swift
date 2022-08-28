//
//  10814.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/24.
//

import Foundation

let inputValue = Int(readLine()!)!
var inputDic = [(Int, String)]()

for _ in 0..<inputValue {
    let inputText = readLine()!.split(separator: " ").map{String($0)}
    inputDic.append((Int(inputText[0])!, inputText[1]))
}

inputDic.sorted { num, num2 in
    return num.0 < num2.0
}.forEach { (age, name) in
    print(age, name)
}
