//
//  1085.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/01.
//

import Foundation

let readValue = readLine()!.split(separator: " ").map{Int($0)!}
var x = readValue[0]
var y = readValue[1]
var w = readValue[2]
var h = readValue[3]

var maxValue = min(abs(h - y), min(abs(w - x), min(x, y)))
print(maxValue)
