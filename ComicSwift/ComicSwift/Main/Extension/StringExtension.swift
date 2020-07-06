//
//  StringExtension.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/5.
//  Copyright © 2020 曹来东. All rights reserved.
//


// MARK: - String Extension

// 给String ,NSString 扩展功能。让String拥有 ld 前缀属性
extension String: LDCompatible {}
extension NSString: LDCompatible {}

/// 给String.ld   String().ld 前缀扩展功能
extension CLD where Base == String {
    // MARK: - 实例方法
    var numberCount: Int {
        var count = 0
        for c in base where ("0"..."9").contains(c) {
            count += 1
        }
        return count
    }
    
    
    func getHeightFor(_ fontSize: CGFloat, _ width: CGFloat) -> CGFloat {
        let font = UIFont.systemFont(ofSize: fontSize)
        let rect = NSString(string: base).boundingRect(with: CGSize(width: width, height:CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin], attributes: [NSAttributedString.Key.font: font], context: nil)
        return ceil(rect.height)
    }
    

    func getWidthFor(_ fontSize: CGFloat, _ height: CGFloat = 20) -> CGFloat {
            let font = UIFont.systemFont(ofSize: fontSize)
            let rect = NSString(string: base).boundingRect(with: CGSize(width: CGFloat.infinity, height: height), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
            return ceil(rect.width)
    }
    
    func getHeightFor(_ fontSize: CGFloat, _ width: CGFloat, maxHeight: CGFloat) -> CGFloat {
        let font = UIFont.systemFont(ofSize: fontSize)
        let rect = NSString(string: base).boundingRect(with: CGSize(width: width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        return ceil(rect.height) > maxHeight ? maxHeight : ceil(rect.height)
    }

    func getWidthFor(_ fontSize: CGFloat, _ height: CGFloat = 20 ,_ maxWidth: CGFloat) -> CGFloat {
            let font = UIFont.systemFont(ofSize: fontSize)
            let rect = NSString(string: base).boundingRect(with: CGSize(width: CGFloat.infinity, height: height), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
            return ceil(rect.width) > maxWidth ? maxWidth : ceil(rect.width)
    }
    
    // MARK: - 类型方法
    static func staticTestStringMeth() {
        print("staticTestStringMeth")
    }
}



// MARK: - NSString Extension


