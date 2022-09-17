//
//  main.swift
//  ClosureNew
//
//  Created by Boris Alexandrov on 17.09.2022.
//

import Foundation


func plus(a:Int, b:Int) -> Int {
    a + b
}

func minis(a:Int, b:Int) -> Int {
    a - b
}


var someFunc: (Int, Int) -> Int
    
    for num in 0..<2 {
        if num == 0 {
            someFunc = plus
        } else {
            someFunc = minis
        }
let result = someFunc(3, 5)
        print(result)
}

func someNew(_ op1: Int, _ op2: Int, _ operation: (Int, Int) -> Int) -> Int {
    return operation(op1, op2)
}

var resultN = someNew(3, 0) { $0 + $1 }
print("New", resultN)

//let result = someFunc(3, 5)
 resultN = someNew(0, 5, +)
print("New2", resultN)


