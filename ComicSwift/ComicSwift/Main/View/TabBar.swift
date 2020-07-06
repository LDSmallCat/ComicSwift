//
//  TabBar.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/6.
//  Copyright © 2020 曹来东. All rights reserved.
//

import UIKit

class TabBar: UITabBar {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isTranslucent = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        for button in subviews where button is UIControl {
            var frame = button.frame
            frame.origin.y = 7
            button.frame = frame
            
        }
    }

}
