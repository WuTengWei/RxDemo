//
//  AppDelegate.swift
//  RxDemo
//
//  Created by WTW on 2022/4/1.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    static var shared: AppDelegate? {
        return UIApplication.shared.delegate as? AppDelegate
    }

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Application.shared.presentInitialScreen(in: window)
        
        return true
    }

}

