//
//  1764.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/01.
//

import Foundation

let inputValue = readLine()!.split(separator: " ").map{Int($0)!}
var noEarDic = [String: String]()
var result = [String]()

for _ in 0..<inputValue[0] {
    noEarDic[readLine()!] = ""
}
for _ in 0..<inputValue[1] {
    let readValue = readLine()!
    if noEarDic[readValue] != nil {
        result.append(readValue)
    }
}

print(result.count)
result.sorted(by: <).forEach{print($0)}

