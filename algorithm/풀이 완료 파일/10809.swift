//
//  main.swift
//  Algorijum
//
//  Created by 김진우 on 2022/03/27.
//

import Foundation

let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

let a = readLine()!.map{String($0)}

for o in 0...25 {
  if a.contains(alphabet[o]) {
    print(a.index(of:alphabet[o])!,terminator:" ")
  }else {
    print("-1",terminator:" ")
  }
}
