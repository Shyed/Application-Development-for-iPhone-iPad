/*
=====================================================
 PROGRAM: AppDelegate.swift
 PROJECT: Lab 5

 DESCRIPTION:
 This file manages the main application lifecycle
 events for the iOS application.

 FEATURES:
 - Handles application startup
 - Manages scene sessions
 - Controls app lifecycle behavior

 NOTES:
 - Part of the default iOS UIKit app structure
 - Uses SceneDelegate architecture introduced in iOS 13

Author: Sheila Demonteverde | 12/08/2020
Dev Notes Updated: 05/12/2026 - SD
=====================================================
*/

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

