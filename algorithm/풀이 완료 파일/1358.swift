//
//  1358.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/05.
//

import Foundation

let inputValue = readLine()!.split(separator: " ").map{Int($0)!}
let W = inputValue[0], H = inputValue[1], X = inputValue[2], Y = inputValue[3], P = inputValue[4]
var count = 0

for _ in 0..<P {
    let readValue = readLine()!.split(separator: " ").map{Int($0)!}
    let Px = readValue[0], Py = readValue[1]
    
    if (Px - X) * (Px - X) + (Py - (Y + H / 2)) * (Py - (Y + H / 2)) <= (H / 2) * (H / 2) && Px < X {
        count += 1
    } else if X <= Px && Px <= X + W && Y <= Py && Py <= Y + H {
        count += 1
    } else if (Px - (X + W)) * (Px - (X + W)) + (Py - (Y + H / 2)) * (Py - (Y + H / 2)) <= (H / 2) * (H / 2) && X + W < Px {
        count += 1
    }
}
print(count)

