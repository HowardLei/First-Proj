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
        //demo1()
        //demo3(x: nil, y: nil)
        //demo2()
        //demo4()
        //demo5()
        //demo6(name: "DB",age: 18)
        //demo7(x:"Arsenal",y:"NYC",z: 65)
        //demo8()
        //demo9()
        //demo10()
        //demo11()
        //demo12()
        //demo13()
        //demo14()
        demo15()
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
                return
        }
        print(name + age)
        //在guard let连用语法中，正好与if let相反，作用域在'else{}'外，else里面才是判断对的输出
        
    }
    func demo6(name:String?, age: Int?) {
        if  let name = name, let age = age {
            print(name + String(age))
        }
        guard let name = name, let age = age else {
            ()
            return
        }
        print(name + String(age))
    }
    func demo7(x:String?,y:String?,z:Int?) {
        if let name = x , let city = y , let number = z
        {
            print(name + city + String(number))
        }
        
        guard let name = x , let city = y , let number = z else {
            print("nil")
            return
        }
        print(name + city + String(number))
    }
    func demo8(){
        //正序
        for i in (0..<23){
            print(i)
        }
        //反序
        for i in (0..<23).reversed(){
            print(i)
        }
    }
    func demo9()    //字符串的数量
    {
        let str = "hello world"
        print(str.lengthOfBytes(using: .utf8)) //返回指定编码对应的字节数量，其中在utf8中，一个汉字3个字符
        print(str.characters.count) //字符串长度-返回字符个数
        let ocStr = str as NSString //as是用来进行类型转换的
        print(ocStr.length)
        
    }
    func demo10() -> () //为啥这要指括号   字符串的拼接
    {
        let name = "Howard"
        let age = 18
        let point = CGPoint(x: 100, y:200)//这个cgpoint又是什么鬼？
        let thing :Optional = "Boss" //在拼接字符串中，小心可选项，如果不用三目，会出现optional
        let str = "\(name) \(age) \(point) \(thing ?? "")" //本身是用来 ??用于防止使用！，用三目来进行运算
        print(str)
    }
    func demo11() -> () //为啥前面不加demo不报错？
    {
        let h = 19
        let m = 26
        let s = 02
        let dateStr = "\(h):\(m):\(s)"
        let dateStr1 = String(format: "%02d:%02d:%02d",h , m, s) //使用格式字符串将其格式化
        print(dateStr1)
        print(dateStr)
    }
    func demo12() //关于字符串的子串，
    {
        //1.用NSString作为中转，再取子串
        let str = "running"
        let ocStr = str as NSString
        let s1 = ocStr.substring(with: NSMakeRange(2, 3))
        let s4 = ocStr.substring(with: NSMakeRange(0, 4))//从第n-1个开始计算，不要搞混了
        print(s1)
        print(s4)
        print(str.characters.count)
        //2.直接用swift3.0方法取（容易出现问题，知道有这回事就行）
        //语法：str.substring(from:"".endIndex)
        let s2 = str.substring(from: "run".endIndex)
        let s3 = str.substring(from: "abc".endIndex)
        print(str.startIndex)//这个代码print出来会显示position = 0
        print(str.endIndex)//这个代码print出来会显示position = 7，因为running一共7个数字，这是取到最后一位
        print(s2)
        print(s3)
    }
    func demo13() {
        let array = [1, 2, 3, 4, 5] //标准Int数组
        print(array)
        
        let array1 = ["Arsenal", "ManCity", "Chelsea"]
        print(array1)
        //这两个都是经过swift自动推导的结果，'[]'内的数据都是同种数据类型。
        //混合数组：开发的时候几乎不用，因为数组是靠下标索引
        //在swift中，一般混合数组都是[anyObject]->任意对象
        //在swift中，一个类可以没有任何‘父类’
        
        //CG 结构体  这是用来干嘛的？
        let p = CGPoint(x: 10, y: 300)
        let array3 = [p]
        print(array3)
    }
    func demo14() //数组的遍历
    {
        let array = ["east", "west", "north"]
        
        //1.按照下标遍历       啥叫下标遍历？
        for i in 0..<array.count {
            print(array[i])
        }
        //2.利用for in 遍历元素
        for s in array {
            print(s)
        }
        //3.用enum block遍历，同时遍历下标和内容
        for e in array.enumerated() { //enumerated 本意是枚举
            print("\(e.offset) \(e.element)") //for后面是啥就是啥.offset  啥.element
        }
        //4.遍历下标和内容2
        for (n, s) in array.enumerated() {
            print("\(n) \(s)")
        }
        //5.反序遍历 直接在array后加.reversed()
        for s in array.reversed() {
            print(s)
        }
        //如果带序号的
        print("--这是正确的")
        for e in array.enumerated().reversed() {
            print("\(e.offset) \(e.element)")
        }
        print("____序号不对")
        for s in array.reversed().enumerated() {
            print("\(s.offset) \(s.element)")
        }
    }
    func demo15() //
    {
        var array = [Int]() //数组的初始化，如果不初始化，就没法对数组进行修改
        array.append(2) //为什么只能追加一个？
        print(array)
        array
    }
}
