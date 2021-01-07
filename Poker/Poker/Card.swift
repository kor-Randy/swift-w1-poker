//
//  Card.swift
//  Poker
//
//  Created by 지현우 on 2021/01/07.
//

import Foundation

class Card{
    enum Shape: String{
        case spade = "♠"
        case club = "♣"
        case heart = "♥"
        case diamond = "♦"
    }
    
    //can't change card's shape and num
    private(set) var shape: Shape
    private(set) var num: Int
    
    init(shape: Shape, num: Int){
        self.shape = shape
        self.num = num
    }
    
    func convertNumToString(num: Int) -> String{
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
    
    var description: String{
        get{
            "\(self.shape.rawValue)\(self.convertNumToString(num: self.num))"
        }
    }
    
    
}

