//
//  6064.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/15.
//

import Foundation

func A6064() {
    let T = Int(readLine()!)!

    var result: [Int] = []

    for _ in 0..<T {
        let read = readLine()!.split(separator: " ").map{Int(String($0))!}
        let m = read[0], n = read[1], x = read[2], y = read[3]
        var a = 1, b = 1
        var before = (0, 0)
        var count = 1
        for _ in 1...m*n {
            if x - a >= 0, y - b >= 0, x - a == y - b {
                count += x - a
                result.append(count)
                break
            } else if a + n - b + 1 <= m {
                count += n-b+1
                a += n-b+1
                b = 1
            } else if b + m - a + 1 <= n {
                count += m-a+1
                b += m-a+1
                a = 1
            }
            if before.0 == a, before.1 == b {
                result.append(-1)
                break
            } else {
                before = (a, b)
            }
        }
    }

    for i in result {
        print(i)
    }
}
