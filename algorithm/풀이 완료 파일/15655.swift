//
//  15655.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/30.
//

import Foundation

func A15655() {
    let inputValue = readLine()!.split(separator: " ").map{Int($0)!}
    let numList = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    let n = inputValue[0]
    let m = inputValue[1]
    var numListR = [Int]()
    var depth = 0
    var result = ""
    
    numb(0)
    print(result)
    func numb(_ num: Int){
        if num == m {
            result += numListR.map{String($0)}.joined(separator: " ") + "\n"
            return
        }
        
        for i in depth..<n {
            if numListR.contains(numList[i]) {
                continue
            }
            numListR.append(numList[i])
            numb(num + 1)
            numListR.removeLast()
            depth = i + 1
        }
    }
}
