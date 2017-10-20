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
        //demo3(x: nil, y: nil)
    }

    func demo() {
        let name: String?="NB"
        print(name ?? "" + "你好")//=  print(name ?? （"" + "你好"）)
        print((name ?? "") + "你好")
        print(name!)
        }
    }
    func demo1() {
        let x: String?="1"
        let y: String = "FIFA"
        let z: String = "ok"
        print(x ?? y + z)
        print((x ?? y) + z)
        
    }
    func demo3(x: Int?, y: Int?) {
        print((x ?? 0) + (y ?? 0))
    }
