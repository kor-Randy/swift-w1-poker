//
//  Player.swift
//  Poker
//
//  Created by 지현우 on 2021/01/07.
//

import Foundation

class Player{
    struct Pair{
        var num: Int
        var duplicate: Int
    }
    
    let name: String
    var cards: [Card] = []
    var money: Int?
    var pair: Pair = Pair(num: 0, duplicate: 0)
    
    init(name: String) {
        self.name = name
    }
    init(name: String, money: Int){
        self.name = name
        self.money = money
    }
    
    //정렬된 카드 출력
    func printCards(){
        self.cards.sort {
            $0 < $1
        }
        print("Name : \(name)", terminator: " ")
        print(self.cards.reduce("Cards: "){ "\($0.description), \($1.description)" })
        
        printPairs(pair: getPair())
    }
    
    //가장 높은 족보 출력
    func getPair() -> Pair{
        var pairs = numberOfPairs()
        pairs.sort{
            $0 > $1
        }
        self.pair = pairs.first ?? Pair(num: 0, duplicate: 0)
        return self.pair
    }
    
    func printPairs(pair: Pair){
        print(pair.description)
    }
    
    //갖고 있는 페어 확인
    func numberOfPairs() -> [Pair]{
        var pairs : [Pair] = []
        var countOfDuplicate = 0 // 중복횟수
        
        for index in 0..<self.cards.count - 1{
            let number = self.cards[index].num
            let next = self.cards[index + 1].num
            
            if number == next{
                //중복 횟수 ++
                countOfDuplicate += 1
                if index == self.cards.count - 2{
                    pairs.append(Pair(num: number, duplicate: countOfDuplicate))
                }
            }else{
                if countOfDuplicate >= 1{
                    pairs.append(Pair(num: number, duplicate: countOfDuplicate))
                    countOfDuplicate = 0
                }
            }
        }
        
        return pairs
    }
    
}

extension Player.Pair: Comparable{
    static func <(lhs: Player.Pair, rhs: Player.Pair) -> Bool{
        if lhs.duplicate != rhs.duplicate{
            return lhs.duplicate < rhs.duplicate
        }else{
            return lhs.num < rhs.num
        }
    }
    
    var description: String{
        if self.duplicate == 0{
            return "페어가 없습니다."
        }
        else if self.duplicate == 1{
            return "원페어 - \(Util.convertFromNumToString(num: self.num))"
        } else if self.duplicate == 2{
            return "트리플 - \(Util.convertFromNumToString(num: self.num))"
        } else{
            return "포카드 - \(Util.convertFromNumToString(num: self.num))"
        }
    }
}

extension Player: Comparable, Equatable{
    static func == (lhs: Player, rhs: Player) -> Bool {
        (lhs.pair.num == rhs.pair.num) && (lhs.pair.duplicate == rhs.pair.duplicate)
    }
    
    static func <(lhs: Player, rhs: Player) -> Bool{
        if lhs.pair.duplicate != rhs.pair.duplicate{
            return lhs.pair.duplicate < rhs.pair.duplicate
        }else{
            return lhs.pair.num < rhs.pair.num
        }
    }
}
