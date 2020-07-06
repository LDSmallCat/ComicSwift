//
//  Global.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/6.
//  Copyright © 2020 曹来东. All rights reserved.
//
// MARK: - isIphoneX
var isIphoneX: Bool {
    return UIDevice.current.userInterfaceIdiom == .phone
        && (max(UIScreen.main.bounds.height, UIScreen.main.bounds.width) == 812
        || max(UIScreen.main.bounds.height, UIScreen.main.bounds.width) == 896)
}
// MARK: - keyWindow
var keyWindow: UIWindow? {
    if #available(iOS 13, *) {
        return UIApplication.shared.windows.first
    }else{
        return UIApplication.shared.keyWindow
    }
}
// MARK: - lPrint
func lPrint<T>(_ message: T, file: String = #file, function: String = #function, lineNumber: Int = #line) {
    #if DEBUG
        let fileName = (file as NSString).lastPathComponent
    print("[\(fileName):funciton:\(function):line:\(lineNumber)]- \(message)")
    #endif
}
// MARK: - topVC
var topVC: UIViewController? {
    var resultVC: UIViewController?
    resultVC = _topVC(keyWindow?.rootViewController)
    while resultVC?.presentingViewController != nil {
        resultVC = _topVC(resultVC?.presentingViewController)
    }
    return resultVC
}

fileprivate func _topVC(_ vc: UIViewController?) -> UIViewController? {
    switch vc {
    case is UINavigationController:
        return _topVC((vc as? UINavigationController)?.topViewController)
    case is UITabBarController:
        return _topVC((vc as? UITabBarController)?.selectedViewController)
    default:
        return vc
    }
}
