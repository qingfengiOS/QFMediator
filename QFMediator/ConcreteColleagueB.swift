//
//  ConncretwColleagueB.swift
//  QFMediator
//
//  Created by qingfengiOS on 2018/12/20.
//  Copyright © 2018年 情风. All rights reserved.
//

import UIKit

class ConcreteColleagueB: Colleague {
    func send(message: String) {
        mediator.send(message: message, colleague: self)
    }
    
    func notify(message: String)  {
        print("同事B得到消息：\(message)")
    }
}
