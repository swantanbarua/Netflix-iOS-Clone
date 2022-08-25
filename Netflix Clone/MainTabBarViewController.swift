//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Swantan Barua on 25/08/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        let upcomingVC = UINavigationController(rootViewController: UpcomingViewController())
        let searchVC = UINavigationController(rootViewController: SearchViewController())
        let downloadsVC = UINavigationController(rootViewController: DownloadsViewController())
        
        homeVC.tabBarItem.image = UIImage(systemName: K.Symbols.house)
        upcomingVC.tabBarItem.image = UIImage(systemName: K.Symbols.playCircle)
        searchVC.tabBarItem.image = UIImage(systemName: K.Symbols.magnifyingGlass)
        downloadsVC.tabBarItem.image = UIImage(systemName: K.Symbols.arrowDownToLine)
        
        homeVC.title = K.TabbarNames.home
        upcomingVC.title = K.TabbarNames.upcoming
        searchVC.title = K.TabbarNames.search
        downloadsVC.title = K.TabbarNames.downloads
        
        tabBar.tintColor = .label
        
        setViewControllers([homeVC, upcomingVC, searchVC, downloadsVC], animated: true)
    }


}

