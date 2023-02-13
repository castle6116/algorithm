//
//  A15650.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/26.
//

import Foundation

func A15650() {
    let n = readLine()!.split(separator:" ").map{Int($0)!}
    var check = [Bool](repeating: false, count: n[0] + 1)
    var result = [Int]()
    addedNum(0)
    
    func addedNum(_ num: Int) {
        if num == n[1] {
            if result.sorted() == result {
                print(result.map{String($0)}.joined(separator: " "))
            }
            return
        }
        for i in 1...n[0] {
            if check[i] { continue }
            result.append(i)
            check[i] = true
            addedNum(num + 1)
            check[i] = false
            result.removeLast()
        }
    }

}
