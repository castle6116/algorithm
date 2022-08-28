//
//  main.swift
//  Algorijum
//
//  Created by 김진우 on 2022/03/27.
//

import Foundation

let q = readLine()!

let v = readLine()!.split(separator: " ")

var decimalValue = 0
v.forEach{
//    print(decimal(value : Int($0)!))
    decimalValue += decimal(value : Int($0)!)
}

print(decimalValue)

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

