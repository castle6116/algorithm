//
//  2447.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/06.
//

import Foundation

let inputValue = Int(readLine()!)!

recursion(num: inputValue, pattern: ["*"])

func recursion(num: Int, pattern: [String]) {
    if num == 1 {
        pattern.forEach{print($0)}
        return
    }
    let row1 = pattern.map{ $0 + $0 + $0 }
    let row2 = pattern.map{ $0 + String(repeating: " ", count: $0.count) + $0 }
    let newpattern = row1 + row2 + row1
    
    recursion(num: num/3, pattern: newpattern)
}
