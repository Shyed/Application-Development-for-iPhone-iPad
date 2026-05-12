//
//  AppDelegate.swift
//  Lab 5
//
//  Created by Sheila Demonteverde on 12/8/20.
//  Dev notes updated: 05/12/2026
//  Copyright © 2020 Sheila Demonteverde. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate 
{
     /*-- APPLICATION LAUNCH --*/
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool 
    {
        // Perform additional setup after app launch
        return true
    }

    /*-- SCENE SESSION LIFECYCLE --*/
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration 
    {
        // Create configuration for new scene session
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    /*-- DISCARD SCENE SESSIONS --*/
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) 
    {
         // Release resources for discarded scenes
    }

    /* SceneDelegate manages UI scenes separately from AppDelegate in modern iOS apps */


}

