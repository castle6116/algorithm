//
//  1269.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/01.
//

import Foundation

let inputValue = readLine()!.split(separator: " ").map{Int($0)}
let ADic = readLine()!.split(separator: " ").map{Int($0)}
let BDic = readLine()!.split(separator: " ").map{Int($0)}

var aMbDic = Set(BDic + ADic)
print((aMbDic.count - BDic.count) + (aMbDic.count - ADic.count))
