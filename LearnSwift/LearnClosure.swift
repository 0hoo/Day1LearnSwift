//
//  LearnClosure.swift
//  LearnSwift
//
//  Created by Kim Younghoo on 11/18/17.
//  Copyright © 2017 0hoo. All rights reserved.
//

import Foundation

//[C1]
func learnClosure() {
    //[C2]
    let fruits = ["Orange", "Apple", "Pineapple"]
    //[C4]~[C5], [C7]
    var filtered = fruits.filter({ $0.characters.count > 8 } ) //[C3] (질문1) 이 코드를 for 문을 사용해서 만들어보자
    for f in filtered {
        print(f)
    }
    
    //[C6]
    filtered = fruits.filter({ (fruit) -> Bool in
        return fruit.characters.count > 8
    })
    
    //[C8]
    var sorted = fruits.sorted(by: { $0 < $1 })
    for f in sorted {
        print(f)
    }
    
    //[C9]
    sorted = fruits.sorted(by: { (fruit1, fruit2) -> Bool in
        return fruit1 > fruit2
    })
    
    //[C10]
    let counts = fruits.map { $0.characters.count }
    print(counts)
    
    //[C11]
    let myClosure: ((String, Int) -> Int) = { (s, i) in
        return i + s.characters.count
    }
    
    print(myClosure("안녕", 5))
    
    //[C12]
    var optionalClosure: ((String) -> Void)?

    optionalClosure = { str in
        print(str)
    }
    
    optionalClosure?("안녕?")
    
    if let closure = optionalClosure {
        closure("안녕!")
    }
}
