//
//  1676.swift
//  algorithm
//
//  Created by 김진우 on 2022/08/30.
//

import Foundation

func A1676() {
    let n = Int(readLine()!)!
    
    print(n/5 + n/25 + n/125)
}

func A1676factorial() {
    var factorialValue = Int(readLine()!)!
    var item = [Int](repeating: 1, count: 1)
    var resultItem: [Int] = []
    var result = ""
    var count = 0
    
    while factorialValue != 0 {
        for (facindex, facResult) in item.enumerated() {
            let itemValue = facResult * factorialValue
            var inputItem = ""
            var frontItem = ""
            var count = 0
            
            String(itemValue).enumerated().reversed().forEach { (index, char) in
                if count >= 4 {
                    frontItem.append(char)
                } else {
                    inputItem.append(char)
                }
                count += 1
            }
            
            inputItem = inputItem.reversed().map{String($0)}.reduce(""){$0 + $1}
            frontItem = frontItem.reversed().map{String($0)}.reduce(""){$0 + $1}
            
            if facindex == 0 {
                if let frontItem = Int(frontItem) {
                    resultItem.append(frontItem)
                }
                resultItem.append(Int(inputItem)!)
            } else {
                if let frontItem = Int(frontItem) {
                    if resultItem.count == facindex + 1 {
                        resultItem[facindex] += frontItem
                    } else {
                        resultItem[facindex - 1] += frontItem
                    }
                }
                resultItem.append(Int(inputItem)!)
            }
        }
        factorialValue -= 1
        item = resultItem
        resultItem = []
    }
    
    item.enumerated().forEach { (index, itemValue) in
        var itemValue = String(itemValue).map{String($0)}
        if index == 0 {
            itemValue.forEach{result += $0}
        } else {
            if itemValue[0].count < 4 {
                for _ in 0 ..< (4 - itemValue.count) {
                    itemValue.insert("0", at: 0)
                }
                itemValue.forEach{result += $0}
            }
        }
    }
    
    result.reversed().forEach { item in
        if item == "0" {
            count += 1
        } else {
            return
        }
    }
    
    print(count)
}
