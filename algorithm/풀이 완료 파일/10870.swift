//
//  10870.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/04.
//

import Foundation

let inputValue = Int(readLine()!)!

print(recursion(num: inputValue))

func recursion(num: Int) -> Int {
    if num == 0 {
        return 0
    } else if num == 1 {
        return 1
    }
    
    return recursion(num: num - 1) + recursion(num: num - 2) 
}
