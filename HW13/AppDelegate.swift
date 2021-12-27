//
//  AppDelegate.swift
//  HW13
//
//  Created by Александр Петрович on 21.12.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let tabBarController = UITabBarController()
        
        let firstTabViewController = FirstTabViewController()
        firstTabViewController.tabBarItem = UITabBarItem(title: "Медиатека", image: UIImage(named: "photo"), tag: 0)
        
        let secondTabViewController = SecondTabViewController()
        secondTabViewController.tabBarItem = UITabBarItem(title: "Для Вас", image: UIImage(named: "custom.heart"), tag: 1)

        let thirdTabViewController = ThirdTabViewController()
        thirdTabViewController.tabBarItem = UITabBarItem(title: "Альбомы", image: UIImage(named: "custom.square"), tag: 2)
        
        let fourthTabViewController = FourthTabViewController()
        fourthTabViewController.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(named: "custom.magnifyin"), tag: 3)
        tabBarController.setViewControllers([firstTabViewController,
                                             secondTabViewController,
                                             thirdTabViewController,
                                             fourthTabViewController], animated: true)
        tabBarController.selectedIndex = 2
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }
    
}

