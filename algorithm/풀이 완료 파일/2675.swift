//
//  2675.swift
//  Algorijum
//
//  Created by 김진우 on 2022/03/27.
//

import Foundation

func solved(){
    
    for _ in 0..<Int(readLine()!)!{
        let q = readLine()!.split(separator: " ")
        
        q[1].forEach{
            for _ in 0..<Int(q[0])!{
                print($0, terminator: "")
            }
        }
        print("")
        
    }
    
}

solved()

