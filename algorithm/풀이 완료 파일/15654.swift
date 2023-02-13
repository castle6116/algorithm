//
//  15654.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/30.
//

import Foundation

func A15654() {
    let inputValue = readLine()!.split(separator: " ").map{Int($0)!}
    let numList = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    let n = inputValue[0]
    let m = inputValue[1]
    var numListR = [Int]()
    var check = [Bool](repeating: false, count: n + 1)
    var result = ""
    
    numb(0)
    print(result)
    func numb(_ num: Int) {
        if num == m {
            result += numListR.map{String($0)}.joined(separator: " ") + "\n"
            return
        }
        
        for i in 0..<n {
            if check[i] { continue }
            numListR.append(numList[i])
            check[i] = true
            numb(num+1)
            numListR.removeLast()
            check[i] = false
        }
    }
    
}
