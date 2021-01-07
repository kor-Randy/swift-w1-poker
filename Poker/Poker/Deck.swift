//
//  Deck.swift
//  Poker
//
//  Created by 지현우 on 2021/01/07.
//

import Foundation

//상속이 필요없기에 struct로 구현
struct Deck{
    private var cardDeck: [Card] = []
    
    var count: Int{
        cardDeck.count
    }
    
    init(){
        _ = initCardDeck()
    }
    
    mutating func initCardDeck() -> Self{
        cardDeck.removeAll()
        
        print("카드 전체를 초기화 했습니다.")
        
        for shape in Card.Shape.allCases{
            if shape == .joker{
                continue
            }
            for num in 1...13{
                cardDeck.append(Card(shape: shape, num: num))
            }
        }
        
        cardDeck.append(Card(shape: .joker, num: 0))
        
        print("총 \(self.count)장의 카드가 있습니다.")
        return self
    }
    
    mutating func shuffleDeck() -> Self{
        print("총 \(self.count)장의 카드를 섞었습니다.")
        
        self.cardDeck.shuffle()
        return self
    }
    
    mutating func removeOne() -> Card?{
        let cardOnTop = cardDeck.removeFirst()
        
        print(cardOnTop.description)
        print("총 \(self.count)장의 카드가 남아있습니다.")
        
        return count > 0 ? cardOnTop : nil
    }
    
    mutating func resetDeck() -> Self{
        cardDeck.removeAll()
        _ = initCardDeck()
        return self
    }
    
}
