//
//  LearnProtocol.swift
//  LearnSwift
//
//  Created by Kim Younghoo on 11/17/17.
//  Copyright © 2017 0hoo. All rights reserved.
//

import Foundation

//[C2]
protocol Image {
    var height: Double { get }
    var width: Double { get }
    var mimetype: String { get set } //[C4] (질문1){ get }과 { get set }의 차이는?
    
    func save ()
}

//[C3] 시작
class Gif : Image {
    var height: Double = 0
    var width: Double = 0
    var mimetype = "image/gif"
    
    var framePerSecond = 30
    
    func save() {
        
    }
}

class Png : Image {
    var height: Double = 0
    var width: Double = 0
    var mimetype = "image/png"
    
    func save() {
        
    }
}
//[C3] 종료

//[C5]
func processImages(_ images: [Image]) {
    for i in images {
        print("\(i.mimetype) 이미지 처리")
        //[C6]
        if let gif = i as? Gif {
            print("\(gif.framePerSecond) 프레임")
            //[C9]에서 확장한 메소드 호출
            gif.convertToPng()
        }
    }
    
    print("ABC".size())
}

//[C1]
func learnProtocol() {
    //[C5]
    processImages([Gif(), Png()])
}

//[C7]
protocol Uploadable {
    func sizeOfImage() -> Float
    func uploadImage()
}

//[C8]
extension Gif: Uploadable {
    func sizeOfImage() -> Float {
        return 0
    }
    
    func uploadImage() {
        
    }
}

//[C9]
extension Gif {
    func convertToPng() {
        
    }
    
    //var size = 0
    //Stored Property는 올 수 없다
}


//[C10]
extension String {
    func size() -> Int {
        return Int(self.count) //이제부터 String타입은 "안녕".size() 이런식의 호출이 가능하다
    }
}
