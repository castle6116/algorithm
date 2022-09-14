//
//  1476.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/13.
//

import Foundation

func A1476() {
    let n = readLine()!.split(separator: " ").map{Int($0)!}
    var num = [1, 1, 1]
    var count = 1
    
    while true {
        if num[0] == n[0] && num[1] == n[1] && num[2] == n[2] {
            print(count)
            break
        } else {
            num[0] += 1
            num[1] += 1
            num[2] += 1
            
            if num[0] > 15 {
                num[0] = 1
            }
            
            if num[1] > 28 {
                num[1] = 1
            }
            
            if num[2] > 19 {
                num[2] = 1
            }
            
            count += 1
        }
    }
}
