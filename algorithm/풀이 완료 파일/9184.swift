//
//  9184.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/01.
//

import Foundation

func A9184() {
    
    while true {
        let n = readLine()!.split(separator: " ").map{Int($0)!}
        var dp = Array(repeating: Array(repeating: Array(repeating: 1, count: 21), count: 21), count: 21)
        if n[0] == -1 && n[1] == -1 && n[2] == -1 {
            break
        }
        
        print("w(\(n[0]), \(n[1]), \(n[2])) = \(w(n[0], n[1], n[2]))")
        
        func range(_ a: Int, _ b: Int, _ c: Int) -> Bool {
            return 0 <= a && a <= 20 && 0 <= b && b <= 20 && 0 <= c && c <= 20
        }
        
        func w(_ a: Int, _ b: Int, _ c: Int) -> Int {
            if range(a, b, c) && dp[a][b][c] != 1 {
                return dp[a][b][c]
            }
            
            if a <= 0 || b <= 0 || c <= 0 {
                return 1
            }

            if a > 20 || b > 20 || c > 20 {
                if dp[20][20][20] == 1 {
                    dp[20][20][20] = w(20, 20, 20)
                }
                return dp[20][20][20]
            }
                

            if a < b && b < c {
                if dp[a][b][c] == 1 {
                    dp[a][b][c] = w(a, b, c-1) + w(a, b-1, c-1) - w(a, b-1, c)
                }
                return dp[a][b][c]
            }
            
            if dp[a][b][c] == 1 {
                dp[a][b][c] = w(a-1, b, c) + w(a-1, b-1, c) + w(a-1, b, c-1) - w(a-1, b-1, c-1)
            }
            return dp[a][b][c]

        }
    }
    
}
