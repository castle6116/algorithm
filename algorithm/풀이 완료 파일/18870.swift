//
//  18870.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/24.
//

import Foundation

let inputValue = Int(readLine()!)!
let inputText = readLine()!.split(separator: " ").map{Int($0)!}
var dic = [Int: Int]()
var next = 0
for i in inputText.sorted() {
    if dic[i] == nil {
        dic[i] = next
        next += 1
    }
}

print("\(inputText.map{ String(dic[$0]!) }.joined(separator: " "))")
