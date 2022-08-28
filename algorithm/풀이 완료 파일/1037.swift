//
//  1037.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/05.
//

import Foundation

let readValue = Int(readLine()!)!
let inputValue = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: <)

print(inputValue.first! * inputValue.last!)
