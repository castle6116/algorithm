//
//  4153.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/01.
//

import Foundation

var replayValue = true
while replayValue {
    let inputData = readLine()!.split(separator: " ").map{Int($0)!}
    var max = 0
    var result = 0
    
    if inputData[0] == 0 && inputData[1] == 0 && inputData[2] == 0 {
        break
    }

    for input in inputData {
        if input > max {
            max = input
        }
    }
    
    for input in inputData {
        if input != max {
            result += input * input
        }
    }
    if result == max * max {
        print("right")
    } else {
        print("wrong")
    }
}
