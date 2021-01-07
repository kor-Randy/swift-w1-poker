//
//  GameTable.swift
//  Poker
//
//  Created by 지현우 on 2021/01/07.
//

import Foundation

class GameTable{
    //TODO
    //N - 카드 게임 종류
    private var numberOfCard: Int
    //딜러 1명
    let dealer: Dealer
    //참가자 1~4명
    var players: [Player]
    let deck: Deck
    
    //남은 카드로 진행이 가능한가?
    private func isAvailable() -> Bool{
        deck.count >= numberOfCard ? true : false
    }
    
    func startNewGame(){
        if isAvailable(){
            distributeCard()
        }else{
            _ = deck.initCardDeck()
            _ = deck.shuffleDeck()
            distributeCard()
        }
    }
    
    func distributeCard(){
        for _ in 1...numberOfCard{
            dealer.cards.append(deck.removeOne())
        }
        players.forEach { player in
            for _ in 1...numberOfCard{
                player.cards.append(deck.removeOne())
            }
        }
    }
    
    func enterPlayerInGame(newPlayer: Player) -> Bool{
        if players.count >= 4{
            return false
        } else{
            players.append(newPlayer)
            return true
        }
    }
    
    func leavePlayerInGame(name: String){
        self.players.enumerated().forEach {
            if $0.element.name == name{
                players.remove(at: $0.offset)
            }
        }
    }
    
}
