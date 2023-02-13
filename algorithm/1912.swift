//
//  1912.swift
//  algorithm
//
//  Created by 김진우 on 2022/12/13.
//

import Foundation

func A1912() {
    let numberCount = Int(readLine()!)!
    let numberList = readLine()!.components(separatedBy: " ").map{Int($0)!}
    var dp = [Int]()
    
    for i in 0..<numberCount {
        dp.append(dps(i))
    }
    
    print(dp.max()!)
    func dps(_ depth: Int) -> Int {
        var positionValue = 0
        var max = Int.min
        for i in depth..<numberCount {
            positionValue += numberList[i]
            if max < positionValue {
                max = positionValue
            }
        }
        
        return max
    }
}
