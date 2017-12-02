//
//  LearnArray.swift
//  LearnSwift
//
//  Created by Kim Younghoo on 11/18/17.
//  Copyright © 2017 0hoo. All rights reserved.
//

import Foundation

//[C1]
func learnArray() {
    //[C2]
    let drinks = ["커피", "우유", "콜라"] //타입을 보자.
    //[C3] (질문1) drinks의 타입은?
    
    //[C4]
    for d in drinks {
        print(d)
        //[C5] (질문2) d의 타입은?
    }
    
    //[C6]
    let numbers = [1, 2, 3]
    //[C7] (질문3) numbers의 타입은?
    for n in numbers {
        print(n)
    }
    
    //[C8]
    let numbers2 = [1, 2.0, 3]
    //[C9] (질문4) numbers2의 타입은?
    for n in numbers2 {
        print(n)
    }
    
    //[C10]
    var fruits = ["사과", "수박"]
    //[C11] (질문5) var fruits = ["사과", "수박", 100]로 선언하면 에러가 나는 이유
    
    //[C12]
    fruits.append("포도")
    fruits[0] = "오렌지"
    print(fruits[1])
    
    //[C13]
    fruits.insert("귤", at: 0)
    for f in fruits {
        print(f)
    }
    print("과일의 개수: \(fruits.count)")
    fruits.remove(at: 0)
    print("과일의 개수: \(fruits.count)")
    fruits.removeLast()
    print("과일의 개수: \(fruits.count)")
    
    //중첩된 for 구문
    for d in drinks {
        for f in fruits {
            print("\(d) \(f)")
        }
    }
    
    //[C14] 빈 배열 선언
    //var myDrinks = [] 이게 안되는 이유?
    var myDrinks: [String] = []
    var myFruits = [String]()
    //(질문6)위 변수를 let으로 하면 어떻게 되는가? 어떤 의미가 있는가?
    
    //https://developer.apple.com/documentation/swift/array (구글에서 "Swift Array" 검색해서 제일 위에 나오는 문서에 있는 API한번 훑어보기)
    
    testCapacity()
}


func testCapacity() {
    var numbers = [10, 20, 30, 40, 50]
    // numbers.count == 5
    // numbers.capacity == 5
    
    print("capacity:\(numbers.capacity)") //-> 5
    
    numbers.removeLast()
    print("capacity:\(numbers.capacity)") //-> 5
    
    numbers.append(60)
    numbers.append(70)
    print("capacity:\(numbers.capacity)") //-> 10
    
    numbers.reserveCapacity(100)
    print("capacity:\(numbers.capacity)") //-> 100
    
    numbers.reserveCapacity(3)
    print("capacity:\(numbers.capacity)") //-> 100
    
    numbers.removeAll()
    print("capacity:\(numbers.capacity)") //-> 0
}
