//
//  main.swift
//  Algorijum
//
//  Created by 김진우 on 2022/05/30.
//

import Foundation

var itemValue = Set<Int>()

for _ in 0..<10{
    var inputItem = Int(readLine()!)!
    
    itemValue.insert(inputItem % 42)
}

print(itemValue.count)
