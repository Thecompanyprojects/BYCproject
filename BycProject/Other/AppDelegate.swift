//
//  AppDelegate.swift
//  BycProject
//
//  Created by 王俊钢 on 2019/10/10.
//  Copyright © 2019 wangjungang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
       
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = SLTabBarController()
        self.window?.makeKeyAndVisible()
        return true
    }


}

