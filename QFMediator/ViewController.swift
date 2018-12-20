//
//  ViewController.swift
//  QFMediator
//
//  Created by qingfengiOS on 2018/12/20.
//  Copyright © 2018年 情风. All rights reserved.
//

import UIKit

/// 中介者模式
class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

        let mediator: ConcreteMediator = ConcreteMediator()
        
        let a: ConcreteColleagueA = ConcreteColleagueA(mediator: mediator)
        let b: ConcreteColleagueB = ConcreteColleagueB(mediator: mediator)
        
        mediator.colleagueA = a
        mediator.colleagueB = b
        
        a.send(message: "吃饭了吗？")
        b.send(message: "没有，你要请吃饭吗？")
        a.send(message: "你想多了")
    }
}

