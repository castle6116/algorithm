//
//  2798.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/01.
//

import Foundation

var readValue = readLine()!.split(separator: " ").map{Int($0)!}
var cardValue = readLine()!.split(separator: " ").map{Int($0)!}
var maxValue = 0
//18 - 21 = 3 / 21 - 21 = 0
for first in 0..<cardValue.count - 2 {
    for second in first + 1..<cardValue.count - 1 {
        for third in second + 1..<cardValue.count {
            let cardAddValue = cardValue[first] + cardValue[second] + cardValue[third]
            if abs(maxValue - readValue[1]) > abs(cardAddValue - readValue[1]) {
                if readValue[1] - cardAddValue >= 0 {
                    maxValue = cardAddValue
                }
            }
        }
    }
}
print(maxValue)
