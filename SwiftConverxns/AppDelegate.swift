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
        
    
        
        // 2.f this is the Temperature Conversion View
        let temperatureConverterViewController = TemperatureConverterViewController(nibName: "TemperatureConverter", bundle: NSBundle.mainBundle())
        
        // 2.f this is the Volumetric Conversion View
        let volumetricConverterViewController = VolumetricConverterViewController(nibName: "VolumetricConverter", bundle: NSBundle.mainBundle())
        
        // 2.f this is the Volumetric Conversion View
        let distanceConverterViewController = DistanceConverterViewController(nibName: "DistanceConverter", bundle: NSBundle.mainBundle())
        
//        // add a viewController for navigation to graph
//        let fcCurvesViewController = FCCurvesViewController(nibName: "FCCurves", bundle: NSBundle.mainBundle())
        
        // 2.d this is Temperature tab item
        let firstNavController = UINavigationController(rootViewController:
            temperatureConverterViewController)
         firstNavController.tabBarItem.title = "Temperature"
        
//        // this is the Graph menu item
//        let fourthNavController = UINavigationController(rootViewController:
//            fcCurvesViewController)
//        fourthNavController.tabBarItem.title="Graph"
        
        // 2.d this is Volumemetric tab item
        let secondNavController = UINavigationController(rootViewController:
            volumetricConverterViewController)
        secondNavController.tabBarItem.title = "Volume"
        
        //2.d this is the Distance tab item
        let thirdNavController = UINavigationController(rootViewController:
            distanceConverterViewController)
        thirdNavController.tabBarItem.title = "Distance"
        
        // 2.b create UITabBarController instance
        let tabBarController = UITabBarController()
        // 2.c populate the @property viewControllers of tabBarController array
        tabBarController.viewControllers = [firstNavController, secondNavController, thirdNavController]
        // 2.a
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.rootViewController = tabBarController
        self.window?.addSubview(tabBarController.view)
        self.window?.makeKeyAndVisible()
        return true
    }
}