//
//  13163.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/08.
//

import Foundation

let inputValue = Int(readLine()!)!

for _ in 0..<inputValue {
    let inputString = readLine()!.split(separator: " ")
    var valueString = ""
    for (index,value) in inputString.enumerated() {
        if index != 0 {
            valueString += value
        }
    }
    print("god\(valueString)")
}
