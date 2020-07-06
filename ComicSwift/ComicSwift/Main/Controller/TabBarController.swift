//
//  TabBarController.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/6.
//  Copyright © 2020 曹来东. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setValue(TabBar(), forKey: "tabBar")
        
        addChilds()
        
    }
    
    func addChilds(){
        let titles = ["首页","书架","分类","我的"]
        let images = ["tab_home","tab_book","tab_class","tab_mine"]
        let selectedImages = ["tab_home_S","tab_book_S","tab_class_S","tab_mine_S"]
        let vcS = [HomeViewController.self,BookViewController.self,ClassifyViewController.self,MineViewController.self]
        
        let tabVC = self as UITabBarController
        
        for index in 0..<titles.count {
            tabVC.ld.tabBarControllerAddChilds(image: images[index], selectedImage: selectedImages[index], vcType: vcS[index])
        }
    }
    

}
