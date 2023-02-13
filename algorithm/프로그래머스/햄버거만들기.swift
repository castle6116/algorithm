//
//  햄버거만들기.swift
//  Algorijum
//
//  Created by 김진우 on 2022/08/26.
//

import Foundation

// 1 = 빵, 2 = 야채, 3 = 고기
// 1 2 3 1 순이 되어야 햄버거 완성
// 뒤로도 쌓을 수 있다는걸 인지했어야했는데 앞으로만 쌓는거 생각함;
func 프로그래머스_햄버거만들기() {
    var ingredient = [2, 1, 1, 2, 3, 1, 2, 3, 1]
    var stack = [Int]()
    var count = 0
    
    for i in ingredient {
        stack.append(i)
        
        if stack.count < 4 { continue }
        
        if stack[stack.count - 4] == 1
            && stack[stack.count - 3] == 2
            && stack[stack.count - 2] == 3
            && stack[stack.count - 1] == 1 {
            print(stack)
            for _ in 0..<4 {
                _ = stack.popLast()
            }
            count += 1
        }
    }
}

