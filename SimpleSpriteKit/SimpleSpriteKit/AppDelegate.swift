//
//  AppDelegate.swift
//  SimpleSpriteKit
//
//  Created by Robert Linnemann on 11/24/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let gameViewController = GameViewController()
        let navigation : UINavigationController = UINavigationController(rootViewController: gameViewController)
        navigation.isNavigationBarHidden = true
        self.window?.rootViewController = navigation
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

