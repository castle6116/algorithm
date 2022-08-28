//
//  main.swift
//  Algorijum
//
//  Created by 김진우 on 2022/03/27.
//

import Foundation

var q = Int(readLine()!)!
var report : [Int] = []
while q != 1{
    for a in 2...q{
        if q % a == 0{
            report.append(a)
            q /= a
            break
        }
    }
    
}

report.forEach{
    print($0)
}
