//
//  LearnDictionary.swift
//  LearnSwift
//
//  Created by Kim Younghoo on 11/18/17.
//  Copyright © 2017 0hoo. All rights reserved.
//

import Foundation

//[C1]
func learnDictionary() {
    //[C2]
    var caffeineOfDrinks = ["코카콜라": 34, "코카콜라제로": 0, "카푸치노": 154]
    //[C3] (질문1)이 딕셔너리의 타입은?
    
    print(caffeineOfDrinks["코카콜라"])
    //[C4] (질문2)위의 경고는 무슨 뜻일까?
    print(caffeineOfDrinks["체리코크"])
    //[C5] (질문3)존재하지 않는 키로 값을 가지고 오면 결과는 무엇인가?
    
    //[C6]
    caffeineOfDrinks["코카콜라"] = 32
    caffeineOfDrinks["아메리카노"] = 160
    
    //[C7] 빈 딕셔너리 선언
    var myDict: [String: Int] = [:]
    var anotherDict = [Int: Double]()
}
