//
//  25044.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/02.
//

import Foundation

func A25044() {
    let n = readLine()!.split(separator: " ").map{Int($0)!}
    var stopTimeCount = n[0]
    var stopTime = n[1]
    var addMinute = 0
    var addHours = 0
    
    if stopTimeCount == 0 {
        print("3")
        print("15:00")
        print("18:00")
        print("21:00")
    }
    
    addMinute = (stopTime * stopTimeCount + (21 * 60)) % 60
    
    print(addMinute)
}
