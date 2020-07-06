//
//  HomeViewController.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/6.
//  Copyright © 2020 曹来东. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Home"
        navigationItem.largeTitleDisplayMode =  .always
    }
    
    @objc func pressBack() {
        lPrint("pressBack")
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let losure = ViewController()
        navigationController?.pushViewController(losure, animated: true)
        
    }

}
