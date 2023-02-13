//
//  14501.swift
//  algorithm
//
//  Created by 김진우 on 2022/10/07.
//

import Foundation

func A14501() {
    var n = Int(readLine()!)!
    var tp: [[Int]] = []
    var dp = Array(repeating: 0, count: 10)

    for i in 0..<n {
        tp.append(readLine()!.split(separator: " ").map { Int(String($0))! })
    }

    for i in 0..<n {
        if dp[i] > dp[i+1] {
            dp[i+1] = dp[i]
        }

        if dp[i+tp[i][0]] < dp[i] + tp[i][1] {
            dp[i+tp[i][0]] = dp[i] + tp[i][1]
        }
    }

    print(dp[n])
}

