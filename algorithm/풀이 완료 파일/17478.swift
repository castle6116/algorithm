//
//  17478.swift
//  Algorijum
//
//  Created by 김진우 on 2022/06/04.
//

import Foundation

let inputValue = Int(readLine()!)!

recursion(num: inputValue, count: 0)

func recursion(num: Int, count: Int) {
    if count == 0 {
        print("어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다.")
    }
    if num == 0 {
        for _ in 0..<count {
            print("____", terminator: "")
        }
        print("\"재귀함수가 뭔가요?\"")
        for _ in 0..<count {
            print("____", terminator: "")
        }
        print("\"재귀함수는 자기 자신을 호출하는 함수라네\"")
    } else {
        for _ in 0..<count {
            print("____", terminator: "")
        }
        print("\"재귀함수가 뭔가요?\"")
        for _ in 0..<count {
            print("____", terminator: "")
        }
        print("\"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.")
        for _ in 0..<count {
            print("____", terminator: "")
        }
        print("마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.")
        for _ in 0..<count {
            print("____", terminator: "")
        }
        print("그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어.\"")
    }
    if num != 0 {
        recursion(num: num - 1, count: count + 1)
    }
    for _ in 0..<count {
        print("____", terminator: "")
    }
    print("라고 답변하였지.")
    
}
