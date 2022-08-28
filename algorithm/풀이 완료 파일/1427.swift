//
//  1427.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/24.
//

import Foundation

var result = ""
let inputString = readLine()!.map{$0}.sorted(by: >).forEach { Character in
    result += String(Character)
}
print(result)
