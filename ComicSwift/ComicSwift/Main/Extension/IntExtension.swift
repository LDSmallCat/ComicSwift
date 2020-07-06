//
//  IntExtension.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/6.
//  Copyright © 2020 曹来东. All rights reserved.
//

extension Int: LDCompatible{}
extension CLD where Base == Int{
    // MARK: - 静态属性方法
    
    /// 随机数生成
    /// - Parameters:
    ///   - lower: 左侧区间
    ///   - upper: 右侧区间
    /// - Returns: [lower,upper) 之间的半开半闭区间的数。
    static func randomIntNumber(lower: Int = 0,upper: Int = Int(UInt32.max)) -> Int {
        return lower + Int(arc4random_uniform(UInt32(upper - lower)))
    }
    
    
    
    
    // MARK: - 实例方法
}
