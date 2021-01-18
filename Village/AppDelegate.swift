//
//  AppDelegate.swift
//  Village
//
//  Created by 李伟 on 2021/1/18.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window?.backgroundColor = .white
        self.window?.rootViewController = MyTabBarController()
        self.window?.makeKeyAndVisible()
        return true
    }

   


}

