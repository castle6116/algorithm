//
//  3085.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/14.
//

import Foundation

func A3085() {
    let n = Int(readLine()!)!
    var item = [[String]]()
    var maxCount = 0
    for _ in 0..<n {
        item.append(readLine()!.map{String($0)})
    }
    
    print(itemSwap())
    
    func itemSwap() -> Int {
        for i in 0..<n {
            for j in 0..<n-1 {
                item[i].swapAt(j, j + 1)
                row_check()
                col_check()
                item[i].swapAt(j, j + 1)
                
                var temp = item[j][i]
                item[j][i] = item[j+1][i]
                item[j+1][i] = temp
                
                row_check()
                col_check()
                
                temp = item[j][i]
                item[j][i] = item[j+1][i]
                item[j+1][i] = temp

            }
        }
        return maxCount
    }
    
    func row_check() {
        for i in 0..<n {
            var count = 1
            for j in 0..<n-1 {
                if item[i][j] == item[i][j + 1] {
                    count += 1
                } else {
                    count = 1
                    maxCount = max(count, maxCount)
                }
                maxCount = max(count, maxCount)
            }
        }
    }
    
    func col_check() {
        for i in 0..<n {
            var count = 1
            for j in 0..<n-1 {
                if item[j + 1][i] == item[j][i] {
                    count += 1
                } else {
                    count = 1
                    maxCount = max(count, maxCount)
                }
                maxCount = max(count, maxCount)
            }
        }
    }
}
