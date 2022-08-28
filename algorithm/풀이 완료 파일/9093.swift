//
//  9093.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/01.
//

import Foundation

var inputData = Int(readLine()!)!

for _ in 0..<inputData {
    let readLine = readLine()!.split(separator: " ")
    
    for inputValue in readLine {
        for reverseValue in inputValue.reversed() {
            print(reverseValue, terminator: "")
        }
        print("", terminator: " ")
    }
    print("")
}
