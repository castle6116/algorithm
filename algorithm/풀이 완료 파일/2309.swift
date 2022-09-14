//
//  2309.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/13.
//

import Foundation

func A2309() {
    var nanjeng = [Int]()
    var a = 0
    var b = 0
    for _ in 0..<9 {
        nanjeng.append(Int(readLine()!)!)
    }
    
    var nanjengSum = nanjeng.reduce(0, +) - 100
    outerRoop: for i in 0...7 {
        for j in (i + 1)...8 {
            a = nanjeng[i]
            b = nanjeng[j]
            if a + b == nanjengSum {
                break outerRoop
            }
        }
    }
    
    nanjeng.remove(at: nanjeng.firstIndex(of: a)!)
    nanjeng.remove(at: nanjeng.firstIndex(of: b)!)
    
    nanjeng.sort()
    
    nanjeng.forEach {
        print($0)
    }
}
