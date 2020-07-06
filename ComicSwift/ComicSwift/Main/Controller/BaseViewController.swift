//
//  BaseViewController.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/6.
//  Copyright © 2020 曹来东. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 11.0, *) {
            UIScrollView.appearance().contentInsetAdjustmentBehavior = .never
        } else {
            automaticallyAdjustsScrollViewInsets = false
        }
        
        configUI()
        loadData()
        
        view.backgroundColor = UIColor.ld.random
        
    }
    
    func loadData() { }
    func configUI() { }
    deinit { print("\(self) deinit")}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
