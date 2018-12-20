//
//  ConcreteMediator.swift
//  QFMediator
//
//  Created by qingfengiOS on 2018/12/20.
//  Copyright © 2018年 情风. All rights reserved.
//

import UIKit

/// 具体中介者
class ConcreteMediator: Mediator {

    var colleagueA: ConcreteColleagueA? = nil
    var colleagueB: ConcreteColleagueB? = nil
    
    
    /// 消息发送
    ///
    /// - Parameters:
    ///   - message: 要发送的消息
    ///   - colleague: 发送者对象(发出消息的一方)
    override func send(message: String, colleague: Colleague) {
        if colleague == colleagueA {
            colleagueB?.notify(message: message)
        } else {
            colleagueA?.notify(message: message)
        }
    }
    
}
