//
//  AppDelegate.swift
//  LAB_4
//
//  Created by Shako Davitahvili on 30.03.2022.
//

import UIKit

var thirdViewIndex: Int = 0

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
         
        let initialViewController = InitialViewController()
        let navigationViewController = UINavigationController(rootViewController: initialViewController)
        navigationViewController.view.backgroundColor = .systemBackground
        window?.rootViewController = navigationViewController
        window?.makeKeyAndVisible()
        return true
    }




}

