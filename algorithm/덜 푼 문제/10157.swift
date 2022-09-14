//
//  10157.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/08.
//

import Foundation

enum horizontalIs {
    case horizontal
    case vertical
}

let inputValue = readLine()!.split(separator: " ").map{Int($0)!}
let inputValue2 = Int(readLine()!)!

var dic = Array(repeating: [Int](repeating: 0, count: inputValue[0] + 1), count: inputValue[1] + 1)

var verticalMax = inputValue[1]
var horizontalMax = inputValue[0]
var vertical = 1
var horizontal = 1
var verticalValue = 0
var horizontalValue = 0
var horizontalPlus = true
var verticalPlus = true
var horizontalIsWhat: horizontalIs = .vertical
var count = 1

func10157()

func func10157() {
    while true {
        if inputValue2 > inputValue[0] * inputValue[1] {
            print("0")
            break
        } else if count == inputValue2 {
            print("\(horizontal) \(vertical)")
            dic.forEach{print($0)}
            break
        } else if horizontalIsWhat == .vertical {
            if verticalPlus == true && vertical < verticalMax {
                vertical += 1
                count += 1
                dic[vertical][horizontal] = count
            } else if verticalPlus == false && vertical > verticalValue {
                vertical -= 1
                count += 1
                dic[vertical][horizontal] = count
            }
            if vertical == verticalMax {
                horizontalIsWhat = .horizontal
                verticalPlus = false
                horizontalValue += 1
            } else if vertical == verticalValue && verticalPlus == false {
                horizontalIsWhat = .horizontal
                verticalPlus = true
                verticalMax -= 1
                verticalValue += 1
                horizontalValue += 1
            }
        } else {
            if horizontalPlus == true && horizontal < horizontalMax {
                horizontal += 1
                count += 1
                dic[vertical][horizontal] = count
            } else if horizontalPlus == false && horizontal > horizontalValue {
                horizontal -= 1
                count += 1
                dic[vertical][horizontal] = count
            }
            if horizontal == horizontalMax {
                horizontalIsWhat = .vertical
                horizontalPlus = false
                verticalValue += 1
            } else if horizontal == horizontalValue && horizontalPlus == false {
                horizontalIsWhat = .vertical
                horizontalPlus = true
                horizontalMax -= 1
                horizontalValue += 1
                verticalValue += 1
            }
        }
        print("horizontalMax : \(horizontalMax) / horizontalValue : \(horizontalValue) / horizontalPlus : \(horizontalPlus) / horizontalIsWhat : \(horizontalIsWhat) / horizontal : \(horizontal)")
        print("verticalMax : \(verticalMax) / verticalValue : \(verticalValue) / verticalPlus : \(verticalPlus) / horizontalIsWhat : \(horizontalIsWhat) / vertical : \(vertical)")
        print("count : \(count)")
        dic.forEach{print($0)}
        
        if horizontalValue == 10 {
            break
        }
    }
}

