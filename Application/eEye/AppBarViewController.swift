//
//  AppBarViewController.swift
//  eEye
//
//  Created by Mateus Sousa on 25/12/19.
//  Copyright © 2019 Mateus De Sousa. All rights reserved.
//

import UIKit

class AppBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.barTintColor = .purple
        controllerTabBar()
    }
    
    private func controllerTabBar(){
        let news = createController(title: "Noticias", icon: UIImage(named: "news"))
        let exams = createController(title: "Exames", icon: UIImage(named: "exams"))
        let results = createController(title: "Resultados", icon: UIImage(named: "results"))
        viewControllers = [news, exams, results]
    }
    
    private func createController(title: String, icon: UIImage?) -> UINavigationController{
        let navController = UINavigationController(rootViewController: NewsViewController())
        navController.tabBarItem.title = title
        navController.tabBarItem.image = icon
        return navController
    }
    
}
