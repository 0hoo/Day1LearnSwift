//
//  AppDelegate.swift
//  LearnSwift
//
//  Created by Kim Younghoo on 11/15/17.
//  Copyright © 2017 0hoo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: MyViewController())
        window?.makeKeyAndVisible()
        
        return true
    }
}
