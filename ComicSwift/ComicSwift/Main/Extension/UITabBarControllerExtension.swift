//
//  UITabBarControllerExtension.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/6.
//  Copyright © 2020 曹来东. All rights reserved.
//

extension UITabBarController: LDCompatible {}

extension CLD where Base == UITabBarController {
    // MARK: - 实例方法和属性
    func tabBarControllerAddChilds(title: String = "",image: String = "",selectedImage: String = "",vcType: UIViewController.Type) {
        
        let child = NavigationController(rootViewController: vcType.init())
        child.tabBarItem.image = UIImage(named: image)
        child.tabBarItem.selectedImage = UIImage(named: selectedImage)
        //child.title = title
        child.tabBarItem.setTitleTextAttributes(
            [NSAttributedString.Key.foregroundColor : UIColor.black],
            for: .selected)
        base.addChild(child)
    }
    
    // MARK: - 静态方法和属性
}
