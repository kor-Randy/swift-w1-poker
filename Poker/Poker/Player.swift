//
//  Player.swift
//  Poker
//
//  Created by 지현우 on 2021/01/07.
//

import Foundation

class Player{
    let name: String
    var cards: [Card] = []
    var money: Int?
    
    init(name: String) {
        self.name = name
    }
    init(name: String, money: Int){
        self.name = name
        self.money = money
    }
    
    func printCards(){
        print("Name : \(name)", terminator: " ")
        
        print(self.cards.reduce("Cards: "){ "\($0.description), \($1.description)" })
    }
    
    func numberOfPairs(){
        
    }
    
}
