//
//  MainTabBarViewController.swift
//  PhotosLibrary
//
//  Created by Gor Grigoryan on 10/17/19.
//  Copyright © 2019 Gor Grigoryan. All rights reserved.
//

import UIKit

class MainTabBarViewController : UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        viewControllers = [
            generateNavigationController(rootViewController: photosVC, title: "Photos", image: #imageLiteral(resourceName: "photos")),
            generateNavigationController(rootViewController: ViewController(), title: "Favourites", image: #imageLiteral(resourceName: "heart"))
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController,
                                              title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
