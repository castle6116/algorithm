//
//  24416.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/01.
//

import Foundation

func A24416() {
    let n = Int(readLine()!)!
    let fibCount = fib(n)
    let fibonacciCount = fibonacci(n, 0)
    
    print(fibCount, fibonacciCount.1)
}

func fib(_ n: Int) -> Int {
    if n == 1 || n == 2 {
        return 1
    } else {
        return (fib(n - 1) + fib(n - 2))
    }
}

func fibonacci(_ n: Int, _ count: Int) -> (Int, Int) {
    var f = [Int](repeating:1, count:2)
    var count = count
    for i in 2..<n {
        count += 1
        f.append(f[i - 1] + f[i - 2])
    }
    return (f[n - 1], count);
}
