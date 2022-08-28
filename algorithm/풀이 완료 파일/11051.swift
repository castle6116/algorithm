//
//  11051.swift
//  Algorijum
//
//  Created by 김진우 on 2022/07/12.
//

import Foundation

// 입력 받기
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0], K = input[1]

// 이항 계수를 구해서 저장해놓을 이차원 배열 선언
var cache = Array(repeating: Array(repeating: -1, count: N + 1), count: N + 1)

// 초기값 넣기
for i in 1...N {
    cache[i][0] = 1 // 각 행의 처음과
    cache[i][i] = 1 // 마지막은 1
}

// 점화식을 통해서 cache 채워 나가기
for i in 1...N { //👉 N이 1일 수도 있으니까 1행을 이미 구한 상태라도 1부터 순회해야 함! (안그러면 N == 1일 때 error!)
    for j in 0...N {
        if cache[i][j] < 0 { // 아직 값을 구하지 않은 이항계수라면?
            cache[i][j] = (cache[i - 1][j - 1] + cache[i - 1][j]) % 10007
            //⭐️ 미리 나누어서 저장하자 (Int 범위 주의) -> 나머지끼리 더해도 나머지는 같다!
        }
    }
}

print(cache[N][K])
cache.forEach { test in
    print(test)
}
