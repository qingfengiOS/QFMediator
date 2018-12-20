//
//  Colleague.swift
//  QFMediator
//
//  Created by qingfengiOS on 2018/12/20.
//  Copyright © 2018年 情风. All rights reserved.
//

import UIKit


/// 抽象同事类
class Colleague: NSObject {
    var mediator :Mediator
    
    init(mediator: Mediator) {//得到中介者对象
        self.mediator = mediator
    }
}
