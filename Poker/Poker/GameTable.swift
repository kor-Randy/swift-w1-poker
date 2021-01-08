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
    private let dealer: Dealer = Dealer(name: "Dealer")
    //참가자 1~4명
    private var players: [Player] = []
    private var deck: Deck = Deck()
    //남은 카드로 진행이 가능한가? func -> Computed Property
    private var isAvailable: Bool{
        deck.count >= numberOfCard ? true : false
    }
    
    init(numberOfCard: Int) {
        self.numberOfCard = numberOfCard
    }
    
    //새로운 게임 시작
    func startNewGame(){
        if isAvailable{
            distributeCard()
        }else{
            _ = deck.initCardDeck()
            print("카드 전체를 초기화 했습니다.")
            print("총 \(self.deck.count)장의 카드가 있습니다.")
            
            _ = deck.shuffleDeck()
            print("총 \(self.deck.count)장의 카드를 섞었습니다.")
            
            distributeCard()
        }
    }
    
    //카드 나눠주기 private
    func distributeCard(){
        for _ in 1...numberOfCard{
            if let removeCard = deck.removeOne(){
                dealer.getCard(card: removeCard)
                
                print(removeCard.description)
                print("총 \(deck.count)장의 카드가 남아있습니다.")
            }else{
                print("덱에 카드가 존재하지 않습니다. 덱의 카드를 새로 갈아주세요.")
            }
        }
        players.forEach { player in
            for _ in 1...numberOfCard{
                if let removeCard = deck.removeOne(){
                    player.getCard(card: removeCard)
                    
                    print(removeCard.description)
                    print("총 \(deck.count)장의 카드가 남아있습니다.")
                }else{
                    print("덱에 카드가 존재하지 않습니다. 덱의 카드를 새로 갈아주세요.")
                }
            }
        }
    }
    
    //게임 결과 오픈
    func winnerOfGame() -> String{
        var allOfPairs: [Player] = []
        
        allOfPairs.append(contentsOf: self.players)
        allOfPairs.append(dealer)
        
        allOfPairs.forEach {
            $0.printCards()
        }
        
        allOfPairs.sort{
            $0 > $1
        }
        
        return allOfPairs[0].name
    }
    
    //새로운 플레이어 진입
    func enterPlayerInGame(_ newPlayer: Player){
        if players.count < 4{
            players.append(newPlayer)
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
