//
//  MyViewController.swift
//  LearnSwift
//
//  Created by Kim Younghoo on 11/15/17.
//  Copyright © 2017 0hoo. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!

    @IBAction func didTapButton(_ sender: UIButton) {
        print("didTapButton")
        outputLabel.text = "Did Tap Button"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "스위프트 배우기"
        
        outputLabel.text = "Hello World, Hello Swift"
        
        //[C7] (LearnLetVar)
        learnVarLet()
        learnIf()
        learnArray()
        learnDictionary()
        learnLoop()
        learnOptional()
        learOptionalGuard()
        learnProtocol()
        learnClosure()
    }
}
