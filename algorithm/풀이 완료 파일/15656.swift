//
//  15656.swift
//  algorithm
//
//  Created by 김진우 on 2022/09/30.
//

import Foundation

func A15656() {
    let inputValue = readLine()!.split(separator: " ").map{Int($0)!}
    let numberList = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
    let n = inputValue[0]
    let m = inputValue[1]
    var numberListR = [String]()
    var result = ""
    
    numb(0)
    print(result)
    
    func numb(_ num: Int){
        if num == m {
            result += numberListR.joined(separator: " ") + "\n"
            return
        }
        
        for i in 0..<n {
            numberListR.append(String(numberList[i]))
            numb(num + 1)
            numberListR.removeLast()
        }
    }
    
}
