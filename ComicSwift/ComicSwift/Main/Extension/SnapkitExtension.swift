//
//  SnapkitExtension.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/7/6.
//  Copyright © 2020 曹来东. All rights reserved.
//

extension CLD where Base == ConstraintView {
    var usnp: ConstraintBasicAttributesDSL {
        if #available(iOS 11.0, *) {
            return base.safeAreaLayoutGuide.snp
        }else{
            return base.snp
        }
    }
    
}
extension ConstraintView: LDCompatible {}
