//
//  1181.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/24.
//

import Foundation

let inputValue = Int(readLine()!)!
var inputString = [String]()

for _ in 0..<inputValue {
    inputString.append(readLine()!)
}

Set(inputString).sorted(by: { Text, Text2 in
    if Text.count == Text2.count {
        return Text < Text2
    } else {
        return Text.count < Text2.count
    }
}).forEach { text in
    print(text)
}
