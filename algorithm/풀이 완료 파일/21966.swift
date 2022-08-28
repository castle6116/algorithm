//
//  21966.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/23.
//

import Foundation

let inputValue = Int(readLine()!)!
let inputText = readLine()!

if inputValue > 25 {
    var frontIndex = inputText.index(after: inputText.index(inputText.startIndex, offsetBy: 10))
    var backIndex = inputText.index(before: inputText.index(inputText.endIndex, offsetBy: -11))
    var centerIndexString = String(inputText[frontIndex...backIndex]).split(separator: ".").joined()
    var centerString = inputText.split(separator: ".")
    var valueholy = true
    centerString.forEach { first in
        if first.contains(centerIndexString) {
            valueholy = false
        }
    }
    if valueholy {
        var frontIndexString = String(inputText[...inputText.index(inputText.startIndex, offsetBy: 8)])
        var backIndexString = String(inputText[inputText.index(inputText.endIndex, offsetBy: -10)...])
        print("\(frontIndexString)......\(backIndexString)")
    } else {
        var frontIndexString = String(inputText[...inputText.index(inputText.startIndex, offsetBy: 10)])
        var backIndexString = String(inputText[inputText.index(inputText.endIndex, offsetBy: -11)...])
        print("\(frontIndexString)...\(backIndexString)")
    }
    
} else {
    print(inputText)
}
