//
//  15663.swift
//  algorithm
//
//  Created by 김진우 on 2022/10/04.
//

import Foundation

func A15663() {
    let readValue = readLine()!.split(separator: " ").map{Int($0)!}
    let numList = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    let n = readValue[0], m = readValue[1]
    var visited = Array(repeating: false, count: n)
    var numListR = [String]()
    var check = Set<String>()
    var result = ""
    
    numb(0)
    print(result)
    
    func numb(_ num: Int) {
        if num == m {
            let resultString = numListR.joined(separator: " ") + "\n"
            if !check.contains(resultString) {
                check.insert(resultString)
                result += resultString
            }
            return
        }
        
        for i in 0..<n {
            if visited[i] { continue }
            visited[i] = true
            numListR.append(String(numList[i]))
            numb(num + 1)
            visited[i] = false
            _ = numListR.popLast()
        }
    }
}
