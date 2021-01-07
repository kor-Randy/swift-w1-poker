//
//  Card.swift
//  Poker
//
//  Created by 지현우 on 2021/01/07.
//

import Foundation

class Card{
    //enum Type case 별 Loop를 위해 CaseIterable 채택
    enum Shape: String, CaseIterable{
        case spade = "♠"
        case club = "♣"
        case heart = "♥"
        case diamond = "♦"
    }
    
    //can't change card's shape and num
    private(set) var shape: Shape
    private(set) var num: Int
    
    var description: String{
        "\(self.shape.rawValue)\(self.convertNumToString(num: self.num))"
    }
    
    init(shape: Shape, num: Int){
        self.shape = shape
        self.num = num
    }
    
    private func convertNumToString(num: Int) -> String{
        if self.num == 1{
            return "A"
        } else if self.num == 11{
            return "J"
        } else if self.num == 12{
            return "Q"
        } else if self.num == 13{
            return "K"
        } else{
            return String(num)
        }
    }
    
    
    
    
}

