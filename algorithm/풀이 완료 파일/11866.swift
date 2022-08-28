//
//  11866.swift
//  Algorijum
//
//  Created by 김진우 on 2022/08/26.
//

import Foundation

func A11866() {
    let readValue = readLine()!.split(separator: " ").map{Int($0)!}
    var people = [Int](repeating:0, count: readValue[0])
    var result = [Int]()
    var resultPrint = "<"
    let die = readValue[1]
    var number = 1
    var index = 0
    
    for a in 0..<readValue[0] {
        people[a] = a + 1
    }
    
    while people.count != 0 {
        if number != die {
           number += 1
           if index >= people.count - 1 {
               index = 0
           } else {
               index += 1
           }
        } else {
            number = 0
            result.append(people.remove(at: index))
            index -= 1
        }
    }
    result.enumerated().forEach { (index, item) in
        if index == result.count - 1 {
            resultPrint += "\(item)>"
        } else {
            resultPrint += "\(item), "
        }
    }
    print(resultPrint)
}
