//
//  Closure.swift
//  ComicSwift
//
//  Created by 曹来东 on 2020/6/30.
//  Copyright © 2020 曹来东. All rights reserved.
//

import UIKit
/*
 闭包表达式形式
 {
     (参数列表) -> 返回值类型 in
         函数体代码
     
 }
 
 */
class Closure : UIViewController{
    var fn = { (v1: Int, v2: Int) -> Int in
        v1 + v2
    }
    
    
    override func viewDidLoad() {
        //view.backgroundColor = UIColor.ld.theme
        let imageView = UIImageView(frame: CGRect.init(x: 100, y: 100, width: 200, height: 200))
        view.addSubview(imageView)
        let color = UIColor.ld.theme
        
        imageView.image = color.ld.image()
    }
    
    func exec(v1: Int, v2: Int, fn: (Int, Int) -> Int) {
        print(fn(v1,v2))
    }
    //使用闭包表达式实现上述函数功能
    
    
    /*
     
     //正常调用
     exec(v1: 10, v2: 20, fn: {
         (v1: Int, v2: Int) -> Int in
             v1 + v2
     })
     
     //简化写法1  自动推断 类型
     //省略fn参数类型 fn: (v1:Int, v2: Int)
     //及返回值类型 -> Int
     exec(v1: 10, v2: 20, fn: {
         v1 , v2 in v1 + v2
     })
 
     
     //简化写法2
     exec(v1: 10, v2: 20, fn: { $0 + $1 })
     
     //尾随闭包
     exec(v1: 10, v2: 20) { (v1, v2) -> Int in
         v1 + v2
     }
     
     //尾随闭包 是一个被书写在函数调用括号外面（后面）的闭包表达式
     exec(v1: 10, v2: 20) {
         $0 + $1
     }
     */
    
}
