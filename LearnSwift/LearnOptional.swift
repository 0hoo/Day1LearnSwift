//
//  LearnOptional.swift
//  LearnSwift
//
//  Created by Kim Younghoo on 11/18/17.
//  Copyright © 2017 0hoo. All rights reserved.
//

import Foundation

//[C1]
func learnOptional() {
    //[C2]
    var favroiteDrink: String = "아메리카노"
    //[C3]
    //favroiteDrink = nil
    //위 코드는 컴파일 되지 않음
    
    //[C4]
    var caffeine: Int? = 5
    caffeine = nil
    caffeine = 10
    
    //[C5]
    var optionalString: String? //옵셔널 타입은 기본값이 nil
    var nonOptionalString: String = "옵셔널이 아님"
    
    //[C6]
    optionalString = nonOptionalString //String? 타입에 String 타입의 값을 넣는 것은 가능
    //[C7] (질문1) 여기서 optionalString은 어떤 타입인가?
    
    //[C8]
    //nonOptionalString = optionalString
    //위 코드는 불가능. 옵셔널이 아닌 String 타입에 옵셔널 String? 값을 넣을 수 없다
    
    //[C9]
    //print(caffeine + 5)
    //이 코드도 불가능
    
    //[C10]
    print(nonOptionalString.count)
    print(optionalString?.count) //옵셔널 타입에서 호출한 값은 항상 옵셔널
    print(optionalString?.capitalized) //옵셔널 타입에서 호출한 값은 항상 옵셔널
    
    
    //[C11] 옵셔널 바인딩
    if let c = caffeine {
        //c의 타입은 Int?가 아닌 Int
        print(c)
        print(c + 5)
    }
    
    //[C12]
    if let caffeine = caffeine, let str = optionalString {  //AND조건
        //[C13] (질문2) caffeine에 caffeine을 할당했는데 이 블록에서 caffeine의 타입은? 이름이 같아도 문제 없는가?
        print(caffeine)
        print(str)
    }
    
    //[C14] 옵셔널에서 강제로 값을 가지고 오기
    print(caffeine! + 5)
    //caffeine이 nil이라면? 크래시가 난다
    
    //[C15] Implicitly Unwrapped Optional
    var fruit: String! = "Apple"
    //fruit의 타입은?
    
    print(fruit.uppercased())
    print(fruit?.uppercased())
    
    //[C16]
    fruit = nil
    //print(fruit)
    //위 코드는 크래시
    
    //[C17]
    if let f = fruit {
        print(f)
    }
    
    //[C18]
    let nonoptionalFruit = "Orange"
    //if let nonoptionalFruit = nonoptionalFruit {
    //
    //}
    //위 코드는 불가능. 옵셔널이 아닌 타입에 if let 바인딩을 쓸 필요가 없고 쓸 수 없다
}

//[C19]
func learOptionalGuard() {
    //[C20]
    var optionalInt: Int? = 5
    var optionalStr: String?
    
    //[C21]
    guard let i = optionalInt else {
        print("optionalInt는 nil이다")
        return
    }
    
    print(i)
    
    //[C22]
    guard let str = optionalStr else {
        print("optionalStr는 nil이다")
        return
    }
    
    print(str)
    //호출되지 않음
}

func doSomething(value: Int?) {
    guard let value = value else { return }
    //이제부터 value는 Non-optional
}
