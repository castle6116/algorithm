//
//  2579.swift
//  algorithm
//
//  Created by 김진우 on 2022/12/02.
//

import Foundation

func A2579() {
    var stair = Int(readLine()!)!
    var stairs = [Int](repeating: 0, count: 301)
    var dp = [Int](repeating: 0, count: 301)
    
    for i in 1...stair {
        stairs[i] = Int(readLine()!)!
        if i == 1 { dp[1] = stairs[1] }
        else if i == 2 { dp[2] = max(stairs[2], dp[1] + stairs[2]) }
        else if i == 3 { dp[3] = max(dp[1] + stairs[3], stairs[2] + stairs[3]) }
        else { dp[i] = max(dp[i - 3] + stairs[i - 1] + stairs[i], dp[i - 2] + stairs[i]) }
    }
    print(dp[stair])
}
