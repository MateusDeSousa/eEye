//
//  TabBarViewController.swift
//  eEye
//
//  Created by Mateus Sousa on 25/12/19.
//  Copyright © 2019 Mateus De Sousa. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStyleTabBar()
        controllerTabBar()
    }
    
    private func controllerTabBar(){
        let news = createController(title: "Noticias", icon: UIImage(named: "news"), controller: NewsViewController())
        let exams = createController(title: "Exames", icon: UIImage(named: "exams"), controller: UIViewController())
        let results = createController(title: "Resultados", icon: UIImage(named: "results"), controller: UIViewController())
        viewControllers = [news, exams, results]
    }
    
    private func createController(title: String, icon: UIImage?, controller: UIViewController) -> UINavigationController{
        let navController = UINavigationController(rootViewController: controller)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = icon
         let colorTabBar = UIColor(red: 81/255, green: 45/255, blue: 168/255, alpha: 1)
        navController.navigationBar.barTintColor = colorTabBar
        navController.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
        
        controller.title = title
        return navController
    }
    
    private func setStyleTabBar(){
        let colorTabBar = UIColor(red: 81/255, green: 45/255, blue: 168/255, alpha: 1)
        tabBar.barTintColor = colorTabBar
        tabBar.tintColor = .white
    }
}
