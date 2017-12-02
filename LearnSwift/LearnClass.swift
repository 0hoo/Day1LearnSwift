//
//  LearnClass.swift
//  LearnSwift
//
//  Created by Kim Younghoo on 11/17/17.
//  Copyright © 2017 0hoo. All rights reserved.
//

import Foundation

//[C2]
class StupidStock {
    let price = 0
}

//[C3]
class DefaultValueStock {
    var name = ""
    var price = 0
}

//[C4]
class Stock {
    let name: String
    let code: String
    var price: Int
    var exchange: String!
    var stockAmount: Int?
    //has no initailizers 에러는 왜 생길까?
    
    //[C5]
    init(name: String, code: String, price: Int) {
        //[C6] self
        self.name = name
        self.code = code
        self.price = price
        //[C7] (질문1) 5개의 필드 중 3개만을 초기화 하였는데 왜 컴파일이 되는가?
    }
    
    //[C9] 시작
    func buy() {
        print("산다")
    }
    
    func buy(amount: Int) {
        print("\(amount)주 산다")
    }
    
    func buy(_ amount: Int = 0, price: Int) {
        print("\(amount)주를 \(price)에 산다")
    }
    
    func sell(_ amount: Int = 0) {
        print("\(amount)주 판다")
    }
    
    func sell(amount: Int, price: Int = 0) {
        print("\(amount)주를 \(price)에 판다")
    }
    //[C10] 끝
    
    //[C11]
    func compare(stock: Stock) {
        print("\(stock.name)과 \(self.name)을 비교한다")
    }
    
    //[C12]
    var value: Int {
        return price * stockAmount!
        //이 코드의 문제와 개선법?
    }
}

//[C13]
class OptionalStock {
    var name: String?
    var code: String!
    var price: Int?
    
    //[C14] (질문2) 위 코드에서 has no initailizers 에러를 생기게 하려면?
}

//[C15]
class Vehicle {
    let speed: Int
    
    init(speed: Int) {
        self.speed = speed
    }
    
    func makeNoise() {
        
    }
}

//[C16]
class Train: Vehicle {
    init() {
        super.init(speed: 300)
    }
    
    override func makeNoise() {
        print("Choo Choo!")
    }
}

//[C17]
class Truck: Vehicle {
    var capacity: Int
    
    init(capacity: Int, speed: Int) {
        self.capacity = capacity
        super.init(speed: speed)
    }
    
    override init(speed: Int) {
        capacity = 0
        super.init(speed: speed)
        //(질문3)capacity = 0이 super.init 호출 밑에 가면 왜 에러가 나는가?
    }
}

//[C18]
class Motorcycle: Vehicle {
    var color: String? = "red"
}

//[C19] Optional Chaining
class Mac {
    var model = "macbook"
    
    func powerOn() {
        
    }
}

class Home {
    var price: Int?
    var mac: Mac?
}

class Person {
    var home: Home? {
        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }
    }
}

class SomeClass {
    required init(i: Int) {
        
    }
}

class SomeSubclass: SomeClass {
    init() {
        super.init(i: 0)
        
    }
    
    required init(i: Int) {
        super.init(i: i)
    }
}


//[C1]
func learnClass() {
    //[C2]
    let stupidStock = StupidStock()
    //[C3]
    let defaultValueStock = DefaultValueStock()
    defaultValueStock.name = "애플"
    defaultValueStock.price = 1500
    
    //[C8]
    let apple = Stock(name: "애플", code: "APPL", price: 1500)
    //let stock1 = Stock()
    //생성자를 만들 경우 다른 언어처럼 기본으로 인자 없는 생성자를 만들어주지 않음
    
    let samsung = Stock(name: "삼성", code: "00110", price: 500)
    
    //[C10]
    apple.buy()
    apple.buy(price: 1500)
    apple.buy(amount: 10)
    apple.buy(10, price: 1500)
    
    apple.sell()
    apple.sell(5)
    apple.sell(amount: 5, price: 1600)


    apple.stockAmount = 10
    print(apple.stockAmount)
    //[C12]
    print(apple.value)
    
    //[C11]
    apple.compare(stock: samsung)
    //위 코드에서 stock: 부분을 없애려면?
    
    //[C13]
    let o = OptionalStock()

    //[C16]
    let train = Train()
    //(질문2)let train2 = Train(speed: 250)이건 왜 안될까?
    
    //[C17]
    let truck = Truck(speed: 120)
    //override한 생성자를 호출 가능하다
    let truck2 = Truck(capacity: 5, speed: 150)
    
    //[C18]
    let motorcycle = Motorcycle(speed: 200)
    //생성자를 선언하지 않은 서브클래스는 자동으로 부모의 생성자를 상속 받는다
    
    //[C19]
    let me: Person? = Person()
    me?.home?.price = 100
    print(me?.home?.price)
    print(me?.home?.mac?.model)
    
    //[C20]
    me?.home?.mac?.powerOn()
    if let me = me, let home = me.home {
        home.price = 100
    }
    if let me = me, let home = me.home, let mac = home.mac {
        mac.powerOn()
    }
}
