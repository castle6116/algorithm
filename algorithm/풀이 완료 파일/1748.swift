//
//  1748.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/14.
//

import Foundation

func A1748() {
    let n = Int(readLine()!)!
    var result = 0
    var i = 1
    while i <= n {
        result += n - i + 1
        i *= 10
    }
    print(result)
}
