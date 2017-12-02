//
//  LearnIf.swift
//  LearnSwift
//
//  Created by Kim Younghoo on 11/18/17.
//  Copyright © 2017 0hoo. All rights reserved.
//

import Foundation

//[C1] (MyViewController의 viewDidLoad에 추가)
func learnIf() {
    //[C2]
    var isSleepy = false
    if isSleepy {
        print("커피0잔")
        //컴파일러는 이 코드가 실행되지 않는 다는 걸 안다
    }
    
    //[C3]
    if !isSleepy {
        print("커피1잔")
        //이 코드는 항상 실행됨
    }
    
    //[C4]
    isSleepy = true
    if (isSleepy) {
        print("커피2잔")
        //다른 언어에선 괄호를 붙이지만 스위프트는 안 붙여도 되고 필요치 않을 땐 안 붙이는걸 권장
    }
    
    //[C5]
    let myStatus = "피곤"
    if myStatus == "피곤" && isSleepy {
        print("커피3잔")
        //AND 조건
    }
    
    //[C6]
    if myStatus != "피곤" || isSleepy {
        print("커피4잔")
        //OR 조건
    }
}
