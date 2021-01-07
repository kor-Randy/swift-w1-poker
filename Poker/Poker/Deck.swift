//
//  Deck.swift
//  Poker
//
//  Created by 지현우 on 2021/01/07.
//

import Foundation

class Deck{
    private var cardDeck: [Card] = []
    
    var count: Int{
        cardDeck.count
    }
    
    init(){
        initCardDeck()
    }
    
    func initCardDeck(){
        for shape in Card.Shape.allCases{
            for num in 1...13{
                cardDeck.append(Card(shape: shape, num: num))
            }
        }
    }
    
    func shuffle(){
        cardDeck.shuffle()
    }
    
    func removeOne() -> Card?{
        count ? cardDeck.removeFirst() : nil
    }
    
    func reset(){
        cardDeck.removeAll()
        initCardDeck()
    }
    
}
