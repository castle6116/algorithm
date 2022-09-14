//
//  13241.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/01.
//

import Foundation

func A13241() {
    let n = readLine()!.split(separator: " ").map{Int($0)!}
    
    print(lcm(max(n[0], n[1]), min(n[0], n[1])))
    
    func gcd(_ n: Int, _ l: Int) -> Int {
        var n = n
        var l = l
        var tmp = n
        
        while l != 0 {
            tmp = n % l
            n = l
            l = tmp
        }
        
        return n
    }

    func lcm(_ n: Int, _ l: Int) -> Int {
        return n * l / gcd(n, l)
    }
}


