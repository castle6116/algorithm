//
//  15657.swift
//  algorithm
//
//  Created by 김진우 on 2022/10/04.
//

import Foundation

func A15657() {
    let readValue = readLine()!.split(separator: " ").map{Int($0)!}
    let numList = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    var numListR = [String]()
    var n = readValue[0]
    var m = readValue[1]
    var depth = 0
    var result = ""
    
    numb(0)
    print(result)
    func numb(_ num: Int) {
        if num == m {
            result += numListR.joined(separator: " ") + "\n"
            return
        }
        
        for i in 0..<n {
            if depth > i {
                continue
            }
            numListR.append(String(numList[i]))
            numb(num + 1)
            numListR.popLast()
            depth = i + 1
        }
    }
}
