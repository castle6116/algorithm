//
//  main.swift
//  Algorijum
//
//  Created by 김진우 on 2022/03/27.
//

import Foundation

let v = Int(readLine()!)!

var number = 0

let q = readLine()!

String(q).forEach{
    number += Int(String($0))!
}
print(number)
