//
//  Player.swift
//  Poker
//
//  Created by 지현우 on 2021/01/07.
//

import Foundation

class Player{
    let name: String
    var cards: [Card]
    var money: Int
    
    init(name: String, money: Int) {
        self.name = name
        self.money = money
    }
    
}
