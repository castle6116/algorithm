//
//  3009.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/04.
//

import Foundation

var inputDic = [(Int, Int)]()
var resultDic = [(Int, Int)]()
var max = (0, 0)
var min = (1000, 1000)
for _ in 0..<3 {
    let inputValue = readLine()!.split(separator: " ").map{Int($0)!}
    inputDic.append((inputValue[0], inputValue[1]))
}
for (x, y) in inputDic {
    if max.0 <= x {
        max.0 = x
    }
    if max.1 <= y {
        max.1 = y
    }
    if min.0 >= x {
        min.0 = x
    }
    if min.1 >= y {
        min.1 = y
    }
}
resultDic.append((max.0 , max.1))
resultDic.append((max.0 , min.1))
resultDic.append((min.0 , min.1))
resultDic.append((min.0 , max.1))

resultDic.forEach {
    if !tupleContains(inputDic, $0) {
        print($0.0 , $0.1)
    }
}

func tupleContains(_ Array: [(Int, Int)], _ tuple: (Int, Int)) -> Bool {
    for (x, y) in Array {
        if tuple.0 == x && tuple.1 == y {
            return true
        }
    }
    return false
}
