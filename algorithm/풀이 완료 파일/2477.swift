//
//  2477.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/01.
//

import Foundation

let readValue = Int(readLine()!)!
var inputDic = [(Int, Int)]()
var bigWidth = 0
var bigWIndex = 0
var bigHeight = 0
var bigHIndex = 0

var bigSquare = 1
var smallSquare = 1

for _ in 0..<6 {
    let inputValue = readLine()!.split(separator: " ").map{Int($0)!}
    inputDic.append((inputValue[0], inputValue[1]))
}
for (index,(indexNum, Value)) in inputDic.enumerated() {
    if indexNum == 1 || indexNum == 2 {
        if bigWidth < Value {
            bigWidth = Value
            bigWIndex = index
        }
    } else if indexNum == 3 || indexNum == 4 {
        if bigHeight < Value {
            bigHeight = Value
            bigHIndex = index
        }
    }
}

bigSquare = bigHeight * bigWidth

if bigWIndex == 0 {
    smallSquare *= abs(inputDic[5].1 - inputDic[bigWIndex + 1].1)
} else if bigWIndex == 5 {
    smallSquare *= abs(inputDic[bigWIndex - 1].1 - inputDic[0].1)
} else {
    smallSquare *= abs(inputDic[bigWIndex - 1].1 - inputDic[bigWIndex + 1].1)
}

if bigHIndex == 0 {
    smallSquare *= abs(inputDic[5].1 - inputDic[bigHIndex + 1].1)
} else if bigHIndex == 5 {
    smallSquare *= abs(inputDic[bigHIndex - 1].1 - inputDic[0].1)
} else {
    smallSquare *= abs(inputDic[bigHIndex - 1].1 - inputDic[bigHIndex + 1].1)
}

print((bigSquare - smallSquare) * readValue)
