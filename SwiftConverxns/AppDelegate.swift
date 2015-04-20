//
//  AppDelegate.swift
//  SwiftConverxns
//
//  Created by Adam cherochak on 4/8/15.
//  Copyright (c) 2015 Adam Cherochak. All rights reserved.
//  2015-04-15-1528 removed reference to tab bar navigation controller & Graph xib
//  2015-04-15-1648 homework week 3 modifications page 19, 3.f
//

import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        //3.f w-3 register default values into NSUserDefaults
        if let data: NSData = NSUserDefaults.standardUserDefaults().objectForKey("FavoriteConverstions")as? NSData{
        
        }
        else
        {
            let defaultFavorites = NSKeyedArchiver.archivedDataWithRootObject([])
            NSUserDefaults.standardUserDefaults().registerDefaults(["FavoriteConversions" : defaultFavorites])
            NSUserDefaults.standardUserDefaults().synchronize()
        }

        // 2.f wk-2  this is the Temperature Conversion View
        let temperatureConverterViewController = TemperatureConverterViewController(nibName: "TemperatureConverter", bundle: NSBundle.mainBundle())
        
        // 2.f wk-2  this is the Volumetric Conversion View
        let volumetricConverterViewController = VolumetricConverterViewController(nibName: "VolumetricConverter", bundle: NSBundle.mainBundle())
        
        // 2.f wk-2  this is the Volumetric Conversion View
        let distanceConverterViewController = DistanceConverterViewController(nibName: "DistanceConverter", bundle: NSBundle.mainBundle())
        
        // 2.d wk-2  this is Temperature tab item
        let firstNavController = UINavigationController(rootViewController:
            temperatureConverterViewController)
         firstNavController.tabBarItem.title = "Temperature"
        
        // 2.d wk-2  this is Volumemetric tab item
        let secondNavController = UINavigationController(rootViewController:
            volumetricConverterViewController)
        secondNavController.tabBarItem.title = "Volume"
        
        //2.d wk-2  this is the Distance tab item
        let thirdNavController = UINavigationController(rootViewController:
            distanceConverterViewController)
        thirdNavController.tabBarItem.title = "Distance"
        
        // 2.a wk-2
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        //5.0 wk-3 add favorites to menu table view
        let favoritesViewController = FavoritesTableViewController(nibName: "FavoritesTableViewController", bundle: NSBundle.mainBundle())
        
        //2.i wk-3 initialize MenuViewController with array of converter view controllers
        //5.0 wk-3 added favoritesViewController to array
        let menuVC = MenuViewController(viewControllers: [temperatureConverterViewController, distanceConverterViewController, volumetricConverterViewController, favoritesViewController])
        menuVC.title = "Name"
        //2.i 2k-3 create new navigation controller (mainNavigationController), set as rootViewController of the window, then put MenuViewController instance inside this new navigation controller
        let mainNavigationController = UINavigationController(rootViewController: menuVC)
        self.window?.rootViewController = mainNavigationController
        self.window?.addSubview(mainNavigationController.view)
        self.window?.makeKeyAndVisible()
        return true
    }
    
}