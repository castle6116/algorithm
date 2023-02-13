//
//  15649.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/05.
//

import Foundation

func A15649() {
    let n = readLine()!.split(separator: " ").map{Int($0)!}
    var ans = [Int](repeating: 0, count: n[1])
    var check = [Bool](repeating: false, count: n[0] + 1)
    var result = ""
    addedNum(0)
    print(result)
    
    func addedNum(_ num: Int) {
        if num == n[1] {
            result += ans.map{String($0)}.joined(separator: " ") + "\n"
            return
        }
        for i in 1...n[0] {
            if check[i] { continue }
            ans[num] = i
            check[i] = true
            addedNum(num + 1)
            check[i] = false
        }
    }
    
    
}
