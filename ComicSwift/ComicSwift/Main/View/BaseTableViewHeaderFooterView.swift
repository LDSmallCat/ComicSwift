//
//  BaseTableViewHeaderFooterView.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/6.
//  Copyright © 2020 曹来东. All rights reserved.
//

import UIKit

class BaseTableViewHeaderFooterView: UITableViewHeaderFooterView {

   override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configUI()
    }
    func configUI() { }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
