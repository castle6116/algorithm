//
//  10828.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/15.
//

import Foundation

let inputValue = Int(readLine()!)!
var dictionary = [Int]()
for _ in 0..<inputValue {
    let inputText = readLine()!.split(separator: " ")
    if inputText[0] == "push" {
        dictionary.append(Int(inputText[1])!)
    } else if inputText[0] == "pop" {
        if dictionary.count != 0 {
            print("\(dictionary.last!)")
            dictionary.removeLast()
        } else {
            print("-1")
        }
    } else if inputText[0] == "size" {
        print("\(dictionary.count)")
    } else if inputText[0] == "empty" {
        if dictionary.count != 0 {
            print("0")
        } else {
            print("1")
        }
    } else if inputText[0] == "top" {
        if dictionary.count != 0 {
            print("\(dictionary.last!)")
        } else {
            print("-1")
        }
    }
}
