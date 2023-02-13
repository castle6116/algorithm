//
//  11726.swift
//  algorithm
//
//  Created by 김진우 on 2022/12/13.
//

import Foundation

func A11726() {
    let width = Int(readLine()!)!
    var dp = [Int](repeating: 0, count: 1)
    dp.append(1)
    dp.append(2)
    dp.append(3)
    if width < 4 {
        print(dp[width])
    } else {
        for i in 4...width {
            dp.append((dp[i - 1] + dp[i - 2]) % 10007)
        }
        print(dp[width])
    }
}
