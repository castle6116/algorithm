//
//  1004.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/04.
//

import Foundation

let inputValue = Int(readLine()!)!
var result = [Int]()

for _ in 0..<inputValue {
    let position = readLine()!.split(separator: " ").map{Int($0)!}
    let x1 = position[0], y1 = position[1], x2 = position[2], y2 = position[3]
    let forCount = Int(readLine()!)!
    var enter = 0
    var departure = 0
    
    for _ in 0..<forCount {
        let readValue = readLine()!.split(separator: " ").map{Int($0)!}
        let x = readValue[0], y = readValue[1], r = readValue[2]
        
        if (x - x1) * (x - x1) + (y - y1) * (y - y1) < r * r {
            if (x - x2) * (x - x2) + (y - y2) * (y - y2) > r * r {
                    departure += 1
            }
        }
        
        if (x - x1) * (x - x1) + (y - y1) * (y - y1) > r * r {
            if (x - x2) * (x - x2) + (y - y2) * (y - y2) < r * r {
                    enter += 1
            }
        }
    }
    print(enter + departure)
}
