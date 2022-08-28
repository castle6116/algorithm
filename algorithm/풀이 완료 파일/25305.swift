//
//  25305.swift
//  Algorijum
//
//  Created by 김진우 on 2022/08/26.
//

import Foundation

func A25305() {
    let readValue = readLine()!.split(separator: " ").map{Int($0)!}
    print(readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: >)[readValue[1] - 1])
}
