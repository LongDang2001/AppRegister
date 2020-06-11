//
//  AppDelegate.swift
//  Register
//
//  Created by admin on 4/3/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//let navigationController = application.windows[0].rootViewController as? UINavigationController
//let storyboard = UIStoryboard(name: "Main", bundle: nil)
//let hasData: Bool =  (UserDefaults.standard.string(forKey: "city") != nil) || (UserDefaults.standard.string(forKey: "distric") != nil) || (UserDefaults.standard.string(forKey: "gender") != nil) || (UserDefaults.standard.string(forKey: "age") != nil) || (UserDefaults.standard.string(forKey: "name") != nil)
//if hasData {
//    let initiaViewController : TotolViewController =  storyboard.instantiateViewController(withIdentifier: "SummaryViewController")  as! TotolViewController
//    navigationController!.pushViewController(initiaViewController, animated: true)
//} else  {
//    let initiaViewController : MasterViewController  = storyboard.instantiateViewController(withIdentifier: "MasterTableViewController") as! MasterViewController
//    navigationController!.pushViewController(initiaViewController, animated: true)
//    window?.makeKeyAndVisible()
//}
        
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

