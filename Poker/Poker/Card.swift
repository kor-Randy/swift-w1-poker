//
//  Card.swift
//  Poker
//
//  Created by 지현우 on 2021/01/07.
//

import Foundation

struct Card{
    //enum Type case 별 Loop를 위해 CaseIterable 채택
    enum Shape: String, CaseIterable{
        case spade = "♠"
        case club = "♣"
        case heart = "♥"
        case diamond = "♦"
        case joker = "🃏"
    }
    
    //can't change card's shape and num
    private(set) var shape: Shape
    private(set) var num: Int // Joker has not Num
    
    var description: String{
        "\(self.shape.rawValue)\(self.convertNumToString())"
    }
    
    init(shape: Shape, num: Int = 0){
        self.shape = shape
        self.num = num
    }
    
    private func convertNumToString() -> String{
        if num == 0 {
            return "Joker"
        } else if num == 1{
            return "A"
        } else if num == 11{
            return "J"
        } else if num == 12{
            return "Q"
        } else if num == 13{
            return "K"
        } else{
            return String(num)
        }
    }
    
    
    
    
}

