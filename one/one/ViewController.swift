//
//  ViewController.swift
//  one
//
//  Created by jyz on 2017/10/20.
//  Copyright © 2017年 jyz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //demo()
        demo1()
        demo3(x: nil, y: nil)
        demo2()
        demo4()
        demo5()
    }

    func demo() {
        let name: String?="NB"
        print(name ?? "" + "你好")//=  print(name ?? （"" + "你好"）)
        print((name ?? "") + "你好")
        print(name!)
        }
    
    func demo1() {
        let x: String?="1"
        let y: String = "FIFA"
        let z: String = "ok"
        print(x ?? y + z)
        print((x ?? y) + z)
        //print(x + y ?? z) 这个三目不一样，??只能用于一个可选项中的两个值的选择
}

    func demo3(x: Int?, y: Int?) {
        print((x ?? 0) + (y ?? 0))
    }
    func demo2() {
        let x : String?="ManCity"
        print(x ?? "Arsenal")
    }
    func demo4() {
        let oName: String? = "Chelsea"
        let oAge: String? = "champion"
        let oNumber: Int? = 10
        if let name = oName, let age = oAge,var number = oNumber
        {
            //这个分支中，name 和 age一定有值，不需要解包
            number = 20
            print(name + age + String(number))//加的时候注意是不是同类型，不是的话统一换成string
        }
    //重要if let/var 连用语法，目的就是判断值
        //其中if let 判断对象值是否为nil
        //if var 在'{}'修改值
    }
    func demo5() {
        let oName: String? = "Chelsea"
        let oAge: String? = "champion"
        guard let name = oName,let age = oAge
            else {
                print("nil")
        }
        print(name + age)
    }
}
