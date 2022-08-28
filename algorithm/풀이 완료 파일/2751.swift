//
//  2751.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/23.
//

import Foundation

let inputValue = Int(readLine()!)!
var dicNumber = [Int]()


for _ in 0..<inputValue {
    let readValue = Int(readLine()!)!
    dicNumber.append(readValue)
}

dicNumber.sorted(by: <).forEach{print($0)}
