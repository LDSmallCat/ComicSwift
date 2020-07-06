//
//  NavigationController.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/6.
//  Copyright © 2020 曹来东. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.prefersLargeTitles = true
        navigationBar.backgroundColor = UIColor.ld.theme
        navigationBar.isTranslucent = false
    }
    

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            let item = UIBarButtonItem.ld.itemWith(image: UIImage(named: "nav_back_white"), target: self, action: #selector(self.pressBack))
            
            viewController.navigationItem.leftBarButtonItem = item
        }
        
        super.pushViewController(viewController, animated: animated)
    }

   @objc func pressBack() {
        popViewController(animated: true)
    }
}
