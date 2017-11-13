//
//  AppDelegate.swift
//  scratchMMVC
//
//  Created by Vincent O'Sullivan on 10/11/2017.
//  Copyright © 2017 Vincent O'Sullivan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MainViewController(loader: ArchitectureLoader())
        window?.backgroundColor = UIColor.red
        window?.makeKeyAndVisible()

        return true
    }
}
