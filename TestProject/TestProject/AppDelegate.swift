//
//  AppDelegate.swift
//  TestProject
//
//  Created by Carlos Jimenez on 7/27/17.
//

import UIKit
import FirstFramework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var flowController: MainFlowController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let navigationViewController = UINavigationController()
        window?.rootViewController = navigationViewController
        
        let director: Director = Director()
        director.initialize(navigationController: self.window?.rootViewController as! UINavigationController)
        
        flowController = MainFlowController(navigationController: navigationViewController)
        flowController?.start(firstVC: director.createFirstViewController())
        
        return true
    }
    
}

