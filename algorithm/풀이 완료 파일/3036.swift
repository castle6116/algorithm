//
//  3036.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/12.
//

import Foundation

let readValue = Int(readLine()!)!
let inputValue = readLine()!.split(separator: " ").map{Int($0)!}
var gcd = 0

for input in 1..<inputValue.count {
    gcd = getGcd(inputValue[0], inputValue[input])
    print("\(inputValue[0]/gcd)/\(inputValue[input]/gcd)")
}

func getGcd (_ a: Int, _ b: Int) -> Int{
    a % b == 0 ? b : getGcd(b, a % b)
}
