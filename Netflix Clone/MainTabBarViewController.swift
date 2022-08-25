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
        
        homeVC.tabBarItem.image = UIImage(named: K.Symbols.house)
        upcomingVC.tabBarItem.image = UIImage(named: K.Symbols.playCircle)
        searchVC.tabBarItem.image = UIImage(named: K.Symbols.magnifyingGlass)
        downloadsVC.tabBarItem.image = UIImage(named: K.Symbols.downloads)
        
        setViewControllers([homeVC, upcomingVC, searchVC, downloadsVC], animated: true)
    }


}

