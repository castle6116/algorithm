//
//  main.swift
//  Algorijum
//
//  Created by 김진우 on 2022/03/27.
//

import Foundation

let q = Int(readLine()!)!

let v = Int(readLine()!)!

var value : [Int] = []
var min = 0
var sub = 0

for a in q...v{
    if decimal(value: a) == 1{
        value.append(a)
        sub += a
    }
}

if value.count == 0{
    print("-1")
}else{
    min = value.first!
    print(sub)
    print(min)
}

func decimal(value : Int) -> Int{
    var count = 0
    for a in 1..<value{
        if count > 1{
            return 0
        }else if value % a == 0{
            count += 1
        }
    }
    
    if count == 1{
        return 1
    }
    
    return 0
}
