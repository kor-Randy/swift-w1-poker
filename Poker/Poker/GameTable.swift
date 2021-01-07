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
    let dealer: Dealer = Dealer(name: "Dealer")
    //참가자 1~4명
    private var players: [Player] = []
    private var deck: Deck = Deck()
    
    init(numberOfCard: Int) {
        self.numberOfCard = numberOfCard
    }
    
    //남은 카드로 진행이 가능한가? private
    func isAvailable() -> Bool{
        deck.count >= numberOfCard ? true : false
    }
    
    //새로운 게임 시작
    func startNewGame(){
        if isAvailable(){
            distributeCard()
        }else{
            _ = deck.initCardDeck()
            _ = deck.shuffleDeck()
            distributeCard()
        }
    }
    
    //카드 나눠주기 private
    func distributeCard(){
        for _ in 1...numberOfCard{
            if let removeCard = deck.removeOne(){
                dealer.cards.append(removeCard)
            }else{
                print("덱에 카드가 존재하지 않습니다. 덱의 카드를 새로 갈아주세요.")
            }
        }
        players.forEach { player in
            for _ in 1...numberOfCard{
                if let removeCard = deck.removeOne(){
                    player.cards.append(removeCard)
                }else{
                    print("덱에 카드가 존재하지 않습니다. 덱의 카드를 새로 갈아주세요.")
                }
            }
        }
    }
    
    //게임 결과 오픈
    func resultOfGame(){
        dealer.printCards()
        self.players.forEach {
            $0.printCards()
        }
    }
    
    //새로운 플레이어 진입
    func enterPlayerInGame(_ newPlayer: Player) -> Bool{
        if players.count >= 4{
            return false
        } else{
            players.append(newPlayer)
            return true
        }
    }
    
    //플레이어 나감
    func leavePlayerInGame(name: String){
        self.players.enumerated().forEach {
            if $0.element.name == name{
                players.remove(at: $0.offset)
            }
        }
    }
    
}
