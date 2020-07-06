//
//  UIBarButtonItemExtension.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/6.
//  Copyright © 2020 曹来东. All rights reserved.
//


extension CLD where Base == UIBarButtonItem {
    // MARK: - 静态方法和属性
    static func itemWith(image: UIImage?,
            selectedImage: UIImage? = nil,
            imageEdgeInsets: UIEdgeInsets = .zero,
            target: Any?,
            action: Selector?) -> UIBarButtonItem {
                let button = UIButton(type: .system)
                button.setImage(image?.withRenderingMode(.alwaysOriginal), for: .normal)
                button.setImage(selectedImage?.withRenderingMode(.alwaysOriginal), for: .selected)
                button.imageEdgeInsets = imageEdgeInsets
                if action != nil {
                    button.addTarget(target, action: action!, for: .touchUpInside)
                }
                button.sizeToFit()
                if button.bounds.width < 40 || button.bounds.height > 40 {
                    let width = 40 / button.bounds.height * button.bounds.width
                    button.bounds = CGRect(x: 0, y: 0, width: width, height: 40)
                    
                }
         return Base.init(customView: button)

    }
    
    
    static func itemWith(title: String?,
            titleColor: UIColor = .white,
            titleFont: UIFont = UIFont.systemFont(ofSize: 15),
            titleEdgeIntsets: UIEdgeInsets = .zero,
            target: Any?,
            action: Selector?) -> UIBarButtonItem {
                let button = UIButton(type: .system)
                button.setTitle(title, for: .normal)
                button.setTitleColor(titleColor, for: .normal)
                button.titleLabel?.font = titleFont
                button.titleEdgeInsets = titleEdgeIntsets
                if action != nil {
                    button.addTarget(target, action: action!, for: .touchUpInside)
                }
                button.sizeToFit()
                if button.bounds.width < 40 || button.bounds.height > 40 {
                    let width = 40 / button.bounds.height * button.bounds.width
                    button.bounds = CGRect(x: 0, y: 0, width: width, height: 40)

                }
            return Base.init(customView: button)

    }
    
    
    
    // MARK: - 实例方法和属性
}

extension UIBarButtonItem: LDCompatible {}
