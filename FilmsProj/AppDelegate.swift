//
//  AppDelegate.swift
//  FilmsProj
//
//  Created by smilegop on 02.12.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        configureApp()
        
        window = UIWindow()
        let vc = MainTabBarController()
        
    
        vc.view.backgroundColor = .red
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }
    func configureApp (){
        
        if #available(iOS 15, *) {
                        let tabBarAppearance = UITabBarAppearance()
                        tabBarAppearance.configureWithOpaqueBackground()
                        UITabBar.appearance().standardAppearance = tabBarAppearance
                        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
                        let navBarAppearance = UINavigationBarAppearance()
                        navBarAppearance.configureWithOpaqueBackground()
                        UINavigationBar.appearance().standardAppearance = navBarAppearance
                        UINavigationBar.appearance().compactAppearance = navBarAppearance
                        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
                        UINavigationBar.appearance().compactScrollEdgeAppearance = navBarAppearance
                    }
    }
    
}







