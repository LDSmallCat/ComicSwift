//
//  NameSpaceProtocol.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/5.
//  Copyright © 2020 曹来东. All rights reserved.
//


/// 前缀类型
struct CLD<Base> {
    var base: Base
    init(_ base: Base) { self.base = base }
}

/// 利用协议扩展前缀属性
protocol LDCompatible { }
extension LDCompatible {
    var ld: CLD<Self> {
        set {}
        get { CLD(self) }
    }
    
    static var ld: CLD<Self>.Type {
        set {}
        get { CLD<Self>.self }
    }
}



