//
//  AppDelegate.swift
//  Navigation
//
//  Created by Andras Olah on 2026. 02. 12..
//

import UIKit

final class AppDelegate: NSObject, UIApplicationDelegate {
   
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        print("didFinishLaunchingWithOptions")
        return true
    }

    // Example: push registration callback
    func application(
    _ application: UIApplication,
    didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
    ) {
//        appController?.didRegisterForPush(deviceToken: deviceToken)
    }
    
    // Push, background tasks, deep links go here
}
