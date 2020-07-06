//
//  CGFloatExtension.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/5.
//  Copyright © 2020 曹来东. All rights reserved.
//

extension CGFloat: LDCompatible  { }

extension CLD where Base == CGFloat {
    // MARK: - 静态属性方法
    static var screenWith: CGFloat {
        UIScreen.main.bounds.size.width
    }
    
    static var screenHeight: CGFloat {
        UIScreen.main.bounds.size.height
    }
    
    static var navgationBarHeight: CGFloat {
        44.0
    }
    
    static var statusBarHeight: CGFloat {
        
        if #available(iOS 13,*) {
            return  UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.size.height ?? (isIphoneX ? 44.0 : 20.0)
        }else{
            return UIApplication.shared.statusBarFrame.size.height
        }
        
        
    }
    
    static var tabBarHeight: CGFloat {
        49 + UIWindow().safeAreaInsets.bottom
    }
}
