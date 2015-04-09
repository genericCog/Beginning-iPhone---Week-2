//
//  AppDelegate.swift
//  SwiftConverxns
//
//  Created by Stacie cherochak on 4/8/15.
//  Copyright (c) 2015 Adam Cherochak. All rights reserved.
//

import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(application: UIApplication, didFinishLaunchingWithOptions
    launchOptions: [NSObject: AnyObject]?) -> Bool {
    // Override point for customization after application launch.
    let temperatureConverterViewController = TemperatureConverterViewController(nibName: "TemperatureConverter", bundle: NSBundle.mainBundle())
    let firstNavController = UINavigationController(rootViewController:
    temperatureConverterViewController)
    firstNavController.tabBarItem.title = "Temperature"
    let tabBarController = UITabBarController()
    tabBarController.viewControllers = [firstNavController]
    self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
    self.window?.rootViewController = tabBarController
    self.window?.addSubview(tabBarController.view)
    self.window?.makeKeyAndVisible()
    return true
    }
}