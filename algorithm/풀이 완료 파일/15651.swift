//
//  15651.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/30.
//

import Foundation

func A15651() {
    var n = readLine()!.split(separator: " ").map{Int($0)!}
    var result = [Int]()
    var resultString = ""
    var depth = 1
    numb(0)
    print(resultString)
    func numb(_ num: Int) {
        if num == n[1] {
            resultString += result.map{String($0)}.joined(separator: " ") + "\n"
            return
        }
        
        for i in depth...n[0] {
            result.append(i)
            numb(num + 1)
            result.removeLast()
            depth = i + 1
        }
    }
}
