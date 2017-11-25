//
//  LearnFunc.swift
//  LearnSwift
//
//  Created by Kim Younghoo on 11/17/17.
//  Copyright © 2017 0hoo. All rights reserved.
//

import Foundation

//[C2]
func printAdd(x: Int, y: Int) {
    print(x + y)
}

//[C3]
func add(x: Int, y: Int) -> Int {
    return x + y
}

//[C3]
func add2(x: Int, y: Int = 1) -> Int {
    return x + y
}

//[C3]
func add3(_ x: Int, _ y: Int) -> Int {
    return x + y
}

//[C1]
func learnFunc() {
    //[C2]
    printAdd(x: 5, y: 10)
    
    //[C3]
    let result = add(x: 5, y: 10)
    print(result)

    print(add2(x: 5, y: 10))
    print(add2(x: 5))
    print(add3(5, 10))
}
