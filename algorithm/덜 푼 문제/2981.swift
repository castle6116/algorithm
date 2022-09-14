//
//  2981.swift
//  algorithm
//
//  Created by 김진우 on 2022/08/29.
//

import Foundation

func A2981() {
    let readCount = Int(readLine()!)!
    var item = [Int]()
    var result = [Int]()
    var gcdResult = [Int]()
    
    for _ in 0..<readCount {
        item.append(Int(readLine()!)!)
    }
    
    for a in 0..<item.count - 1 {
        var n1 = max(item[a], item[a + 1])
        var n2 = min(item[a], item[a + 1])
        result.append(lcm(n1, n2))
        gcdResult.append(gcdT(n1, n2))
    }
    
    print(result)
    print(gcdResult)
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var number = a
    var number2 = b
    while number2 != 0 {
        let tmp = number % number2
        number = number2
        number2 = tmp
    }
    
    return number
}

func gcdT(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcdT(b, a%b)
    }
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}
