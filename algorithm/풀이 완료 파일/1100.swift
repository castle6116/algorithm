//
//  1100.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/01.
//

import Foundation

var resultCount = 0
for vertical in 0..<8 {
    let inputValue = readLine()!
    for (index,dataValue) in inputValue.enumerated() {
        if vertical % 2 == 1 {
            if index % 2 == 1 {
                if dataValue == "F" {
                    resultCount += 1
                }
            }
        } else {
            if index % 2 == 0 {
                if dataValue == "F"{
                    resultCount += 1
                }
            }
        }
    }
}
print(resultCount)

//세로가 홀수 일때 가로 짝수가 검은색
//세로가 짝수 일때 가로 홀수가 검은색
