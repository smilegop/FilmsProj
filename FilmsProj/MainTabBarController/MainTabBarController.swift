//
//  MainTabBarController.swift
//  FilmsProj
//
//  Created by smilegop on 03.12.2021.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
  configure()
       
    }
    func configure () {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let filmsVC = storyBoard.instantiateViewController(withIdentifier: "FilmsViewController") as! FilmsViewController
        
        
        let vc1 = UINavigationController(rootViewController: filmsVC)
        let vc2 = UINavigationController(rootViewController: UIViewController())
        
        vc1.title = "Movies"
        vc2.title = "Favorites"
        
        self.setViewControllers([vc1, vc2], animated: true)
     
        guard let items = self.tabBar.items else {
            return
        }
        let images = ["film", "star"]
        
        for x in 0..<items.count {
            items[x].badgeValue = "1"
            items[x].image = UIImage(systemName: images[x])
        }
    }
    
    
}
