//
//  10872.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/04.
//

import Foundation

let inputValue = Int(readLine()!)!

print(recursion(num: inputValue, gop: 1))

func recursion(num : Int, gop : Int) -> Int{
    if num == 0 {
        return gop
    }
    
    var sum = num * (gop)
    
    return recursion(num: num - 1, gop: sum)
}
