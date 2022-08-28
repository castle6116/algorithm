//
//  5086.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/05.
//

import Foundation

while true {
    let readValue = readLine()!.split(separator: " ").map{Int($0)!}
    if readValue[0] == 0 && readValue[1] == 0 {
        break
    }
    
    if factor(readValue[0], readValue[1]) == false {
        if multiple(readValue[0], readValue[1]) == false {
            neither()
        }
    }
}

func factor(_ num: Int, _ num2 : Int) -> Bool {
    if num2 % num == 0 {
        print("factor")
        return true
    }
    return false
}

func multiple(_ num: Int, _ num2 : Int) -> Bool {
    if num % num2 == 0 {
        print("multiple")
        return true
    }
    return false
}

func neither(){
    print("neither")
}
