//[C1] 여기를 지운다
//
//  LearnLetVar.swift
//  LearnSwift
//
//  Created by Kim Younghoo on 11/18/17.
//  Copyright © 2017 0hoo. All rights reserved.
//

import Foundation

//[C2] 이 함수를 만든다
func learnVarLet() {
    //[C3]
    //이것은 주석입니다. 주석에 쓴 글자는 컴파일러에 의해 완전히 무시됩니다. 구리, 주석, 아연...
    
    //[C4] 변수 선언
    var favroiteDrink: String = "아메리카노"
    var perDay: Int = 3
    var caffeine: Double = 0.5

    //[C5] (질문1) 이 변수에 경고가 나오는 이유는?
    //[C6] 콘솔에 출력
    print(favroiteDrink)
    print(perDay)
    print(caffeine)
    
    //[C7] 출력을 확인해볼까요? MyViewController의 viewDidLoad의 끝에 가서 learnVarLet()를 호출한다
    //경고가 바뀜 was never used -> was never mutated
    //[C8] (질문2) 왜 경고가 바뀌었는가?
    
    //[C9]
    favroiteDrink = "카푸치노"
    perDay = 2
    caffeine = 0.3
    
    //[C10]
    var milk = 0.3
    //Alt 키를 누르고 변수위에 커서를 대면 물음표로 바뀐다. 클릭. 타입 Double이 보인다
    //이렇게 스위프틑 가능한한 항상 타입을 자동으로 추론한다. 내가 원하지 않는 타입을 추론할 때를 제외하곤 타입 선언을 붙이지 않는 것이 관례
    
    //[C11]
    let shotsOfEspresso = 2
    print(shotsOfEspresso)
    
    //[C12]
    //shotsOfEspresso = 3
    //let으로 선언한 변수는 변경할 수 없음. 변경하지 않는 한 let으로 선언하는 것이 좋다.
    
    //[C13]
    let text1 = favroiteDrink + "를 마십니다"
    print(text1)
    let text2 = "하루에 " + String(perDay) + "잔의 " + favroiteDrink + "를 마십니다"
    print(text2)
    //[C14]
    let text3 = "하루에 \(perDay)잔의 \(favroiteDrink)를 마십니다. 우유는 \(milk)리터가 들었습니다."
    print(text3)
    
    //에러 체험 +를 빼먹었을 경우?
    //에러 체험 \를 두번 쓸 경우?
}
