//
//  10992.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/01.
//

import Foundation

var inputDate = Int(readLine()!)!
var left = inputDate - 1
var center = 0

for repeatValue in 1...inputDate {
    if repeatValue == inputDate {
        for _ in 0..<center + 1{
            print("*", terminator: "")
        }
        print("")
    } else {
        for _ in 0..<left {
            print("", terminator: " ")
        }
        left -= 1
        print("*", terminator: "")
        if center > 0 {
            for _ in 0..<center - 1 {
                print("", terminator: " ")
            }
            print("*", terminator: "")
        }
        center += 2
        print("")
    }
}
