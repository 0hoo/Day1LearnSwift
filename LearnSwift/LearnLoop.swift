//
//  LearnLoop.swift
//  LearnSwift
//
//  Created by Kim Younghoo on 11/18/17.
//  Copyright © 2017 0hoo. All rights reserved.
//

import Foundation

//[C1]
func learnLoop() {
    //[C2] for in 문
    let drinks = ["커피", "우유", "콜라"]
    for d in drinks {
        print(d)
    }
    
    //[C3] 딕셔너리에 대한 for문
    let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
    for (animalName, legCount) in numberOfLegs {
        print("\(animalName)s have \(legCount) legs")
    }
    
    //[C4] while문
    while true {
        print("while")
        break
    }
}
